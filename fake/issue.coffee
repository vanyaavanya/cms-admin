faker        = require 'faker'
faker.locale = "ru"
moment       = require 'moment'
moment.locale 'Ru'

module.exports = {
  status: 'ready'
  title: 'Issue'
  url: '/issues/sample-issue'
  description: 'This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.'
  date:
    published:  moment().format('llll')
    updated:  moment().format('llll')
  owner: 
    _id: 987654
    name: faker.name.findName()
  hide:
    navigation: true
    sitemap: false
  tags: ['sample', 'template', 'tags']
  access:
    groups: [
      {
        _id: 0
        name: 'Admins' 
        url: '/admin/groups/0'
      },
      {
        _id: 1
        name: 'Managers' 
        url: '/admin/groups/1'
      }
    ] 
    users:[
      {
        _id: 987654
        name: faker.name.findName()
        url: '/admin/users/987654'
      },
      {
        _id: 123456
        name: faker.name.findName()
        url: '/admin/users/123456'
      }
    ]
}