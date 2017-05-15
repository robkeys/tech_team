# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
item_list = [
    # cost, domain, domain_name, ipv4, mac_address, model, serial
    [ 575, 'NINESTAR', '9SSCOMP01', 'DHCP', 'B3:36:87:83:22:2F', 'Optiplex 380', '123456789-1'],
    [ 575, 'NINESTAR', '9SSCOMP02', 'DHCP', '23:73:5B:8C:60:4A', 'Optiplex 380', '123456789-2'],
    [ 575, 'NINESTAR', '9SSCOMP03', 'DHCP', '2C:56:09:0C:B0:CA', 'Optiplex 380', '123456789-3'],
    [ 575, 'NINESTAR', '9SSCOMP04', 'DHCP', '91:1F:B3:64:F9:9F', 'Optiplex 380', '123456789-4'],
    [ 575, 'NINESTAR', '9SSCOMP05', 'DHCP', '69:36:3A:F5:87:16', 'Optiplex 380', '123456789-5'],
    [ 575, 'NINESTAR', '9SSCOMP06', 'DHCP', 'C7:77:F1:15:32:BE', 'Optiplex 380', '123456789-6'],
    [ 575, 'NINESTAR', '9SSCOMP07', 'DHCP', 'BE:A5:B4:9C:E8:21', 'Optiplex 380', '123456789-7'],
    [ 575, 'NINESTAR', '9SSCOMP08', 'DHCP', '8D:77:D6:F6:F8:D8', 'Optiplex 380', '123456789-8'],
    [ 575, 'NINESTAR', '9SSCOMP09', 'DHCP', 'FE:F8:66:56:2F:24', 'Optiplex 380', '123456789-9'],
    [ 575, 'NINESTAR', '9SSCOMP10', 'DHCP', '23:A3:55:ED:D4:C2', 'Optiplex 380', '123456789-0'],
]

item_list.each do | cost, domain, domain_name, ipv4, mac_address, model, serial |
  Item.create( cost: cost, domain: domain, domain_name: domain_name, ipv4: ipv4,
               mac_address: mac_address, model: model, serial: serial )
end