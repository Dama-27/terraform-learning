## 🚀 How to Run

Here are the basic Terraform commands you’ll use:

---

### 🔧 Initialize the project

```id="cmd1a"
terraform init
```

> Initializes your Terraform project.
> Run this when you first set things up **or** when you add new providers/modules.

---

### 🔍 Preview changes

```id="cmd2b"
terraform plan
```

> Shows what changes Terraform is going to make before actually applying them.

---

### ✅ Apply changes

```id="cmd3c"
terraform apply
```

> Applies the changes and creates/updates your infrastructure.

---

### 💣 Destroy everything

```id="cmd4d"
terraform destroy
```

> Deletes all resources managed by this project. Use with caution 😅

---

That’s the basic workflow:
**init → plan → apply → (destroy if needed)**
