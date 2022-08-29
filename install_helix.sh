cd ~/Documents
pwd
git clone https://github.com/helix-editor/helix.git
cd helix
pwd
cargo install --path helix-term
cp -r runtime ~/.config/helix/
mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer
hx --grammar fetch
hx --grammar build
