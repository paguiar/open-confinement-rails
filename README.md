# README

An attempt to bring this (https://www.grenoble.fr/1705-j-ai-besoin-d-aide.htm) to as many people as possible world-wide, while hopefully raising social awareness during this crisis period.

## Current state

What you should see on the index page is:

![Index](/etc/index.png)

Upon clicking on "I need help!":
![Proposals](/etc/proposals.png)

On "I want to help!":
![Requests](/etc/requests.png)

## What essential features are yet to be done... (call for help!)

- A lot of non code related tasks to get this to as many people as possible
- HTML/CSS layout(s)
- Authorization (and making some pages and information only visible to admins or something like that)
- I18n, and translate to many languages
- Marker grouping on the map
- Email stuff
  - Configuring devise to send emails for registrations
  - Notify by email when something needs help or when someone wants to answer to your help request
- Filters while viewing the proposals and requests
- Improve browsing flows overall...
- Refactor view into partials and helpers.
- Tests...
- Etc?

## How to ...?

This project is standard rails 5. That is the best documentation I can give you for the moment.

- Install rails/bundle
- Clone repository and run in it:

```
bundle install
# Look for instructions in error messages!
bundle exec rake db:drop db:create db:migrate db:seed
bundle exec rails server
```

## Keys to adoption

This software would work best when deployed by local authorities or influential organizations.
So adoption is a top priority, and the hardest challenge.

The code is/was easy next to these challenges, it is here where most of the help is needed!

To increase the chances of adoption, the project must meet minimum quality standards.

- Formality
  - Implement the best sofware practices (TDD, CI, automatic releases, etc)
- Compatibility (authorities will not adapt their infrastructure to this software)
  - We need help testing and documenting many scenarios:
    - Installing on different OSs
    - Installing on different Linux distributions
    - Installing on different web servers
    - Installing on different IaaS providers, etc.
    - Configuring to use different database software
    - Configuring to use different email software
- Localization
  - Implement I18n everywhere.
  - We will need people to contribute translations.
- Support and adaptability
  - Documentation, helpful and responsive community.
  - Document SSL deployment, etc

Note that even if I do not see this software deployed world wide as a global service, it can be a possibility...

## License

- Full freedom for everybody to do anything with it and its derived work.
- Provided "as is" (no guarantees, no responsibilities to blame on volunteers).
- All people contributing work for this project accept this license.

## Draft

Everything I have been writing for the last few days is kind of drafty, if you can improve the wording,
correct my grammar, etc, please do it! It is better for the project.

