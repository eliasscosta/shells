
#!/bin/bash -x

#Inicialmente remove os espacos brancos por _
find . -name "* *" | while read i; do novo=`echo $i | tr ' ' '_'`; mv "$i" $novo; done

# realiza o rename nos arquivos, baseados em um arquivo com todos os nomes dos arquivos.

ls -trC1 > arquivo

while read LINHA; do

	 NOME="Brooklyn_Nine-Nine_S03" #Ajustar conforme seriado.
	 NOVO=$(echo $LINHA | sed -e "s/Episode_/${NOME}E/g") #Ajustar conforme padrão do arquivo.
	 echo $LINHA
	 #echo $NOME
	 echo $NOVO
	 mv $LINHA $NOVO
done < arquivo
