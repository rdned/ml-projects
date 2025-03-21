---
title: "Explainable Deep Learning"
date: 2025-03-19T00:00:00-04:00
draft: false
---


## Problem Statement

This task builds on the results of the Time series modelling. Specifically, it requires a well trained time series model, the accuracy of which supports our hypothesis of a causal association between musical stimuli and brain activity.  

The aim is to estimate the quality of the causal association by applying techniques of *explainable deep learning*. The goal is to understand the model's decision-making process and to identify the most important features that influence the model's predictions. This could lead to an improved understanding of the underlying causal mechanisms and identification of strong/main musical triggers of brain activity.

## Suggestions

Consider using the following techniques:
    
1. Class activation maps (CAM) to visualize the most important regions of the input data (in music state space) that contribute to the model's prediction (in facial temperature features state space).

2. Perturbation based methods to evaluate the robustness of the model's predictions. For example, perturb the input data and observe how the model's predictions change. This could help identify the most sensitive regions of the input data.

3. Attention weights visualization to provide insights into which parts of the input the model is paying attention to.

4. Trend and Seasonal Decomposition: Autoformer model, for example, uses decomposition layers to separate trend and seasonal components. Visualizing these components can help understand how the model captures different aspects of the time-series data.
