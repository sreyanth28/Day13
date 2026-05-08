-- Create Table
CREATE TABLE Accounts
(
    AccountId INT PRIMARY KEY,
    AccountHolder VARCHAR(100),
    Balance DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO Accounts VALUES
(101, 'Rahul', 5000),
(102, 'Suresh', 3000);

---------------------------------------------------
-- Banking Transaction System using TCL
---------------------------------------------------

BEGIN TRANSACTION;



    ---------------------------------------------------
    -- Deposit Operation
    ---------------------------------------------------
    UPDATE Accounts
    SET Balance = Balance + 2000
    WHERE AccountId = 101;

    ---------------------------------------------------
    -- Withdraw Operation
    ---------------------------------------------------
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountId = 102;

    ---------------------------------------------------
    -- Money Transfer Operation
    ---------------------------------------------------

    -- Deduct from Sender
    UPDATE Accounts
    SET Balance = Balance - 1000
    WHERE AccountId = 101;

    -- Add to Receiver
    UPDATE Accounts
    SET Balance = Balance + 1000
    WHERE AccountId = 102;

    ---------------------------------------------------
    -- Save Changes
    ---------------------------------------------------
    COMMIT TRANSACTION;

    PRINT 'All Banking Transactions Successful';


    ---------------------------------------------------
    -- Undo Changes if Error Occurs
    ---------------------------------------------------
    ROLLBACK TRANSACTION;

    PRINT 'Transaction Failed and Rolled Back';



---------------------------------------------------
-- View Final Data
---------------------------------------------------
SELECT * FROM Accounts;