require 'rubygems'
require 'bundler/setup'
require 'mechanize'

#Job = Struct.new(:title, :location, :summary)


#agent = Mechanize.new

#page = agent.get('http://www.dice.com')

#agent.history_added = Proc.new {sleep 0.5}
#job_form = page.form_with(:action => "/jobs")

#job_form.q = "junior rails"
#job_form.l = "95110"

#page = agent.submit(job_form)
#puts page.methods

#pp page

#job_list = page.parser

#job_link = job_list.search("h3 a").attr("title").value


#pp job_link

# initialize new Mechanize object

#create job struct to save parsed data

#get page to parse


#form_submit

#list_jobs

#get_link

#save_link
Job = Struct.new(:title, :location, :description)

URL = 'http://www.dice.com'

class Scraper
	attr_accessor :agent

	def initialize
		@agent = Mechanize.new
		@agent.history_added = Proc.new { sleep 0.5 }
	end

	def get_webpage
	  page = agent.get(URL)	

	end

	def get_form
		page = parse_webpage
		job_form = page.form_with(:action => "/jobs")
	end

	def fill_in_form
		form = get_form
		form.q = "rails"
		form.l = "CA"
	end

	def submit_form
	end
end

web_scraper = Scraper.new

pp web_scraper.get_webpage