# Chaos Mesh

Chaos Mesh has three primary concepts that form the core of the tool and its
capabilities:

- **Experiments (local UI):** Define the parameters of a single chaos test,
  including the type of chaos to inject, how that chaos is shaped, and what it
  targets.
- **Workflows (local UI):** Define a complex series of tests that should run in
  an environment to more closely simulate complex real-world outages.
- **Schedules (local UI):** Expand on experiments by making them run on a
  defined schedule.

In this guide, Kubernetes manifests are used to demonstrate Chaos Mesh
functionality. Many actions can also be completed in the UI, and the workflows
UI is particularly helpful for building complex visual workflows.
