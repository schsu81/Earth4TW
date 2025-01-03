begin

  wks = gsn_open_wks("x11","Earth4TW")

  res = True
  res@mpMaxLatF = 25.8
  res@mpMinLatF = 21.8
  res@mpMaxLonF = 122.3
  res@mpMinLonF = 118
  res@gsnDraw  = False
  res@gsnFrame = False

  ;res@mpDataBaseVersion           = "Ncarg4_1"
  res@mpDataBaseVersion           = "MediumRes"
  res@mpOutlineOn                 = True

  plt = new(3,graphic)
  res@gsnLeftString               = "Earth..4"
  res@mpDataSetName               = "Earth..4"
  plt(0) = gsn_csm_map(wks,res) 

  res@gsnLeftString               = "Earth..4ADM"
  res@mpDataSetName               = "Earth..4ADM"
  plt(1) = gsn_csm_map(wks,res) 

  res@gsnLeftString               = "Earth..4MOI"
  res@mpDataSetName               = "Earth..4MOI"
  plt(2) = gsn_csm_map(wks,res) 

  gsn_panel(wks, plt, (/1,3/), False)
end
