class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    parsed_emails = @emails.split(", ")
    if parsed_emails.include(" ")
      parsed_emails.split(" ").uniq
    else
      parsed_emails.uniq
    end
  end
  
end

# The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
