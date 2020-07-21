Rails 5 app using Semantic UI and websockets for [The Complete Ruby on Rails Developer Course](https://github.udemy.com/course/the-complete-ruby-on-rails-developer-course).

This multi-user chatroom supports interactive user signup through `Devise`, and handles real-time multi-user communication via websockets and javascript using ActionCable. This could be extended with functionality in future projects to support friends lists, dynamic user highlighting, and multi-channel communication.

To run:

1. Clone the repository
2. Navigate to the cloned repository and run `bundle install --without production`
3. Start the Rails server by running `rails s`
4. Navigate to `http://localhost:3000`

This is also deployable to Heroku, and requires the use of Redis in "production" meaning you will need to have a verified Heroku account.
