<?php
class admin
{
    public $Id,$tour_id,$khachsan_id,$TenDangNhap,$Full_name,$MatKhau,$Email,$Quyen,$status;
    public function admin($data=array())
    {
    $this->Id=isset($data['Id'])?$data['Id']:'';
    $this->tour_id=isset($data['tour_id'])?$data['tour_id']:'';
    $this->khachsan_id=isset($data['khachsan_id'])?$data['khachsan_id']:'';
    $this->TenDangNhap=isset($data['TenDangNhap'])?$data['TenDangNhap']:'';
    $this->Email=isset($data['Email'])?$data['Email']:'';
    $this->Full_name=isset($data['Full_name'])?$data['Full_name']:'';
    $this->MatKhau=isset($data['MatKhau'])?$data['MatKhau']:'';
    $this->Quyen=isset($data['Quyen'])?$data['Quyen']:'';
    $this->status=isset($data['status'])?$data['status']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->Id=addslashes($this->Id);
            $this->tour_id=addslashes($this->tour_id);
            $this->khachsan_id=addslashes($this->khachsan_id);
            $this->TenDangNhap=addslashes($this->TenDangNhap);
            $this->Email=addslashes($this->Email);
            $this->Full_name=addslashes($this->Full_name);
            $this->MatKhau=addslashes($this->MatKhau);
            $this->Quyen=addslashes($this->Quyen);
            $this->status=addslashes($this->status);
        }
    public function decode()
        {
            $this->Id=stripslashes($this->Id);
            $this->tour_id=stripslashes($this->tour_id);
            $this->khachsan_id=stripslashes($this->khachsan_id);
            $this->TenDangNhap=stripslashes($this->TenDangNhap);
            $this->Email=stripslashes($this->Email);
            $this->Full_name=stripslashes($this->Full_name);
            $this->MatKhau=stripslashes($this->MatKhau);
            $this->Quyen=stripslashes($this->Quyen);
            $this->status=stripslashes($this->status);
        }
}
