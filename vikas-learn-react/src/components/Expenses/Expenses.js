import "./Expenses.css";
import ExpenseItem from "./ExpenseItem";
import Card from "../UI/Card";
import ExpensesFilter from "./ExpenseFilter";
import { useState } from "react";

function Expenses(props) {
  const [selectedExpenseYear, setSelectedExpenseYear] = useState("2020");

  const expenseYearSelectionHandler = (event) => {
    setSelectedExpenseYear(event.target.value);
  };

  return (
    <Card className="expenses">
      <ExpensesFilter
        selectedExpenseYear={selectedExpenseYear}
        onExpenseYearSelection={expenseYearSelectionHandler}
      />
      {props.expenses.map((expense) => (
        <ExpenseItem
          title={expense.title}
          amount={expense.amount}
          date={expense.date}
        />
      ))}
    </Card>
  );
}

export default Expenses;
