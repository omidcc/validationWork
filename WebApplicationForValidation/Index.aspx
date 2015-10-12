<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplicationForValidation.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <style>
        label.error {
            color: red;
            

        }
    </style>
</head>
<body>
    <div class="container" style="margin-top: 100px">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <label for="email" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" name="email" />
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password" />
                </div>
            </div>
            <div class="form-group">
                <label for="repassword" class="col-sm-2 control-label">Re-Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="repassword" name="repassword" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Sign in</button>
                </div>
            </div>
        </form>
    </div>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                        
                    },
                    repassword: {
                        required: true,
                        minlength: 5,
                        equalTo: "#password"

                    }

                   


                },
                messages: {
                    email: {
                        required: "Enter Email address",
                        email: "Enter valid email address please"
                    },
                    password: {
                        reuqired: "Please Enter a password",
                        minlength: "At least 5 character needed"
                        
                    },
                    repassword: {
                        required: "Please re-enter the password",
                        minlength: "Minimum length of password character is 5",
                        equalTo:    "Password does not match"
                    }


                }

            });
        });

    </script>

</body>
</html>
