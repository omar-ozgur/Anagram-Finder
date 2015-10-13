#include "Dictionary.h"
#include <string>

// Setting the hash table's size to a prime number made computations quicker
const int TABLE_SIZE = 49999;

// Each prime number is assigned to a letter, with the lowest numbers representing more common letter
const int PRIMES[26] = {5,71,37,31,2,47,59,23,11,89,79,29,43,13,7,53,97,19,17,3,41,73,61,83,67,101};

inline void removeNonLetters(std::string& s);
inline unsigned int hashFunction(const std::string& word);
inline unsigned int hashFunction(const std::string& word, int& size);

class DictionaryImpl{
public:
    DictionaryImpl();
    ~DictionaryImpl();
    void insert(std::string word);
    void lookup(const std::string& word, void callback(std::string)) const;
private:
    struct Node{
        std::string value;
        unsigned int key;
        Node* next;
    };
    Node* m_table[TABLE_SIZE];
};

DictionaryImpl::DictionaryImpl(){
    for(int i = 0; i < TABLE_SIZE; i++){
        m_table[i] = nullptr;
    }
}

DictionaryImpl::~DictionaryImpl(){
    
    // Iterate through each bucket of the hash table
    for(int i = 0; i < TABLE_SIZE; i++){
        
        // Delete the linked list if the bucket contains one
        if(m_table[i] != nullptr){
            for(Node* p = m_table[i]; p != nullptr; ){
                Node* q = p;
                p = p->next;
                delete q;
            }
        }
    }
}

void DictionaryImpl::insert(std::string word)
{
    // Remove invalid characters from the specified word
    removeNonLetters(word);
    
    if (!word.empty()){
        
        // Create a new node with the specified word as the value
        Node* newNode = new Node;
        newNode->value = word;
        newNode->next = nullptr;
        
        // Generate a bucket number based on the specific word
        unsigned int key = hashFunction(word);
        
        // Store an unshortened version of the bucket number in the node
        newNode->key = key;
        
        // Take the modulus of the bucket number with the table size in order to find a bucket to place the new node in
        key %= TABLE_SIZE;
        
        // Add the node to the linked list in the specified bucket
        if(m_table[key] != nullptr){
            Node* p = m_table[key];
            while(p->next != nullptr)
                p = p->next;
            p->next = newNode;
        }
        else
            m_table[key] = newNode;
        
    }
}

void DictionaryImpl::lookup(const std::string& word, void callback(std::string)) const{
    // Return if no callback function is specified
    if (callback == nullptr)
        return;
    
    // Generate a bucket number and word size (with only valid characters)
    int size = 0;
    unsigned int key = hashFunction(word, size);
    
    // Return if the word contains no valid letters
    if(size == 0)
        return;
    
    // Check each node in the linked list of the specified bucket
    for(Node* p = m_table[key % TABLE_SIZE]; p != nullptr; p = p->next){
    
        // If the unshortened bucket numbers and the sizes of the words are the same, call the callback function
        if(p->key == key && p->value.size() == size)
            callback(p->value);
    }
}

// Find the bucket number for a specific word
inline unsigned int hashFunction(const std::string& word){
    unsigned int bucket = 1;
    
    // For each letter in the word, multiply the bucket number variable by the prime number that represents that letter
    for(int i = 0; i < word.size(); i++){
        if(word[i] >= 'a' && word[i] <= 'z')
            bucket *= PRIMES[word[i]-'a'];
        else if(word[i] >= 'A' && word[i] <= 'Z')
            bucket *= PRIMES[word[i]-'A'];
    }
    return bucket;
}

// Find the bucket number and size of a specific word
inline unsigned int hashFunction(const std::string& word, int& size){
    unsigned int bucket = 1;
    
    // For each letter in the word, multiply the bucket number variable by the prime number that represents that letter, and increment the size parameter
    for(int i = 0; i < word.size(); i++){
        if(word[i] >= 'a' && word[i] <= 'z'){
            bucket *= PRIMES[word[i]-'a'];
            size++;
        }
        else if(word[i] >= 'A' && word[i] <= 'Z'){
            bucket *= PRIMES[word[i]-'A'];
            size++;
        }
    }
    return bucket;
}

inline void removeNonLetters(std::string& s){
    std::string::iterator to = s.begin();
    
    // Iterate through each character in the string, and save valid characters in the "to" iterator
    for (std::string::const_iterator from = s.begin(); from != s.end(); from++)
    {
        if (isalpha(*from))
        {
            *to = tolower(*from);
            to++;
        }
    }
    s.erase(to, s.end());  // chop off everything from "to" to end.
}

//******************** Dictionary functions **********************************

// These functions simply delegate to DictionaryImpl's functions.
// You probably don't want to change any of this code.

Dictionary::Dictionary(){
    m_impl = new DictionaryImpl;
}

Dictionary::~Dictionary(){
    delete m_impl;
}

void Dictionary::insert(std::string word){
    m_impl->insert(word);
}

void Dictionary::lookup(std::string letters, void callback(std::string)) const{
    m_impl->lookup(letters, callback);
}
