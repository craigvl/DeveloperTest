﻿ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [FK_Products_Sizes] FOREIGN KEY ([SizeId]) REFERENCES [dbo].[Sizes] ([SizeId]) ON DELETE NO ACTION ON UPDATE NO ACTION;

