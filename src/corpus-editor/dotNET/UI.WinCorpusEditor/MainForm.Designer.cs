
namespace UI.WinCorpusEditor
{
    partial class MainForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            generateLexemeButton = new Button();
            SuspendLayout();
            // 
            // generateLexemeButton
            // 
            generateLexemeButton.Location = new Point(395, 51);
            generateLexemeButton.Name = "generateLexemeButton";
            generateLexemeButton.Size = new Size(75, 23);
            generateLexemeButton.TabIndex = 0;
            generateLexemeButton.Text = "Generate";
            generateLexemeButton.UseVisualStyleBackColor = true;
            generateLexemeButton.Click += generateLexemeButton_Click;
            // 
            // MainForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(503, 308);
            Controls.Add(generateLexemeButton);
            Name = "MainForm";
            Text = "Siberian Ingrian Finnish Corpus Editor";
            Load += Form1_Load;
            ResumeLayout(false);
        }



        #endregion

        private Button generateLexemeButton;
    }
}
