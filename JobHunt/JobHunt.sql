USE JOBHUNT 


create table Login
(
  username varchar(50) primary key,
  password varchar(50),
  role varchar(50),
)

create table Company
(
company_id int  primary key identity(1,1),
company_name nvarchar(MAX),
username nvarchar(50),
contact_person nvarchar(50),
company_contact numeric(18,0),
company_address nvarchar(MAX),
company_email nvarchar(50),
company_details nvarchar(MAX),
)

create table jobseekerinfo
(
jobseeker_id int primary key identity(1,1),
jobseeker_name varchar(50),
username varchar(50),
gender varchar(50),
education varchar(MAX),
contactno int,
addres varchar(MAX),
email varchar(50),
interest varchar(MAX)
)
create table PostAJob
(
 job_id int primary key identity(1,1),
 company_id int FOREIGN KEY REFERENCES Company(company_id),
 job_title varchar (100) default null,
 email varchar (100) default null,
 radios varchar(100) default null ,
 location varchar(500) default null,
 job_description varchar(1000) default null,
 requirment varchar(1000)default null,
 Category varchar(255) default null
)

create table ApplyforJob
(
   apply_id int primary key identity(1,1),
   comapany_id int FOREIGN KEY REFERENCES Company(company_id),
   job_id int FOREIGN KEY REFERENCES PostAJob(job_id),
   jobseeker_id int FOREIGN KEY REFERENCES jobseekerinfo(jobseeker_id),
   applystatus int ,
   applicant_firstname nvarchar(MAX) default null,
   applicant_lastname nvarchar(MAX) default null,
   email nvarchar(MAX) default null,
   phoneno nvarchar(MAX) default null,
   city nvarchar(MAX) default null,
   addres nvarchar(MAX) default null,
   qualification nvarchar(MAX) default null,
   experience nvarchar(MAX) default null,
   CV varchar(50),
)
Insert into Company(company_name,username,contact_person,company_contact,company_address,company_email,company_details)
values
('TMSS ICT Limited','TMSSICT','Manager',880-2-55073530,'West Kazipara, Mirpur-10','tmssict@gmail.com','TMSS is one of the largest Women led NGO and Microfinance Institute in Bangladesh, working towards Poverty Alleviation through an inclusive development approach to improving Health, Education, Microfinance, ICT, Climatically resilient livelihoods, Capacity building and enhance Social justice & Gender equity. It has 5.7 million members since 1980. TMSS delivers its Services throughout the country.'),
('Taham Express (An Outsourcing Firm)','TahamExpress','Managing Director',01763131973,'Dorgha Moholla, Sylhet','arafathyeasir0@gmail.com','Taham Express LTD is a internet based graphics design outsourcing company which is responsible for all kind of images editing works. The model photographers, product photographers, Web design house, Photo studio, Catalogue companies, jewelry companies, Fashion industries, Real estate agencies, Online retailers, Bloggers etc as our valuable users.'),
('Advanced IT','AdvancedIT','Manager',01763131900,'Mirpur-13,Dhaka','advancedit@gmail.com','Advanced IT is your full service Managed Service Provider. From concept to completion we are with you every step of the way!'),
('IT Magnet','ITMagnet','Manager',01763136600,'New DOHS, Mohakhali','itmagnet@gmail.com','IT Magnet is a highly-experienced, industry-leading software development company, specialising in workflow and business process automation software. Since 2003, we�ve delivered mission-critical systems for national, global and government organisations and for many small businesses.'),
('DreamOnline Limited','DreamOnline','Manager',0248810931,'House# 7, Road# 2/C, Block# J, Dhaka, Dhaka 1212','dreamonline@gmail.com','Dream Online proposes the most effective IT introduction method to solve the problems of customers.  Platforms we develop for: iOS / Android / Windows / Mac. Technology: AI/ML, AR/VR, IoT, NFC/Beacon, wearable device applications etc.'),

