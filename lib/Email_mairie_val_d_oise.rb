class Email_mairie_val_d_oise
attr_accessor :mairie_emails, :my_hash
=begin
def initialize
    email = get_townhall_urls
    @mairie_emails = []
    email.each{|m| puts get_townhall_email(m); @mairie_emails << get_townhall_email(m).flatten}
    #email.each{|m| puts get_townhall_email(m); @mairie_emails << get_townhall_email(m); @my_hash = JSON.parse(get_townhall_email(m)) }
end
=end

def get_townhall_email(townhall_url)
page = Nokogiri::HTML(URI.open(townhall_url))
commune = page.css("body > div > main > section.text-center.well.well-sm > div > div > div > h1").text
email= page.xpath('//*[contains(text(),"@")]').text.split
arr =[]
arr << {commune => email.join(" ")}
return arr
end 

#print get_townhall_email('https://www.annuaire-des-mairies.com/95/avernes.html')
def get_townhall_urls

  page = Nokogiri::HTML(URI.open('https://www.annuaire-des-mairies.com/val-d-oise.html'))
    all_url = []

urls = page.xpath('//*[@class="lientxt"]//@href')
urls.each{|m| result = "https://www.annuaire-des-mairies.com#{m.text[1..-1]}"
all_url << result
}
return all_url
end

def to_json_file
  email_json = nil
  email = get_townhall_urls
  email.each{|m| email_json =JSON.generate(get_townhall_email(m).flatten)}
 return email_json
end 

end




#binding.pry
