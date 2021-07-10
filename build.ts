const { files } = await Deno.emit("main.tsx", {
    bundle: "module",
    importMapPath: "importmap.json",
});

await Deno.writeTextFile("./bundle.js", files["deno:///bundle.js"]);
