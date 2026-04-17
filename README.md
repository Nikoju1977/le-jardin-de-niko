# 🌿 L'Oracle du Jardinier

> **Terroir Synthétique** — Assistant agronomique IA pour jardin permacole, Loire-Atlantique (44)

Single-file HTML · zero build · progressive enhancement · PWA-ready

**🔗 Démo live** : [nikolas1977.github.io/oracle-du-jardinier](https://nikolas1977.github.io/oracle-du-jardinier/)

---

## ✦ Fonctionnalités

L'Oracle du Jardinier fusionne **météo temps réel**, **phase lunaire biodynamique**, **qualité d'air** et **profil pédologique** pour générer un briefing agronomique quotidien adapté au terroir breton de La Meilleraye-de-Bretagne.

### Agents & données
- **MeteoAgent** — Open-Meteo API (sans clé) · température, humidité, vent, précipitations, UV
- **LunarAgent** — calcul biodynamique local (Feuille / Fruit / Racine / Fleur)
- **AirQualityAgent** — PM2.5 / PM10 / IQA européen via Open-Meteo
- **SoilAgent** — profil pédologique limono-argileux 44, pH 6.5

### Providers IA
- 🟢 **Groq** (gratuit · 14 400 req/jour · Llama 3.3 70B)
- 🔵 **Cerebras** (gratuit · 14 400 req/jour · Llama 3.3 70B)
- 🟣 **Mistral** (free tier · Pixtral pour vision)
- ↪ **Fallback automatique** en cas de quota 429

### Modules
- **Oracle** — briefing complet : À FAIRE · À ÉVITER · À ANTICIPER · synthèse
- **Météo** — courante + 7 jours + soleil/UV
- **Semences** — CRUD IndexedDB, cycle de statut (semé → germé → pousse → récolté)
- **Tâches** — échéances, toggle done, tri auto par urgence
- **Journal** — entrées horodatées du terrain
- **Config** — providers IA, export/import JSON

---

## 🎨 Design System — Terroir Synthétique

| Rôle | Fonte |
|------|-------|
| Display · Oracle · titres | **Fraunces** variable (opsz / SOFT / WONK) |
| Mesures · métadonnées | **JetBrains Mono** |
| Corps | **DM Sans** |

| Token | Couleur |
|-------|---------|
| `--soil-deep` | `#07100c` (forêt profonde) |
| `--chloro-500` | `#10b981` (chlorophylle) |
| `--ochre` | `#d4a574` (ochre breton) |
| `--terracotta` | `#c65d3a` (terre cuite) |

- SVG botaniques décoratifs en coins
- Grain SVG en overlay (blend mode)
- Animations fadeUp staggered (delays .05 → .30s)
- Safe-area-inset iOS + 100dvh

---

## 🚀 Déploiement

### GitHub Pages (auto)
Push sur `main` → Pages sert automatiquement `index.html`.

### Local
```bash
git clone https://github.com/nikolas1977/oracle-du-jardinier.git
cd oracle-du-jardinier
python3 -m http.server 8000
# → http://localhost:8000
```

Aucun build, aucune dépendance npm. Tout est dans `index.html`.

---

## 🔑 Configuration des clés API

À la première utilisation, onglet **Config** :

1. **Groq** (recommandé en primaire) → [console.groq.com](https://console.groq.com) · gratuit
2. **Cerebras** (fallback rapide) → [cloud.cerebras.ai](https://cloud.cerebras.ai) · gratuit
3. **Mistral** (vision photo future) → [console.mistral.ai](https://console.mistral.ai) · free tier

Les clés sont stockées uniquement en `localStorage` local — jamais transmises ailleurs qu'aux APIs correspondantes.

---

## 📱 Compatibilité

- ✅ Android Chrome / WebView (XMLHttpRequest → null-origin compat)
- ✅ iOS Safari (safe-area-inset + 100dvh + `-webkit-text-security`)
- ✅ Desktop Chrome / Firefox / Safari
- ⚠️ Internet Explorer non supporté

---

## 🛠 Stack

- **HTML / CSS / Vanilla JS** (ES5-compatible pour anciens WebViews)
- **IndexedDB** pour persistance (`OracleV24`, 4 stores)
- **Open-Meteo** pour météo + air (pas de clé requise)
- **XMLHttpRequest** over fetch (compat Android)

---

## 📊 Stats

- 🗂 **1 fichier** · `index.html`
- 📦 **~76 KB** minifié
- ⚡ **< 2s** first paint sur 4G
- 🔋 **Zero build** · zero dépendances npm

---

## 📝 Licence

MIT © 2026 Nicolas Julienne · [Studio Niko Design](https://github.com/nikolas1977)

---

## 🌱 Credits

Construit à [La Meilleraye-de-Bretagne](https://fr.wikipedia.org/wiki/La_Meilleraye-de-Bretagne), Loire-Atlantique, avec passion pour la permaculture et le code.

**Niko Julienne Labs** · v24 · 2026
