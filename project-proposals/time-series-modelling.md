---
title: "Time Series Modelling"
date: 2025-03-18T00:00:00-04:00
draft: false
---


## Problem Statement

We propose a hypothesis suggesting a *causal association* between two stochastic processes, each operating within its own distinct state space with differing dimensions. The first process involves thermocamera video capturing faces, while the second involves music recording.

The aim is to estimate the intensity of the causal association by comparing the self-forecasting of the first process with its forecasting that also incorporates insights from the second process. If the latter demonstrates superior performance, it could indicate a causal association between the two processes.^[This is supported by *chain rule for entropy*: $H(X)=I(X;Y)+H(X∣Y)$, and rests also on the assumption that an opera performance is highly unlikely to be influenced by its audience.]

## Suggestions

We suggest using a *long sequence time forecasting* model with a *transformer architecture*, which has proven effective in handling complex time dependencies in time series data. Specifically, [*Autoformer*](https://huggingface.co/docs/transformers/model_doc/autoformer) and [*Informer*](https://huggingface.co/docs/transformers/model_doc/informer) are hot candidates: they are both open source, available on *HuggingFace* Hub of Git-based repos, and can be relatively easily adapted to our needs. 

Note that causal inference assumes *unconfoundedness* of the two processes. In general, unconfoundedness is a strong assumption necessary for making causal inferences. However, in our case, it is a reasonable assumption, excluding hidden variables that significantly influence both processes. For example, a potential confounder could be tiredness if it strongly impacts both the opera director/singers/musicians and the audience. In such case, we would need to adjust for it, which is a standard approach in *causal inference from observational data*.
