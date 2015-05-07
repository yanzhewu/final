# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create  id: 1,
             username: 'yanzhewu',
             password: 'yanzhewu'

User.create  id: 2,
             username: 'haozhou',
             password: 'haozhou'
             
User.create  id: 3,
             username: 'lingduokong',
             password: 'lingduokong'

Client.delete_all

Client.create id: 1,
               location: 'YanHome',
               ip_address: '73.8.137.233'

Client.create id: 3,
               location: 'ec2',
               ip_address: '52.10.113.135'

Client.create id: 4,
               location: 'Uchicago',
               ip_address:  '128.135.164.171'

Iprecord.delete_all

Iprecord.create id: 1,
                ip_address: '64.94.140.201',
                start_time: '1425069955037',
                end_time: '1425069957147',
                server: 'dsply.com',
                location: 'YanHome'

Iprecord.create id: 2,
                ip_address: '217.199.217.120',
                start_time: '1425069955187',
                end_time: '1425069955187',
                server: 'ucoz.ru',
                location: 'YanHome'

Iprecord.create id: 3,
                ip_address: '216.58.216.163',
                start_time: '1425963490342',
                end_time: '1425963490342',
                server: 'google.ae',
                location: 'ec2'

Iprecord.create id: 4,
                ip_address: '64.233.185.106',
                start_time: '1425963633788',
                end_time: '1425963633788',
                server: 'googleapis.com',
                location: 'Uchicago'

Iprecord.create id: 5,
                ip_address: '23.194.72.200',
                start_time: '1425963633788',
                end_time: '1425963633788',
                server: 'java.com',
                location: 'Uchicago'

Website.delete_all

Website.create id: 1,
               server: 'youtube.com',
               rank: 2

Website.create id: 2,
               server: 'yahoo.com',
               rank: 2

Website.create id: 3,
               server: 'baidu.com',
               rank: 2


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
