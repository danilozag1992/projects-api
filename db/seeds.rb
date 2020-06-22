# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create([
                 { title: 'Project title 1', content: 'Project content 1', slug: 'article-title-1' },
                 { title: 'Project title 2', content: 'Project content 2', slug: 'article-title-2' },
                 { title: 'Project title 3', content: 'Project content 3', slug: 'article-title-3' }
               ])