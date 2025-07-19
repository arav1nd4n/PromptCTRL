# PromptCTRL

PromptCTRL is a terminal-native AI assistant designed to empower developers directly from their shell. It leverages OpenRouter's language models to answer Bash-related queries, explain shell errors, and suggest working command-line snippets – all without leaving your terminal.

---

## 🔥 Features

- 💡 Get AI-powered terminal command suggestions
- 🛠️ Fix Bash errors with contextual explanations
- ⚡ Lightweight and zero-dependency (pure Bash)
- 🎯 Integrates easily into any shell environment (`bash`, `oh-my-bash`, etc.)
- 🧠 Uses free and fast LLMs like `mistral-7b-instruct` via OpenRouter

---

## 📦 Installation

### 1. Clone the Repository

```bash
cd ~/Documents
git clone https://github.com/your-username/PromptCTRL.git
```

Or manually download the [`promptctrl.plugin.sh`](promptctrl.plugin.sh) file and place it anywhere you like.

---

### 2. Export Your OpenRouter API Key

Get your free API key from [https://openrouter.ai/keys](https://openrouter.ai/keys)

Then add the following to your shell configuration:

```bash
# ~/.bashrc or ~/.bash_profile or ~/.zshrc
export AI_PROMPTGEN_API_KEY="sk-XXXXXXXXXXXXXXXXXXXXXXXX"
```

Reload your shell:

```bash
source ~/.bashrc    # or ~/.zshrc
```

---

### 3. Source the Plugin

Append this line to your `.bashrc`, `.bash_profile`, or `.zshrc`:

```bash
source ~/Documents/PromptCTRL/promptctrl.plugin.sh
```

Then reload:

```bash
source ~/.bashrc
```

---

## 🚀 Usage

Once installed, use the `feck` command to ask terminal-related questions.

```bash
feck "How do I check if a directory exists in bash?"
```

Or:

```bash
feck "Permission denied when executing a script"
```

**Example Output:**

```bash
🧠 Suggestion from PromptCTRL:

To check if a directory exists in Bash:

if [ -d "my_directory" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi
```

---

## 🔍 Model Used

PromptCTRL uses [OpenRouter](https://openrouter.ai)'s public API to access the following free model:

- `mistral-7b-instruct:free`

You can modify the script to use other available models like Claude, LLaMA, Gemini, or GPT.

---

## 🧪 Tested On

- ✅ Bash 5+
- ✅ Zsh 5.8+
- ✅ Ubuntu, Debian, Arch
- ✅ macOS
- ✅ WSL

---

## 📝 License

This project is licensed under the MIT License.  
Feel free to fork, modify, or contribute.

---

## 🙋 Support & Contributions

- Found a bug? [Open an issue](https://github.com/your-username/PromptCTRL/issues)
- Want to contribute? Fork the repo and submit a PR

---

## 📬 Author

**Aravindan S.**  
- [LinkedIn](https://linkedin.com/in/aravindan-s)  
- [Email](mailto:aravindans.dev@gmail.com)  
- [Casual Contact](https://instagram.com/aravindan.codes)
