# README

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `rake db:migrate` to get started.

## The Domain

You've just been hired by 'Marvel Comics' - congratulations! The production staff wants you to make a website that will allow the fans to create [heroines, women superheroes](http://www.dictionary.com/browse/heroine). To do this, we need a way to keep track of all of the new heroines and powers that have been created by the fans.

Luckily, another developer has already started the job. We have a model for heroines and a model for powers. Once the database is seeded, visiting `/heroines` displays all of the heroines, and visiting `/powers` displays all of the powers. We just don't have a way to associate heroines with powers.

We have several different powers and each can be bestowed upon **more than one heroine**. Each heroine can only have **one power**.

## Instructions / Deliverables
1. Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the heroines and powers have been created with the proper relations.

2. On the heroines index page, a heroine's name should link to the heroine's show page.

3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.

4. On the heroine new page, add an option for creating a heroine with 1 existing power.

5. Don't allow Heroines to be created if the name field is left blank.

6. Make sure no two heroines have the same super name.