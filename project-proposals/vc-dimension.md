---
title: "Vapnik–Chervonenkis Dimension"
date: 2025-03-18T00:00:00-04:00
draft: false
---


## Problem Statement

We define a **parametric space of stochastic processes** (analogous to a feature‑encoding space in supervised learning) so that a *stochastic process realization* (sample path) is produced by the composition of three stages:

- **Time vector map** that converts raw inputs (e.g., a sequence of heatmap matrices) into a per‑time vector representation.  
- **1‑D temporal wavelet transform** applied to each channel of the time vector, producing multiscale, time–frequency localized coefficients.  
- **Sequencewise dimensionality reduction** (possibly nonlinear, e.g., nonlinear ICA / [*CEBRA*](https://cebra.ai)) that maps the multiscale coefficients to a lower‑dimensional sequence representation.

For more formal exposition refer to the [Compute heatmap modelling](../methodology/embeddings.qmd).

In our project, the parametric space of stochastic processes plays the role of a *statistical classification model*. VC dimension of the model is important as it measures its capacity, which helps to estimate the model's *generalization error*. The goal is to find a balance where the model is complex enough to capture the underlying patterns but not so complex that it overfits the data.

## Suggestions

This task is challenging due to the complexity of the model. It requires a rigorous mathematical analysis, which involves proving whether a set of points can be shattered by the hypothesis space. 
This is non-trivial, and moreover, can be computationally very intensive! 