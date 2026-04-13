## 🤔 Conditional Expressions (aka Terraform’s tiny brain)

If you’ve done a bit of programming, you already know this.

This is basically Terraform saying:
**“If this… then do that… otherwise do something else.”**

---

### 🧠 Syntax

```id="cond1"
condition ? true_value : false_value
```

* If `condition` is **true** → Terraform uses `true_value`
* If `condition` is **false** → Terraform uses `false_value`

Simple as that 👍

---

## 🚀 Example 1: Create resource or skip it

```id="cond2"
resource "aws_instance" "example" {
  count = var.create_instance ? 1 : 0

  ami           = "ami-XXXXXXXXXXXXXXXXX"
  instance_type = "t2.micro"
}
```

👉 What’s happening here?

* If `create_instance = true` → creates **1 instance**
* If `create_instance = false` → creates **0 instances** (aka nothing)

💡 Terraform doesn’t “skip” like magic—it just creates zero of them.

---

## 🔀 Example 2: Pick values based on environment

```id="cond3"
cidr_blocks = var.environment == "production" ? ["10.0.1.0/24"] : ["10.0.2.0/24"]
```

👉 Translation:

* If environment is `"production"` → use production CIDR
* Otherwise → use development CIDR

---

## 🔐 Example 3: Turn something on/off

```id="cond4"
cidr_blocks = var.enable_ssh ? ["0.0.0.0/0"] : []
```

👉 Meaning:

* If `enable_ssh = true` → allow SSH from anywhere
* If `false` → allow nothing

---

## 🧩 Why this is useful

* Control **when resources are created**
* Change values based on **environment (dev/prod)**
* Enable/disable features easily

---

👉 In short:
Conditional expressions help you make your Terraform code **smart instead of hardcoded**.

Or simply: less copy-paste, more logic 😄
