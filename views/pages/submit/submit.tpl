<h1>submit:</h1>
<form method="POST" action='{{urlfor "ApiController.Submit"}}'>
  <label for="inputTitle">Title</label>
  <div>
    <input placeholder="title" name="title" value="" type="text" id="inputTitle" />
  </div>

  <label for="inputContent">Text</label>
  <div>
    <textarea placeholder="content" name="content" type="text" id="inputContent"></textarea>
  </div>
  
  {{if .Topic}}
    <input name="topic" value="{{.Topic.Name}}" type="hidden" id="inputTopic" />
  {{else}}
    <label for="inputTopic">Topic</label>
    <div>
      <input placeholder="topic" name="topic" value="" type="text" id="inputTopic" />
    </div>
  {{end}}
  <p class="message"></p>

  <input type="submit" value="Submit">
</form>