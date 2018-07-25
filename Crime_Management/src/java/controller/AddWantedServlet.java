/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Wanted;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.WantedModel;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Muscle_Life
 */
@MultipartConfig
public class AddWantedServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // location to store file uploaded
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // configures upload settings
            int wantedID = 0;
            String crimeName = request.getParameter("cName");
            String imgUrl = ""; // don't up image
            String gender = request.getParameter("gender");
            String country = request.getParameter("country");
            Date dob = Date.valueOf(request.getParameter("dob"));
            String offense = request.getParameter("offence");
            int cTypeID = Integer.valueOf(request.getParameter("cType"));
            int mID = Integer.valueOf(request.getParameter("mUnitID"));
            Date wDate = Date.valueOf(request.getParameter("wantedDate"));
            String status = request.getParameter("status");
            String detail = request.getParameter("detail");
            WantedModel model = new WantedModel();

            try {
                wantedID=model.addWanted(new Wanted(imgUrl, crimeName, gender, country, dob, offense, cTypeID, mID, wDate, status, detail));
            } catch (Exception ex) {
                Logger.getLogger(AddWantedServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            getServletContext().getRequestDispatcher("/addimage.jsp?wantedID="+wantedID).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(AddWantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(AddWantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static String FOLDER_UPLOAD = "image";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
        String nameImg = ""; // file path
        try {
            List<FileItem> fileItems = upload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                if (!fileItem.isFormField()) {
                    // xử lý file
                    nameImg = new File(fileItem.getName()).getName();
                    if (!nameImg.equals("")) {

                        String dirUrl = request.getServletContext().getRealPath("") + File.separator + FOLDER_UPLOAD; // folder path
                        File dir = new File(dirUrl);
                        if (!dir.exists()) {
                            dir.mkdir();
                        }
                        String imageUrl = dirUrl + File.separator + nameImg;
                        File file = new File(imageUrl);
                        try {
                            fileItem.write(file);
                            System.out.println("UPLOAD SUCCESSFUL...!");
                        } catch (Exception e) {
                            System.out.println("UPLOAD FAILED...!");
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        //end upload
        int wantedID = Integer.valueOf(request.getParameter("wantedID"));
        String imgUrl = FOLDER_UPLOAD + "/" + nameImg;
        WantedModel model = new WantedModel();
        try {
            model.addImageByWantedID(imgUrl,wantedID);
        } catch (Exception ex) {
            Logger.getLogger(AddWantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        getServletContext().getRequestDispatcher("/wantedtable.jsp").forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
