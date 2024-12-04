import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.sql.*;
public class vdocument extends javax.swing.JFrame {
 private static final String URL = "jdbc:mysql://localhost:3306/document_storage";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "@2003Moon2003";

    private JLabel birthLabel;

    public vdocument() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton1.setText("show");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(188, 112, -1, -1));

        jButton2.setText("Back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(725, 882, -1, -1));

        jPanel1.setBackground(new java.awt.Color(102, 255, 204));

        jLabel1.setText("jLabel1");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));

        jLabel2.setText("jLabel2");
        jLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));

        jLabel3.setText("jLabel3");
        jLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));

        jLabel4.setText("jLabel4");
        jLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(42, 42, 42)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(63, 63, 63)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(51, 51, 51)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(56, 56, 56)
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(98, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(175, 175, 175)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 270, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 270, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 271, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 271, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(554, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 0, 1470, 1000));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
 String username = JOptionPane.showInputDialog(this, "Enter username:");
    if (username != null && !username.isEmpty()) {
        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            String query = "SELECT birth_certificate, nid_copy, ssc_certificate, hsc_certificate FROM document_storage WHERE username=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, username);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    byte[] birthImageData = resultSet.getBytes("birth_certificate");
                    byte[] nidImageData = resultSet.getBytes("nid_copy");
                    byte[] sscImageData = resultSet.getBytes("ssc_certificate");
                    byte[] hscImageData = resultSet.getBytes("hsc_certificate");
                    
                    if (birthImageData != null) {
                        ImageIcon birthIcon = new ImageIcon(birthImageData);
                        jLabel1.setIcon(new ImageIcon(birthIcon.getImage().getScaledInstance(300, 300, Image.SCALE_SMOOTH)));
                    } else {
                        jLabel1.setIcon(null);
                        JOptionPane.showMessageDialog(this, "No birth certificate found for the username: " + username);
                    }
                    
                    if (nidImageData != null) {
                        ImageIcon nidIcon = new ImageIcon(nidImageData);
                        jLabel2.setIcon(new ImageIcon(nidIcon.getImage().getScaledInstance(300, 300, Image.SCALE_SMOOTH)));
                    } else {
                        jLabel2.setIcon(null);
                        JOptionPane.showMessageDialog(this, "No NID image found for the username: " + username);
                    }
                    
                    if (sscImageData != null) {
                        ImageIcon sscIcon = new ImageIcon(sscImageData);
                        jLabel3.setIcon(new ImageIcon(sscIcon.getImage().getScaledInstance(300, 300, Image.SCALE_SMOOTH)));
                    } else {
                        jLabel3.setIcon(null);
                        JOptionPane.showMessageDialog(this, "No SSC certificate found for the username: " + username);
                    }
                    
                    if (hscImageData != null) {
                        ImageIcon hscIcon = new ImageIcon(hscImageData);
                        jLabel4.setIcon(new ImageIcon(hscIcon.getImage().getScaledInstance(300, 300, Image.SCALE_SMOOTH)));
                    } else {
                        jLabel4.setIcon(null);
                        JOptionPane.showMessageDialog(this, "No HSC certificate found for the username: " + username);
                    }
                } else {
                    jLabel1.setIcon(null);
                    jLabel2.setIcon(null);
                    jLabel3.setIcon(null);
                    jLabel4.setIcon(null);
                    JOptionPane.showMessageDialog(this, "No records found for the username: " + username);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error retrieving images from the database!");
        }
    }          // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
showinfo back = new showinfo();
    back.setVisible(true);
    dispose();        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
       java.awt.EventQueue.invokeLater(() -> {
            new vdocument().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
