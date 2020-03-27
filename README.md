# README

An attempt to bring a simple system to help people that need help connect with locals that can help them (something like this solution deployed in Grenoble, France https://www.grenoble.fr/1705-j-ai-besoin-d-aide.htm) to as many people as possible world-wide, while hopefully raising social awareness during this crisis period.

## Milestones

- The first, concrete milestone is a clone of: https://www.grenoble.fr/1705-j-ai-besoin-d-aide.htm
  - The platform is simple yet very useful
  - Some hours of work would be enough to really help people worldwide

## Why does the world need this?

Local authorities in the world should not build their pandemic crisis handling strategy on software they can not fully control.

As of today and to the best of my knowledge, no open source ready-to-use solution exists.
Which leaves local authorities in cities all around the world with two options in terms of crisis handling software platforms: no software platform at all or putting something together by themselves.

Very few cities around the world will have the ressources and the will to develop and deploy a software platform in such a short time and during a global crisis.
Which is a shame because software can optimize and support the execution of strategies to fight this virus back, and every bit of optimization translates (directly or indirectly) in lives being saved.

I believe it is not too late for the global, open-source, software community to provide authorities and organizations all over the world with a third option: quality software designed to handle this crisis, ready to be installed on-command.

I also believe there are more than enough talented and experienced software engineers around the world that are more than willing to donate a couple of hours to contribute to solving this crisis.

## How to install/run?

This project is standard rails 5. That is the best documentation I can give you for the moment.

- Install rails/bundle
- Clone repository and run in it:

```
bundle install
# Look for instructions in error messages!
bundle exec rake db:drop db:create db:migrate db:seed
bundle exec rails server
```

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

## You can contribute your (non code) writing too!

Everything I have been writing for the last few days is kind of drafty, if you can improve the wording,
correct my grammar, etc, please do it! It is better for the project.

## More milestones

We could stop at the basic milestone; we would have helped many people. We can also aim higher and try to go even further.

Societies around the world will face (globally) the same issues.

- Health systems related issues
  - Lockdowns
  - Saturated hospitals, doctor agendas and information telephone lines
  - Lack of visibility and information
  - Health staff needing transport solutions
  - Health staff needing housing solutions
- Logistics systems related issues
  - Masks, ventilators, etc shortage
    - Individuals and companies with 3D printers offering their printing capacities
  - People struggling to get food and other essential products (panic buying)
  - Logistics workers stopping to work, stressed supply chains
  - Markets and restaurants will be closed/forbidden to prevent the virus from spreading
    - Two-faced problem: sellers will not be able to sell, buyers will not be able to buy...
    - And people will still need to eat

Solutions will require to connect and organize the different actors (citizens, volunteers, public services, businesses, companies, etc) in unconventional ways to minimize the fatalities, the spread of infections, the impact on economies and all the other secondary effects.

Despite the global similarities of the issues and solutions, specifics of each community will mean solutions will not be exactly the same.

The global property of the issues calls for global collaboration (why would we reinvent the wheel over and over all over the world while people are dying?).

The local property of the solutions calls for a well architectured software (configurable, plug ins, etc) that can be adapted/localized to the finest detail (in the most extremes of scenarios, anything is possible if everybody can modify the code they deploy).



## More brainstorming and notes

I have "written" ("brainstormed/drafted past midnight" would be more suited) a lot in the last couple of days on why this software should exist, and be free and open source.

For those that may be interested, here are some links:

- https://docs.google.com/presentation/d/1sy7AvayJcg6OnPd6Zzd_F9h2RrEL-kbfczie1IWk67A/edit?usp=sharing
- https://docs.google.com/presentation/d/1276iHvml--zyhz9jaUoFqGh4BWBTVAnf6mrfrxK46z8/edit?usp=sharing
