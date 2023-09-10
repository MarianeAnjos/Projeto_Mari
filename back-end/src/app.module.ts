import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { ProdutoModule } from './produto/produto.module';
import { LojaModule } from './loja/loja.module';

@Module({
  imports: [UsersModule, ProdutoModule, LojaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
