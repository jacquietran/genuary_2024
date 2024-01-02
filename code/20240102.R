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

<<<<<<< HEAD
set.seed(243)
n_palettes <- 10
seed_vec <- sample(1:1000000, size = n_palettes, replace = FALSE)
n_colours_vec <- sample(2:12, size = n_palettes, replace = TRUE)

pal01 <- colour_rdmiser(seed = seed_vec[1], n_colours = n_colours_vec[1])
pal02 <- colour_rdmiser(seed = seed_vec[2], n_colours = n_colours_vec[2])
pal03 <- colour_rdmiser(seed = seed_vec[3], n_colours = n_colours_vec[3])
pal04 <- colour_rdmiser(seed = seed_vec[4], n_colours = n_colours_vec[4])
pal05 <- colour_rdmiser(seed = seed_vec[5], n_colours = n_colours_vec[5])
pal06 <- colour_rdmiser(seed = seed_vec[6], n_colours = n_colours_vec[6])
pal07 <- colour_rdmiser(seed = seed_vec[7], n_colours = n_colours_vec[7])
pal08 <- colour_rdmiser(seed = seed_vec[8], n_colours = n_colours_vec[8])
pal09 <- colour_rdmiser(seed = seed_vec[9], n_colours = n_colours_vec[9])
=======
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
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
pal10 <- colour_rdmiser(seed = seed_vec[10], n_colours = n_colours_vec[10])

# Save palette images to file --------------------------------------------------

<<<<<<< HEAD
img_width <- 600
img_height <- 400

# Palette 1
png(
  filename = here::here("img/20240102_pal01.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal01)
=======
# Palette 1
png(
  filename = here::here("img/20240102_pal1.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal1)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 2
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal02.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal02)
=======
  filename = here::here("img/20240102_pal2.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal2)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 3
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal03.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal03)
=======
  filename = here::here("img/20240102_pal3.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal3)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 4
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal04.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal04)
=======
  filename = here::here("img/20240102_pal4.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal4)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 5
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal05.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal05)
=======
  filename = here::here("img/20240102_pal5.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal5)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 6
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal06.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal06)
=======
  filename = here::here("img/20240102_pal6.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal6)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 7
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal07.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal07)
=======
  filename = here::here("img/20240102_pal7.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal7)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 8
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal08.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal08)
=======
  filename = here::here("img/20240102_pal8.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal8)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 9
png(
<<<<<<< HEAD
  filename = here::here("img/20240102_pal09.png"),
  width = img_width, height = img_height, units = "px", type = "cairo")
plot(pal09)
=======
  filename = here::here("img/20240102_pal9.png"),
  width = 400, height = 300, units = "px", type = "cairo")
plot(pal9)
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
dev.off()

# Palette 10
png(
  filename = here::here("img/20240102_pal10.png"),
<<<<<<< HEAD
  width = img_width, height = img_height, units = "px", type = "cairo")
=======
  width = 400, height = 300, units = "px", type = "cairo")
>>>>>>> aef406ba7474b8d2d6c72fcc886662084d7dddd2
plot(pal10)
dev.off()
