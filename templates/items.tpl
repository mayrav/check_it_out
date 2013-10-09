<table>
  <tr>
    <th>ID</th>
    <th>APS Number</th>
    <th>ID Number</th>
    <th>Model</th>
    <th>Make</th>
    <th>Item Type</th>
    <th>Specs</th>
  </tr>
  %for row in items:
  <tr>
    %for col in row:
    <td>{{col}}</td>
    %end
  </tr>
  %end
</table>
<a href="/add_form/{{form_ext}}">Add {{form_ext}}</a>

%rebase templates/base.tpl title='Items'
