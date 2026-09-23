#!/usr/bin/env sh
set -eu

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SRC="$REPO_ROOT/plugins/kv-sermon-plugin"
DEST="$HOME/.codex/plugins/kv-sermon-plugin"
MARKET_DIR="$HOME/.agents/plugins"
MARKET_FILE="$MARKET_DIR/marketplace.json"
STAMP=$(date +%Y%m%d-%H%M%S)

[ -d "$SRC" ] || { echo "Plugin source not found: $SRC" >&2; exit 1; }
mkdir -p "$(dirname "$DEST")" "$MARKET_DIR"
if [ -d "$DEST" ]; then
  cp -R "$DEST" "$DEST.bak-$STAMP"
  rm -rf "$DEST"
fi
cp -R "$SRC" "$DEST"

python3 - "$MARKET_FILE" "$STAMP" <<'PY'
import json, os, shutil, sys
path, stamp = sys.argv[1], sys.argv[2]
if os.path.exists(path):
    shutil.copy2(path, path + '.bak-' + stamp)
    with open(path, encoding='utf-8-sig') as f: data=json.load(f)
else:
    data={'name':'personal-plugins','interface':{'displayName':'Personal Plugins'},'plugins':[]}
plugins=[p for p in data.get('plugins',[]) if p.get('name')!='kv-sermon-plugin']
plugins.append({
  'name':'kv-sermon-plugin',
  'source':{'source':'local','path':'./.codex/plugins/kv-sermon-plugin'},
  'policy':{'installation':'AVAILABLE','authentication':'ON_INSTALL'},
  'category':'Productivity'
})
data['plugins']=plugins
with open(path,'w',encoding='utf-8') as f: json.dump(data,f,indent=2); f.write('\n')
PY

echo "Installed KV Sermon Plugin Stage 5 regression package to: $DEST"
echo "Updated personal marketplace: $MARKET_FILE"
echo "Restart the ChatGPT Desktop app, then open Plugins and install KV Sermon Plugin."