('NetCoden Inc','NetCoden','Manager',01683131973,'2/2, Pallabi (Main Road), Mirpur 11.5','netcoden@gmail.com','NetCoden is mainstream Software solution company focuses in the arena of CRM, API, Mobile & Web App Development. We also offer solutions in diverse areas like Banking, Insurance , Trading system tools & plugins, Software & Financial applications, Internet/Intranet applications and e-Commerce & Integrated Business solutions.'),
('Oculin Tech BD Ltd.','OculinTech.','Manager',01936436483,' 23, Gulshan Avenue, Bay Tower. Dhaka. Gulshan - 1','oculintechbd@gmail.com','We provide consultancy services of the highest quality in the areas of governance of corporation, information technology and information security and ERP. We conduct information security risk assessments and IT audits. Through our services (details of which are provided below), we will help you improve you service quality, protect your environment and sensitive information, build and maintain world-class management systems, and assist you in getting ISO certified.'),
('Digicon Technologies Ltd.','DigiconTechnologies','Manager',01836593624,'242 Tejgaon I/A, Gulshan Link Road, Dhaka.','digicontechnologies@gmail.com','Digicon Technologies Ltd is a leading outsourcing organization in Bangladesh, with an industry leading edge in the vertical of BPO and IT/ITES solutions. Through our dynamic solution mechanism, we list among our clients some of the world�s most prestigious firms and companies as well as diverse government agencies. Our company is a pioneer in paving the way for the rise of the BPO industry in Bangladesh and our experience gives us an edge in delivering an excellent customer experience.'),
('TrustInfo Tech','TrustInfoTech','Executive Manager',01839573922,' Road #3, House 28/B, Level 4, OLD DOHS Banani Dhaka','trustinfotech@gmail.com','We will prepare the project according to your individual needs.You can count on us to choose the most appropriate template for yours project.'),
('Softifybd Limited','Softifybd','Manager',01739264934,'Hazi Motaleb Plaza, S.S. Shah Road, Bandar, Narayanganj','softifybd@gmail.com ','Softifybd Limited is a regular and custom software development company in Bangladesh and specializes in made-to-order software on a variety of technology platforms. We feel proud on our ability to create the perfect custom program that will optimize the workflow of your business and company.'),


('BRAC Bank Limited','BRACBank','Manager',01739837390,'Gulshan-1, Dhaka','bracbank@gmail.com','BRAC Bank Limited, pioneer in SME Banking, delivers a full array of banking services to individuals as well as business entities. With a network of 184 Branches, over 460 ATMs, 448 SME Unit Offices and 229 remittance delivery points, the Bank has unmatched reach to provide a comprehensive range of solutions to serve millions.'),
('IPDC Finance Limited','IPDCFinance','Manager',01729749304,'Hosna Center (4th Floor), 106 Gulshan Avenue, Dhaka - 1212','ipdcbd@gmail.com','IPDC Finance Ltd. is the first private sector financial institution of Bangladesh established in 1981. IPDC is credited with being the most innovative financial institution of the country partnering in many landmark projects as well as introducing many financial products which were first of its kind in the country. Today, IPDC is a diversified financial institution catering to Corporate, SMEs and Retail market segments.'),
('Meridian Finance & Investment Limited','MeridianFinanceInvestment','Manager',017394629044,'Silver Tower (Level-6), 52 Gulshan Avenue, Gulshan 1, Dhaka - 1212, Bangladesh','meridianfinancebd@gmail.com','Meridian Finance & Investment Ltd, the newly established Non-Banking financial institution'),
('Industrial and Infrastructure Development Finance Company Limited (IIDFC)','IIDFC','Manager',01729625804,'Banani-11, Dhaka','iidfc@gmail.com','Industrial and Infrastructure Development Finance Company Limited (IIDFC) is the newly established Non-Banking financial institution'),


('Dhaka Insurance Limited','Xfactory','bb',58316139-43,'Dhaka Insurance Bhaban,Head Office:71, Purana Palton Line,Dhaka-1000','dhakainsurancebd@gmail.com','The company has professionally qualified and experienced Executives, Officers, and Staff and is sufficiently equipped to deal with the technicalities of general insurance business of various nature so as to cater for the growing needs of the clientele.'),
('MIDAS Investment Limited','MIDAS','Manager',01729474030,'MIDAS Centre (6th floor), House # 05, Road # 16 (New), 27 (Old), Dhanmondi, Dhaka-1209','midas@gmail.com','MIDAS Investment Limited, a newly licensed full-fledged Merchant Banker and Portfolio Manager is going to appoint Human Resources in the following positions and invites applications from the deserving, honest and eligible candidates.'),
('First Capital Securities Limited','FirstCapitalSecuritiesLimited','Manager',88029572096,'Somobay Bhaban (9th floor), 9/D Motijheel- C/A, Dhaka-1000','fcslbd@gmail.com','First Capital Securities Limited is one of the oldest and foremost brokerage houses in Bangladesh with Dhaka Stock Exchange (DSE) TREC No # 70 and Chittagong Stock Exchange (CSE) TREC No # 11. First Capital Securities Limited is fully acquiescent with Securities and Exchange Commission policies. Presently, FCSL have 5 (including head office) branches in different location.'),

