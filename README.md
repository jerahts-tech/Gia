# assignment-review

> 实战营每周作业评价 Skill —— 对各方向小组的每周作业成果做结构化评价，服务每周提交前的过程管理。

## 是什么

课程共四周，每周独立 100 分：

| 周次 | 主题 | 评价内容 |
|------|------|----------|
| Week1 | 定义规则 | 需求定义（客户需求沟通文档 + PRD） |
| Week2 | 按规则实现 | MVP 产品（单材料实测） |
| Week3 | 反馈驱动修订规则 | 用户验证 + 迭代决策沉淀 |
| Week4 | 真正交出去 | 产品交付 + 部署 + 可维护性 |

核心方法：**本周提交材料 + 项目历史基准 + 实际产品实测**三方交叉验证，先判 A/B/C/D/E 档位，再在档位内确定具体分数，禁止凭感觉自由给分。

## 目录结构

```
assignment-review/
├── SKILL.md                 # Skill 主文件（方法论、判档规则、评分卡、流程编排）
├── weeks/
│   ├── week1.md             # Week1 评价标准（6 维 100 分）
│   ├── week2.md             # Week2 评价标准（6 维 100 分）
│   ├── week3.md             # Week3 评价标准（7 维 100 分）
│   └── week4.md             # Week4 评价标准（6 维 100 分）
└── samples/                 # 四周输出对照样例（选装，装上评分卡版式更稳定）
    ├── Week1-示例小组-评价报告.html
    ├── Week2-示例小组-评价报告.html
    ├── Week3-示例小组-评价报告.html
    └── Week4-示例小组-评价报告.html
```

> 样例报告均已脱敏（统一使用「示例小组」占位），内容完全自包含（内联 CSS，无外链、无图片、无脚本），双击即可离线打开。

## 安装（3 步）

1. 下载本仓库全部文件；
2. 保持目录名 `assignment-review` 不变，放入你的 skills 目录：

   ```text
   # CodeBuddy / WorkBuddy
   <项目根>/.codebuddy/skills/assignment-review/    # 项目级
   ~/.codebuddy/skills/assignment-review/           # 用户级
   # 或 WorkBuddy 实际加载位
   ~/.workbuddy/skills/assignment-review/
   # Claude Code
   ~/.claude/skills/assignment-review/
   ```

   注意：`weeks/` 子目录与四个 `weekN.md` 文件名不可改，`SKILL.md` 用相对路径引用它们。

3. **新开一个会话**生效（skills 在会话启动时加载）。

## 触发验证

新会话输入 `/assignment-review`，或自然语言：「帮我评价一个小组的 Week1 作业」。

成功标志：先反问你三件事 —— ① 周次（Week1–4）② 评价模式（教练复盘 / 小组自检 / 助教终审）③ 三份材料清单（提交物 / 需求文档 / 过程记录）。若直接开始编评分，说明未正确加载。

## 完整性校验

下载后可用 `VERIFICATION.md` 里的 MD5 清单校验文件是否完整、未被改动。

## License

[MIT](./LICENSE)
