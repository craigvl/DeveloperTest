ALTER TABLE [dbo].[Customers]
    ADD CONSTRAINT [FK_Customers_DiscountGroups] FOREIGN KEY ([DiscountGroupId]) REFERENCES [dbo].[DiscountGroups] ([DiscountGroupId]) ON DELETE NO ACTION ON UPDATE NO ACTION;

