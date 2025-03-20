---
title: "Face Tracking"
date: 2025-03-17T00:00:00-04:00
draft: false
---

## Problem Statement

This is a typical *computer vision* task. The goal is to improve the performance of the face tracking algorithm (see the video below). The algorithm is implemented in Python using OpenCV. Current version exploits thresholding *segmentation* and *tracking* based on simple features like energy and velocity vector.


<video width="640" height="480" controls>
  <source src="../videos/track.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

## Suggestions

One may consider other types of segmentation like edge-based segmentation. As for tracking, one may try a simple *SORT* algorithm using *Kalman filter*. 

### More ambitious ideas
>Super resolution and face normalization

In ideal case, we would like to perform [*face normalization*](https://pyimagesearch.com/2017/05/22/face-alignment-with-opencv-and-python/). However this is a very challenging task due to a very low resolution of our video data. We would need faces to be at least 60 x 90 pixels. To increase the resolution, we may consider using a *super-resolution* algorithm.^[For example, [*Azure OpenAI*](https://learn.microsoft.com/en-us/azure/ai-services/openai/overview) can leverage models like GPT-4 and DALL-E to enhance the resolution of thermal images, making them clearer and more detailed.]

