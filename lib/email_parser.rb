# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :emails
  
  @@all = []
  
  def initialize(email)
    @email = email
    @@all << email
  end
  
  def parse
    parsed_emails = @email.split(/\s|,/)
    parsed_emails = parsed_emails.uniq.reject { |i| i.empty? }
    parsed_emails
  end
  
end