<table>
  <tr>
    <th>Person ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Item ID</th>
    <th>Item Name</th>
    <th>Check Out Date</th>
  </tr>
  %for row in loans:
  <tr>
    %for col in row:
    <td>{{col}}</td>
    %end
  </tr>
  %end
</table>
<a href="/add_form/{{form_ext}}">Add {{form_ext}}</a>

%rebase templates/base.tpl title='Home'
