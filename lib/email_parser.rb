# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    attr_accessor :emails 

    def initialize(emails)
        @email = emails
    end

    def parse
        #Remove white space
        update_emails = @email.gsub(/\s+/m, ' ').strip.split(" ")


        #Remove commas
        update_emails.collect { |email| email.tr(",", "") }.uniq



    end
end