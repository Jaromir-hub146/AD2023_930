data {
    int<lower=0> N;
    real weight[N];
}

generated quantities {
   real alpha = normal_rng(154.6, 7.74);
   real beta = lognormal_rng(0, 1);
   real sigma = exponential_rng(0.067);
   
   real height[N];

   for(i in 1:N) {
       height[i] = normal_rng(weight[i]*beta+alpha,sigma);
   }
}