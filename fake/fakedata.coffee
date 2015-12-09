faker        = require 'faker'
faker.locale = "ru"
moment       = require 'moment'
issue        = require('./issue')
moment.locale 'Ru'

module.exports = ->
  issue: issue
  helpers:
    fields:
      status: 
        rus: 'Статус'
        type: 'select'
      title: 
        rus: 'Заголовок'
        type: 'text'
      url: 
        rus: 'Ссылка'
        type: 'text'
      description: 
        rus: 'Описание'
        type: 'textarea'
      date:
        published:  
          rus: 'Дата публикации'
          type: 'text'
        updated:  
          rus: 'Дата обновления'
          type: 'text'
      owner: 
        name: 
          rus: 'Создатель'
          type: 'text'
      hide:
        navigation: 
          rus: 'Убрать из навигации'
          type: 'checkbox'
        sitemap: 
          rus: 'Убрать из карты сайта'
          type: 'checkbox'
      tags: 
        rus: 'теги'
        type: 'text'
      access:
        groups: 
          rus: 'Доступ для групп'
          type: 'text'
        users: 
          rus: 'Доступ для пользователей'
          type: 'text'
  data:
    status: 'ready'
    title: 'Пример статической страницы'
    url: '/Пример статической страницы'
    meta:
      description: 'Sample page in statics'
      keys: ['admin','template','brainslab', 'cms', 'sample']
    content: 'This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.'
    date:
      published:  moment().format('llll')
      updated:  moment().format('llll')
    owner: 
      name: faker.name.findName()
      img: faker.image.avatar()
      url: '/admin/users/987654'
    hide:
      navigation: true
      sitemap: false
    tags: ['sample', 'template', 'tags']
    access:
      groups: [
        {
          name: 'Admins' 
          url: '/admin/groups/0'
        },
        {
          name: 'Managers' 
          url: '/admin/groups/1'
        }
      ] 
      users:[
        {
          name: faker.name.findName()
          url: '/admin/users/987654'
        },
        {
          name: faker.name.findName()
          url: '/admin/users/123456'
        }
      ]
  cms:
    version: '0.1.0'
  user:
    img: faker.image.avatar()
    name: faker.name.findName()
  version:
    process.env.npm_package_version
  page:
    title: 'Admin'
    menu:
      items:[
        {
          name: 'Dashboard',
          url: '/dashboard'
        },
        {
          name: 'Shortcuts',
          url: '/shortcuts'
        },
        {
          name: 'Overview',
          url: '/overview'
        },
        {
          name: 'Shortcuts',
          url: '/shortcuts'
        },
        {
          name: 'Events',
          url: '/events'
        },
        {
          name: 'About',
          url: '/about'
        },
        {
          name: 'Services',
          url: '/services'
        },
        {
          name: 'Contact',
          url: '/contact'
        },
      ]
  fake:
    faker.helpers.userCard()





# data = ->
#   settings:
#     title: 'Admin'
#     menu:
#       items:[
#         {
#           name: 'Dashboard',
#           url: '/dashboard'
#         },
#         {
#           name: 'Shortcuts',
#           url: '/shortcuts'
#         },
#         {
#           name: 'Overview',
#           url: '/overview'
#         },
#         {
#           name: 'Shortcuts',
#           url: '/shortcuts'
#         },
#         {
#           name: 'Events',
#           url: '/events'
#         },
#         {
#           name: 'About',
#           url: '/about'
#         },
#         {
#           name: 'Services',
#           url: '/services'
#         },
#         {
#           name: 'Contact',
#           url: '/contact'
#         },
#       ]
#   page:
#     status: 'ready'
#     title: 'Sample Page'
#     url: '/static/sample-page'
#     meta:
#       description: 'Sample'
#       keys: ['admin','template','brainslab', 'cms', 'sample']
#     content: 'This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.'
#     date:
#       published:  moment().format('llll')
#       updated:  moment().format('llll')
#     owner: 
#       _id: 987654
#       name: faker.name.findName()
#     hide:
#       navigation: true
#       sitemap: false
#     tags: ['sample', 'template', 'tags']
#     access:
#       groups: [
#         {
#           _id: 0
#           name: 'Admins' 
#           url: '/admin/groups/0'
#         },
#         {
#           _id: 1
#           name: 'Managers' 
#           url: '/admin/groups/1'
#         }
#       ] 
#       users:[
#         {
#           _id: 987654
#           name: faker.name.findName()
#           url: '/admin/users/987654'
#         },
#         {
#           _id: 123456
#           name: faker.name.findName()
#           url: '/admin/users/123456'
#         }
#       ]
#   cms:
#     version: '0.1.0'
#   user:
#     img: faker.image.avatar()
#     name: faker.name.findName()
#   version:
#     process.env.npm_package_version
#   data: 
#     one: 'one'
#     two: 'two'
#     three: 'three'
#     four: 'four'
#     five: 'five'
#     six: 
#       seven:
#         seven_is : 'seven'
#   fake:
#     faker.helpers.userCard()
