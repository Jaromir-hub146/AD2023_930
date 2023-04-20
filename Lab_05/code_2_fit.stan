data {
    int<lower=0> N; // number of years
    vector[N] n; // miles
    int<lower=0> y[N]; // number of accidents
}

parameters {
    vector[N] alpha; // different alpha for years
    real theta;
}

transformed parameters {
   vector[N] lambda = exp(alpha + theta * n);
}

model {
    alpha ~ normal(2.3, 0.5);
    theta ~ normal(0.2, 0.01);

    for(i in 1:N) {
        y[i] ~ poisson(lambda[i]);
    }
}

generated quantities {
   real y_pred[N];
   for(i in 1:N) {
        y_pred[i] = poisson_rng(lambda[i]);
   }
}