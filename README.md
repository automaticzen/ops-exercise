#Starter Project
##Purpose
  * Assess your ability to take some general specs to a working demo
  * Gives us something to talk about
  * Shouldn't take more than 4 hours
  * Don't make it too complex

##Spec
###Need to have
  * Chef cookbook[s], structure as you see fit.
  * Implement a Linux, MySQL, HHVM, Nginx single host running some sort of blog software (take your pick)
  * Base OS should be ubuntu 14.04
  * Use Berkshelf for dependancy management, please no vendor drops (but version locks are good!)
  * Should leverage community cookbooks when it make sense.
  * Shoud be testable using Vagrant.

###Nice to have
  * Security hardening and user management.
  * Should converge both in chef-zero and chef-client modes.
  * Take care with secrets!
  * Funcitonal/Unit/Lint tests are cool.
  * Think in terms of re-usable components.
  * Bonus points for a rake/Thor file for common tasks.

### Ben's Implementation
  * community cookbooks for wordpress/mysql, nginx, hhvm, with some wrapper cookbooks to allow for wiw-specific variances
  * Vagrant uses chef-client
  * test-kitchen uses chef-zero
  * serverspec for testing
  * encrypted data bag for credentials
  * slightly i-have-no-idea-what-im-doing-dog.gif for some aspects of this exercise, as I've mostly used chef to build images for our legacy stack
  * glad to have had the chance to spike on this and learn some new things about Chef... thanks!

### Known issues in Ben's implementation

  * Wordpress cookbook seems to be getting stuck on executing grants for its db user:
```
Error executing action `grant` on resource 'mysql_database_user[wordpressuser]'
```
  * I ran out of time chasing down the features and did not provide docs/README for the wrapper cookbooks
