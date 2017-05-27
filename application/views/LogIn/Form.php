<?php 
$this->load->helper('form');
?>  
<div class="col-md-6 col-md-offset-3 " style="margin-top: 50px;">
                  <div class="panel">
                    <div class=" panel-body" style="padding-bottom:30px;">
                      <div class="col-md-12 text-center">
                          <h4>Log In</h4>
                           New User? <a href="<?php echo base_url(); ?>index.php/User/SignIn">Sign In</a>
                      
                         <?php echo form_open('User/Login', 'class="cmxform"" id="signupForm"'); ?>
                        <!--form class="cmxform" id="signupForm" method="get" action=""-->
                          
                         <div class="col-md-12">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="email" class="form-text" id="validate_username" name="Email" required>
                              <span class="bar"></span>
                              <label>Email</label>
                            </div>
                          </div>
                          <div class="col-md-12">
                            <div class="form-group form-animate-text" style="margin-top:10px !important;">
                              <input type="password" class="form-text" id="validate_password" name="Password" required>
                              <span class="bar"></span>
                              <label>Password</label>
                            </div>
                          </div>
                          <div class="col-md-12 text-center">
                              <input class="submit btn btn-primary btn-lg" type="submit" value="LogIn">
                        </div>
                           
                      </form>
                          
                            
                    </div>
                  </div>
                </div>
              </div>
              