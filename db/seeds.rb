# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Article.create(
    title:"What's Different With Round Two Healthcare?",
    author: 'Mr. Penrose',
    intro: "These days it seems all we're hearing about is the new healthcare bill...",
    body:"![unsplash banner](https://unsplash.it/600/300)

    # What To Do With All That Time...
    This is another [test article](http://google.com). This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature.
    > 'This is a quote for the article. This is a quote for the article and it is in quotes.'


    ## This is an H2 Sub-Headline
    This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature.

    This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature.

    * Bulleted list item
    * item number two
    * item number three

    ## This is also a sub-headline
    This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature.

    This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. This is another test article. This is another test article that is testing the markdown editor feature. "
  )
end
