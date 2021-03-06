<div class="titulo jumbotron" id="combo">
      	<div class="container">
      		<h2>Combo</h2>
      	</div>
      </div>
      <div class="container">
       <div class="row">
       	<div class="col-md-6">
       		<form:form action="agregarComboAdmin" method="POST" modelAttribute="combo">
			  <div class="form-group">
			    <label>Combo</label>
			    <form:input path="descripcion" type="text" class="form-control" id="nombreCombo" placeholder="Combo"/>
			  </div>
			   
			   <div class="form-group">
			    <label>Precio</label>
			    <form:input path="precioFinal" id="precioCombo" type="number" class="form-control" min="0.00" max="20.00" step="0.01" placeholder="Precio"/>
			  </div>
			  
			  <div class="form-group">
								<label>Pan</label>
								<select id="idPan" class="form-control">
									<option value="0">Selecciona una opcion</option>
									<c:forEach items="${listaPanes}" var="pan">
											<option value="${pan.idIngrediente}">${pan.nombre}</option>
									</c:forEach>
								</select>
								<label>Carne</label>
								<select class="form-control" id="idCarne">
									<option value="0">Selecciona una opcion</option>
									<c:forEach items="${listaCarne}" var="carne">
											<option value="${carne.idIngrediente}">${carne.nombre}</option>
									</c:forEach>
								</select>
								<label>Aderezos</label>
								<select class="form-control" id="idAderezos">
									<option value="0">Selecciona una opcion</option>
									<c:forEach items="${listaAderezos}" var="aderezo">
											<option value="${aderezo.idIngrediente}">${aderezo.nombre}</option>
									</c:forEach>
								</select>
								<label>Vegetales</label>
								<select class="form-control" id="idVegetales">
									<option value="0">Selecciona una opcion</option>
									<c:forEach items="${listaVegetales}" var="vegetal">
											<option value="${vegetal.idIngrediente}">${vegetal.nombre}</option>
									</c:forEach>
								</select>
							</div>
			  
			  <button type="submit" class="btn btn-success">Guardar</button>
			</form:form>
	    </div>
       	
       	<div class="col-md-6">
       		<table class="table">
				<thead>
					<tr>
						<th>Combo</th>
						<th>Precio Final</th>
						<th>Editar</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaCombos}" var="combos">
						<tr id="idCombo_${combos.idCombo}">
							<td><c:out value="${combos.descripcion}"/></td>
							
							<td><c:out value="${combos.precioFinal}"/></td>
							<td><a class="btn btn-warning btn-sm" onclick="editarCombo(${combo.idCombo})" role="button"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Editar</a></td>
							<td><a class="btn btn-danger btn-sm" onclick="eliminarCombo(${combos.idCombo})" role="button"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>Eliminar</a></td>
						</tr>
					</c:forEach>
				</tbody> 
			</table>
       	</div>
      </div> 
	</div>
<hr>