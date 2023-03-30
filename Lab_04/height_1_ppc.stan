generated quantities {
   real mu = normal_rng(154.6, 7.74);
   real sigma = exponential_rng(0.067);
   real height = normal_rng(mu, sigma);
}