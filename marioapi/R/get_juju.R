#' GET juju
#'
#' @param req,res HTTP objects
#'
#' @export
#'
get_juju <- function(req, res){
    mariobox::mario_log(
        method = "GET",
        name = "juju"
    )
    get_juju_f()
}

#' GET juju internal
#'
#' @noRd
#'
get_juju_f <- function(){
    return(datasets::iris)
}
