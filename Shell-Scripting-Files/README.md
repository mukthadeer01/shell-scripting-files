# Shell Scripting for DevOps

Zero to hero. Bash basics → real DevOps automation.

**Udaan Batch 11 · TrainWithShubham**

---

## Start here

```bash
git clone <this-repo>
cd Shell-Scripting-For-DevOps/practice-scripts
bash 01_hello.sh
```

Then keep going — `02`, `03`, `04` … all the way to `19`.

Full guide: [`practice-scripts/README.md`](./practice-scripts/README.md)

---

## The path

| Folder | What's inside |
|--------|---------------|
| **`practice-scripts/`** | 19 numbered scripts. Your zero-to-hero journey. **Start here.** |
| `day01/` → `day03/` | Live class scripts, day-by-day. Reference + history. |
| `log-files/` | Sample logs for `grep` / `awk` / `tail` practice. |

---

## How to practice

1. **Read** the script (5 mins).
2. **Run** it. See output.
3. **Break** it on purpose — change a variable, remove a quote, swap `-eq` for `-ne`.
4. **Rewrite** it from scratch without looking. This is where learning sticks.
5. Move to the next number.

Stuck? `bash -x script.sh` shows every line as it runs.

---

## The 6 things you'll actually learn

- **Variables & input** — `read`, `$1`, `$(date)`
- **Conditionals** — `if`, `[[ ]]`, file tests `-f`
- **Loops** — `for`, `while`, C-style counters
- **Functions** — reuse code, pass args
- **Error handling** — `set -e`, exit codes, `&&` / `||`
- **Real stuff** — user creation, system info, **backups + cron**, AWS EC2, Docker deploys

---

## Mini-projects in this repo

- **Backup automation** → [`practice-scripts/19_backup.sh`](./practice-scripts/19_backup.sh) — tar/gzip + cron
- **Django deploy** → [`day03/deploy_django_app.sh`](./day03/deploy_django_app.sh) — git + docker
- **EC2 provisioning** → [`day03/create_ec2.sh`](./day03/create_ec2.sh) — AWS CLI + polling

---

## Need help?

- `man bash` — the source of truth
- `tldr <command>` — examples that actually make sense
- [crontab.guru](https://crontab.guru) — cron expressions
- [shellcheck.net](https://shellcheck.net) — paste your script, find bugs

---

Likhna shuru karo. Galtiyaan karo. Phir se likho. **Bas yahi tarika hai.**
