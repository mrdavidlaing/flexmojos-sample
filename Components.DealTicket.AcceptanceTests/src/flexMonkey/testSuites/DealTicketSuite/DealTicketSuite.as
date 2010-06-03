package testSuites.DealTicketSuite{
    import com.gorillalogic.flexmonkey.flexunit.tests.MonkeyFlexUnitTestSuite;

    import testSuites.DealTicketSuite.tests.BuyButton;

    public class DealTicketSuite extends MonkeyFlexUnitTestSuite{
        public function DealTicketSuite(){
            addTestCase(new BuyButton());
        }
    }
}