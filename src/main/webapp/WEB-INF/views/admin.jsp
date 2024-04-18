<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <script src="/js/custom/jquery-3.7.1.min.js"></script>
    <script src="/js/custom/register.js"></script>


  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
      <div class="container">
        <a class="navbar-brand" href="#">Sanjay Katheth Website</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home">Home <span class="sr-only">(www.google.com)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="link">Link</a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="#">Disabled</a>
          </li>
        </ul>
      </div>
      
    </div>
    </nav>
<!-- Header and Registration form -->
<!-- Header and Registration form -->
<section class="header-and-registration">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <!-- Header section -->
        <header class="header">
          <h1>This is Sanjay Singh's Website</h1>
          <p>Our mission is simple yet profound: to deliver cutting-edge IT solutions that drive growth, efficiency, and transformation. Whether it's developing bespoke software, optimizing infrastructure, or harnessing the power of emerging technologies like AI and blockchain, we tailor our services to meet the unique needs and aspirations of each client.</p>
        </header>
      </div>
      <div class="col-md-6">
        <!-- Registration form -->
        <form class="registration-form custom-form" style="margin-left: 50%;">
          <h2>Register Here</h2>
          <div class="mb-3">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" placeholder="Enter your name">
          </div>
          <div class="mb-3">
            <label for="inputEmail" class="form-label">Email address</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="name@example.com">
          </div>
          <div class="mb-3">
            <label for="inputPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
          </div>
          <div class="mb-3">
            <label for="inputMobile" class="form-label">Mobile</label>
            <input type="tel" class="form-control" id="inputMobile" placeholder="Enter your mobile number">
          </div>
          <button type="submit" class="btn btn-primary">Register</button>
        </form>
      </div>
    </div>
  </div>
</section>



      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>