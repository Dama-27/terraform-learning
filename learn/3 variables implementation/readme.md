## 📦 Terraform Files & Variables

First things first: Terraform doesn’t really care what you name your `.tf` files.
As long as they end with `.tf` and are in the same directory, Terraform will read them all.

If you start organizing things into different directories, you’ll need to use **modules** (we’ll cover that later).

---

### 🧠 Common File Naming (Best Practice)

Even though naming is flexible, people usually follow these conventions:

* `main.tf` → where resources are defined
* `variables.tf` → input variables
* `outputs.tf` → output values
* `providers.tf` → provider configuration

This just makes your project easier to understand and maintain.

---

## 🔑 Where Do Variable Values Come From?

You’ve defined variables… but where do the actual values come from?

### Option 1: Pass via command line

```id="tfv1"
terraform apply \
  -var="ami_id=ami-0c55b159cbfafe1f0" \
  -var="instance_type=t2.micro" \
  -var="region=us-east-1"
```

---

### Option 2 (Recommended): Use `.tfvars` files

Terraform supports `.tfvars` files to store variable values separately from your code.

By default, Terraform looks for:

* `terraform.tfvars`

But you can create your own:

* `dev.tfvars`
* `production.tfvars`

Then pass it like this:

```id="tfv2"
terraform apply -var-file="dev.tfvars"
```

---

## 📁 Terraform `.tfvars`

`.tfvars` files are used to define values for your input variables without hardcoding them into your `.tf` files.

### Why use them?

* **Cleaner code** → separates configuration from logic
* **Reusability** → same code, different environments (dev, prod, etc.)
* **Security** → keep sensitive values out of your main code
* **Team-friendly** → each person/environment can use different configs

---

## ⚙️ Typical Workflow

1. Define variables in your Terraform code (`variables.tf`)
2. Create a `.tfvars` file with actual values
3. Run Terraform with that file:

```id="tfv3"
terraform apply -var-file="dev.tfvars"
```

---

👉 In short:
Keep your code generic, and let `.tfvars` handle the environment-specific details.
