# Agent Zero Docker Compose
With updated node libraries, pnpm etc
## requirements
None, but the default config uses a local Ollama model, gemma3:4b (good for a modest GPU with 6GB VRAM), so install 
Ollama and download gemma3:4b, or edit the agent settings.
## setup
Clone, copy `.env.example`to `.env`, add your API keys.
## usage 
Run `./agentzero`. To stop, call again with the `--stop` flag.
