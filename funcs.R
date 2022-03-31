plotColors <- function() {
  color_seq <- c("red", "orange", "yellow", "green", "cyan", "blue", "purple", "red")
  gradient <- gradient(color_seq, 1000)
  plot(c(0, 100), c(0, 10), type = "n", ann = F, axes = F)
  vert <- seq(1.0, 2.0, 0.01)
  for (i in vert) {
    points(seq(0.1, 100, 0.1), rep(i, 1000), col = gradient, pch = 20, cex = 0.1)
  }
}