### BANK ###


Requirements:
- needs to run in IRB
- bank account that takes a deposit and withdrawal
- should print a statement with the date, amount and balance
- the data should be kept in memory (but not stored to a database)

Acceptance criteria:
- given a client makes a deposit of 1000 on 10-01-2012
- and a deposit of 2000 on 13-01-2012
- and a withdrawal of 500 on 14-01-2012
- when she prints her bank statement
- she would see:

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || 3000.00
10/01/2012 || 1000.00 || || 1000.00
