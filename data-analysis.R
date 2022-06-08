library(tidyverse)

load("rdas/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% ggplot(aes(abb, rate)) + geom_bar(width = 0.5, color = "black", stat = "identity" ) + coord_flip()


ggsave("figs/fig.png")