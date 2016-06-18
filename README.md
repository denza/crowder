# Crowder

Crowder is a task scheduler with web api. It is used as an active component in an enviroment with many api.

Idea behind web api is to be stateless. That gives you a lot of benefits, mainly related for scalability. Combining an active component to a stateless component as one is something you do not want to do because you are loosing all benefits and introducing new complexity.

Motivation
========

Environment where crowder was raised is mutiple web api. Since web api nature is to be stateless there was need for an active component to monitor and to do what an api can't do itself. 

Having mulitple web apis and all requiring the same thing it was obvious that an independent service should be developed to serve others. Overhead of developing and maintaing the same thing multiple times and driven by DRY principle were main motivation to start crowder.

How it works
========

Crowder will recieve a request which will hold information when and where trigger will happend. A trigger can be onetime  or repetitive. A web api can trigger itself or some other web location. 

Other than time and location a web api can provide following:
- submit method (GET,POST etc), 
- content type (if not defined it will be the same as in the request when crowder is reached)
- submit body
- additonal headers
- callback url(if you want to handle respone when trigger reaches a target)   
