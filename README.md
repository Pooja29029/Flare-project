# Credit History Smart Contract (Flare / Coston2)

## **Contract Address**
`0xe4C35bEeF1749c734D69E204f95072715F5Cb3f3`  
Explorer: https://coston2-explorer.flare.network/address/0xe4C35bEeF1749c734D69E204f95072715F5Cb3f3

---

## **Description**
This project demonstrates an on-chain **Credit History Recording System** deployed on the Flare Coston2 test network.

The smart contract allows the owner to store immutable credit records for any user. Each credit record contains:

- **Score** (e.g., 650, 720)  
- **Information** describing the event (e.g., “Paid EMI”, “Missed Payment”)  
- **Timestamp** when it was added  

Anyone can look up the credit history of any address, making the system transparent, decentralized, and tamper-proof.

The frontend is built using **Next.js**, **Wagmi**, and **Viem**, enabling seamless interaction with the contract.

---

## **Features**
- **Owner-protected actions**: Only the contract owner can add credit entries.
- **Public read access**: Anyone can view any user's credit history.
- **Indexed entry storage**: Each user has a list of credit records.
- **Decentralized data**: All credit information is stored permanently on-chain.
- **Real-time UI**: Frontend updates as soon as transactions confirm.
- **Wallet gating**: Users must connect their wallet to interact with the UI.
- **Automatic fetching**: UI automatically loads latest credit entries.
- **Error + status messages**: Loading, confirming, and error states fully supported.

---

## **How It Solves the Problem**
Traditional credit systems rely on centralized databases, limiting transparency, accessibility, and user control.

This project solves these issues by offering:

### ✔ **Decentralized credit tracking**
Anyone can verify credit events directly on-chain.

### ✔ **Transparency**
Credit events cannot be altered, hidden, or backdated.

### ✔ **Trustless verification**
Lenders, platforms, and users can independently verify someone's credit activity.

### ✔ **Open-access reliability**
Any application can integrate the contract to fetch credit records, making it ideal for:

- Decentralized lending systems  
- Reputation systems  
- On-chain financial scoring  
- Proof-of-payment histories  
- Web3 identity scoring  

With a tamper-proof and globally accessible system, this Credit History contract forms the groundwork for decentralized credit infrastructure.

---
