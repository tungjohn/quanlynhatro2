<!-- BEGIN: main -->
<div class="table-responsive">
     <table class="table table-striped table-bordered table-hover">
          <thead>
               <tr>
                    <th>{LANG.title}</th>
                    <th class="w300">{LANG.cat}</th>
                    <th class="w150 text-center ">{LANG.status}</th>
                    <th class="w150 text-center">{LANG.function}</th>
               </tr>
          </thead>
          <tbody>
               <!-- BEGIN: loop -->
               <tr>
                    <td>{ROW.title}</td>
                    <td>
                         <a href="{ROW.url_cat}">{ROW.cat_title}</a>
                    </td>
                    <td class="text-center">
                         <!-- BEGIN: queue -->
                         {LANG.house_queue}
                         <!-- END: queue -->
                         <!-- BEGIN: status -->
                         <input name="status" id="change_status{ROW.id}" value="1" type="checkbox"{ROW.status_render} onclick="nv_change_status('{ROW.id}');" />
                         <!-- END: status -->
                    </td>
                    <td class="text-center">
                         <em class="fa fa-edit fa-lg">&nbsp;</em> <a href="{ROW.url_edit}">{GLANG.edit}</a> &nbsp;
                         <em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_row('{ROW.id}');">{GLANG.delete}</a>
                    </td>
               </tr>
               <!-- END: loop -->
          </tbody>
          <!-- BEGIN: generate_page -->
          <tfoot>
               <tr>
                    <td colspan="2">
                         {GENERATE_PAGE}
                    </td>
               </tr>
          </tfoot>
          <!-- END: generate_page -->
     </table>
</div>
<!-- END: main -->