generated quantities {
    int <lower=0> N = 50;
    int <lower=0, upper=N> y;
    real <lower=0, upper=1> p = normal_rng(0.2, 0.03); //probability of allergic reaction
    y = binomial_rng(N,p);
}