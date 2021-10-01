import "./Expenses.css";
import Card from "../UI/Card";
import ExpensesFilter from "./ExpenseFilter";
import { useState } from "react";
import ExpenseList from "./ExpenseList";

function Expenses(props) {
  const [selectedExpenseYear, setSelectedExpenseYear] = useState("2020");

  const expenseYearSelectionHandler = (event) => {
    setSelectedExpenseYear(event.target.value);
  };

  const filteredExpenses = props.expenses.filter((expense) => {
    return expense.date.getFullYear() === parseInt(selectedExpenseYear);
  });

  return (
    <Card className="expenses">
      <ExpensesFilter
        selectedExpenseYear={selectedExpenseYear}
        onExpenseYearSelection={expenseYearSelectionHandler}
      />
      <ExpenseList expenses={filteredExpenses} />
    </Card>
  );
}

export default Expenses;
