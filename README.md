**README**

After cloning...

`bundle` to install gems

`rake db:setup`, which will automatically execute:

* `rake db:create` to create the database

* `rake db:schema:load` to load schema.rb 

* `rake db:seed` to load seeds.rb

If you already have a postgres database named 'bog_app*', there may be conflicts. You can run `rake db:drop` from your other app if you want to persist to the db from this app, or vice versa. `rake db:setup` will always be required after a drop.  

**NOTE:** You will lose all data in a database that you drop.

If one is created, delete the application.css file in the app/assets/stylesheets
folder.  It will interfere with application.scss.


