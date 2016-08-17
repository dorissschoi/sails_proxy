module.exports =
  adminGrp: [ process.env.admin || 'admin@mob.myvnc.com' ]
  isAuth: (req) ->
    req.headers['x-forwarded-email'] in sails.config.adminGrp
  proxy: require process.env.upstream || './upstream.coffee'
  log:
    level: 'silly'