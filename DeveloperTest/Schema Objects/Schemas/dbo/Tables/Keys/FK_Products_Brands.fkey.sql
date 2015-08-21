ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [FK_Products_Brands] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([BrandId]) ON DELETE NO ACTION ON UPDATE NO ACTION;

