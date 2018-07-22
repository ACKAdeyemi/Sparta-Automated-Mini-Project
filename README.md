# <p align="center"> Automation Mini-Project </p>
<hr>

#### Task:

Your task for today and the weekend is to build out a Page Object Model for one of the following e-commerce sites:

* [ASOS](http://www.asos.com/)
* [Disney](https://www.disneystore.co.uk/)
* [Amazon](https://www.amazon.co.uk/)

The user stories should be focused around testing different features of the site, from when the user first arrives to checkout and payment. For example, the following feature would test adding and removing items from a shopping cart:

```
Feature: I can update and change my cart

	Scenario: As a user I can add to my cart

		Given I have something in my cart that i want to order
		When I am shown the current items in the cart
		And I can delete items in my cart
		And I can add or reduce the amount I want to order
		Then I can continue with my order

```

Of course, you don't actually need to go through and pay, but try and test as many features as feel appropriate. This is a great opportunity to create something you can put on your profile. Really try and find as many bugs as you can - this could be a great talking point in an interview!

Other features might include log in / register, editing a profile, deleting an account...be creative!

Make use of **tables**, **hooks** and **tags**

Name your files appropriately (login\_step\_defs.rb, male\_tshirts_index.rb, sunglasses\_show.rb etc.)

**BONUS**

* Incorporate the Faker gem instead of / as well as 10minuteemail.com (perhaps as a module?)
* Experiment with different report formats (JSON, XML etc, not just HTML)
