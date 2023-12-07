import { PrismaService } from './prisma/prisma.service';
import { Prisma, Chat } from '@prisma/client';
export declare class AppService {
    private readonly prisma;
    constructor(prisma: PrismaService);
    getHello(): string;
    createMessage(data: Prisma.ChatCreateInput): Promise<Chat>;
    getMessages(): Promise<Chat[]>;
}