('Presidency University','PresidencyUniversity','Administrator',8801766554433,'8, Progoti Sharani, Block-J, Road- 9, Baridhara, Dhaka-1212','registrar@pu.edu.bd','we provide quality education at an affordable cost. We have qualified faculty base, state of the art lab facilities, student friendly campus environment for study and strict academic rules and guidelines for each and every student.'),
('BAC International Study Centre','BAC','Administrator',8801738947920,'Dhanmondi, Dhaka','hr@bacbd.org','BAC International Study Centre represents a dynamic private institution of higher education with a philosophy dedicated to quality teaching for achieving overseas degrees to meet the demands of the changing market economy and setting standard for the future. BAC International Study Centre aims to provide an alternative to traditional education based on a unique pathway for overseas degree/ diploma from world-class institutions.'),
('Oxford International School','OxfordInternationalSchool','Administrator',0189374957372,'House 34, Road 27 (old), Dhanmondi R/A','ois@gmail.com','Oxford International School (OIS) is an English medium co-education School following the academic programme of the University of Cambridge, UK up to GCE O and A Levels.'),

('Mushroom - The Treasure of Food','MushroomTF','Manager',0173047563893,'Mehedi Food Court, 300 feet Purbachal Express Highway, Dhaka','mtof@gmail.com','Its a food court'),
('Hotel Elaf International','HotelElaf','Manager',01726155165,'Coxs Bazar','hotelelaf@gmail.com','We provide upscale guest service experiences for clients throughout their stay'),
('Sarah Resort Ltd.','SarahResort','Manager',017348300485,'Notun Bazar, Boro Beraid, Dhaka-1212, Bangladesh','sarahresort@gmail.com','We provide upscale guest service experiences for clients throughout their stay'),
('Momo Inn Limited','MomoInn','Manager',018384905866,'Dhaka','jobbclgroup@gmail.com','We resolves guest problems quickly, efficiently, and courteously and Anticipate and handle any guest requests and satisfy their needs within acceptable guidelines'),


('Bengal Group Of Industries.','BengalGroup','Manager',0194958945045,'75 Gulshan Avenue, Gulshan-1, Dhaka',' info@bengal.com.bd','Our mission is to strive continuously to exceed customers expectations for achieving unlimited excellence by providing greater value to our customers than our competitors'),
('Probashi Palli Group','ProbashiPalli','Manager',018247590373,'Ahmed Tower (Level-12), Banani, Kamal Ataturk Road, Dhaka-1213.','probashipalligroup@gmail.com','In response of Peoples Republic of Bangladesh to increase foreign investment in specialized housing sector "Probashi Palli" is the first and enormous foreign invested Project by Residential & Non Residential Bangladeshis (NRB).'),
('Zihan toy Industries Limited.','Zihantoy','Manager',018394869303,'Mogbazar, Dhaka','zihantoy@gmail.com','Zihan Toy Industries Ltd. is one of the largest plastic toy manufacturers and exporter of Bangladesh. Backed by years of business experience, under Zihan Plastic Industries brand, we supply a plethora of plastic toys to our customers both domestically and in international markets.'),
('Neuco Industries Limited','NeucoIndustries','Manager',0172348934509,'Dhanmondi, Dhaka','neuco@gmail.com','Agro-Machinery Research, Development & Manufacturer'),
('Le Reve','LeReve','Manager',01720794050,'REVE Centre, Plot-94, Purbachal Express Highway, Dumni, Khilkhet, Dhaka-1229','reve@gmail.com','REVE Group is headquartered in Singapore and has its development centers in Bangladesh & India and branch office in Hong Kong. Due to its global presence, REVE Group is able to deliver reliable solution to its clientele spread across 78 countries. In the past one decade the group has experimented in various sectors be it IP telephony or ecommerce. The success of REVE Group lies in its operational excellence, strong values, product innovation and its capability to deliver superior customer satisfaction in each of the markets it serves.'),
('Alim Industries Ltd.','AlimIndustries','Manager',017368478732,'BSCIC I/E, Gutatikor, Kodomtoli, Sylhet','alim@gmail.com','Agro-Machinery Research, Development & Manufacturer'),

