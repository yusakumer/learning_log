# AIエージェントによるWebサイト制作自動化システム

## 1. 全体構成図 — 誰が何を担当するか

ユーザーの依頼を秘書AIが受け、専門エージェントへ仕事を割り振る。

```mermaid
flowchart TD
    USER["ユーザー：依頼・承認"] <--> SECRETARY["秘書AI / Claude：進捗・承認・振り分け"]
    SECRETARY --> PLAN["企画AI / Claude：要件・構成"]
    SECRETARY --> DESIGN["デザインAI / ClaudeまたはCodex"]
    SECRETARY --> DEV["開発AI / Codex：Next.js実装"]
    SECRETARY --> QA["検証AI：テスト・品質確認"]
    DESIGN <--> FIGMA["Figma MCP：デザイン連携"]
    DEV --> WEB["Webサイト"]
    QA --> WEB
    QA --> SECRETARY
```

| 担当 | 仕事 |
|---|---|
| ユーザー | 目的の提示・重要事項の承認 |
| 秘書AI | タスク分配・進捗管理・承認依頼 |
| 企画AI | 要件定義・サイト構成 |
| デザインAI | デザイン案・Figma連携 |
| 開発AI | Next.js実装 |
| 検証AI | 動作確認・問題点の報告 |

## 2. 実行フロー図 — どう仕事が進むか

```mermaid
flowchart TD
    START(["ユーザーが制作を依頼"]) --> SECRETARY["秘書AIが要望を整理"]
    SECRETARY --> PLAN["企画AIが要件・構成案を作成"]
    PLAN --> A1{"ユーザー承認"}
    A1 -->|修正| PLAN
    A1 -->|OK| DESIGN["デザインAIがFigma MCPで作業"]
    DESIGN --> A2{"デザイン承認"}
    A2 -->|修正| DESIGN
    A2 -->|OK| DEV["CodexがNext.jsで実装"]
    DEV --> TEST["検証AIがテスト"]
    TEST --> CHECK{"品質基準を満たした？"}
    CHECK -->|NG・再試行上限以内| DEV
    CHECK -->|上限到達| SECRETARY
    CHECK -->|OK| FINAL{"ユーザー最終承認"}
    FINAL -->|修正| SECRETARY
    FINAL -->|OK| DEPLOY["Webサイト公開"]
    DEPLOY --> ANALYZE["分析・改善提案"]
    ANALYZE --> SECRETARY
```

- 秘書AIが担当を決め、結果を受け取る。
- 要件・デザイン・公開など重要な段階ではユーザーに承認を求める。
- テストで問題があればCodexに修正を依頼する（再試行回数には上限を設ける）。
- 公開後の分析結果を次の改善タスクに反映する。

## 3. ファイル構成図 — AIの役割をどう設定するか

```text
ai-web-factory/
├── CLAUDE.md                  # Claudeの共通ルール
├── AGENTS.md                  # Codexの共通ルール
├── .claude/
│   ├── agents/
│   │   ├── secretary.md       # 秘書AIの役割
│   │   ├── planner.md         # 企画AIの役割
│   │   └── designer.md        # デザインAIの役割
│   └── skills/
│       ├── planning/SKILL.md  # 企画の作業手順
│       └── design/SKILL.md    # デザインの作業手順
├── .agents/
│   └── skills/
│       ├── frontend/SKILL.md  # Codexの実装手順
│       └── testing/SKILL.md   # Codexのテスト手順
├── orchestrator/
│   ├── main.py                # 実行入口
│   └── workflow.py            # AI呼び出し・承認・再試行制御
├── docs/
│   ├── requirements.md        # 要件
│   ├── design.md              # デザイン方針
│   └── tasks.md               # 作業状況
└── website/
    ├── src/
    ├── public/
    └── package.json
```

| 項目 | 役割 |
|---|---|
| `CLAUDE.md` / `AGENTS.md` | AIに守らせるルール |
| `agents/` | 専門エージェントの担当定義 |
| `skills/` | 繰り返し使う作業手順 |
| `orchestrator/` | どのAIをいつ動かすか、承認待ち・再試行を管理 |
| `docs/` | AI間で共有する要件・設計・進捗 |
| `website/` | 開発対象のサイト |

**注意：** 指示ファイルを配置するだけでClaudeとCodexが自動連携するわけではない。実際の連携にはCLI・SDKなどを使ったオーケストレーターが必要。また、Figma MCPで作成・編集できる範囲は利用するMCPサーバーの機能による。

## 目指す姿

**人間が目的と重要な判断を担い、秘書AIが専門エージェントに仕事を割り振って、Webサイトの制作・検証・改善を進める。**
