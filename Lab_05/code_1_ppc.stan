generated quantities {
   real<lower=0> alpha = normal_rng(2.3, 0.5);
   real<lower=0> theta = normal_rng(0.2, 0.01);
   real<lower=0> n_i = normal_rng(5.7, 1.1);

   real<lower=0> lambda = exp(alpha + theta * n_i);
   int y_i = poisson_rng(lambda);
}