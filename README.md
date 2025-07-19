# 🚀 PromptCTRL - AI Terminal Assistant

**Instant Bash solutions • Error fixes • Ready-to-run commands**

## 🌟 Features
- 🧠 Generate commands from natural language
- 🔧 Diagnose and fix shell errors
- 📋 Get copy-ready solutions with explanations
- ⚡ Single-file Bash plugin (no dependencies)
- 🔌 Works with Bash, Zsh, and Oh-My-Bash

## 🔧 Installation

### 1. Get API Key
1. Create free account at [OpenRouter.ai](https://openrouter.ai)
2. Get API key from dashboard

### 2. Configure Shell
Add to `~/.bashrc` or `~/.zshrc`:
```bash
# REQUIRED: Add your API key
export AI_PROMPTGEN_API_KEY="your-api-key-here"

# OPTIONAL: Customizations
export PROMPTCTRL_MODEL="openrouter/mistral/mistral-7b-instruct:free"
export PROMPTCTRL_MAX_TOKENS=500
3. Install Plugin
bash
Copy
Download
# Download and install
curl -o ~/promptctrl.plugin.sh \
  https://raw.githubusercontent.com/your-username/PromptCTRL/main/promptctrl.plugin.sh
echo "source ~/promptctrl.plugin.sh" >> ~/.bashrc
source ~/.bashrc
