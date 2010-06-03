package testSuites.DealTicketSuite.tests{
    import com.gorillalogic.flexmonkey.flexunit.tests.MonkeyFlexUnitTestCase;

    import com.gorillalogic.flexmonkey.core.MonkeyTest;
    import com.gorillalogic.flexmonkey.monkeyCommands.*;
    import com.gorillalogic.flexmonkey.application.VOs.AttributeVO;
    import com.gorillalogic.flexmonkey.events.MonkeyCommandRunnerEvent;

    import mx.collections.ArrayCollection;

    public class BuyButton extends MonkeyFlexUnitTestCase{
        public function BuyButton(){
            super();
        }

        private var mtError_shown_when_attempt_buy_no_quanity:MonkeyTest = new MonkeyTest('Error shown when attempt buy no quanity', 500,
            new ArrayCollection([
                new UIEventMonkeyCommand('SelectText', 'quantityTextBox', 'automationName', [9, '0']),
                new UIEventMonkeyCommand('Type', 'quantityTextBox', 'automationName', ['DELETE']),
                new UIEventMonkeyCommand('Click', 'BUY', 'automationName', [null]),
                new VerifyMonkeyCommand('New Verify', null, 'Quantity must be greater than 0', 'automationName', false,
                    new ArrayCollection([
                        new AttributeVO('automationName', null, 'property', 'Quantity must be greater than 0')
                    ]), null, null, false, '0', '1', 0),
                new UIEventMonkeyCommand('SelectText', 'quantityTextBox', 'automationName', [0, '0']),
                new UIEventMonkeyCommand('Input', 'quantityTextBox', 'automationName', ['100']),
                new UIEventMonkeyCommand('Click', 'BUY', 'automationName', [null]),
                new VerifyMonkeyCommand('New Verify', null, 'BUY order placed', 'automationName', false,
                    new ArrayCollection([
                        new AttributeVO('automationName', null, 'property', 'BUY order placed')
                    ]), null, null, false, '0', '1', 0)
            ]));

        private var mtError_shown_when_attempt_buy_no_quanityTimeoutTime:int = 17000;

        [Test]
        public function Error_shown_when_attempt_buy_no_quanity():void{
            // startTest(<MonkeyTest>, <Complete method>, <Async timeout value>, <Timeout method>);
            startTest(mtError_shown_when_attempt_buy_no_quanity, mtError_shown_when_attempt_buy_no_quanityComplete, mtError_shown_when_attempt_buy_no_quanityTimeoutTime, defaultTimeoutHandler);
        }

        public function mtError_shown_when_attempt_buy_no_quanityComplete(event:MonkeyCommandRunnerEvent, passThroughData:Object):void{
            checkCommandResults(mtError_shown_when_attempt_buy_no_quanity);
        }

        private var mtNewTest:MonkeyTest = new MonkeyTest('NewTest', 500,
            new ArrayCollection([
                new UIEventMonkeyCommand('SelectText', 'quantityTextBox', 'automationName', [3, '0']),
                new UIEventMonkeyCommand('Type', 'quantityTextBox', 'automationName', ['BACKSPACE']),
                new UIEventMonkeyCommand('Input', 'quantityTextBox', 'automationName', ['50']),
                new UIEventMonkeyCommand('Click', 'SELL', 'automationName', [null]),
                new VerifyMonkeyCommand('New Verify', null, 'SELL order placed', 'automationName', false,
                    new ArrayCollection([
                        new AttributeVO('automationName', null, 'property', 'SELL order placed')
                    ]), null, null, false, '0', '1', 0)
            ]));

        private var mtNewTestTimeoutTime:int = 12500;

        [Test]
        public function NewTest():void{
            // startTest(<MonkeyTest>, <Complete method>, <Async timeout value>, <Timeout method>);
            startTest(mtNewTest, mtNewTestComplete, mtNewTestTimeoutTime, defaultTimeoutHandler);
        }

        public function mtNewTestComplete(event:MonkeyCommandRunnerEvent, passThroughData:Object):void{
            checkCommandResults(mtNewTest);
        }


    }
}