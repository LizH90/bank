Bank Tech Test
===========

A practice test tech repo that can be run in IRB.

Ruby version 2.4.0

Installation
--------
```
$ git clone git@github.com/lizh90/bank
$ cd bank
$ bundle install
```

Testing
-------
Run the ```rspec``` command to see the tests and test coverage percentage through simplecov.


Running
-----
Load in irb to run:

```
$ require './lib/account.rb'
$ require './lib/transactionlog.rb'
$ require './lib/printer.rb'

$ account = Account.new
$ account.deposit("10/01/2012", 1000)
$ account.deposit("13/01/2012", 2000)
$ account.withdraw("14/01/2012", 500)
$account.print_statement

  date || credit || debit || balance
  14/01/2012 || || 500.00 || 2500.00
  13/01/2012 || 2000.00 || || 3000.00
  10/01/2012 || 1000.00 || || 1000.00
```
