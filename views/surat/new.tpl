% rebase('base1.tpl', title='Page Title')



	
<div class="well">
    <form role="form" action="/surat/new" class="form-horizontal" method="POST" id="surat-baru">
        <div class="form-group">
            <label class="control-label col-sm-2">Nomor</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" name="nomor" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Tanggal</label>
            <div class="col-sm-10">
                <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" name="tanggal" required>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Perihal</label>
            <div class="col-sm-10">
                <input class="form-control" type="text" name="perihal" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Ikhtisar</label>
            <div class="col-sm-10">
                <textarea name="ikhtisar" rows="3" class="form-control vresize" type="text" required></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Kategori</label>
            <div class="col-sm-10">
                <select name="category" class="form-control" required>
                    % for item in category:
                        <option value="{{item.code}}">{{item.deskripsi}}</option>
                    % end
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Pengirim</label>
            <div class="col-sm-10">
                <select name="pengirim" class="form-control" required>
                    % for item in instansi:
                        <option value="{{item.id}}">{{item.nama}}</option>
                    % end
                </select>
            </div>
        </div>

        <div class="form-group">
                <label class="control-label col-md-2">Lampiran</label>
                <div class="col-md-10">
                    <input name="lampiran" type="file">
                </div>
        </div>
        <div id="success-messages" class="alert alert-success" style="display:none"></div>
        <div id="error-messages" class="alert alert-error" style="display:none">Error in submit</div>

        <div class="form-group">
            <div class="col-md-10 col-md-offset-2">
                <button type="submit" class="btn btn-info btn-circle btn-lg"><i class="glyphicon glyphicon-ok" title="Save"></i></button>
                <button type="button" class="btn btn-danger btn-circle btn-lg"><i class="glyphicon glyphicon-remove" title="Cancel"></i></button>
            </div>
        </div>

    </form>

    <a href="/surat" role="button" class="btn btn-default btn-circle btn-xl pull-right"><i class="glyphicon glyphicon-list" title="List of Surat"></i></a>
</div>


<script src="/static/js/jquery-3.1.0.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/material.min.js"></script>
<script src="/static/js/bootstrap-datepicker.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var form = $('#surat-baru');
		$(form).submit(function(event){
			event.preventDefault();
			$.ajax({
				type: "POST",
				url: "/surat/new",
				data: $(this).serializeArray(),
				success: function(response){
					console.log(response);
					$("#success-messages").html(response.message)
					.fadeIn(800).delay(700).fadeOut(700);
					
				},
				error: function(xhr,errmsg,err) {
					console.log(xhr.status, xhr.responseText);
					$("#error-messages").fadeIn(300).delay(300).fadeOut(300);
				}
			
			});
			$('#surat-baru')[0].reset();
			return false;
		})
	});
</script>


