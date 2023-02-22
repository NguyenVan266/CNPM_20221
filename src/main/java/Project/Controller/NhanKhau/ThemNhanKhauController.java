package Project.Controller.NhanKhau;

import Project.Controller.Main;
import Project.DAO.DataAccess;
import Project.Manager.NhanKhauManager;
import Project.Model.NhanKhau;
import Project.Constants.*;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.util.Optional;

public class ThemNhanKhauController {

    @FXML
    private TextField bietDanh;

    @FXML
    private ComboBox danToc;

    @FXML
    private DatePicker dateNgaySinh;

    @FXML
    private TextField diaChiHienTai;

    @FXML
    private TextField dienThoai;

    @FXML
    private TextArea ghiChu;

    @FXML
    private ComboBox gioiTinh;

    @FXML
    private TextField hoChieuSo;

    @FXML
    private TextField hoVaTen;

    @FXML
    private Button huy;

    @FXML
    private ComboBox nguyenQuan;

    @FXML
    private ComboBox noiSinh;

    @FXML
    private TextField noiThuongTru;

    @FXML
    private TextField quocTich;

    @FXML
    private TextField soCMT_CCCD;

    @FXML
    private TextField tonGiao;

    @FXML
    private Button xacNhan;
    NhanKhau nhanKhau = new NhanKhau();

    @FXML
    public void initialize() {
        gioiTinh.getItems().removeAll(gioiTinh.getItems());
        gioiTinh.getItems().addAll(Constants.GIOITINH);
        nguyenQuan.getItems().removeAll(nguyenQuan.getItems());
        nguyenQuan.getItems().addAll(Constants.TINHTHANH);
        noiSinh.getItems().removeAll(noiSinh.getItems());
        noiSinh.getItems().addAll(Constants.TINHTHANH);
        danToc.getItems().removeAll(danToc.getItems());
        danToc.getItems().addAll(Constants.DANTOC);
    }

    @FXML
    void actHuy(ActionEvent event) {
        Stage stage = (Stage) huy.getScene().getWindow();
        stage.close();
    }

    @FXML
    void actXacNhan(ActionEvent event) {
        if(checkValid()){
            try {
                nhanKhau.setIdNguoiTao(Main.user.getID());
                nhanKhau.setIdNguoiXoa(Main.user.getID());
                nhanKhau.setID(DataAccess.nhanKhauDAO.getNewID());
                nhanKhau.setHoTen(hoVaTen.getText());
                nhanKhau.setGhiChu(ghiChu.getText());
                nhanKhau.setDienThoai(dienThoai.getText());
                nhanKhau.setDiaChiHienTai(diaChiHienTai.getText());
                nhanKhau.setNgayTao(java.sql.Date.valueOf(java.time.LocalDate.now()));
                nhanKhau.setTonGiao(tonGiao.getText());
                nhanKhau.setNoiThuongTru(noiThuongTru.getText());
                nhanKhau.setSoHoChieu(hoChieuSo.getText());
                nhanKhau.setSoCMT_CCCD(Integer.parseInt(soCMT_CCCD.getText()));
                nhanKhau.setQuocTich(quocTich.getText());
                nhanKhau.setNguyenQuan(nguyenQuan.getValue().toString());
                nhanKhau.setGioiTinh(gioiTinh.getValue().toString());
                nhanKhau.setNoiSinh(noiSinh.getValue().toString());
                nhanKhau.setNgaySinh(java.sql.Date.valueOf(dateNgaySinh.getValue()));
                nhanKhau.setDanToc(danToc.getValue().toString());

                DataAccess.nhanKhauDAO.insert(nhanKhau);
                NhanKhauManager.nhanKhauList.add(nhanKhau);

                Stage stage = (Stage) xacNhan.getScene().getWindow();
                stage.close();
            } catch (Exception e){
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setTitle("Dữ liệu nhập lỗi");
                alert.setContentText("Vui lòng nhập đầy đủ thông tin");
                ButtonType isOK = new ButtonType("OK");
                alert.getButtonTypes().setAll(isOK);
                Optional<ButtonType> Result = alert.showAndWait();
                if (Result.get() == isOK) {
                    alert.close();
                }
            }
        }else{
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Lỗi nhập thiếu");
            alert.setContentText("Vui lòng nhập đầy đủ thông tin");
            ButtonType isOK = new ButtonType("OK");
            alert.getButtonTypes().setAll(isOK);
            Optional<ButtonType> Result = alert.showAndWait();
            if (Result.get() == isOK) {
                alert.close();
            }
        }
    }

    @FXML
    void txtNoiSinh(ActionEvent event) {

    }
    boolean checkValid(){
        if(hoVaTen.getText().isEmpty()){
            return false;
        }else if(dateNgaySinh.getValue() == null){
            return false;
        }else if(danToc.getValue().toString() == ""){
            return false;
        }else if(nguyenQuan.getValue().toString() == ""){
            return false;
        }else if(soCMT_CCCD.getText().isEmpty()){
            return false;
        }else if(noiThuongTru.getText().isEmpty()){
            return false;
        }else if(noiSinh.getValue().toString() == ""){
            return false;
        }else if(gioiTinh.getValue().toString() == ""){
            return false;
        }else if(tonGiao.getText().isEmpty()){
            return false;
        }else if(quocTich.getText().isEmpty()){
            return false;
        }else if(diaChiHienTai.getText().isEmpty()){
            return false;
        }else{
            return true;
        }

    }
}
