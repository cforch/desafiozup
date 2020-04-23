
Feature: Add item in Shopping Cart

   I need to add item in Shopping Cart as an user in Magazine Luiza e-commerce.
   It`s also necessary to validate the item in Shopping Cart. 
    
    Background: Access Magazine Luiza and search product.
        Given access magazine luiza homepage
        When search a product 
        Then it must be a list of products found
        

    @search_default_main
    Scenario: Add first default item.
        And select first product
        And select to add in Shopping Cart
        And select to continue without extended warranty
        Then product must be in Shopping Cart.

    @search_order_bestsellers
      Scenario: Add item with order best sellers.
        And order by best sellers
        And select first product
        And select to add in Shopping Cart
        And select to continue without extended warranty
        Then product must be in Shopping Cart.

    @search_order_toprated
      Scenario: Add item with order top rated.
        And order by top rated
        And select first product
        And select to add in Shopping Cart
        And select to continue without extended warranty
        Then product must be in Shopping Cart.

    @search_filter_price_upto_140
      Scenario: Add item filter price up to 140 R$.
        And filter price up to 140 R$
        And select first product
        And select to add in Shopping Cart
        And select to continue without extended warranty
        Then product must be in Shopping Cart.

