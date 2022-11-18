##' Funcion que recibe un dataset y retorna los sub datasets
##' correspondientes a entrenamiento (training) y pruebas (testing)
##'
##' @title one.holdout.cv
##'
##' @param dataset Matriz de datos con n muestras (filas)
##' y m variables (columnas)
##'
##' @param percentTrain Numero decimal que corresponde al porcentaje
##'   de muestras deseadas para entrenamiento.
##'
##' @return Una lista con dos matrices. training, la matriz de entrenamiento
##'    y testing, la matriz de prueba.
##' @author Andres Mauricio Cifuentes Bernal
##'
##' @examples
##'
##' library(tidyverse)
##' data <- one.holdout.cv(dataset = iris
##'                        , percentTrain = 0.75)
##' View(data$training)
##' View(data$testing)

one.holdout.cv <- function(dataset, percentTrain =  0.7){
  index <- sample(1:nrow(dataset), percentTrain *nrow(dataset)
                  ,replace = FALSE)

  training <- dataset[index,,drop=F]
  testing <- dataset[-index,, drop=F]

  return(list(training = training, testing = testing))
}
