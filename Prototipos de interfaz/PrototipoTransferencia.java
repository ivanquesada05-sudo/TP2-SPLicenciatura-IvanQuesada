package ap2.ivánquesada.prototiposinterfaz;

import javax.swing.*;
import java.awt.*;

public class PrototipoTransferencia extends JFrame {

    public PrototipoTransferencia() {

        setTitle("Registrar Transferencia");
        setSize(450, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(5, 2, 10, 10));

        JLabel lblProducto = new JLabel("Producto:");
        JTextField txtProducto = new JTextField();

        JLabel lblCantidad = new JLabel("Cantidad:");
        JTextField txtCantidad = new JTextField();

        JLabel lblOrigen = new JLabel("Local Origen:");
        JTextField txtOrigen = new JTextField();

        JLabel lblDestino = new JLabel("Local Destino:");
        JTextField txtDestino = new JTextField();

        JButton btnTransferir = new JButton("Registrar Transferencia");

        panel.add(lblProducto);
        panel.add(txtProducto);

        panel.add(lblCantidad);
        panel.add(txtCantidad);

        panel.add(lblOrigen);
        panel.add(txtOrigen);

        panel.add(lblDestino);
        panel.add(txtDestino);

        panel.add(new JLabel());
        panel.add(btnTransferir);

        add(panel);

        setVisible(true);
    }

    public static void main(String[] args) {
        new PrototipoTransferencia();
    }
}
