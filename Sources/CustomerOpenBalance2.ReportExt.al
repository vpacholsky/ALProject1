reportextension 50101 "Customer Open Balance2 TUL" extends "Customer Open Balance TUL"
{
    dataset
    {
        // Add changes to dataitems and columns here
        add(Customer)
        {
            column(FullAddress; FullAddress)
            {
            }
        }

        modify(Customer)
        {
            trigger OnAfterAfterGetRecord()
            var
                TreePlaceHoldersTok: Label '%1 %2 %3', Locked = true;
            begin
                FullAddress := StrSubstNo(TreePlaceHoldersTok, Customer.Address, Customer."Post Code", Customer.City);
            end;
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(Layout2)
        {
            Type = RDLC;
            LayoutFile = 'Sources\CustomerOpenBalance2.rdl';
        }
    }

    var
        FullAddress: Text;

}