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
            <img src="../../../skin/images/web/innovalogo.png" alt="innovalogo" class="logo wow animated fadeIn" />
            <h4 class="mainSlogan animated fadeIn">Sistemas de Gesti&oacute;n para Empresas</h4>
            <div class="mouseScroll animated fadeIn">
              <!-- <img src="../../../skin/images/body/icons/mousescroll.png" alt="" class="" /> -->
            </div>
          </div>
          <!-- Section 2 -->
          <div class="section section1 wow animated fadeIn" id="section1">
            <div class="container-fluid featuresDiv">
              <div class="container">
                <!-- <div class="titles">
                  <span><b>RENOVATIO</b> | <span>SISTEMA DE AUTOADMINISTRACIÓN PROYECTOS Y SITIOS WEB</span>
                </div>
                <hr> -->
                <!-- FIRST ROW -->
                <div class="row features">
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-briefcase"></i><br>
                      <h3>Administre su proyecto</h3>
                      <p>Alta, baja y modificación de items o productos.
                        Actualición de información.<br>
                        Creación de posteos o artículos.<br>
                      </p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-rocket"></i><br>
                      <h3>Escalabilidad</h3>
                      <p>El sistema dispone de distintos módulos, con distintas funciones, que se pueden ir adquiriendo e incorporando según sus necesidades lo requieran</p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-globe"></i><br>
                      <h3>Accesibilidad Total</h3>
                      <p>Puede ingresar al sistema desde cualquier lugar <br>y desde cualquier dispositivo.</p>
                    </div>
                  </div>
                </div>
                <!-- SECOND ROW -->
                <div class="row features">
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-briefcase"></i><br>
                      <h3>Administre su proyecto</h3>
                      <p>Alta, baja y modificación de items o productos.
                        Actualición de información.<br>
                        Creación de posteos o artículos.<br>
                      </p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-rocket"></i><br>
                      <h3>Escalabilidad</h3>
                      <p>El sistema dispone de distintos módulos, con distintas funciones, que se pueden ir adquiriendo e incorporando según sus necesidades lo requieran</p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-globe"></i><br>
                      <h3>Accesibilidad Total</h3>
                      <p>Puede ingresar al sistema desde cualquier lugar <br>y desde cualquier dispositivo.</p>
                    </div>
                  </div>
                </div>
                <!-- THIRD ROW -->
                <div class="row features">
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-briefcase"></i><br>
                      <h3>Administre su proyecto</h3>
                      <p>Alta, baja y modificación de items o productos.
                        Actualición de información.<br>
                        Creación de posteos o artículos.<br>
                      </p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-rocket"></i><br>
                      <h3>Escalabilidad</h3>
                      <p>El sistema dispone de distintos módulos, con distintas funciones, que se pueden ir adquiriendo e incorporando según sus necesidades lo requieran</p>
                    </div>
                  </div>
                  <div class="col-md-4 col-xs-6">
                    <div class="feature-box animated fadeIn">
                      <i class="fa fa-globe"></i><br>
                      <h3>Accesibilidad Total</h3>
                      <p>Puede ingresar al sistema desde cualquier lugar <br>y desde cualquier dispositivo.</p>
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
              <div class="contactData"><i class="fa fa-mobile"></i><span> <b>(011) 3529-4527</b></span><br></div>
              <div class="contactData"><i class="fa fa-envelope-o"></i><span> info@innovastudio.com.ar</span><br></div>
              <div class="contactData"><i class="fa fa-map-o"></i><span> Buenos Aires - Argentina</span><br></div>
              <img src="../../../skin/images/web/innovalogo.png" />
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
          $('.mouseScroll').html('<img src="../../../skin/images/web/mousescroll.png" alt="" class="animated fadeIn" />');
        }, 5000);
      });
      </script>
  </body>
</html>
