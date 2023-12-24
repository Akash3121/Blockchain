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

**What happens if the majority of computers (at least 51%) are coordinated with each other and they know exactly which data to manipulate?**

Then, they can solve the puzzles faster, build a longer chain and create an alternate truth. This is the only way to ‘hack’ a blockchain (also called a 51% attack).

If the blockchain is long enough, it’s almost impossible to go back and change data in previous blocks. Because, then, the hash of the block changes, which requires changing hashes of all subsequent blocks. Solving this puzzle takes too much time — there would be no way to catch up with the newly added blocks to create the longest chain.

Solving the puzzlw mining:

Score! The system we designed lets one single true blockchain emerge. Now, let’s dig into the kind of puzzle typically used in blockchain.

For our larger system to work as we described, this puzzle has to be something that: 

- inevitably takes time and energy to solve
- lets multiple computers collaborate
- is easy for others to confirm when it is solved
  
Here is the puzzle that blockchains typically use: “What additional series of numbers can I add to the block, so that the hash I generate for the whole block starts with X number of zeros? (let’s assume four zeros for now)?”

**Why does this works?**

Because it is almost impossible to guess the input of a hash calculation, there is no straightforward way for a computer to calculate these additional numbers (which is called nonce - a number used only once).

The only way to solve this puzzle is to try different nonce values. As a result, this inevitably takes time and energy to solve and, if more computers try to solve the same puzzle, they can guess the right nonce faster. Because a hash can be calculated instantaneously, once the nonce values are found, it is very easy for other computers to confirm that the puzzle is solved.

When the puzzle for a new block is solved, that block can be added to the blockchain.

**How difficult is it to find a nounce?**

🕵️‍♀️ Reality check: Solving the puzzle is actually very difficult. We required that the hash starts with only four zeros just to make it easy for you to mine the block. But for every additional number of zeros we require, the mining difficulty goes up exponentially. 

The Bitcoin network adjusts the mining difficulty in a way that takes around 10 minutes to mine a block. Mining difficulty is 40 trillion times more difficult than what it was in 2009! 😵

Mining - count

Adding a new block by finding its nonce value is called “mining”. It requires computers to do some work of solving the puzzle and show the proof of this work (the valid nonce) to add a new block. 

This process (“proof-of-work”) is how our different computers build consensus on which blocks are valid. 

💡 Tip: The number of zeros required by the puzzle determines its difficulty. More zeros mean a more difficult puzzle that takes more time. 

As your computer is scanning nonce values one by one, you’re coming up with many different hash values. A stronger computer can make guesses and test these faster than a slower computer can. The number of hash values you come up with every second is called the "hash rate". 

Of course, a computer spends energy when trying to solve the puzzle. Forcing computers to spend energy is an inherent design feature of how our blockchain (and Bitcoin blockchain) builds consensus between different computers.
