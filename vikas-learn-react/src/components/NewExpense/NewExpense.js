import "./NewExpense.css";
import "./ExpenseForm";
import ExpenseForm from "./ExpenseForm";

function NewExpense(props) {
  const expenseDataSaveHandler = (expenseData) => {
    const updatedExpenseData = {
      ...expenseData,
      id: Math.random().toString(),
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
