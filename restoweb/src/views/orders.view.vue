<template>
  <div id="app">
    <h1 class="title" >Ordenes</h1>
      <div class="container">
        <div class="panel panel-left">
          <div class="buttons-grid">
            <button v-for="(button, index) in buttons" :key="index" @click="showOrderDetails(button)">
              {{ button }}
            </button>
          </div>
        </div>
        
        <div class="panel panel-right">
          <button @click="addOrder">Nueva Orden</button>
          <button @click="deleteOrder">Borrar</button>
          <button @click="cancelLastAction">Cancelar</button>
        </div>
      </div>

  </div>
</template>
  
  <script>
  export default {
    name: 'ordersWeb',
    data() {
    return {
      menuOpen: false,
      isModalOpen: false,
      buttons: Array.from({ length: 16 }, (_, i) => `Orden ${i + 1}`),
      actions: [],
      inputText: '',
      savedText: '',
    };
  },
    methods: {
    
    toggleModal() {
      this.isModalOpen = !this.isModalOpen;
    },
    showOrderDetails(order) {
      this.toggleModal();
      this.savedText = `Detalles de la ${order}`;
    },
    addOrder() {
      this.actions.push({ type: 'add', order: `Orden ${this.buttons.length + 1}` });
      this.buttons.unshift(`Orden ${this.buttons.length + 1}`);
    },
    deleteOrder() {
      if (this.buttons.length > 0) {
        this.actions.push({ type: 'delete', order: this.buttons[0] });
        this.buttons.shift();
      }
    },
    cancelLastAction() {
      const lastAction = this.actions.pop();
      if (!lastAction) return;

      if (lastAction.type === 'add') {
        this.buttons.shift();
      } else if (lastAction.type === 'delete') {
        this.buttons.unshift(lastAction.order);
      }
    },
    clearInput() {
      this.inputText = '';
    },
    saveInput() {
      this.savedText = this.inputText;
      this.inputText = '';
    },
  },
  };
  </script>
  
  <style >
  /* estilos opcionales */
  .container {
  display: flex;
  justify-content: space-between;
  margin: 20px;
}

.container > * {
  flex: 1;
  margin: 10px;
}

.panel {
  border: 1px solid #ccc;
  padding: 10px;
  background-color: #f9f9f9;
}

.panel-left {
  overflow-y: auto;
  max-height: 600px;
}

.buttons-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 10px;
}

.buttons-grid button {
  padding: 20px;
  background-color: #ddd;
  border: none;
  cursor: pointer;
}

.buttons-grid button:hover {
  background-color: #bbb;
}

.panel-right button {
  display: block;
  width: 100%;
  padding: 20px;
  margin: 10px 0;
  background-color: #ddd;
  border: none;
  cursor: pointer;
}

.panel-right button:hover {
  background-color: #bbb;
}
  .modal {
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  z-index: 1000;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 500px;
  position: relative;
  text-align: left;
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.buttons {
  display: flex;
  justify-content: space-between;
  margin-top: 10px;
}

.output {
  margin-top: 10px;
  padding: 10px;
  background-color: #eee;
}
  </style>