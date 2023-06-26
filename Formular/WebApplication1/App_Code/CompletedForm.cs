using System;

namespace WebApplication1.App_Code
{
    public class CompletedForm
    {

        public int CompletedFormID { get; set; }
        public int TrainingCourseFK { get; set; }
        public String BestesTeil { get; set; }
        public String SchlechtestesTeil { get; set; }

        public int Benotung { get; set; }

        public string VerbesserungsVorschlag { get; set; }



    }
}