Vim�UnDo� 
G�86���D�[�,�ACj���H�T��#<�J   6                                  d0nS   	 _�                     0        ����                                                                                                                                                                                                                                                                                                                                                             d)�H     �   /   0       :   "class MontanaSearchPage(BasePage):       def _setup(self):   A        self.URL = "https://medicaidprovider.mt.gov/providertype"   9        self.BASE_URL = 'https://medicaidprovider.mt.gov'           def is_loaded(self):           pass           def accept(self):   -        return MontanaSearchPage(self.driver)       %    def find_elements_in_table(self):   (        # html = self.driver.page_source   @        current_year = int(datetime.date.today().strftime("%Y"))   6        html = requests.get(self.URL, timeout=60).text   1        soup = BeautifulSoup(html, 'html.parser')   :        div = soup.find("div", {"class": "content-block"})           landing_page_urls = []   2        for landing_page_url in div.find_all('a'):   @            landing_page_url = str(landing_page_url.get('href'))   ?            if re.match(r'^\d{2}[a-zA-Z]*$', landing_page_url):   :                landing_page_urls.append(landing_page_url)               downloadable_urls = []   2        for landing_page_url in landing_page_urls:   <            full_url = f'{self.BASE_URL}/{landing_page_url}'   :            html = requests.get(full_url, timeout=60).text   5            soup = BeautifulSoup(html, 'html.parser')       ?            divs = soup.find_all("div", {"class": "card-body"})               for div in divs:   -                for url in div.find_all('a'):   .                    url = str(url.get('href'))   D                    if url.endswith('xlsx') and current_year in url:   5                        downloadable_urls.append(url)                           break               sleep(.25)       %        for url in downloadable_urls:   R            file_data = requests.get(f'{self.BASE_URL}/{url}', timeout=60).content   Z            with open(f"./output/montana_raw_data/{url.split('/')[-1]}", 'wb') as outfile:   (                outfile.write(file_data)       )# 76 (Applied Behavior Analysis Services)   # 32 (Chemical Dependency)   # 52 (Dialysis Clinic)   # 54 (Hospice)   
# 57 (IHS)   -# 87 (Licensed Marriage and Family Therapist)   &# 58 (Licensed Professional Counselor)   # 59 (Mental Health Center)   # 38 (PRTF)   # 17 (Psychologist)   &# 88 (Severe Disabling Mental Illness)   # 42 (Social Worker)   # 60 (Targeted Case Management)   # 64 (Therapeutic Foster Care)   # 61 (Therapeutic Group Home)5��    /       :               9      o              5�_�                    /        ����                                                                                                                                                                                                                                                                                                                                                             d)�I     �   .   /           5��    .                      8                     5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             d)�J    �   -   .           5��    -                      7                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d)�P    �                #from util.base_page import BasePage   +from util.find_by import FindBy, FindManyBy5��                          f       P               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d)�S     �                ;from selenium.webdriver.remote.webelement import WebElement   +from selenium.webdriver.common.by import By5��                          *       h               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d)�U    �                7from selenium.webdriver.support.ui import WebDriverWait5��                          A       8               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d)�W    �                @from selenium.webdriver.support import expected_conditions as EC5��                          A       A               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             d)�]    �   
      +          �         +    �   	      *          �   
      *    �         )      &    This consists of many Excel files �   	   
   )    �      
   (          �      	   '    5��                          x                      �                          x                      �                         �                      �                        �                     �                         �                      �                     7   �              7       �       E                 �                      �                         �                      �                         �                      �                     0   �              0       �       J                                      �    	                                          �    	   #                 ,                     �    
                     1                     5�_�      
           	   
   #    ����                                                                                                                                                                                                                                                                                                                                                             d)ـ     �         -      8    This solution does *not* use selenium as it was unne�         -    �   	      +      #    output/montana_raw_data folder.5��    	   #                 ,                     �    
                      -                     �    
                     -                     �                      <   2              <       �       ?              	   m             	       5�_�   	              
      H    ����                                                                                                                                                                                                                                                                                                                                                             d)ٍ     �         .          state, as there was no �         .    �         -      H    This solution does *not* use selenium as it was unnecessary for this5��       H                 v                     �                         {                     �                        �                    5�_�   
                    9    ����                                                                                                                                                                                                                                                                                                                                                             d)ٕ    �         .      :    state, as there was no need to interact with the page.5��       9                  �                     �       E                 �                    �       K                 �                     �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d)�    �         0          �         0    �         /    5��                                               �                                              �                     %   "             %       5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                                                             d)�     �   +   -   1       �   +   -   0    5��    +                      �                     �    +                      �                     5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             d)�     �   +   ,                  5��    +                      �                     5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             d)�     �   +   -   0          �   ,   -   0    �   +   -   /    5��    +                      �                     �    +                  8   �              8       5�_�                    0   #    ����                                                                                                                                                                                                                                                                                                                                                             d)�    �   1                  log�   2            �          1      import datetime�   0                          �   0            5��    0                      �                     �    0                    �                    �    0   
                  �                     �    0   	                  �                     �    0                     �                     �    0                     �                     �    0                     �                     �    0                     �                     �    0                    �                    �    0                    �                    �                                               �    1                 .   �             .       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d0nG     �         3          �         2    5��                          �                     �                          �                     �                         �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d0nH     �         5              �         5    �         4       �         4    5��                       7   �              7       �       7                 �                     �                      0   �             0       �       0                 *              	       �                          +                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d0nO     �                 5��                          +                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             d0nR   	 �         6       �         5    5��                                                �                       	                  	       5��