﻿<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.eagleboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <style> </style>
    
    <title>Eagle Board</title>

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" id="gives-tab" data-toggle="tab" href="#gives" role="tab" aria-controls="gives" aria-selected="false">Gives</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="project-tab" data-toggle="tab" href="#project" role="tab" aria-controls="project" aria-selected="false">Project</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="poll-tab" data-toggle="tab" href="#poll" role="tab" aria-controls="poll" aria-selected="false">Poll</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" id="new-tab" data-toggle="tab" href="#new" role="tab" aria-controls="new" aria-selected="false">New Post</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">



  <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
      <asp:Literal ID="all_lit" runat="server" />
          
   </div>
    

  <div class="tab-pane fade" id="gives" role="tabpanel" aria-labelledby="gives-tab">
      <asp:Literal ID="gives_lit" runat="server" />
  </div>


  <div class="tab-pane fade" id="project" role="tabpanel" aria-labelledby="project-tab">
      <asp:Literal ID="project_lit" runat="server" />
</div>


  <div class="tab-pane fade" id="poll" role="tabpanel" aria-labelledby="poll-tab">
      <asp:Literal ID="poll_lit" runat="server" />
</div>

    <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
        
        
            <ul class ="nav nav-pills" id="pills-tab" role="tablist">
                <li class = "nav-item"><a class="nav-link active"  id="gives_pill" data-toggle="pill" href="#new_gives" role="tab" aria-controls="gives_pill" aria-selected="true"> New Gives </a></li>
                <li class = "nav-item"><a class="nav-link"  id="project_pill" data-toggle="pill" href="#new_project" role="tab" aria-controls="project_pill" aria-selected="false"> New Project </a></li>
                <li class = "nav-item"><a class="nav-link"  id="poll_pill" data-toggle="pill" href="#new_poll" role="tab" aria-controls="poll_pill" aria-selected="false"> New Poll </a></li>
                    </ul>
            <div class="tab-content" id="pills-tabContent">
                <br /><br />
                <div class = "tab-pane fade show active" id="new_gives" role="tabpanel" aria-labelledby="pills-gives-tab">
                    <div class="container">

                        <div class="form-group">
                            <label for="example-text-input" class="col-2 col-form-label">Title</label>
                            <div class="col-10">
                                <input class="form-control" type="text" value="" id="example-text-input">
                            </div>

                            <small class="form-text text-muted text-center">Write a brief but descriptive title for your listing.</small>

                        </div>
                        <div class="form-group">
                            <label for="example-text-input" class="col-2 col-form-label">Description</label>
                            <div class="col-10">
                                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                            </div>

                            <small class="form-text text-muted text-center">Provide a description of your item. Keep in mind the item must be offered for free, and availible on campus.</small>

                        </div>
                        <div class="form-group">
                            <label for="example-text-input" class="col-2 col-form-label">Images</label>
                            <div class="col-10">
                                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                                <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                                    <asp:Literal ID="give_new_images_lit" runat="server" />
                                </div>
                                
                                <br />
                                <div class="text-center"><button id="give_new_images_button" class="text-center">add another file</button></div>
                            </div>

                            <small class="form-text text-muted text-center"> </small>

                        </div>




                    </div>









                   
                    </div>
                <div class = "tab-pane fade" id = "new_project" role="tabpanel" aria-labelledby="pills-project-tab">
                    NEW PROJECT PAGE
                    <div class="form-group">
                        <textarea class="form-control rounded-0" id="project_text_area" rows="10"></textarea>
                    </div>
                    </div>
                <div class = "tab-pane fade" id = "new_poll" role="tabpanel" aria-labelledby="pills-poll-tab">
                    NEW POLL PAGE
                    <div class="form-group">
                        <textarea class="form-control rounded-0" id="poll_text_area" rows="10"></textarea>
                    </div>
                    </div>



                </div>
        
        




     
</div>


</div>
    
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css"    href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
     <script>
         $('#all_board').DataTable(
             {
                 "lengthChange": false,
                 "pageLength": 20
             });
         $('.dataTables_length').addClass('bs-select');
         $('#gives_board').DataTable(
             {
                 "lengthChange": false,
                 "pageLength": 20
             });
         $('.dataTables_length').addClass('bs-select');
         $('#project_board').DataTable(
             {
                 "lengthChange": false,
                 "pageLength": 20
             });
         $('.dataTables_length').addClass('bs-select');
         $('#poll_board').DataTable(
             {
                 "lengthChange": false,
                 "pageLength": 20
             });
         $('.dataTables_length').addClass('bs-select');
        </script>



</asp:Content>

