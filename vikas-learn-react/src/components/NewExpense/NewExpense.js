import "./NewExpense.css";
import "./ExpenseForm";
import ExpenseForm from "./ExpenseForm";

function NewExpense(props) {
  return (
    <div className="new-expense">
      <ExpenseForm />
    </div>
  );
}

export default NewExpense;
