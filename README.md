Gmaid
=====
RPC without hosting.
--------------------

### Problem?
* I want to defer work to another computer at any time from any place.
* I don't want to pay for or set up a VPS.
* Good News: I have a computer that I can devote to sitting around on standby
* Bad News: I don't want to put that computer on the public Internet

### Concept
* Use an online mail client as a public proxy for our server.
* Execution:
	* Email the proxy
	* The server reads your command and executes
	* It can email back a response

### Req's
* Ruby 1.9
* Some Ruby Knowledge.
* Some knowledge of the 'gmail' gem
* A Gmail account that you want to act as a proxy.

### Setup
* Clone this repo
* `bundle install`
* Add your gmaid credentials to the functions in 'config/gmaid-credentials.rb'
* Add your email to the users map in 'config/usermap.rb'
* Add the Ping procedure to your procedure array.
* Run with `ruby run.rb`
* Test by sending an email to your proxy with the subject-line 'ping'
