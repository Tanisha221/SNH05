import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Flatten, Dense, Dropout
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import cv2
import os
import pandas as pd


csv_file_path = '/home/tanisha/Downloads/Origo/ORIGO.csv'  # Replace with the actual path to your CSV file
origami_links_df = pd.read_csv(csv_file_path)

train_dir = '/home/tanisha/Downloads/Origo/Train'
val_dir = '/home/tanisha/Downloads/Origo/Test'

img_size = (512, 512)
batch_size = 32

train_datagen = ImageDataGenerator(rescale=1./255,
                                   shear_range=0.2,
                                   zoom_range=0.2,
                                   horizontal_flip=True)
test_datagen = ImageDataGenerator(rescale=1./255)

train_generator = train_datagen.flow_from_directory(train_dir,
                                                    target_size=img_size,
                                                    batch_size=batch_size,
                                                    class_mode='categorical')
test_generator = test_datagen.flow_from_directory(val_dir,
                                                  target_size=img_size,
                                                  batch_size=batch_size,
                                                  class_mode='categorical')


model = Sequential()

model.add(Conv2D(32, (3, 3), activation='relu', input_shape=(512, 512, 3)))
model.add(MaxPooling2D((2, 2)))

model.add(Conv2D(64, (3, 3), activation='relu'))
model.add(MaxPooling2D((2, 2)))

model.add(Conv2D(128, (3, 3), activation='relu'))
model.add(MaxPooling2D((2, 2)))

model.add(Conv2D(256, (3, 3), activation='relu'))
model.add(MaxPooling2D((2, 2)))

model.add(Flatten())

model.add(Dense(256, activation='relu'))
model.add(Dropout(0.5))

model.add(Dense(3, activation='softmax'))

model.compile(optimizer='adam',
              loss='categorical_crossentropy',
              metrics=['accuracy'])

r= model.fit(train_generator,
                    epochs=2,
                    validation_data=test_generator)

test_loss, test_acc = model.evaluate(test_generator)
print('Test accuracy:', test_acc)


def predict_class_with_link(image_path):
    img = Image.open(image_path)
    img = img.resize(img_size)
    img_array = np.array(img)
    img_array = np.expand_dims(img_array, axis=0)
    img_array = img_array / 255.0
    prediction = model.predict(img_array)
    class_names = ['bat', 'butterfly', 'cat', 'penguin','crane','parrot','cube','pyramid']
    predicted_class_index = np.argmax(prediction)
    predicted_class = class_names[predicted_class_index]


    link = origami_links_df.loc[origami_links_df['origami'] == predicted_class, 'link'].values[0]

    return predicted_class, link

def display_image(image_path):
    image = cv2.imread(image_path)

    image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

    plt.imshow(image_rgb)
    plt.axis('off')
    plt.show()

image_path = '/home/tanisha/Downloads/Origo/Test/animal/bat/P_Bat_Engel_10.JPG'

predicted_class, link = predict_class_with_link(image_path)
result=display_image(image_path)
print('Origami:', predicted_class)
print('Link:', link)

model=tf.keras.models.load_model('/home/tanisha/Downloads/Origo/ori-go/origomodel.h5')