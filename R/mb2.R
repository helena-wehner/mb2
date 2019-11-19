
#' say hello to the EAGLES
#' 
#' this function say hello to EAGLES depending on daytime
#' 
#' @param eagles character, the names of the EAGLEs to be greeted
#' @param daytime character, optional, either "auto" ....
#' 
#' @return Nothing, it will just say "hello"
#' 
#' @importFrom lubridate hour
#' 
#' @export 


hello_eagles <- function(eagles, daytime ="auto"){
  

  # decide which daytime it is 
  
  if(daytime=="auto"){
    time <- Sys.time()
    time_hour <- hour(time)
  
    if(time_hour<12){
      daytime <- "morning"
    } else if(time_hour>=12&time_hour<14){
      daytime <- "day"
    }else if(time_hour>=14&time_hour<17) {
      daytime <- "afternoon"
    }else daytime <- "evening"
  }
  
  if(daytime=="morning"){
    greeting <- "Good morning,"
    }else if(daytime=="evening"){
      greeting <- "Good evening,"
    }else if (daytime =="afternoon"){
      greeting <- "Hi,"
    }else greeting <- "Hello,"
    cat(paste0(greeting, paste0(eagles, collapse = ","),"!"))
}




