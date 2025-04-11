# Ansible vault docker

**Build container**

```bash
docker build -t ansible .
```

**Encrypt value**
```bash
docker run --rm ansible encrypt "VaultPassword" "SecretValue"
```

### TODO
- [ ] Handle decryption

[//]: # (**Decrypt value**)

[//]: # (```bash)

[//]: # (docker run --rm ansible decrypt "VaultPassword" "!vault|....")

[//]: # (```)