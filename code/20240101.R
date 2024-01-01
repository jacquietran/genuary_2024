# Load libraries ---------------------------------------------------------------

library(scattermore)
# Also requires {here}

# Reference - George Savva:
# https://georgemsavva.github.io/creativecoding/posts/flowfields/

# Define custom functions ------------------------------------------------------

# Our flow function
flowFunction <- function(z) {
  fz = z-zeros[1]
  for(i in zeros[-1]) fz = fz * (z-i)
  for(i in poles) fz = fz / (z-i)
  fz/Mod(fz)
}

# Make streamlines
makeStreams <- function(startpos,m=100,FUN,d=0.1){
  pos=matrix(nrow=length(startpos), ncol=m)
  pos2=matrix(nrow=length(startpos), ncol=m)
  pos[,1] <- startpos
  pos2[,m] <- startpos
  for(i in 2:m){
    v <- FUN(pos[,i-1])
    pos[,i] <- pos[,i-1] + d * v/Mod(v)
  }
  for(i in (m-1):1){
    v <- FUN(pos2[,i+1])
    pos2[,i] <- pos2[,i+1] - d * v/Mod(v)
  }
  pos <-cbind(pos,pos2) |> as.vector()
  cbind(Re(pos),Im(pos))
}

# Prepare data -----------------------------------------------------------------

set.seed(1139)
poles <- runif(60,-1,1) + 1i*runif(60,-1,1)
zeros <- runif(10,-1,1) + 1i*runif(10,-1,1)

startZ <- 0.6*exp(2i * pi * seq(0,1,l=12000))
pos <- makeStreams(startZ,m=500,FUN=flowFunction,d=0.005)

# Build plot -------------------------------------------------------------------

# Open PNG device
png(
  filename = here::here("img/20240101.png"),
  width = 3000, height = 3000, units = "px", res = 600, type = "cairo")

# Build plot
par(mar=c(0,0,0,0))
scattermoreplot(
  pos, size=c(3500,3500),
  xlim=c(-1,1), ylim=c(-1,1),
  asp=1,
  axes=FALSE,
  col=hsv(0,0,0))

# Close device
dev.off()