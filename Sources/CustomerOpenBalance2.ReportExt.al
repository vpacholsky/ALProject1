reportextension 50101 "Customer Open Balance2 TUL" extends "Customer Open Balance TUL"
{
    dataset
    {
        add(Customer)
        {
            column(FullAddressTUL; FullAddress)
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
