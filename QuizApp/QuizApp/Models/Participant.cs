using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QuizApp.Models
{
    public class Participant
    {
        [Key]
        public int Id { get; set; }

        [Column(TypeName ="nvarchar(50)")]
        [Required]
        public required string Email { get; set; }

        [Column(TypeName = "nvarchar(50)")]
        [Required]
        public required string Name { get; set; }

        public int Score { get; set; }

        public int TimeTaken { get; set; }
    }
}
