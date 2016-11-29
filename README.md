This is a small ruby project which models a bank account.

At the minute using irb, a customer can deposit and withdraw money and check their balance.

To run, fork this repo. Run 'bundle' to install rspec.

You can run rspec by typing 'rspec' into the root of the directory. This will show all passing or failing tests.

To run the project, open irb and paste the following:

```
require './lib/account'
```


#### User Stories
```
As a customer
So that I have a working bank Account
I would like to have an opening balance of zero
```
```
As a customer
So that I have a working bank Account
I would like to be able to deposit money into my Account
```
```
As a customer
So that I have a working bank Account
I would like to be able to withdraw money from my Account
```
```
As a customer
so that I don't go into massive amounts of debit
I would like to be able go under my zero balance
```
```
As a customer
So that I can make the best financial decisions
I would like to be able to see the balance of my account at any time
```
```
As a customer
So that I can make the best financial decisions
I would like to be able to print a statement from my Account
```
```
As a customer
So that I can make the best financial decisions
I would like to be able to save my transactions
```


## Specification

### Requirements

* You should be able to interact with the your code via IRB.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
