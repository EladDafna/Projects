Here's the updated paragraph with the final note about images:

---

## Grafana Dashboard for Kubernetes Monitoring

In this project, I developed a comprehensive Grafana dashboard to monitor the health and performance of a Kubernetes cluster. Leveraging Prometheus as the data source, the dashboard provides real-time insights into various critical metrics across different levels of the cluster.

### Project Overview:

- **Node Level Monitoring**: Track the number of running pods on each node, CPU usage by cores, and overall CPU percentage.
- **Namespace Level Monitoring**: Monitor pod restarts, CPU usage, the number of running pods, deployments, network traffic (receive and transmit), and memory usage within each namespace.
- **Pod Level Monitoring**: Assess network traffic, disk I/O read and write, CPU usage percentage, pod age, average memory usage, and CPU consumption for individual pods.
- **Container Level Monitoring**: Keep an eye on CPU and memory usage at the container level.

The data is sourced from Prometheus and visualized through Grafana, which enables dynamic querying and detailed monitoring. By incorporating variables for node, namespace, pod, and container, the dashboard ensures flexible and granular analysis of cluster metrics.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Below are screenshots illustrating the Grafana dashboard I created.**

---
