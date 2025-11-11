# 🐳 dockermove

A simple modular automation tool to install and move Docker's data root directory to your `$HOME` or any custom location.

---

## 💡 Why It's Useful

By default, Docker stores all images, containers, and layers in `/var/lib/docker`.  
On systems with limited root (`/`) partition space — such as minimal Linux installs, VMs, or laptops with small SSDs — this can quickly fill up your root drive and cause system instability.

**dockermove** solves this by:
- Relocating Docker's data to your home directory (or any other path, like `/mnt/storage/docker`).
- Automating the entire setup process: install, stop, clean, configure, and restart Docker.
- Making it modular, so each step can be customized or reused in other automation projects.

This tool is ideal for developers or power users running Docker on lightweight systems, dual-boot setups, or cloud VMs with small root partitions but large home volumes.

---

## 📁 Directory Structure

```
dockermove/
├── scripts/
│   ├── 00-check-package-manager.sh
│   ├── 01-install-docker.sh
│   ├── 02-stop-docker.sh
│   ├── 03-clear-old-docker.sh
│   ├── 04-setup-new-root.sh
│   ├── 05-permissions.sh
│   ├── 06-enable-docker-user.sh
│   ├── 07-restart-verify.sh
│   └── utils.sh
├── dockermove.sh
└── README.md
```

---

## ✨ Features

- Detects package manager automatically (`apt`, `pacman`, `dnf`, `yay`, `paru`)
- Installs or updates Docker if already installed
- Relocates all Docker data from `/var/lib/docker` to `$HOME/.docker-root`
- Cleans up existing Docker cache safely
- Sets up permissions and Docker group for user access
- Verifies that Docker is running with the new data root directory

---

## 🚀 Usage

```bash
git clone https://github.com/Hasib-4174/dockermove.git
cd dockermove
chmod +x dockermove.sh scripts/*.sh
./dockermove.sh
```

---

## ⚙️ Requirements

- Linux system with `sudo` privileges
- Active internet connection (for installing or updating Docker)
- Enough storage space in `$HOME` or the target directory

---

## 🧭 Example Output

```
🚀 Docker Relocation Automation Started

🔹 Detecting Package Manager
✅ Detected package manager: apt

🔹 Installing or Updating Docker
Docker not found, installing...

🔹 Setting Up New Docker Root
📁 Created ~/.docker-root

🔹 Restarting and Verifying
Docker Root Dir: /home/username/.docker-root
✅ Docker has been successfully relocated!
```

---

## 🛠️ Future Improvements

- Add Python-based version with config file (JSON/YAML)
- Add CLI flags (e.g., `--path`, `--dry-run`)
- Add rollback feature to revert to default `/var/lib/docker`

---

## 📝 License

This is open-source project   
Feel free to use, modify, and share it.

---

> 💬 *Made for developers who want to save root space and keep Docker clean & modular.*
