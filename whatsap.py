from selenium import webdriver
import os
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By

class WhatsupScrapper(object):

	def __init__(self):
		self.driver = self.initiate_browser()

	def __delete__(self):
		self.driver.quit()

	def initiate_browser(self):
		try:
			return webdriver.Chrome('/usr/lib/chromium-browser/chromedriver')
		except exception as e:
			print "error while opening the browser  :: ", e
			raise

	def open_tab(self):
		self.driver.get('https://web.whatsapp.com/');

	def wait_for_login(self):
		try:
			element_present = EC.presence_of_element_located((By.ID, 'side'))
			WebDriverWait(self.driver, 30).until(element_present)
			return True
		except TimeoutException:
			print 'Login failed'
			raise

	def get_contacts(self):
		inp_xpath = '//div[@class="infinite-list-viewport"]//div[@class="chat-title"]'
		contacts = self.driver.find_elements_by_xpath(inp_xpath)
		return [contact.text for contact in contacts]

	def get_msgs(self):
		inp_xpath = '//div[@class="infinite-list-viewport"]//div[@class="chat-status"]'
		msgs = self.driver.find_elements_by_xpath(inp_xpath)
		return [msg.text for msg in msgs]

	def get_videos(self):
		pass


if __name__ == '__main__':

	scraper = WhatsupScrapper()
	scraper.open_tab()
	scraper.wait_for_login()
	print scraper.get_contacts()
	print scraper.get_msgs()
	self.driver.quit()
