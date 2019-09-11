class EmailAddressParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    @emails
    if @emails.include?(" ") && @emails.include?(",")
      @emails.split(" ").split.(", ")uniq
    elsif @emails.include?(" ")
      @emails.split(" ").uniq
    elsif @emails.include?(", ")
      @emails.split(", ").uniq
    else
      @emails
    end
  end
  
end

# The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
