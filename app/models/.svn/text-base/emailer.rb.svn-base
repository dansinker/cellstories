class Emailer < ActionMailer::Base

   
   def test
   subject	"testing this e-mail"
   recipients "dansinker@gmail.com"
   from "stories@cellstories.net"
   body "this is the body of the e-mail"
end

def scheduled(story)
 recipients 	story.author.email
 subject 		"Your story has been scheduled on CellStories"
 from 			"stories@cellstories.net"
 sent_on 		Time.now
 body 			:story => story
end

end