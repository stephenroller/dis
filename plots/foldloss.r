#!R --no-save

CSV_TEXT = "k,p,data,discarded,lower,upper
2,0.500,BLESS,1.000,1.000,1.000
3,0.333,BLESS,0.990,0.984,1.000
5,0.200,BLESS,0.947,0.922,0.974
10,0.100,BLESS,0.827,0.807,0.872
20,0.050,BLESS,0.610,0.533,0.673
50,0.020,BLESS,0.312,0.271,0.361
100,0.010,BLESS,0.181,0.134,0.228
200,0.005,BLESS,0.097,0.060,0.118
2,0.500,LEDS,0.917,0.913,0.922
3,0.333,LEDS,0.867,0.864,0.870
5,0.200,LEDS,0.782,0.773,0.793
10,0.100,LEDS,0.616,0.593,0.638
20,0.050,LEDS,0.442,0.427,0.461
50,0.020,LEDS,0.247,0.221,0.277
100,0.010,LEDS,0.143,0.118,0.169
200,0.005,LEDS,0.076,0.051,0.098
"

data = read.csv(text=CSV_TEXT)

require("ggplot2")
pdf("foldloss.pdf", 5, 3)
ggplot(data, aes(x=p,y=discarded, linetype=data, shape=data)) + 
    theme_bw() + 
    geom_line(aes()) + 
    geom_point() + 
    xlab("Percentage of Data Used as Test Set") + 
    ylab("Percentage of Train\nDiscarded by Overlap") + 
    theme(legend.title = element_blank()) +
    ylim(0, 1.0) +
    theme(legend.position=c(0.88, 0.18), legend.background=element_rect(colour = "black"), legend.margin=margin(0, 5, 5, 5))
dev.off()

