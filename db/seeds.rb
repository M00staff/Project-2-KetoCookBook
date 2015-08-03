# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(post_body: "TEST POST1", author: "Moose", photo_url: "http://4.bp.blogspot.com/_0dtf78jNyMg/SvC_V7XyAAI/AAAAAAAAAJY/bJoatgJq168/s1600-h/BigDiscoBiscuitsLogoInverted.jpg")
Comment.create(comment_body: "TEST COMMENT1", author: "Moose", post_id: 1)
