# dry-web-blog: a dry-rb/rom-rb example project

This project demonstrates a realistic app built with [dry-rb](http://dry-rb.org/) & [rom-rb](http://rom-rb.org/).

This is “yet another blog” project, to allow you to see how these common concepts and features are implemented with dry-rb & rom-rb.

This is also a _work in progress_. This project is under active development as we build out the features of a typical blog. Follow along with the pull requests to see how these apps are built.

## TODO

- [ ] Home page with article listing
- [ ] Article permalink page
- [ ] Category pages with article listings
- [ ] Admin area with user authentication
- [ ] Admin CRUD features for articles
- [ ] Admin CRUD features for categories
- [ ] Admin account management area

## Development

To run the app, follow these steps:

1. Run `bundle`
2. Copy `.example.env` to `.env`
3. Copy `.example.env.test` to `.env.test`
4. Create a `dry_web_blog_development` Postgres database
5. Update the database schema with `bundle exec rake db:migrate`
6. Run the app with `bundle exec shotgun -p 3000 -o 0.0.0.0 config.ru`

## Testing

1. Create a `dry_web_blog_test` Postgres database
2. Update the database schema with `RACK_ENV=test bundle exec rake db:migrate`
3. Run the tests with `bundle exec rake spec`
