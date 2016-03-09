Active Admin Face
======================

### How it looks

![1](http://i.imgur.com/kde5zV1.png)
![2](http://i.imgur.com/ASoPzDP.png)
![3](http://i.imgur.com/MXoQGjz.png)
![4](http://i.imgur.com/RXn7ezZ.png)

### Active Admin interface

Theme for [Active Admin](https://github.com/activeadmin/activeadmin), based on 
[Flattened Active Admin](https://github.com/Papercloud/flattened_active_admin) and 
[ActiveSkin](https://github.com/rstgroup/active_skin). I've take all the best,
re-factor code and implement vector icons from 
[Font-Awesome](https://github.com/FortAwesome/Font-Awesome/). 

IE 10+ tested

### List of changes

1. Main menu rewritten to flex from talbe.
2. All icons moved to vector format
3. Stylize datedicker & fix date format to usual
4. Added hover for the most actions
5. Added default styling for a tables, index tables styling improved also
6. Clean up as possible from `!important` tags for easier future customization
7. Tabs rewritten
and some minor goodies, which I can not remember now


### Installation


Face of Active Admin has been built and tested with Active Admin 1.0.0.pre2 and >= 
Rails 4.2.5 In order to use this gem, please make sure that you are using Active
 Admin from their Github repo:

`gem 'activeadmin', github: 'activeadmin/activeadmin'`

Active Admin was tested only with 1.0.0.pre2. For installation you need to add 
in your `Gemfile`

```
gem 'face_of_active_admin'
```

and then the usual

`bundle install`


Usage
-----

Once you have installed the gem, all you have to do is change the hooks 
in `assets/stylesheets/active_admin.scss` to point to Face of Active Admin.

Change:

```
@import "active_admin/mixins";
@import "active_admin/base";
```

to:

```
@import "face_of_active_admin/mixins";
@import "face_of_active_admin/base";
```

and add to `assets/javascript/active_admin.js.coffee` (replace `#=` to `//=` if 
you prefer native js)

```
#= require face_of_active_admin/base
```

And that's it, welcome to your new interface!


Customisation
=============

Face of Active Admin allows you to change the color schemes of Activbe Admin with 
ease, create a completely different look and feel to your interface.

Once you have the theme working, you can include the 
custom variables by running the generator:

`rails g face_of_active_admin:variables`

This will generate a new SASS file in `assets/stylesheets/` called 
`face_of_active_admin_variables.scss`

In order to make these work, add this line **TO THE TOP** of your `active_admin.scss`

```
@import "face_of_active_admin/variables";
```

Once you have done this you can customize the variables you your hearts content.
 Anything changed here will override the Active Admin Defaults.

### Important

This new line needs to go above _all other Active Admin and Active Admin Face 
`@import` calls_, or else they will not work

ToDo
-----

* Check for requirement of all variables
* Make initialization of the variables one step less
* Input boolean style in edit form is ugly.

Contributing
------------

Fork the Repo, and open a pull request.

Please test if your changes require testing


Thanks
------

A massive thank you to the entire team at Active Admin. They are doing some 
great things over there, and making a lot of our jobs a lot easier.
Thanks for `flattened_active_admin` and `active_skin` gem authors.
