# Fashion Show Organizer Rails App with a jQuery Front End

This is a complete Ruby on Rails application with dynamic features that are possible through jQuery and a JSON API. The application manages data about fashion designers, designs and fashion shows through complex forms and RESTful routes.  The users of the organizer are all-time greatest fashion designers who can log in, create new designs of various styles and fashions, and create fashion shows at different locations around the world. A new fashion designer can sign up, create designs and set up fashion shows using the existing designs as well as create their own. The entire signup, login, logout and authentication process is handled by Devise. Logging in is also available via an existing Facebook account. The relations between the models include belongs_to, has_many and has_many_through, designs being the join table between designers and fashion shows. The Designer model is used throughout the application, but its class_name is actually User in the spirit of Devise. Both designer’s and fashion show’s show pages include a link to create a new design, and this functionality is handled by nested routes. Nested attributes and a custom setter are represented by the functionality of creating a new design within the form for a new fashion show. Fashion shows can also be selected by location with the help of class methods, and the user can check out fashion shows at the location of their choice.

Installation instructions

Run bundle install to install all required gems. Then run rails s and click on a link provided in your terminal.

Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/igoreskin/fashion-show-organizer-rails-app-with-a-jquery-front-end This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

License
Copyright (c) 2018 Igor Eskin

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
