library(plumber)
 
#* @apiTitle mariobox API
 
pkgload::load_all()
 
 
#* @get /health
get_health
 
#* @get /allo
get_allo
 
#* @get /juju
get_juju
 
#* @get /slow_juju
get_slow_juju
 
#* @get /slow_juju2
get_slow_juju2
