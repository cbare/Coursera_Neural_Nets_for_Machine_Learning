%% 
% Implements the incremental learning rule for linear neurons
%%

% First create a linear relationship with randomly generated
% predictor variables x, coefficients b and effect variable y
x = unifrnd(0,10,10,4)
b = [1 -2 3 -4]'
y = x*b

% The truth is hard to know, so let's introduce some normally
% distributed noise into our measurements
x_noisy = x + normrnd(0,1,10,4)
y_noisy = y + normrnd(0,1,10,1)

% starting weight vector
w = [0.1 0.1 0.1 0.1]'

% learning rate
epsilon = 0.005

% until convergence or some limited number of iterations,
% update the weights according to the update rule and
% recompute the mse
mse = Inf
tolerance = 1e-4
max_iters = 1000
i = 0
while (mse > tolerance && i<max_iters)
  % compute the model's estimate of our effect variable
  yhat = x_noisy*w;

  % compute the model's training error against our noisy measurements
  mse = mean((y_noisy-yhat).^2)

  % delta w is the change in weights, scaled by the learning
  % rate averaged over the full batch of training samples
  dw = epsilon * mean(x_noisy .* (y_noisy-yhat))';
  w += dw;

  % increment iteration count  
  i += 1;
endwhile
