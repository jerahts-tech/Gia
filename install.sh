#!/usr/bin/env bash
# assignment-review 一键安装脚本
# 用法：curl -fsSL https://raw.githubusercontent.com/jerahts-tech/Gia/main/install.sh | bash
set -euo pipefail

REPO_URL="${GIA_REPO:-https://github.com/jerahts-tech/Gia.git}"
SKILL_NAME="assignment-review"

# 目标 skills 目录判定：环境变量 > 已存在的候选目录 > 默认 ~/.claude/skills
DEST="${SKILLS_DIR:-}"
if [ -z "$DEST" ]; then
  for d in "$HOME/.claude/skills" "$HOME/.workbuddy/skills" "$HOME/.codebuddy/skills"; do
    if [ -d "$d" ]; then DEST="$d"; break; fi
  done
fi
[ -z "$DEST" ] && DEST="$HOME/.claude/skills"

TARGET="$DEST/$SKILL_NAME"

echo "→ 安装 assignment-review 到：$TARGET"
mkdir -p "$DEST"

if [ -d "$TARGET/.git" ]; then
  echo "  已存在，执行更新…"
  git -C "$TARGET" pull --ff-only
else
  rm -rf "$TARGET"
  git clone --depth 1 "$REPO_URL" "$TARGET"
fi

# 读取安装到的版本号（从 SKILL.md frontmatter 的 version 字段）
VERSION=$(grep -m1 '^  version:' "$TARGET/SKILL.md" 2>/dev/null | awk '{print $2}' | tr -d '"' || true)

echo ""
echo "✓ 完成。已安装 assignment-review v${VERSION:-未知}。"
echo "  新开一个会话，输入 /assignment-review 即可触发。"
echo "  触发后先回答：① 周次（Week1–4）② 评价模式 ③ 三份材料清单。"
