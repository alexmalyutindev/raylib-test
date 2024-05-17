#include "raylib.h"

#define WIDTH 800
#define HEIGHT 600
#define RADIUS 40

int main()
{
    InitWindow(WIDTH, HEIGHT, "Hello, Max!");
    SetTargetFPS(60);

    float dt = 1.0f / 60.0f;

    Vector2 p = { WIDTH / 2, HEIGHT / 2 };
    Vector2 v = { 200, 200 };

    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(BLACK);

        if (p.x + v.x * dt < RADIUS || p.x + v.x * dt > WIDTH - 40)
            v.x = -v.x;

        if (p.y + v.y * dt < RADIUS || p.y + v.y * dt > HEIGHT - RADIUS)
            v.y = -v.y;

        p.x += v.x * dt;
        p.y += v.y * dt;
        DrawCircleV(p, RADIUS, RED);

        EndDrawing();
    }

    return 0;
}