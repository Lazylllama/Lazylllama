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
    - Progress: {{.Progress}}{{if gt .Episodes 0}}/{{.Episodes}}{{end}} ep{{if ne .Progress 1}}s{{end}}
{{- end}}
{{- end}}
### 📗 Currently Reading
{{range aniListData.Manga.Entries}}
{{- if eq .Status "CURRENT"}}
- 📕 **[{{.Name}}]({{.URL}})**{{if gt .Score 0.0}} — ⭐ {{.Score}}/10{{end}}
{{- if gt .Progress 0}}
    - Progress: {{.Progress}}{{if gt .Chapters 0}}/{{.Chapters}}{{end}} ch
{{- else}}
    - Progress: {{.ProgressVolumes}}{{if gt .Volumes 0}}/{{.Volumes}}{{end}} vol
{{- end}}
{{- end}}
{{- end}}
### ✅ Recently Completed
{{- $count := 0 -}}
{{range aniListData.Anime.Entries}}
{{- if and (eq .Status "COMPLETED") (lt $count 5)}}
- 🎬 **[{{.Name}}]({{.URL}})** `{{.Format}}`{{if gt .Score 0.0}} — ⭐ {{.Score}}/10{{end}}
{{- $count = (add $count 1)}}
{{- end}}
{{- end}}
