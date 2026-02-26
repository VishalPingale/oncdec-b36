# Topic: POD + SERVICES

---

## ✅ **1️⃣ IMPERATIVE APPROACH (Command Based)**

👉 You directly give commands to Kubernetes.

👉 Fast for testing & practice.

👉 **Not recommended for production.**

---

### 🔹 **Check Nodes**

```bash
kubectl get nodes
```

✅ Shows all present nodes.

---

### 🔹 **Create Pod Using Command**

```bash
kubectl run pod-1 --image=nginx
```

✅ Creates a pod named **pod-1** with nginx.

---

### 🔹 **List Pods**

```bash
kubectl get pods
```

✅ Shows all running pods.

---

### 🔹 **Expose Pod To Access Application(Create Service Using Command)**



Types of Services:
1. ClusterIP
2. NodePort
3. LoadBalancer


## ✅ **ClusterIP (Internal Access Only)**

```bash
kubectl expose pod pod-1 --port=80 --target-port=80 --type=ClusterIP
```
```
kubectl get svc
```
````
kubectl exec -it  podnname  -- curl clusterIP
````
---

## ✅ **NodePort (Access from Browser using Node IP)**

```bash
kubectl expose pod pod-1 --port=80 --target-port=80 --type=NodePort
```
```
kubectl get svc
```

Access:

```text
http://<Node-IP>:<NodePort>
```

---

## ✅ **LoadBalancer (Public IP – Cloud Only)**

```bash
kubectl expose pod pod-1 --port=80 --target-port=80 --type=LoadBalancer
```
```
kubectl get svc
```

Access:

```text
http://<LoadBalancer-Link>
```

---


## ✅ **2️⃣ DECLARATIVE APPROACH (YAML File Based)**

👉 You write everything in a YAML file.

👉 Kubernetes creates resources exactly as defined.

👉 **Best for production, GitHub & DevOps pipelines.**


---

### 🔹 **Create Pod Using YAML**

📄 `pod.yaml`

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-1
  labels:
    app: nginx
spec:
  containers:
  - name: cont-1
    image: nginx
    ports:
    - containerPort: 80
```

✅ **Apply the file**

```bash
kubectl apply -f pod.yaml
```

---

### 🔹 **Create Service Using YAML**

📄 `service.yaml`

```yaml
apiVersion: v1
kind: Service
metadata:
  name: svc-nginx
spec:
  selector:
    app: nginx
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
  type: NodePort
```

✅ **Apply the file**

```bash
kubectl apply -f service.yaml
```


