variantObservations <- testResults[ testResults$shownVariant == "True",]
baselineObservations <- testResults[ testResults$shownVariant == "False",]

variantViewedPromotion <- variantObservations[variantObservations$viewedPromotion == "True",]
baselineViewedPromotion <- baselineObservations[baselineObservations$viewedPromotion == "True",]

nrow(variantObservations)

?prop.test

succesfulObservations <- c(
  nrow(variantViewedPromotion), 
  nrow(baselineViewedPromotion)
)

totalObservations <- c(
  nrow(variantObservations), 
  nrow(baselineObservations)
)

prop.test(succesfulObservations, totalObservations, alternative = "greater")