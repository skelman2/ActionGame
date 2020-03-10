camera = camera_create();

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(200,160,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;



//follow1 = obj_p1;
//follow2 = obj_p2;
yTo = y;

view_h_half = camera_get_view_height(camera) * 0.5;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

