import "./NewExpense.css";
import "./ExpenseForm";
import ExpenseForm from "./ExpenseForm";

function NewExpense(props) {
  const expenseDataSaveHandler = (expenseData) => {
    const updatedExpenseData = {
      id: Math.random().toString(),
      ...expenseData,
    };
    props.onAddExpense(updatedExpenseData);
  };

  return (
    <div className="new-expense">
      <ExpenseForm onExpenseDataSave={expenseDataSaveHandler} />
    </div>
  );
}

export default NewExpense;
