metalsmith = require 'metalsmith'

drafts = require 'metalsmith-drafts'
markdown = require 'metalsmith-markdown'
permalinks = require 'metalsmith-permalinks'
templates = require 'metalsmith-templates'

metalsmith(__dirname)
  .use(templates engine: "swig")
  .use(drafts())
  .use(markdown())
  .use(permalinks())
  .use(permalinks
     pattern: 'posts/:date/:title'
  )
  .build()
