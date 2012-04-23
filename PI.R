x <- c(2002:2010)
y <- c(41,38,38,35,28,33,29,24,25)

pdf("pi1.pdf", width = 6, height = 6)
par(las = 1, bty = "n")
plot(y~x, pch = 16, col = "red", xlab = "Year", ylab = "PI", main = "Fictional PI data" )
dev.off()


pdf("pi2.pdf", width = 6, height = 6)
par(las = 1, bty = "n")
plot(y~x, pch = 16, col = "red", xlab = "Year", ylab = "PI", main = "Fictional PI data", type = "b" )
points(2006, 28, cex = 2, col = "green")
text(2006, 27, "Open champagne?", col = "green")
points(2007, 33, cex = 2, col = "blue")
text(2007, 35, "Name and shame?", col = "blue")
dev.off()


pdf("pi3.pdf", width = 6, height = 6)
par(las = 1, bty = "n")
plot(y~x, pch = 16, type = "b", col = "red", xlab = "Year", ylab = "PI", main = "Fictional PI data" )
m1 <- lm(y~x)
abline(m1)
points(2006, 28, cex = 2, col = "green")
text(2006, 27, "Open champagne?", col = "green")
points(2007, 33, cex = 2, col = "blue")
text(2007, 35, "Name and shame?", col = "blue")
dev.off()



pdf("binom.pdf", width = 6, height = 6)
x <- c(0:6)
y <- dbinom(x, 6, 0.5)
par(las = 1)
z <- barplot(y, names.arg = x, main = "Simple model", xlab = "Number of heads", ylab = "Probability X = x", col = "blue", ylim = c(0, 0.35))
text(z, y, round(y,3), pos = 3)
dev.off()



