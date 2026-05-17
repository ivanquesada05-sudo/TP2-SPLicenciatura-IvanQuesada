package ap2.ivánquesada.prototiposinterfaz;

import javax.swing.*;
import java.awt.*;

public class PrototipoVenta extends JFrame {

    public PrototipoVenta() {

        setTitle("Registrar Venta");
        setSize(400, 250);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(4, 2, 10, 10));

        JLabel lblProducto = new JLabel("Producto:");
        JTextField txtProducto = new JTextField();

        JLabel lblCantidad = new JLabel("Cantidad:");
        JTextField txtCantidad = new JTextField();

        JLabel lblCliente = new JLabel("Cliente:");
        JTextField txtCliente = new JTextField();

        JButton btnRegistrar = new JButton("Registrar Venta");

        panel.add(lblProducto);
        panel.add(txtProducto);

        panel.add(lblCantidad);
        panel.add(txtCantidad);

        panel.add(lblCliente);
        panel.add(txtCliente);

        panel.add(new JLabel());
        panel.add(btnRegistrar);

        add(panel);

        setVisible(true);
    }

    public static void main(String[] args) {
        new PrototipoVenta();
    }
}
