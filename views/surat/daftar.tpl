% rebase('base.tpl', title='Page Title')

<div class="container">
    <div class="well">
        <ul class="event-list">
            % for item in surat:
                <li>
                    <time datetime={{item.tanggal}}>
                        <span class="day">{{item.tanggal.day}}</span>
                        <span class="month">{{item.tanggal.strftime("%b")}}</span>
                        <span class="year">{{item.tanggal.year}}</span>
                        <span class="time">ALL DAY</span>
                    </time>
                    <div class="info">
                        <h2 class="title">{{item.perihal}}</h2>
                        <p class="desc">{{item.tanggal}}</p>
                        <p class="desc">{{item.input_at}}</p>
                    </div>
                    <div class="social">
                        <ul>
                            <li class="edit" style="width:33%;"><a href="/surat/edit/{{item.id}}"><i class="glyphicon glyphicon-edit"></i></a></li>
                            <li class="detail" style="width:34%;"><a href="/surat/detail/{{item.id}}"><i class="glyphicon glyphicon-info-sign"></i></a></li>
                            <li class="delete" style="width:33%;"><a href="/surat/delete/{{item.id}}"><i class="glyphicon glyphicon-remove-circle"></i></a></li>
                        </ul>
                    </div>
                </li>
            % end

        </ul>

        <a href="/surat/new" role="button" class="btn btn-default btn-circle btn-xl pull-right"><i class="glyphicon glyphicon-plus" title="Add new surat"></i></a>
    </div>

</div>
    
   
    
