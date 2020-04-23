# Desafio Zup - Automação Web - Caio Forchesatto # 

This project is about automation on the Magazine Luiza website.
This Challenge was created in Ruby with the support of Cucumber, Selenium, Capybara, Rspec and Page-Object Structure.
There are four scenarios following the challenge proposal.

Feature: Add item in shopping cart after search.

1- Add first item.
2- Add first item order by best sellers.
3- Add first item order by top rated.
4- Add first item filter price up to 140 R$.

# Requisites #

Chromedriver, Ruby, Bundler, 


It`s necessary to have some IDE. I use Visual Studio Code. So If you use VS Code - stable version, you can follow my extensions that I like to use:
-	Material Icon Theme 
-	Hyper Term Theme
-	Rufo (Ruby Formatter) 
    -  You need to install: gem install rufo
    -	For Windows, Maybe, it will be necessary to run CMD as Administrator 
-	Ruby Language Colorization 
-	Ruby

# Help to install #

Install Ruby

1)	Go to ruby-lang.org/pt/
2)	Click on “baixe o Ruby”
3)	In Windows, use RubyInstaller. You can find it in ruby-lang.org/pt/downloads/ 
    a.	In https://rubyinstaller.org/downloads/archives/, you can find all versions. 
        i.	I use Ruby 2.5.7-1 with Devkit.
    b.	But if you’re in Linux or Mac, you can use rbenv on terminal. 
4)	Install default, next all steps of setup.
    a.	In the end, run execute ``` ridk install```  with select install ridk automatically.
    b.	Select option 3 to be install. 
5)	Verify ruby.
    a.	On Command Prompt:  ``` ruby --version``` 

Install Bundler 

Required: ruby installed.

For Windows:
1)	On Command Prompt: ``` gem install bundler``` 
a.	Sometimes, you need to run Command Prompt as an Administrator for it. 
b.	Bundler is packages manager of ruby. 

Chromedriver.exe 

-	In my case, https://chromedriver.storage.googleapis.com/index.html?path=80.0.3987.106/
-	I installed chromedriver for version 80.0.3987 Google Chrome
-	And place it somewhere on your PATH.


# Configuring Project
1)	Create a folder for your project. Example: webzup
2)	On terminal, inside webzup, digit: ``` bundle init``` 
    a.	To initialize a ruby project in your folder.
3)	After, you need to install some resources for automation, like cucumber.
    a.  In Project, Inside Gemfile, set:  gem “cucumber”, save file.
    b.	On Terminal, digit: ``` bundle install``` 
        i.	For All Gems, you need to use “bundle install".
        ii. Sometimes, in WINDOWS, you need to install on CMD as Administrator.
4)	Initialize Cucumber in Project.
    a.	On terminal, verify cucumber.
        i.	 ``` cucumber –version ```
    b.	On terminal, inside folder project, initialize cucumber
        i.	 ``` cucumber –init```   (Features folder and others will be created)


# To run Project 

You can use the following commands:
 
First Scenario:
``` cucumber -t @search_default_main``` 

Second Scenario:
``` cucumber -t @search_order_bestsellers``` 

Third Scenario:
``` cucumber -t @search_order_toprated``` 

Fourth Scenario:
``` cucumber -t @search_filter_price_upto_140``` 

All Scenarios:
```cucumber ``` 
