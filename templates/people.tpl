<table>
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Loan</th>
  </tr>
  %for row in people:
  <tr>
    %for col in row:
    <td>{{col}}</td>
    %end
    <td><a href="/add_form/loans/{{row[0]}}">Loan</a></td>
 </tr>
  %end
</table>
<a href="/add_form/{{form_ext}}">Add {{form_ext}}</a>


%rebase templates/base.tpl title='People'
