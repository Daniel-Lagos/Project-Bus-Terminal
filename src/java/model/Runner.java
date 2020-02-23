package model;
import java.awt.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.collections15.Transformer;

import edu.uci.ics.jung.algorithms.shortestpath.DijkstraShortestPath;
import edu.uci.ics.jung.algorithms.shortestpath.ShortestPath;
import edu.uci.ics.jung.graph.SparseGraph;
import edu.uci.ics.jung.graph.util.EdgeType;
import model.City;
import model.Route;

public class Runner {

	private SparseGraph<City, Route> myGraph = new SparseGraph<City, Route>();

	private City duitama = new City("Nombre");
	private City sogamoso = new City("Nombre");
	private City nobsa = new City("Nombre");
	private City tunja = new City("Nombre");
	private City tibasosa = new City("Nombre");
	private City paipa = new City("Nombre");
	private City staRosa = new City("Nombre");

	public static void main(String[] args) {
		new Runner().begin();
	}

	public void begin() {
		ArrayList<City> cities = new ArrayList<City>();
		cities.add(duitama);
		cities.add(sogamoso);
		cities.add(nobsa);
		cities.add(tunja);
		cities.add(tibasosa);
		Route routeSogamosoNobsa = new Route(sogamoso, nobsa, 10.0);
		myGraph.addEdge(routeSogamosoNobsa, sogamoso, nobsa, EdgeType.UNDIRECTED);
		Route routeSogamosoNobs = new Route(duitama, nobsa, 10.0);
		myGraph.addEdge(routeSogamosoNobs, nobsa, duitama, EdgeType.UNDIRECTED);
		Route routeSogamosoNob = new Route(duitama, nobsa, 10.0);
		myGraph.addEdge(routeSogamosoNob, duitama, nobsa, EdgeType.UNDIRECTED);
//		Route routeSogamosoNobsaa = new Route(sogamoso, nobsa, 10.0);
//		myGraph.addEdge(routeSogamosoNobsa, sogamoso, nobsa, EdgeType.UNDIRECTED);
		
		Transformer<Route, Double> weightTransformer = new Transformer<Route, Double>() {
			@Override
			public Double transform(Route arg0) {
				// TODO Auto-generated method stub
				return arg0 != null ? arg0.getDistance() : 0.0;
			}
		};
		
		DijkstraShortestPath<City, Route> shortesPath= new DijkstraShortestPath<City, Route>(myGraph,weightTransformer,false);

		List rutaSogamosoDuitama= (List) shortesPath.getPath(sogamoso, duitama);
		for(int i=0; i < rutaSogamosoDuitama.getItemCount();i++) {
			System.out.println(rutaSogamosoDuitama.toString());
		}
		
		
		/*
		 * val weightTransformer = Transformer<Route, Double> { route -> route?.distance
		 * ?: 0.0 }
		 * 
		 * val shortestPath = DijkstraShortestPath<City, Route>(myGraph,
		 * weightTransformer, false)
		 * 
		 * val shortestPathFromSogamosoToTunja = shortestPath.getPath(sogamoso, tunja)
		 * shortestPathFromSogamosoToTunja.forEach { println(it.toString()) }
		 * 
		 */
		
		
	}

}
