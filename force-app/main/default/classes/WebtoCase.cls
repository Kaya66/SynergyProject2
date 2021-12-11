public with sharing class WebtoCase {

    public static void insertOrigin(List<Case>cas){

        for(Case c : cas){
            c.Origin = 'Web';
        }

    }

}

//This is the class for a trigger that populates the Origin field with 'Web' for the WebtoCase form.