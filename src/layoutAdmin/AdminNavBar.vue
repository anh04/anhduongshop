<template>
    <nav class="navbar navbar-expand-md navbar-light bg-color3 shadow-sm">
    <div class="container">
        <button class="navbar-toggler media-absolute top-end--75-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content">
                    <RouterLink to="/admin/products" class="nav-link nav-color">
                        <span class="megamenu-item-inner"> <span>Products</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content">
                    <RouterLink to="" class="nav-link nav-color" >
                        <span class="megamenu-item-inner"> <span>Product Type</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content">
                    <RouterLink to="home" class="nav-link nav-color" >
                        <span class="megamenu-item-inner"> <span>Discount</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink to="home" class="nav-link nav-color" >
                        <span class="megamenu-item-inner"> <span>Panel</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink class="nav-link nav-color" to="" >
                        <span class="megamenu-item-inner"> <span>Logo</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink class="nav-link nav-color" to="" >
                        <span class="megamenu-item-inner"> <span>User</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink class="nav-link nav-color" to="" >
                        <span class="megamenu-item-inner"> <span>Report</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink class="nav-link nav-color" to="" >
                        <span class="megamenu-item-inner"> <span>Marketing</span> </span>
                    </RouterLink>
                </li>
                <li class="nav-item megamenu-item megamenu-item-not-dropdown has-content ">
                    <RouterLink class="nav-link nav-color" to="" >
                        <span class="megamenu-item-inner"> <span>System</span> </span>
                    </RouterLink>
                </li>
            </ul>

        </div>
    </div>
</nav>
</template>