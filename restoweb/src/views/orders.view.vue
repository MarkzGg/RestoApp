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
    <div id="myModal" class="modal" v-if="isModalOpen">
      <div class="modal-content">
        <span class="close" @click="toggleModal">&times;</span>
        <ul class="order-details">
          <li><strong>Plato:</strong> {{ order.plato }}</li>
          <li><strong>Entrada:</strong> {{ order.entrada }}</li>
          <li><strong>Guarniciones:</strong> {{ order.guarniciones }}</li>
          <li><strong>Bebidas:</strong> {{ order.bebidas }}</li>
          <li><strong>Total:</strong> {{ order.total }}</li>
        </ul>
        
        <div class="output">Texto guardado aparecerá aquí: {{ savedText }}</div>
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
      order: {
        plato: 'Ejemplo de plato',
        entrada: 'Ejemplo de entrada',
        guarniciones: 'Ejemplo de guarniciones',
        bebidas: 'Ejemplo de bebidas',
        total: 'Ejemplo de precio total',
      },
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
  padding: 200px;
  border: none solid #888;
  width: 80%;
  max-width: 800px;
  position: absolute;
  text-align: left;
  border-radius: 10px;
  
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: normal;
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