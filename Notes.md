## Notes

A hash is essentially a summary of the original data.

Bitcoin uses SHA (Secure Hash Algorithm)-256 hash. SHA-256 is an algorithm that simply turns any kind of data into a standard-size (256 bits) hash. One input always generates the same hash, but it is impossible to predict the input back from the hash.

💅 Fun fact: SHA-256 was actually developed by the National Security Agency in the US.

Single Chain:

![image](https://github.com/Akash3121/Blockchain/assets/87650180/3a4d4bd4-faf3-41eb-876c-bbc2b29b17c8)

Distributed Chain:

![image](https://github.com/Akash3121/Blockchain/assets/87650180/6a9ef06b-0ead-473a-88bc-cf3dfe85f15a)

Which chain represents the truth? (Is it single chain or distributed chain)

1) If you enable truthful blocks to be added more quickly, you can make more truthful blockchains.
![image](https://github.com/Akash3121/Blockchain/assets/87650180/2ab9af38-803d-4ed9-be57-04c5ca52a579)

Then the longest chain will be the most truthful chain.

2) If new blocks only gets added to the longest blockchain, this further supports the longest and the most truthful blockchain.

There are two fundamental, interdependent tweaks we will implement. We will make it faster to add blocks that are truthful and we will then assume the longest chain is the most truthful chain for the network to use .

> If you ask a computers to solve a time-consuming problem, you can regulate how fast new blocks get added.
First, We will make it time consuming to add new blocks by forcing computers to solve a difficult puzzle to create a new block.

Multiple computer working on the same problem.

> Second, if more computers try to solve the puzzle simultaneously and the first one solving the puzzle shares the solution with others, it can be solved more quickly simply because more computers are putting effort into it. So, the version of blocks that more computers work on gets added faster.

As a result, whatever the majority of the computers in the network agree on is added faster and the longest chain contains these blocks.

If the majority of computers working on the blockchain are honest and they’re not organized together to change the data, a bad actor won’t be able to manipulate the data. They’ll have no way to catch up with the speed of the longest blockchain and their blockchain will not be valid.

**What happens if the majority of computers (at least 51%) are coordinated with each other and they know exactly which data to manipulate? 
**
Then, they can solve the puzzles faster, build a longer chain and create an alternate truth. This is the only way to ‘hack’ a blockchain (also called a 51% attack).
