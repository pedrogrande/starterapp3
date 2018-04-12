# README

Hello. This is my starter app. Please feel free to use it.

It has

- Rails 5.1.5
- Devise
- Simple form
- Bootstrap 4
- Fontawesome
- Navbar
- Pages: home, about, contact, privacy
- Enquiries mailer

rails g scaffold Order name email address suburb state postcode country phone paid:boolean cart:belongs_to

rails g model LineItem product:belongs_to cart:belongs_to price:decimal num:integer
