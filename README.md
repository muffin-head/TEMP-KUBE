# 👋 Hello World App on Kubernetes

This is a small demo project that shows how to:

* Build and run a basic web app (like Flask or nginx)
* Containerize it with Docker
* Deploy it to Kubernetes using:

  * Deployment (2 replicas)
  * Service (NodePort)
  * Ingress (hello.local)
  * PVC (optional storage)
  * RBAC (user access control)

---

## 🚀 What This App Does

It’s a basic web server that replies with:

```
"Hello, World! The app is running securely."
```

It’s useful for learning how to deploy apps to Kubernetes step-by-step.

---

## 💪 How to Run This

### Step 1 – Build the Docker Image

```bash
docker build -t hello-world-app .
```

### Step 2 – Test It Locally

```bash
docker run -p 8000:8000 hello-world-app
```

Visit [http://localhost:8000](http://localhost:8000)

---

## ☘️ Deploy to Kubernetes

Make sure your cluster is ready (Minikube or GKE)

### Apply All Files:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
kubectl apply -f persistent-volume.yaml
kubectl apply -f rbac.yaml
```

---

## 🌐 Access the App

1. Get the Ingress IP:

```bash
kubectl get ingress
```

2. Add to your `/etc/hosts` file:

```
<your-ingress-ip>   hello.local
```

3. Open in browser:

```
http://hello.local
```

---

## ✅ Features Used

* 2 Replicas (auto scaling-ready)
* Resource requests/limits (safe usage)
* Ingress for clean URLs
* PVC for storage (optional)
* RBAC for safer access

