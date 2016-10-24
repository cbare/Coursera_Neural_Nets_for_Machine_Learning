Neural Networks for Machine Learning
====================================

Class materials from the Coursera class [Neural Networks for Machine Learning](https://www.coursera.org/learn/neural-networks/home/welcome) taught by Geoffrey Hinton.

## Dockerized Octave

The course uses [Octave](https://www.gnu.org/software/octave/doc/interpreter/index.html). I'm giving a shot at running it in docker, just for laughs. I have a Dockerfile and run Octave with the following command:

    docker run -it -v `pwd`:/source octave:4.0.0




