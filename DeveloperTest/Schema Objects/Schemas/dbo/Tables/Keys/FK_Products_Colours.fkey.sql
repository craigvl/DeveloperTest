ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [FK_Products_Colours] FOREIGN KEY ([ColourId]) REFERENCES [dbo].[Colours] ([ColourId]) ON DELETE NO ACTION ON UPDATE NO ACTION;

