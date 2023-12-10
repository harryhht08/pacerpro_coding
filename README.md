Soft Delete Functionality in Ruby on Rails
Overview
This repository contains the implementation of a basic soft delete functionality for a Ruby on Rails model named Item. Soft delete is a mechanism to mark records as 'deleted' without physically removing them from the database. This is especially useful for features like trash or recycle bins in applications.

Features
Soft Delete: Records can be marked as deleted with a timestamp rather than being removed from the database.
Restore: Soft deleted records can be restored back to their original state.
Default Scope: Soft deleted items are automatically excluded from default queries to simulate the effect of deletion.
Getting Started
Prerequisites
Ensure you have the following installed:

Ruby (version specified in .ruby-version)
Ruby on Rails
SQLite3 (or another database of your choice, with necessary configuration changes)
Installation
Clone the Repository:

bash
Copy code
git clone [Your-Repository-URL]
cd [Your-Repository-Name]
Install Dependencies:

bash
Copy code
bundle install
Database Setup:

bash
Copy code
rails db:create
rails db:migrate
Running the Application
To run the application locally:

bash
Copy code
rails server
Visit http://localhost:3000 in your web browser.

Running Tests
To run the RSpec tests:

bash
Copy code
bundle exec rspec
Implementation Details
Model (Item): Located in app/models/item.rb, this model includes the soft_delete and restore methods.
Migration: The migration file in db/migrate/ creates the items table with name and deleted_at attributes.
RSpec Tests: Located in spec/models/item_spec.rb, these tests cover the functionality of soft deletion and restoration, along with the default scope behavior.
