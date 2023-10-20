// import React from 'react';
// import { Admin, Resource, List, Edit, Create, Delete, SimpleForm, TextInput, NumberInput, DeleteButton, EditButton } from 'react-admin';
// import simpleRestProvider from 'ra-data-simple-rest';

// const dataProvider = simpleRestProvider('http://localhost/api/api.php');

// const PostList = (props) => (
//   <List {...props}>
//     <TextInput label="Title" source="title" />
//     {/* Ajoutez d'autres champs ici */}
//     <EditButton />
//     <DeleteButton />
//   </List>
// );

// const PostEdit = (props) => (
//   <Edit {...props}>
//     <SimpleForm>
//       <TextInput label="Title" source="title" />
//       {/* Ajoutez d'autres champs ici */}
//       <DeleteButton />
//     </SimpleForm>
//   </Edit>
// );

// const PostCreate = (props) => (
//   <Create {...props}>
//     <SimpleForm>
//       <TextInput label="Title" source="title" />
//       {/* Ajoutez d'autres champs ici */}
//     </SimpleForm>
//   </Create>
// );

// const App = () => (
//   <Admin dataProvider={dataProvider}>
//     <Resource name="annonces" list={PostList} edit={PostEdit} create={PostCreate} remove={Delete} />
//   </Admin>
// );

// export default App;