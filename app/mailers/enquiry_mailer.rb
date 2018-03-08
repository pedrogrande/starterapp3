class EnquiryMailer < ApplicationMailer

  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail to: @enquiry.email, subject: "Hi " + @enquiry.name + ", your enquiry has been received :)"
  end


  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail to: "pete@digitalintelligence.institute", subject: "Hey! An enquiry has been received!"
  end
end
