

while true; do
	    echo "Docker Automation Menu:"
	    echo "1. Pull an Image"
	    echo "2. Run an Image (Interactive Mode)"
            echo "3. Start a Container"
	    echo "4. Attach to a Container"
            echo "5. Stop a Container"
	    echo "6. Show All Containers"						        
	    echo "7. Show All Images"
	    echo "8. Show Running Containers"
            echo "9. Delete a Container"
	    echo "10. Delete an Image"
            echo "11. Exit"
	    read -p "Enter your choice: " choice

	    if [ "$choice" -eq 1 ]; then
		read -p "Enter the image name to pull (e.g., ubuntu:latest): " image_name
		docker pull "$image_name"
		echo "Image '$image_name' pulled successfully."

            elif [ "$choice" -eq 2 ]; then
		 read -p "Enter the image name to run in interactive mode: " image_name
		 docker run -it "$image_name"

	    elif [ "$choice" -eq 3 ]; then  
		     read -p "Enter the container name or ID to start: " container_id
       		     docker start "$container_id"
		     echo "Container '$container_id' started successfully."      
       
	    elif [ "$choice" -eq 4 ]; then
		    read -p "Enter the container name or ID to attach: " container_id
		    docker attach "$container_id"

	     elif [ "$choice" -eq 5 ]; then
		    read -p "Enter the container name or ID to stop: " container_id
		    docker stop "$container_id"
		    echo "Container '$container_id' stopped successfully."
		    echo "\nAll Containers:"
      		    docker ps -a    
	    
	    elif [ "$choice" -eq 7 ]; then
		    echo "\nAll Images:"
      		    docker images																									    elif [ "$choice" -eq 8 ]; then
		    echo "\nRunning Containers:"
		    docker ps	
      
	    elif [ "$choice" -eq 9 ]; then
		    read -p "Enter the container name or ID to delete: " container_id
		    docker rm "$container_id"
		    echo "Container '$container_id' deleted successfully."

	    elif [ "$choice" -eq 10 ]; then
		    read -p "Enter the image name or ID to delete: " image_name
		    docker rmi "$image_name"
		    echo "Image '$image_name' deleted successfully."

	    elif [ "$choice" -eq 11 ]; then
		    echo " Goodbye!....see you soon...see you very soon"
		    break

	    else
		echo "Invalid choice. Please select a valid option."
													
fi
done
