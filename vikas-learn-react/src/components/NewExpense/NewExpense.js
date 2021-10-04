import "./NewExpense.css";
import "./ExpenseForm";
import ExpenseForm from "./ExpenseForm";
import { useState } from "react";

function NewExpense(props) {
  const [expenseFormExpanded, setExpenseFormExpanded] = useState(false);

  const expenseDataSaveHandler = (expenseData) => {
    const updatedExpenseData = {
      id: Math.random().toString(),
      ...expenseData,
    };
    props.onAddExpense(updatedExpenseData);
  };

  const expenseFormShowHandler = () => {
    setExpenseFormExpanded((oldFormExpanded) => {
      return !oldFormExpanded;
    });
  };

  let expenseFormContent = expenseFormExpanded ? (
    <ExpenseForm
      onExpenseDataSave={expenseDataSaveHandler}
      onCancelNewExpense={expenseFormShowHandler}
    />
  ) : (
    <button onClick={expenseFormShowHandler}>Add New Expense</button>
  );

  return <div className="new-expense">{expenseFormContent}</div>;
}

export default NewExpense;
