#!/usr/bin/env Rscript

library(rstan)

# print(sessionInfo())

load('car_sparse_data.Rda')

model <- stan_model('car_sparse.stan')
fit <- sampling(model, data = sp_d, iter = 1e4, chains = 4, seed=42)
print(fit, pars = c('beta', 'tau', 'alpha', 'lp__'))