('Al Haramain Hospital Pvt. Limited','AlHaramainHospital','Manager',018284859646,'House#12, Road#19, Sector#07, Uttara, Dhaka-1230','alharamain@gmail.com','We evaluates clients` needs to identify their dietary requirements and restrictions. We use their expert knowledge of nutrition and food to help others make better healthy food choices.'),
('Purple Algorithm Limited','PurpleAlgo','Manager',013958640585,'Baily Road, Dhaka','purplealgo@gmail.com','We apply knowledge and skills to perform diverse and complex laboratory procedures and/or specialized technical, administrative services requiring the application of equivalent technical knowledge in quality control.'),
('Orion Pharma Limited','OrionPharma','Manager',028870130,'Orion House, 153-154 Tejgaon Industrial Area Dhaka-1208, Bangladesh','orion@orion-group.net','Orion Pharma Ltd. is one of the premier pharmaceutical companies of Bangladesh which has been contributing to improving the human health care of the country by providing quality branded-generic pharmaceuticals. We, at Orion Pharma Ltd., always believe in  and refuse to settle for anything until it exceeds the existing standard.'),
('NIPRO JMI Pharma Ltd.','JMIGroup','Manager',55138725 ,'JMI Group, Unique Heights, Level-6,Level-7 & Level-11, 117, Kazi Nazrul Islam Avenue, Ramna, Dhaka-1217 ','jmigroup@gmail.com','A Joint Ventured company with Japan, South Korea, Turkey & China who manufactures high quality health care products like Medical Devices and Medicines for local and international marketplace in our CGMP compliant pharmaceutical manufacturing plants and also produces LPG related products like Industrial Gas (Ethylene Oxide - C2H4O, Carbon dioxide � CO2), Industrial Gas, Cylinders, Auto Tank, Valve & Bung, LPG Conversion Workshop and many more exclusively in our own LPG & Petroleum manufacturing plant.'),
('Healthcare Pharmaceuticals Ltd.','Healthcare','bb',01638994574,'Nasir Trade Centre (Level-9 & 14), 89 Bir Uttam C.R. Datta Sarak, Dhaka-1205','hcpl@gmail.com','Healthcare Pharmaceuticals limited (HPL) is one of the best kinds of company in the pharmaceutical industry in Bangladesh manufacturing branded generic products for local and overseas market in Asia, Africa and CIS region. HPL adopting the most recent technology to formulate and to produce generic formulation ensuring optimum quality compared to the international brands.'),

('Bangla Insider Ltd.','Bangla Insider Ltd.','Manager',0178749509033,'House:43, Level:5, Road: 16(new), 27 (old), Dhanmondi, Dhaka-1209','info@banglainsider.com','Bangla Insider is a first of its kind infotainment portal of Bangladesh. Bangla Insider provides you latest and the most reliable Bangla and English news on sports, entertainment, lifestyle, politics, technology, features and cultures. Let�s be a part of Bangla Insider to get the inside story of the news.'),
('Manabik Shahajya Sangstha (MSS)','MSS','Manager',017393098096,'SEL Centre (3rd Floor) 29, West Panthapath, Dhaka-1205','mssbd@gmail.com','Manabik Shahajya Sangstha (MSS) is a national level non-governmental organization working to alleviate poverty since 1974 by improving the quality of life of the disadvantaged segment of the society through multifaceted programs.'),
('BJIT Ltd.','BJIT','Manager',0173908674568,'House # 7, Road # 2C, Block # J, Baridhara, Dhaka-1212','bjit@gmail.com','Offshore Software Development (IoT & Big Data, AI & Deep Learning, Fintech & Block Chain, Cloud & Enterprise Solution and Smartphone & Embedded Application), Application Management as a Service and Software Testing & Automation'),
('Jamuna Electronics & Automobiles Ltd.','JamunaElectronics','Manager',01735834500,'Jamuna Future Park, Ka-244, Progati Sarani, Kuril, Baridhara, Dhaka-1229','jamuna@gmail.com','amuna has a strong goodwill for its products and operation in both local and global market. It is imperative to point out that Jamuna has built up a new World of textile with the best technology and machinery imported from Germany, Switzerland, USA, Japan, India, Italy etc. for producing the best quality products for the global market. Jamuna has diversified its business from manufacturing to media industry.'),
('RFL Group','RFL','Manager',0178239586809,'PRAN RFL Center, 105 Middle Badda, Dhaka','rflgroup@gmail.com','RFL is one of the fastest growing companies in Bangladesh. Over its 35 years of journey RFL has become synonymous to quality. RFL has a wide range of products which include plastic products, PVC, metal, electronics, wooden furniture, Paint, Stationary, Footwear, Bicycle, Medical device, Real State, Road Construction etc.');




