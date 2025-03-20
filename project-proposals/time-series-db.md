---
title: "Time Series Database"
date: 2025-03-18T00:00:00-04:00
draft: false
---

## Problem Statement

We have data that represent videos of facial heatmaps. These data are time series of 2D matrices, the shape of which is a function of time. To store such data, we employ [*TimescaleDB*](https://docs.timescale.com/self-hosted/latest/install/), which is an extension of *PostgreSQL*, a relational *DBMS* optimized for time-series data.^[We could also consider using a different DB like *InfluxDB* or *Prometheus*.]

We have developed an API to access the data. The API is implemented in Python using *Psycopg2* library, which is a popular PostgreSQL adapter for Python. The API allows needed *data manipulation* operations.
In our pipeline, we retrieve the data from the database, and calculate other so-called *derived features* like *mean*, *standard deviation*, *skewness*, *kurtosis*, *normalized-size heatmaps*, *discrete 2D wavelet transform* etc. locally in Python.

## Suggestions

We can define a more complex database schema that includes integrity constraints and triggers. The goal is to ensure data consistency and automate the calculation and storage of derived features within the DBMS. This approach eliminates the need to derive these features each time the 'basic' data is retrieved, enhancing efficiency and reliability.
