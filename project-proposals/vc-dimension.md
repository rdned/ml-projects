---
title: "Vapnik–Chervonenkis Dimension"
date: 2025-03-18T00:00:00-04:00
draft: false
---


## Problem Statement

We define a parametric space of stochastic processes^[This function space is analogous to a feature encoding space in a supervised learning.] so that a *stochastic process realization* (*sample path*) is a result of a composition of a time vector function,^[A time vector function may be defined as a result of a discrete 2D wavelet transform applied to heatmap matrices in every time point] 1D wavelet transform on each chanel of the time vector function, and a (possibly) non-linear dimensionality reduction.^[For example, a non-linear ICA implemented as [*CEBRA*](https://cebra.ai)]

In our project, the parametric space of stochastic processes plays the role of a *statistical classification model*. VC dimension of the model is important as it measures its capacity, which helps to estimate the model's *generalization error*. The goal is to find a balance where the model is complex enough to capture the underlying patterns but not so complex that it overfits the data.

## Suggestions

This task is challenging due to the complexity of the model. It requires a rigorous mathematical analysis, which involves proving whether a set of points can be shattered by the hypothesis space. 
This is non-trivial, and moreover, can be computationally very intensive! 