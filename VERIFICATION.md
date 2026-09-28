# assignment-review · 完整性校验清单（v2.5.0）

下载后请核对下列 9 份文件的存在性与 MD5，确认文件完整、未被改动。

## 文件清单与 MD5

| # | 相对路径 | 字节数 | MD5 |
|---|---|---|---|
| 1 | `SKILL.md` | 54170 | `c9003d53626c40f7736c91084993fb9e` |
| 2 | `weeks/week1.md` | 11734 | `0c55998997861caea6db4ec2bda8c106` |
| 3 | `weeks/week2.md` | 10423 | `327cb2ddbe017e7e6f0495a77ff34ef7` |
| 4 | `weeks/week3.md` | 16236 | `db1e4b2ccc73e979e248a9603cc7eb1d` |
| 5 | `weeks/week4.md` | 12749 | `98d06239a97a6844bc8c717651be8d36` |
| 6 | `samples/Week1-示例小组-评价报告.html` | 26370 | `0a2eef0abef3cfa946b9720cd647354b` |
| 7 | `samples/Week2-示例小组-评价报告.html` | 23391 | `6b38178c6a96846afd4dd6145acda5a6` |
| 8 | `samples/Week3-示例小组-评价报告.html` | 29531 | `17a476237557298df4bf77690db315da` |
| 9 | `samples/Week4-示例小组-评价报告.html` | 21493 | `1b318cb244da5a155439cf29e01cef47` |

## 校验命令

```bash
# Linux / macOS
md5sum SKILL.md weeks/*.md "samples/Week1-示例小组-评价报告.html" "samples/Week2-示例小组-评价报告.html" "samples/Week3-示例小组-评价报告.html" "samples/Week4-示例小组-评价报告.html"

# Windows (PowerShell)
Get-FileHash SKILL.md, weeks\*.md, samples\*.html -Algorithm MD5 | Format-Table Path, Hash -AutoSize
```

## 提交标准（v2.5.0 起）

- 统一阈值：**每周总分 ≥ 75 且无任何维度为 E 档** 视为合格/达到提交标准；否则「暂不建议提交」。
- v2.5.0 之前为分周阈值（Week1 ≥75 / Week2 ≥60 / Week3 ≥70 / Week4 ≥75），本版起统一为 75 分。
- 四周样例按统一阈值复核：Week1 78 / Week2 69 / Week3 78 / Week4 82；Week2（69）未达线，报告判定卡已标注「⛔ 暂不建议提交」。

## 脱敏说明

本包已做隐私脱敏：

- 维护人姓名已替换为占位（`assignment-review-team` / 「本 Skill 当前维护小组」）；
- 四周样例报告统一使用「示例小组」占位，不含任何真实姓名、联系方式、本地路径；
- 样例报告为完全自包含单文件，无外链、无图片、无脚本、无追踪代码。

## 触发验证

新开会话输入 `/assignment-review`（或「帮我评价一个小组的 Week1 作业」）。成功标志：先反问 ① 周次 ② 评价模式 ③ 三份材料清单。
