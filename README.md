This is a small ruby project which models a bank account.

Using irb, a customer can deposit and withdraw money, check their balance and print a statement.

#### Installation

Fork this repo.
Open irb on the commandline and paste the following:

```
require './lib/account'
```

#### Testing

Run 'bundle' to install rspec.

Typing 'rspec' into the root of the directory will run the rspec testing suite. This will show all passing or failing tests.

#### My approach to this challenge

I began this mini-project with a single class for Account, which was able to handle a user's balance, credit, debits as well as printing a statement.
The class become too large so I decided to split off some of the functionality.

A Statement class was created and this is initialized when the Account class is first initialized.  The Statement class handles adding a transaction onto the statement.

When the print_statement is called from the Account class, a user's bank statement is printed into the irb console.  It is formatted in this manner:

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
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
