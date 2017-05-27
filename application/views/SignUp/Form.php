<?php 
$this->load->helper('form');
?> 
<div class="col-md-6 col-md-offset-3 " style="margin-top: 50px;">
                  <div class="panel">
                    <div class="panel-body text-center" style="padding-bottom:30px;">
                      <div class="">
                          <h4>Sign Up</h4>
                          <div class="text-center">
                          Already a member?<a href="<?php ECHO base_url(); ?>index.php/User/LogIn"> Log In</a> 
                          </div>
                          <!--form class="cmxform" id="signupForm" method="post" action="<?php base_url(); ?>index.php/SignUp/register"-->
                          
                         <?php echo form_open('User/SignIn', 'class="cmxform"" id="signupForm"'); ?>
                          
                          <div class="col-sm-6">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="text" class="form-text" name="Name" required>
                              <span class="bar"></span>
                              <label>Name</label>
                            </div>
                           </div>
                          <div class="col-sm-6">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="email" class="form-text" name="Email" required>
                              <span class="bar"></span>
                              <label>Email</label>
                            </div>
                           </div>
                          <div class="col-sm-12">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="password" class="form-text" name="Password" required>
                              <span class="bar"></span>
                              <label>Password</label>
                            </div>
                            </div>
                          
                          <div class="col-sm-12">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <select type="text" class="form-text" name="Interest" required>
                                  <option value="Sports">Sports</option>>
                                  <option value="Movies">Movies</option>>
                                  <option value="Travel">Travel</option>>
                              </select>
                              <span class="bar"></span>
                              <label>Interest</label>
                            </div> 
                           </div>   
                          </div>
                          <input class="submit btn btn-success btn-lg" type="submit" value="Submit">
                       
                           
                      </form>
                            
                    </div>
                  </div>
                </div>
              </div>
              