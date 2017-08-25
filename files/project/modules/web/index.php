<!DOCTYPE html>
<html lang="es">
<head>
  <!-- Required meta tags always come first -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <?php include('includes/inc.web.head.php'); ?> <!-- Head -->

</head>
  <body>
      <div id="container" data-XSwitch>
        <div class="sections">
          <!-- Section 1  -->
          <div class="section section0" id="section0">
            <img src="../../../../skin/images/web/innovalogo.png" alt="innovalogo" class="logo wow animated fadeIn" />
            <div class="animated fadeIn"><h4 class="mainSlogan animated fadeIn txC">SISTEMAS DE GESTI&Oacute;N WEB PARA EMPRESAS</h4></div>
            <!--<div class="mouseScroll animated fadeIn">-->
              <!-- <img src="../../../skin/images/body/icons/mousescroll.png" alt="" class="" /> -->
            <!--</div>-->
          </div>
          <!-- Section 2 -->
          <div class="section section1 wow animated fadeIn" id="section1">
            <div class="container-fluid featuresDiv">
              <div class="container">
                <div class="titles">
                  <span class="mainSlogan">ALGUNOS M&Oacute;DULOS DE NUESTROS SISTEMAS</span>
                  <hr>
                </div>
                
                <!-- FIRST ROW -->
                <div class="row features">
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-user"></i><br>
                      <h3>Clientes</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-shopping-cart"></i><br>
                      <h3>Proveedores</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-cube"></i><br>
                      <h3>Productos</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-tags"></i><br>
                      <h3>Categor&iacute;as</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-truck"></i><br>
                      <h3>Log&iacute;stica</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-file-text"></i><br>
                      <h3>Facturaci&oacute;n</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-cubes"></i><br>
                      <h3>Stock</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-trademark"></i><br>
                      <h3>Marcas</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-ship"></i><br>
                      <h3>Importaciones</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-area-chart"></i><br>
                      <h3>Estad&iacute;sticas</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-map-o"></i><br>
                      <h3>Mapas</h3>
                    </div>
                  </div>
                  <div class="col-md-3 col-xs-4">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-dollar"></i><br>
                      <h3>Contabilidad</h3>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <!-- Section 3 -->
          <div class="section section2" id="section2">
            <div class="container contact animated fadeIn">
              <h1>CONTACTENOS</h1>
              <hr>
              <div class="contactData"><span class="txC"><i class="fa fa-mobile"></i></span><a href="tel:1530234991"><span> <b>15-3023-4991</b></span></a><br></div>
              <div class="contactData"><span class="txC"><i class="fa fa-envelope-o"></i></span><a href="mailto:info@innovastudio.com.ar?subject=Contacto%20desde%20la%20web" target="_blank"><span>info@innovastudio.com.ar</span></a><br></div>
              <div class="contactData"><span class="txC"><i class="fa fa-globe"></i></span><span> Buenos Aires - Argentina</span><br></div>
              <img src="../../../../skin/images/web/innovalogo.png" />
            </div>
          </div>
          <!-- <div class="section" id="section3">sasaas
          </div> -->
        </div>
      </div>
      <?php include('includes/inc.web.scripts.php'); ?> <!-- Scripts -->
      <script type="text/javascript">
      $('#container').XSwitch({
        // CSS selectors
        selectors: {
          sections: '.sections',
          section: '.section',
          page: '.pages',
          active: '.active'
        },
        // starting section
        index: 0,
        // jQuery easing function
        easing: 'ease',
        // animation speed
        duration: 1500,
        // infinite looping
        loop: false,
        // enable side navigation
        pagination: true,
        // enable keyboard navigation
        keyboard: true,
        // 'vertical' or 'horizontal'
        direction: 'vertical',
        // callback function
        callback: ''

      });
      $(document).ready(function(){
      // Mouse Scroll Gif Appear
        setTimeout(function() {
          $('.mouseScroll').html('<img src="../../../../skin/images/web/mousescroll.png" alt="" class="animated fadeIn" />');
        }, 5000);
      });
      </script>
  </body>
</html>
