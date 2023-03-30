data {
    int<lower=0> N;
    vector[N] weight;
    real heights[N];
}

parameters {
    real alpha;
    real beta;
    real<lower=0> sigma;
}

transformed parameters {
   vector[N] mu = alpha + weight * beta;
}

model {
    alpha ~ normal(154.6, 7.74);
    beta ~ lognormal(0, 1);
    sigma ~ exponential(0.067);
    heights ~ normal(mu, sigma);
}

generated quantities {
   real height[N];
   for(i in 1:N) {
        height[i] = normal_rng(mu[i], sigma);
   }
}