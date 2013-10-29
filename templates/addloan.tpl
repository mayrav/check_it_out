<h1>Add {{table}}</h1>

<p>Please Fillout student information</p>
<form method="post" action="/added/{{table}}">
  <label>{{column_list[0]}} <input name="{{column_list[0]}}" type="text" style="width:  500px;" value="{{person['person_id']}}"></label>
  <label>{{column_list[1]}} <input name="{{column_list[1]}}" type="text" style="width:  500px;" value="{{person['person_fname']}}"></label>
  <label>{{column_list[2]}} <input name="{{column_list[2]}}" type="text" style="width:  500px;" value="{{person['person_lname']}}"></label>
  <label>{{column_list[3]}} <input name="{{column_list[3]}}" type="text" style="width:  500px;"></label>
  <label>{{column_list[4]}} <input name="{{column_list[4]}}" type="text" style="width:  500px;"></label>
  <label>{{column_list[5]}} <input name="{{column_list[5]}}" type="text" style="width:  500px;" value="{{tdt}}"> </label>
  <button type="submit">Submit</button>
</form>

%rebase templates/base.tpl title='Add Form'
