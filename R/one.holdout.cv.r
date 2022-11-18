##' Funcion que recibe un dataset y retorna los sub datasets correspondientes
##' a entrenamiento (training) y pruebas (testing)
##'
##' @title one.holdout.cv
##' @param dataset matriz de datos que contiene muestras en cada una
##'   de las filas y variables en cada una de las columnas
##' @param percentTrain numero decimal que corresponde al porcentaje
##'   de muestras deseadas para entrenamiento.
##'
##' @return una lista con dos matrices. training, la matriz de entrenamiento
##'    y testing, la matriz de prueba.
##'
##' @author Andres Mauricio Cifuentes Bernal
##'
##' @references
##'
##'
##' @seealso
##'
##' @examples
##'
##' library(tidyverse)
##' data <- one.holdout.cv(dataset = iris
##'                        , percentTrain = 0.75)
##' View(data$training)
##' View(data$testing)

one.holdout.cv <- function(dataset
                           , percentTrain = 0.7){
  index <- sample(1:nrow(dataset)
                  ,percentTrain*nrow(dataset)
                  ,replace=F)

  training <- dataset[index,,drop=FALSE]
  testing <-dataset[-index,,drop=FALSE]

  return(list(training = training
              ,testing = testing ))

}
