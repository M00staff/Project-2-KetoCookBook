# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(post_body: "1 part lazers\n 1 part filthy dance beats\n\n\n Being a Biscuits fan isn’t like being involved with another jam band. On the most superficial level, we don’t have drum circles outside the shows. We don’t make any pretense of embracing traditional hippie philosophies, and we don’t promote hemp. We, and the music of the band we love, are most definitely not “mellow.” Our band of choice does not celebrate its connections with the earth, with the mythology of the wild West, or with the folk roots of American music. Instead, we embrace a band whose music is decidedly urban, progressive, and violently intense, a band whose performances we evaluate on the merit of their ability to leave us feeling as if we had been physically mauled by the relentless barrage of futuristic sounds. We often leave shows limping and bruised, bearing more resemblance to someone who had just spent the past three hours sparring with an angry malfunctioning robot rather than attending a concert. We rally around a band that’s one part pro-wrestling, one part twisted Japanimation, and one part whacked-out futuristic summer camp, a band that taunts us from their web page with the motto “We Hope You Survive” and from the stage by hacking their compositions into fragments which they later reassemble them into complex palindromes, sandwiches, inverses, and reversals. ", title: "Tasty Snack", photo_url: "http://4.bp.blogspot.com/_t3EAPUhcnho/TQQ10HLtpII/AAAAAAAAAHU/Slp69B0LCYc/s1600/DiscoBiscuits.jpg", user_id: 1)
Comment.create(comment_body: "Fresh biscuits to your door since 1995", post_id: 1, user_id: 1)
User.create(username: "Mostafa", password: "1234")
