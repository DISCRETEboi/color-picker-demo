plotColors <- function() {
  color_seq <- c("red", "orange", "yellow", "green", "cyan", "blue", "purple", "red")
  gradient <- gradient(color_seq, 1000)
  plot(c(0, 100), c(0, 10), type = "n", ann = F, axes = F)
  vert <- seq(1.0, 2.0, 0.01)
  for (i in vert) {
    points(seq(0.1, 100, 0.1), rep(i, 1000), col = gradient, pch = 20, cex = 0.1)
  }
}

cran_packages_page <- readClipboard()
color_rel <- grep("colo(u)?r", cran_packages_page, ignore.case = T, value = T)
writeLines(color_rel, "color-related-packages-cran.txt")
writeLines(cran_packages_page, "all-packages-cran.txt")
git_rel <- grep("git", cran_packages_page, ignore.case = T, value = T)
writeLines(git_rel, "git-related-packages-cran.txt")
rstudio_rel <- grep("r( )?studio", cran_packages_page, ignore.case = T, value = T)
writeLines(rstudio_rel, "rstudio-related-packages-cran.txt")
