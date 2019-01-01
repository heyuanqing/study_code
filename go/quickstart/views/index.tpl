
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Fullscreen Responsive Register Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="">iApp Register <span class="red">.</span></a></h1>
                    </div>
                    <div class="links span8">
                        <a class="home" href="" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                        <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img src="static/img/iphone.png" alt="">
                </div>
                <div class="register span6">
                    <form action="/post" method="post">
                        <h2>REGISTER TO <span class="red"><strong>iAPP</strong></span></h2>
                        <label for="firstname">First Name</label>
                        <input type="text" id="firstname" name="firstname" placeholder="enter your first name...">
                        <label for="lastname">Last Name</label>
                        <input type="text" id="lastname" name="lastname" placeholder="enter your first name...">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" placeholder="choose a username...">
                        <label for="email">Email</label>
                        <input type="text" id="email" name="email" placeholder="enter your email...">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="choose a password...">
                        <button id="submit" type="submit">REGISTER</button>
                    </form>
                </div>
				<button id="ajax">ajax</button>
            </div>
        </div>

        <!-- Javascript -->
        <script src="static/js/jquery-1.8.2.min.js"></script>
        <script src="static/bootstrap/js/bootstrap.min.js"></script>
        <script src="static/js/jquery.backstretch.min.js"></script>
        <script src="static/js/scripts.js"></script>	
		<script> 
 			$('#ajax').on('click', function () {

				 $.ajax({
                     url:"/ajax",
                     data:{
						username:$("#username").val(),
							password:$("#password").val(),
					},
                     dataType:"json",
                     type:"post",
                  	success : function(data){
						console.log(data);
						console.log(data.res)
						console.log(data.status)
						$("#firstname").val(data.status)
					},
       				 error : function() {
           			 alert("请求失败");
       				 },
                  })
 			 })
		</script>

    </body>

</html>