Insert into jobseekerinfo(jobseeker_name,username,gender,education,contactno,addres,email,interest)
values('Sabiha Sayed','sabiha','Female','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
('Sadia Tasnim','sabiha','Female','B.Sc in Computer Science and Engineering', '0166494739','Mohammadpur, Dhaka','sadia@gmail.com','Mobile Application Development'),
('Tasmiyah Tisha','sabiha','Female','B.Sc in Computer Science and Engineering', '016747234','Khilgaon, Dhaka','tisha@gmail.com',' PHP Framework'),
('Sadia Afrin','afrin','Female','B.Sc in Computer Science and Engineering', '0187678948','Shantinagar, Dhaka','afrin@gmail.com','Database Management'),
('Jaharatuz Warifa','warifa','Female','B.Sc in Computer Science and Engineering', '0167474794','Bashabo, Dhaka','warifa@gmail.com','Wordpress Theme'),
('Fatema Rahman','fatema','Female','B.Sc in Computer Science and Engineering', '0189784789','Dhanmondi, Dhaka','fatema@gmail.com','Competitve Programming'),

('Mahiyat Maheru','maheru','Female','BS in business administration', '0170934797','Mohammadpur, Dhaka','maheru@gmail.com','Digital Marketing'),
('Umme Habiba','habiba','Female','MBA Major in Marketing)', '01087989332','Mirpur, Dhaka','habiba@gmail.com','Marketing and Sales'),
('Nazmul ovi','ovi','Male','MBA', '016478558','Mohammadpur, Dhaka','ovi@gmail.com','Interior Sales'),
('Sadman Sakib','sadman','Male','Master of Business Administration (MBA) in Marketing', '0194738974','Palashi, Dhaka','sadman@gmail.com','Marketing and Sales'),

('Abdullah Mahbub','mahbub','Male','Masters in Finance', '01622772436','Mohammadpur, Dhaka','mahbub@gmail.com',' Finance & Accounts'),
('Nadira Anjum','nadira','Female','Bachelor of Commerce (BCom)', '0194892376','Khilgaon, Dhaka','nadira@gmail.com','Finance & Accounts'),
('Mashruka Jahan','mashruka','Female','Master of Commerce (MCom) in Accounting', '0178983489','Mohammadpur, Dhaka','mashruka@gmail.com','Finance & Accounts'),
('Tanvir Ahmed','tanvir','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','tanvir@gmail.com','Teaching and Research'),
('Rifat Rahman','rifat','Male','MBA in Bank Management ', '01068877966','Mohammadpur, Dhaka','rifat@gmail.com','Basel Implementation Framework '),
('Zohan Chowdhury','zohan','Male','Bachelor degree in Economics,', '01779680564','Gulshan, Dhaka','zohan@gmail.com','Sales Management'),
('Anika Bushra','bushra','Female','MBA in Bank Management', '01847348589','Banani, Dhaka','bushra@gmail.com','Bank Management'),
('Ipshita Kheya','kheya','Female','Bachelor degree in Finance', '01878489273','Mohammadpur, Dhaka','kheya@gmail.com','Marketing'),
('Shaman Shoumik','shoumik','Male','Bachelors degree in Business', '01894798372','Mirpur, Dhaka','shoumik@gmail.com','Sales Management');

--('Tahmid Ahmed','tahmid','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Faiza Fairuz','faiza','Female','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Maham Ahmed','maham','Female','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Tashfiq Ahmed','tashfiq','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Rishadul Islam','rishad','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Rafat Haque','rafat','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Faraz Kabir','faraz','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Shafayet Islam','shafayet','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Arafat Uddin','arafat','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),
--('Shahriar Moin','moin','Male','B.Sc in Computer Science and Engineering', '01622772436','Mohammadpur, Dhaka','sabiha@gmail.com','Web Development'),



select * from Login
select * from Company
select * from jobseekerinfo
select * from ApplyforJob
select * from PostAJob




UPDATE jobseekerinfo
SET jobseeker_name = '1', username = 's', education = '3' ,contactno = 4 ,addres = 'qqq',email='@gmail',interest='pp'
WHERE jobseeker_id =20



select DISTINCT Company.company_name,Company.company_details from Company join PostAJob
on Company.company_id = PostAJob.company_id 
where Company.company_id in (select company_id from PostAJob where job_id =1)



select * from PostAJob where job_id not in  (select job_id  from ApplyforJob where jobseeker_id = 1 and (applystatus=0 or applystatus=1) ) 



select * from PostAJob where (requirment LIKE '%we%' or requirment LIKE '%dz%') AND (job_id not in  (select job_id  from ApplyforJob where jobseeker_id = 1 and (applystatus=0 or applystatus=1) ) )


select * from PostAJob where 
(requirment not LIKE '%w%' ) AND
 (job_id not in  (select job_id  from ApplyforJob 
 where jobseeker_id = 3 and (applystatus=0 or applystatus=1) ) )