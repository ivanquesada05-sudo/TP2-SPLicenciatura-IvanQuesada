package ap2.ivánquesada.prototiposinterfaz;

import javax.swing.*;
import java.awt.*;

public class PrototipoCompra extends JFrame {

    public PrototipoCompra() {

        setTitle("Registrar Compra");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(5, 2, 10, 10));

        JLabel lblProducto = new JLabel("Producto:");
        JTextField txtProducto = new JTextField();

        JLabel lblCantidad = new JLabel("Cantidad:");
        JTextField txtCantidad = new JTextField();

        JLabel lblProveedor = new JLabel("Proveedor:");
        JTextField txtProveedor = new JTextField();

        JLabel lblCosto = new JLabel("Costo Total:");
        JTextField txtCosto = new JTextField();

        JButton btnRegistrar = new JButton("Registrar Compra");

        panel.add(lblProducto);
        panel.add(txtProducto);

        panel.add(lblCantidad);
        panel.add(txtCantidad);

        panel.add(lblProveedor);
        panel.add(txtProveedor);

        panel.add(lblCosto);
        panel.add(txtCosto);

        panel.add(new JLabel());
        panel.add(btnRegistrar);

        add(panel);

        setVisible(true);
    }

    public static void main(String[] args) {
        new PrototipoCompra();
    }
}