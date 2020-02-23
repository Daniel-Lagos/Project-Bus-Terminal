/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import edu.uci.ics.jung.algorithms.shortestpath.DijkstraShortestPath;
import edu.uci.ics.jung.graph.SparseGraph;
import edu.uci.ics.jung.graph.util.EdgeType;
import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.collections15.Transformer;

/**
 *
 * @author mesla
 */
public class Controll extends HttpServlet {

    public static Transformer<Route, Double> weightTransformer = new Transformer<Route, Double>() {
        @Override
        public Double transform(Route arg0) {
            // TODO Auto-generated method stub
            return arg0 != null ? arg0.getDistance() : 0.0;
        }
    };

    /*
    Duración	del	viaje
    • Número	de	paradas
    • Kilometraje
    • Costo
     */
    private SparseGraph<City, Route> myGraph;
    private ArrayList<City> cities;
    private ArrayList<Route> routes;

    public Controll() {
        cities = new ArrayList<>();
        routes = new ArrayList<>();
        loadCities();
    }
//Metodo principal que se ejecuta al llamado
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("json/application");
        response.setCharacterEncoding("UTF-8");
        String opt = request.getParameter("option");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //out.println(opt +" Vale");
            switch (opt) {
                case "0":
                    addCity(request, response);
                    break;
                case "1":
                    addEdges(request, response);
                    break;
                case "2":
                    deleteWord(request, response);
                    break;
                case "3":
                    valueRoute(request, response);
                    break;
                case "4":
                    break;
            }
        }

    }
    
    
    public void deleteWord(HttpServletRequest request, HttpServletResponse response) {

    }

    public void addEdges(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try (PrintWriter out = response.getWriter()) {
            String cityOrigin = request.getParameter("cityOrigin");
            String cityDestination = request.getParameter("cityDestination");
            double distance = Double.parseDouble(request.getParameter("distance"));
            City one = findCity(cityOrigin);
            City two = findCity(cityDestination);
            String msj = null;
            if (one != null && two != null) {
                Route route=new Route(one,two,distance);
                routes.add(route);
                myGraph.addEdge(route, one, two, EdgeType.UNDIRECTED);
                msj = "{\"request\": " + true + "}";
            } else {
                msj = "{\"request\": " + true + "}";
            }
            out.print(msj);
        }

    }

    private City findCity(String name) {
        for (City city : cities) {
            if (city.getName().equals(name)) {
                return city;
            }
        }

        return null;
    }

    public void calculateRutes(City cityOrigin, City cityDestination) {

        DijkstraShortestPath<City, Route> shortesPath = new DijkstraShortestPath<City, Route>(myGraph, weightTransformer, false);

        List rutaSogamosoDuitama = (List) shortesPath.getPath(cityOrigin, cityDestination);
        for (int i = 0; i < rutaSogamosoDuitama.getItemCount(); i++) {
            System.out.println(rutaSogamosoDuitama.toString());
        }
    }

    public void addCity(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("city");
    }

    private void loadCities() {
        cities.add(new City("Duitama"));
        cities.add(new City("Tibasosa"));
        cities.add(new City("Nobsa"));
        cities.add(new City("Tunja"));
        cities.add(new City("Paipa"));
        cities.add(new City(("Yopal")));

    }

    public void valueRoute(HttpServletRequest request, HttpServletResponse response) {
        
    }

}
