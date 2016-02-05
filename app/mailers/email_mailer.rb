class EmailMailer < ActionMailer::Base
  default from: "vitalij.desuk@gmail.com"

  def request(email)
    @email = email
    mail(to: @email.user.email, 
    	 subject: "Someone is interesting in tutoring",
    	 from: "vitalij.desuk@gmail.com",
    	 bcc: "vitalij.desuk@gmail.com"
    	)
  end
end
