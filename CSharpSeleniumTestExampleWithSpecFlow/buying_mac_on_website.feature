﻿Feature: Buying a MacBook Pro on the website 
	As an online customer
	I want to choose a MacBook with accessories on the website
	So that I can buy it online

Background:
  Given the url ‘https://www.apple.com/uk/’

@choose
Scenario: A MacBook 15” with accessories can be ordered on the website
  Given I go to the url
  When I choose a MacBook Pro with the following features and accessories
	| Screen | Processor | MemoryRAM | Colour | Software    | Displayadapter      |
	| 15     | 2.9 GHz   | 16 GB      | Silver | Logic Pro X | USB-C to USB Adapter |
  Then I can place an order for it.

@check
Scenario: The correct price and VAT are displayed for a MacBook 15” with accessories
  Given when I choose the following items:
    | Option                   | Price in £ |
    | MacBook Pro and software |    3168.99 |
    | Display adapter          |      19.00 |
  When I proceed to the checkout 
  Then a total price of £3187.99 will be displayed
  And £531.34 will be listed for VAT.VAT
