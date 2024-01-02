# Load libraries ---------------------------------------------------------------

library(dplyr)
library(purrr)
library(prismatic)

# Also requires {tibble}, {here}

# Define custom function -------------------------------------------------------

colour_rdmiser <- function(seed, n_colours){
  
  set.seed(seed)
  colour_data <- tibble::tibble(
    n_colours_range = 1:n_colours) %>%
    # First, generate 3 random numbers between 0 and 1 for each colour
    # (1 random number each for H, S, and V)
    mutate(
      h_value = runif(n_colours, 0, 1),
      s_value = runif(n_colours, 0, 1),
      v_value = runif(n_colours, 0, 1),
      # Then, use the 3 random numbers for H, S, and V to define colours
      colours = hsv(h = h_value, s = s_value, v = v_value)) %>%
    pull(colours)
  
  # Return the hex codes only, as a colour vector
  return(color(colour_data))
  
}

# Generate some palettes -------------------------------------------------------

n_palettes <- 10
seed_vec <- sample(1:1000000, size = n_palettes, replace = FALSE)
n_colours_vec <- sample(1:10, size = n_palettes, replace = TRUE)

pal1 <- colour_rdmiser(seed = seed_vec[1], n_colours = n_colours_vec[1])
pal2 <- colour_rdmiser(seed = seed_vec[2], n_colours = n_colours_vec[2])
pal3 <- colour_rdmiser(seed = seed_vec[3], n_colours = n_colours_vec[3])
pal4 <- colour_rdmiser(seed = seed_vec[4], n_colours = n_colours_vec[4])
pal5 <- colour_rdmiser(seed = seed_vec[5], n_colours = n_colours_vec[5])
pal6 <- colour_rdmiser(seed = seed_vec[6], n_colours = n_colours_vec[6])
pal7 <- colour_rdmiser(seed = seed_vec[7], n_colours = n_colours_vec[7])
pal8 <- colour_rdmiser(seed = seed_vec[8], n_colours = n_colours_vec[8])
pal9 <- colour_rdmiser(seed = seed_vec[9], n_colours = n_colours_vec[9])
pal10 <- colour_rdmiser(seed = seed_vec[10], n_colours = n_colours_vec[10])

# Save palette images to file --------------------------------------------------

# Palette 1
png(
  filename = here::here("img/20240102_pal1.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal1)
dev.off()

# Palette 2
png(
  filename = here::here("img/20240102_pal2.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal2)
dev.off()

# Palette 3
png(
  filename = here::here("img/20240102_pal3.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal3)
dev.off()

# Palette 4
png(
  filename = here::here("img/20240102_pal4.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal4)
dev.off()

# Palette 5
png(
  filename = here::here("img/20240102_pal5.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal5)
dev.off()

# Palette 6
png(
  filename = here::here("img/20240102_pal6.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal6)
dev.off()

# Palette 7
png(
  filename = here::here("img/20240102_pal7.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal7)
dev.off()

# Palette 8
png(
  filename = here::here("img/20240102_pal8.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal8)
dev.off()

# Palette 9
png(
  filename = here::here("img/20240102_pal9.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal9)
dev.off()

# Palette 10
png(
  filename = here::here("img/20240102_pal10.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal10)
dev.off()
