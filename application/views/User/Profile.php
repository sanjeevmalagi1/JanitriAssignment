<?php 
$this->load->helper('form');
?> 
<div class="col-md-8 col-md-offset-1 " >
                  <div class="panel">
                    <div class="panel-body text-center" style="padding-bottom:30px;">
                      <div class="">
                          <h3>Update Your Profile</h3>
                          <?php echo form_open('User/UserProfile', 'class="cmxform"" id="signupForm"'); ?>
                          
                          <div class="col-sm-6">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                <input type="text" class="form-text" name="Name" value="<?php echo $Profile['Name']; ?>" required>
                              <span class="bar"></span>
                              <label>Name</label>
                            </div>
                           </div>
                          <div class="col-sm-6">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                              <input type="email" class="form-text" name="Email" value="<?php echo $Profile['Email']; ?>" required>
                              <span class="bar"></span>
                              <label>Email</label>
                            </div>
                           </div>
                          <div class="col-sm-12">
                            <div class="form-group form-animate-text" style="margin-top:40px !important;">
                                
                              <select type="text" class="form-text" name="Interest" required>
                                  <option <?php echo($Profile['Interest']=='Sports' ? 'selected':'');  ?> value="Sports">Sports</option>>
                                  <option <?php echo($Profile['Interest']=='Movies' ? 'selected':'');  ?> value="Movies">Movies</option>>
                                  <option <?php echo($Profile['Interest']=='Travel' ? 'selected':'');  ?> value="Travel">Travel</option>>
                              </select>
                              <span class="bar"></span>
                              <label>Interest</label>
                            </div> 
                           </div>   
                          </div>
                          <input class="submit btn btn-success btn-lg" type="submit" value="Update">
                       
                           
                      </form>
                            
                    </div>
                  </div>
                </div>
              </div>
              