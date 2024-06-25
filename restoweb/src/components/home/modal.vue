<template>
    <div class="modal">
        <h1>{{ msg }}</h1>
      <div class="modal-content">
        <span class="close" @click="$emit('close')">&times;</span>
        <p>Detalles de la orden {{ orderIndex + 1 }}</p>
        <!-- Aquí se pueden agregar más detalles de la orden -->
      </div>
    </div>
  </template>
  
  <script>
  export default {
  name: 'modalWeb',
  props: {
    msg: String
  }
}
  </script>
  
  <style scoped>
  /* Añade aquí los estilos específicos para el modal de órdenes */
  </style>
  