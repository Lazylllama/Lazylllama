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


###  [Anime Planet](https://www.anime-planet.com/users/lazyllamaa) Stats
#### 📗 Currently Reading
{{range $index, $element := animePlanetData.Manga.Entries}}
{{- if eq $element.Status "reading"}}
- 📕 **[{{.Name}}](https://www.anime-planet.com/manga/{{ regexReplaceAll "-+" (.Name | lower | replace " " "-" | replace ":" "" | replace "'" "") "-" }})**
    - Rating: {{if gt .Rating 0}}⭐ {{.Rating}}/5{{else}}Not rated{{end}}
    - Volumes: {{.Vol}} vol{{if gt .Vol 1}}s{{end}}
{{- end}}
{{- end}}

#### 📺 Currently Watching
{{range $index, $element := animePlanetData.Anime.Entries}}
{{- if eq $element.Status "watching"}}
- 🎬 **[{{.Name}}](https://www.anime-planet.com/anime/{{ regexReplaceAll "-+" (.Name | lower | replace " " "-" | replace ":" "" | replace "'" "") "-" }})**
    - Rating: {{if .Rating}}⭐ {{.Rating}}/5{{else}}Not rated{{end}}
    - Episode: {{.Eps}} ep{{if gt .Eps 1}}s{{end}}
{{- end}}
{{- end}}
