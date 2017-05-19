# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


category_list = [
    # name, is_portable_device, size_modifier
    [ 'Computer', false, nil ],
    [ 'Printer', false, nil ]
]

item_list = [
    # cost, domain, domain_name, ipv4, mac_address, model, serial, category_id
    [ 575, 'NINESTAR', '9SSCOMP01', 'DHCP', 'B3:36:87:83:22:2F', 'Optiplex 380', '123456789-1', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP02', 'DHCP', '23:73:5B:8C:60:4A', 'Optiplex 380', '123456789-2', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP03', 'DHCP', '2C:56:09:0C:B0:CA', 'Optiplex 380', '123456789-3', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP04', 'DHCP', '91:1F:B3:64:F9:9F', 'Optiplex 380', '123456789-4', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP05', 'DHCP', '69:36:3A:F5:87:16', 'Optiplex 380', '123456789-5', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP06', 'DHCP', 'C7:77:F1:15:32:BE', 'Optiplex 380', '123456789-6', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP07', 'DHCP', 'BE:A5:B4:9C:E8:21', 'Optiplex 380', '123456789-7', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP08', 'DHCP', '8D:77:D6:F6:F8:D8', 'Optiplex 380', '123456789-8', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP09', 'DHCP', 'FE:F8:66:56:2F:24', 'Optiplex 380', '123456789-9', 1 ],
    [ 575, 'NINESTAR', '9SSCOMP10', 'DHCP', '23:A3:55:ED:D4:C2', 'Optiplex 380', '123456789-0', 1 ],
    [ 2850, 'NINESTAR', 'ISTADMINHALL', '192.168.6.46', 'F9:99:25:6E:FC:35', 'M4555 MFP', '876-987-432-12A', 2 ],
    [ 2850, 'NINESTARLABS', 'MTVLABMAIN', '192.168.11.56', 'E1:56:C0:53:EF:C7', 'M4555 MFP', '876-987-432-12X', 2 ],
    [ 5999, 'NINESTAR', 'TUDORMAIN', '192.168.11.250', '17:5C:AF:D5:80:C6', 'Bizhub C554E', '6543218-T54543L1', 2 ]
]

category_list.each do | name, is_portable_device, size_modifier |
  Category.create( name: name, is_portable_device: is_portable_device, size_modifier: size_modifier)
end
item_list.each do | cost, domain, domain_name, ipv4, mac_address, model, serial, category_id |
  Item.create( cost: cost, domain: domain, domain_name: domain_name, ipv4: ipv4, mac_address: mac_address,
               model: model, serial: serial, category_id: category_id )
end