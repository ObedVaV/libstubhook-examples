
//Made by TreeBl
unsigned int * makeNewItem(int id, int vTable, int materialDword, int pictureId, char * name)
{
unsigned int * item = new unsigned int[0xb8];
int * disa = (int *)(materialDword-0x1000+myPidAddr);
TileNew((int)item,id,pictureId,*disa);

item[0] = vTable+8-0x1000+myPidAddr;
item[3] = 0;
item[4] = 0;
item[5] = 0;
item[6] = 0x3f666666;
item[7] = 0x3E000000;
item[8] = 0x3f666666;
//int idk = item[2];
char * tst =(char *)(0x216230-0x1000+myPidAddr+id);
*tst = 0x1;
TileInit((int)item);
setDestroyTime((int)item, 0x3DCCCCCD);
setSoundType((int)item, 0x216358-0x1000+myPidAddr);
item[15] = 1;
std::string testa = (std::string)name;
setDescriptionId((int)item,testa);
int * inTable = (int *)(0x2154D0-0x1000+myPidAddr+(id*4));
*inTable = (int)item;

return item;
}
