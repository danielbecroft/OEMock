 /*------------------------------------------------------------------------
    File        : BaseGeneratorTester
    Purpose     : Unit tests for BaseGenerator class
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OEUnit.Assertion.*.
USING OEMock.Generation.*.

ROUTINE-LEVEL ON ERROR UNDO, THROW.

CLASS OEMock.Tests.Generation.BaseGeneratorTester:
    
    @Test.
    METHOD PUBLIC VOID GenerateReturnsBlank():
        DEFINE VARIABLE gen AS BaseGenerator NO-UNDO.
        
        gen = NEW BaseGenerator().
        
        Assert:AreEqual(TRIM(gen:Generate()), "").
        
        IF VALID-OBJECT(gen) THEN DELETE OBJECT gen.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GenerateProceduralReturnsBlank():
        DEFINE VARIABLE gen AS BaseGenerator NO-UNDO.
        
        gen = NEW BaseGenerator().
        
        Assert:AreEqual(TRIM(gen:GenerateProcedural()), "").
        
        IF VALID-OBJECT(gen) THEN DELETE OBJECT gen.
    END METHOD.

END CLASS.