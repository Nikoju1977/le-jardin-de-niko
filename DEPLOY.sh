#!/bin/bash
# ════════════════════════════════════════════════════════════════════
# L'Oracle du Jardinier v24 → GitHub Deployment
# Compte: nikolas1977
# Repo:   oracle-du-jardinier
# Pages:  https://nikolas1977.github.io/oracle-du-jardinier/
# ════════════════════════════════════════════════════════════════════

set -e  # stop on error

echo "🌿 Oracle du Jardinier v24 — deploy GitHub"
echo ""

# ─────────────────────────────────────────────────────────────────────
# ÉTAPE 1 — Créer le repo (choisir A ou B)
# ─────────────────────────────────────────────────────────────────────

# OPTION A — via navigateur (recommandé si pas de gh CLI)
#   1. Va sur: https://github.com/new
#   2. Repository name:  oracle-du-jardinier
#   3. Description:      Assistant agronomique IA · permaculture · Loire-Atlantique 44
#   4. Public ✓
#   5. ⚠️ NE PAS cocher "Initialize with README"
#   6. Create repository

# OPTION B — via gh CLI (si installé : brew install gh)
# gh auth login
# gh repo create nikolas1977/oracle-du-jardinier \
#   --public \
#   --description "Assistant agronomique IA - permaculture - Loire-Atlantique 44" \
#   --homepage "https://nikolas1977.github.io/oracle-du-jardinier/"

# ─────────────────────────────────────────────────────────────────────
# ÉTAPE 2 — cd dans le dossier téléchargé
# ─────────────────────────────────────────────────────────────────────

# Remplace par le chemin où tu as téléchargé les 4 fichiers
cd ~/Downloads/oracle-du-jardinier

# ─────────────────────────────────────────────────────────────────────
# ÉTAPE 3 — Init git + premier commit + push
# ─────────────────────────────────────────────────────────────────────

git init
git branch -M main
git add .
git commit -m "feat: initial release v24 - Terroir Synthetique

- Fraunces variable serif + JetBrains Mono + DM Sans
- Groq/Cerebras/Mistral multi-provider fallback
- IndexedDB OracleV24 (seeds/tasks/notes/oracle history)
- Open-Meteo weather + air quality agents
- Biodynamic lunar agent (Feuille/Fruit/Racine/Fleur)
- 6 modules: Oracle, Meteo, Semences, Taches, Journal, Config
- XMLHttpRequest Android-compat, iOS safe-area-inset
- 1659 lines, single-file HTML, zero build"

git remote add origin https://github.com/nikolas1977/oracle-du-jardinier.git
git push -u origin main

# ─────────────────────────────────────────────────────────────────────
# ÉTAPE 4 — Activer GitHub Pages
# ─────────────────────────────────────────────────────────────────────

# Option A — via navigateur :
#   https://github.com/nikolas1977/oracle-du-jardinier/settings/pages
#   - Source:  Deploy from a branch
#   - Branch:  main  /  (root)
#   - Save

# Option B — via gh CLI :
# gh api --method POST "/repos/nikolas1977/oracle-du-jardinier/pages" \
#   -f 'source[branch]=main' \
#   -f 'source[path]=/'

# ─────────────────────────────────────────────────────────────────────
# ÉTAPE 5 — Vérifier (après 1-2 min)
# ─────────────────────────────────────────────────────────────────────

# curl -I https://nikolas1977.github.io/oracle-du-jardinier/
# Doit retourner: HTTP/2 200

echo ""
echo "✅ Deploy terminé"
echo "🔗 App live: https://nikolas1977.github.io/oracle-du-jardinier/"
echo ""
echo "─── Mises à jour ultérieures ───"
echo "  git add ."
echo "  git commit -m 'feat: describe change'"
echo "  git push"
echo "→ Pages redéploie en ~30s"
