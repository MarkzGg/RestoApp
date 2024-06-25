<template>
  <div id="app">
    <header class="header" >
      <button @click="toggleMenu" class="menu-btn" >&#9776;</button >
      <nav v-if="menuOpen" class="menu">
        <ul>
          <li><a href="#user" @click="closeMenu" >Usuario</a></li>
          <li><a href="#inventory" @click="closeMenu" >Inventario</a></li>
          <li><a href="#orders" @click="closeMenu" >Ordenes</a></li>
          <li><a href="#more" @click="closeMenu" >Mas</a></li>
        </ul>
      </nav>
      <div class="container has-text-centered">
        <a href='/' class="title">Restaurante “Mi Camuchita”</a>
      </div>
      <p class="subtitle">Delicious food, Delightful experiences</p>
    </header>      
      <router-view @click="closeMenu" ></router-view>    
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      menuOpen: false,
      buttons: Array.from({ length: 16 }, (_, i) => `Orden ${i + 1}`),
      actions: [],
    };
  },

  methods: {
    toggleMenu() {
      this.menuOpen = !this.menuOpen;
    },
    closeMenu() {
      this.menuOpen = false; 
    },
  }
}

</script>

<style>

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.header {
  display: flex;
  align-items: center;
  background-color: #333;
  color: white;
  padding: 10px;
  position: relative;
}
.menu-btn {
  background: none;
  border: none;
  font-size: 24px;
  cursor: pointer;
  color: white;
}
.menu {
  position: absolute;
  top: 40px;
  left: 10px;
  background: #444;
  border: 1px solid #333;
  border-radius: 5px;
  z-index: 1000;
}

.menu ul {
  list-style: none;
  padding: 10px;
}

.menu li {
  margin: 5px 0;
}

.menu a {
  color: white;
  text-decoration: none;
}
/* estilos opcionales */
</style>
