<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name = "id" required = "true" %>

<input type = "text" name = "${id }" id = "${id }" autocomplete = "off"/>
<script>
$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
