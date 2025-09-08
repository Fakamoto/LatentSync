git clone https://github.com/Fakamoto/LatentSync
cd LatentSync
pip install uv
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt

huggingface-cli download ByteDance/LatentSync-1.6 whisper/tiny.pt --local-dir checkpoints
huggingface-cli download ByteDance/LatentSync-1.6 latentsync_unet.pt --local-dir checkpoints

uv run gradio_app.py