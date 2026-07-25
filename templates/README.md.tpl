### 👷 The latest repos i've pushed to
{{range recentContributions 8}}
- [`{{.Repo.Name}}`]({{.Repo.URL}}) - _"{{.Repo.Description}}"_ **({{humanize .OccurredAt}})**
{{- end}}

### ⌨️ My latest projects
{{range recentCreatedRepos "lazylllama" 4}}
- [`{{.Name}}`]({{.URL}}) - _"{{.Description}}"_
{{- end}}

### 🕰️ My [_`hackatime`_](https://hackatime.hackclub.com) statistics from the past week
```text
{{ wakatimeDoubleCategoryBar "💾 Languages:" wakatimeData.Languages "💼 Projects:" wakatimeData.Projects 5 }}

Total: {{ wakatimeData.HumanReadableTotal }}
```

## [AniList](https://anilist.co/user/lazyllamaa/) Stats
### 📺 Currently Watching
{{range aniListData.Anime.Entries}}
{{- if eq .Status "CURRENT"}}
- 🎬 **[{{.Name}}]({{.URL}})**{{if gt .Score 0.0}} — ⭐ {{.Score}}/10{{end}}
    - Progress: {{.Progress}}{{if gt .Episodes 0}}/{{.Episodes}}{{end}} ep{{if gt .Progress 1}}s{{end}}
{{- end}}
{{- end}}
### 📗 Currently Reading
{{range aniListData.Manga.Entries}}
{{- if eq .Status "CURRENT"}}
- 📕 **[{{.Name}}]({{.URL}})**{{if gt .Score 0.0}} — ⭐ {{.Score}}/10{{end}}
    - Progress: {{.Progress}}{{if gt .Chapters 0}}/{{.Chapters}}{{end}} chapter{{if gt .Progress 1}}s{{end}}
{{- end}}
{{- end}}
### ✅ Recently Completed
{{range slice (reverse aniListData.Anime.Entries) 0 5}}
- 🎬 **[{{.Name}}]({{.URL}})** `{{.Format}}` — `{{.Status}}`{{if gt .Score 0.0}} — ⭐ {{.Score}}/10{{end}}
{{- end}}
