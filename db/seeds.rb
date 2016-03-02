# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.destroy_all
Book.destroy_all

wind = Book.create({
  title: "The Name of the Wind", author: "Patrick Rothfuss", publication_date: "2007-03-27",
  image: "http://vignette2.wikia.nocookie.net/nameofthewind/images/9/9e/The_Name_of_the_Wind_(UK)_cover.jpg",
  summary: "My name is Kvothe.

  I have stolen princesses back from sleeping barrow kings. I burned down the town of Trebon.
  I have spent the night with Felurian and left with both my sanity and my life.
  I was expelled from the University at a younger age than most people are allowed in.
  I tread paths by moonlight that others fear to speak of during day.
  I have talked to Gods, loved women, and written songs that make the minstrels weep.

  You may have heard of me."
})

owen = Book.create({
  title: "A Prayer for Owen Meany", author: "John Irving", publication_date: "1989-03-01",
  image: "http://marketwizardz.com/wp-content/uploads/2014/01/Owen-Meany.jpg",
  summary: "'I am doomed to remember a boy with a wrecked voice—not because of his voice,
  or because he was the smallest person I ever knew, or even because he was the instrument of my mother's death,
  but because he is the reason I believe in God; I am a Christian because of Owen Meany.'

  In the summer of 1953, two eleven-year-old boys—best friends—are playing in a Little League baseball game in Gravesend, New Hampshire.
  One of the boys hits a foul ball that kills the other boy's mother.
  The boy who hits the ball doesn't believe in accidents; Owen Meany believes he is God's instrument.
  What happens to Owen, after that 1953 foul ball, is extraordinary."
})

science = Book.create({
  title: "Bad Science", author: "Ben Goldacre", publication_date: "2008-09-01",
  image: "http://ecx.images-amazon.com/images/I/71fmQ4lt-lL.jpg",
  summary: "Ben Goldacre’s wise and witty bestseller, shortlisted for the Samuel Johnson Prize,
  lifts the lid on quack doctors, flaky statistics, scaremongering journalists and evil pharmaceutical corporations.

  Since 2003 Dr Ben Goldacre has been exposing dodgy medical data in his popular Guardian column.
  In this eye-opening book he takes on the MMR hoax and misleading cosmetics ads, acupuncture and homeopathy,
  vitamins and mankind’s vexed relationship with all manner of ‘toxins’.
  Along the way, the self-confessed ‘Johnny Ball cum Witchfinder General’ performs a successful detox on a Barbie doll,
  sees his dead cat become a certified nutritionist and probes the supposed medical qualifications of ‘Dr’ Gillian McKeith.

  Full spleen and satire, Ben Goldacre takes us on a hilarious, invigorating and ultimately alarming journey
  through the bad science we are fed daily by hacks and quacks."
})

reviews = Review.create([
  { name: "Peter Smith", description: "Really loved this book! Great portayal of the struggles of the main character.", rating: 4, book_id: wind.id },
  { name: "Patrick R.", description: "Best book I've ever read hands down.", rating: 5, book_id: wind.id },
  { name: "Jessie Falcon", description: "Lacks soul. Suffice it to say, this book had so much potential, but for me it fell flat.", rating: 1, book_id: owen.id },
  { name: "Hannah", description: "Outstanding. Reading this book contained and gave me absolutely everything I love about reading.", rating: 4, book_id: owen.id },
  { name: "Lance G.", description: "I stayed up until 2 a.m. finishing the last 100 pages of this book, stifling my tears so as not to wake up my wife.", rating: 5, book_id: owen.id },
  { name: "Tania", description: "I don't understand how this book got so many good reviews. I was not a fan of the author's writing style.", rating: 2, book_id: owen.id }
])
