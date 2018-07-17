{{define "revisions"}}
<div class="row col-md-9">
 <hr />
 <p class="text-muted">Revisions:</p>
 <div class="list-group">
  {{range $logFile := .logFile}}
   {{if $logFile.Link}}
    <a href="?revision={{$logFile.Hash}}&revisions=1" class="list-group-item">
   {{else}}
    <a href="?revision={{$logFile.Hash}}&revisions=1" class="list-group-item active">
   {{end}}
    {{$logFile.Message}} ({{$logFile.Time}})
   </a>
   </li>
  {{end}}
 </div>
</div>
{{end}}
