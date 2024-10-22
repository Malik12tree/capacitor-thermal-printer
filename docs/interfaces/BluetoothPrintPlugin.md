[**capacitor-thermal-printer**](../README.md) • **Docs**

***

[capacitor-thermal-printer](../README.md) / BluetoothPrintPlugin

# Interface: BluetoothPrintPlugin

## Connectivity

### startScan()

> **startScan**(): `Promise`\<`void`\>

#### Returns

`Promise`\<`void`\>

***

### stopScan()

> **stopScan**(): `Promise`\<`void`\>

#### Returns

`Promise`\<`void`\>

***

### connect()

> **connect**(`options`): `Promise`\<`void`\>

#### Parameters

| Parameter | Type |
| ------ | ------ |
| `options` | `object` |
| `options.address` | `string` |

#### Returns

`Promise`\<`void`\>

***

### disconnect()

> **disconnect**(): `Promise`\<`void`\>

#### Returns

`Promise`\<`void`\>

## Event Listeners

### addListener()

#### addListener(event, handler)

> **addListener**(`event`, `handler`): `Promise`\<`PluginListenerHandle`\>

Emitted when new devices are discovered.

##### Parameters

| Parameter | Type |
| ------ | ------ |
| `event` | `"discoverDevices"` |
| `handler` | (`data`) => `void` |

##### Returns

`Promise`\<`PluginListenerHandle`\>

##### Remarks

If you're using Angular as your framework of choice, the handler doesn't run in zone.

#### addListener(event, handler)

> **addListener**(`event`, `handler`): `Promise`\<`PluginListenerHandle`\>

Emitted when device discovery finishes.

##### Parameters

| Parameter | Type |
| ------ | ------ |
| `event` | `"discoveryFinish"` |
| `handler` | () => `void` |

##### Returns

`Promise`\<`PluginListenerHandle`\>

##### Remarks

If you're using Angular as your framework of choice, the handler doesn't run in zone.

##### See

 - [`BluetoothPrintPlugin.startScan`](BluetoothPrintPlugin.md#startscan)
 - [`BluetoothPrintPlugin.stopScan`](BluetoothPrintPlugin.md#stopscan)

#### addListener(event, handler)

> **addListener**(`event`, `handler`): `Promise`\<`PluginListenerHandle`\>

Emitted when the printer status changes. Currently not meaningful at all.

##### Parameters

| Parameter | Type |
| ------ | ------ |
| `event` | `"datachanged"` |
| `handler` | () => `void` |

##### Returns

`Promise`\<`PluginListenerHandle`\>

##### Remarks

If you're using Angular as your framework of choice, the handler doesn't run in zone.

#### addListener(event, handler)

> **addListener**(`event`, `handler`): `Promise`\<`PluginListenerHandle`\>

Emitted when a printer is successfully connected.

##### Parameters

| Parameter | Type |
| ------ | ------ |
| `event` | `"connected"` |
| `handler` | () => `void` |

##### Returns

`Promise`\<`PluginListenerHandle`\>

##### Remarks

If you're using Angular as your framework of choice, the handler doesn't run in zone.

#### addListener(event, handler)

> **addListener**(`event`, `handler`): `Promise`\<`PluginListenerHandle`\>

Emitted when a printer is disconnected.

##### Parameters

| Parameter | Type |
| ------ | ------ |
| `event` | `"disconnected"` |
| `handler` | () => `void` |

##### Returns

`Promise`\<`PluginListenerHandle`\>

##### Remarks

If you're using Angular as your framework of choice, the handler doesn't run in zone.

## Text Formatting

### bold()

> **bold**(`enabled`?): `this`

Formats following texts as bold.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `enabled`? | [`IsEnabled`](../type-aliases/IsEnabled.md) | Defaults to `true` if not specified. |

#### Returns

`this`

#### See

 - [`IsEnabled`](../type-aliases/IsEnabled.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)

***

### underline()

> **underline**(`enabled`?): `this`

Formats following texts as underlined.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `enabled`? | [`IsEnabled`](../type-aliases/IsEnabled.md) | Defaults to `true` if not specified. |

#### Returns

`this`

#### See

 - [`IsEnabled`](../type-aliases/IsEnabled.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)

***

### doubleWidth()

> **doubleWidth**(`enabled`?): `this`

Formats following texts with double width of each character.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `enabled`? | [`IsEnabled`](../type-aliases/IsEnabled.md) | Defaults to `true` if not specified. |

#### Returns

`this`

#### See

 - [`IsEnabled`](../type-aliases/IsEnabled.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.doubleHeight`](BluetoothPrintPlugin.md#doubleheight)

***

### doubleHeight()

> **doubleHeight**(`enabled`?): `this`

Formats following texts with double height of each character.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `enabled`? | [`IsEnabled`](../type-aliases/IsEnabled.md) | Defaults to `true` if not specified. |

#### Returns

`this`

#### See

 - [`IsEnabled`](../type-aliases/IsEnabled.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.doubleWidth`](BluetoothPrintPlugin.md#doublewidth)

***

### inverse()

> **inverse**(`enabled`?): `this`

Formats following texts with inverted colors. (white text on black background)

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `enabled`? | [`IsEnabled`](../type-aliases/IsEnabled.md) | Defaults to `true` if not specified. |

#### Returns

`this`

#### See

 - [`IsEnabled`](../type-aliases/IsEnabled.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)

## Image Formatting

### limitWidth()

> **limitWidth**(`width`): `this`

Limits the width of following images.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `width` | `number` | The maximum width of the image in millimeters ranging from 1mm to 880mm. |

#### Returns

`this`

#### Remarks

- The initial maximum width is 45mm.
- If the width is less than 1mm, this will fail silently.
- If the width is greater than 880mm it will be treated as 880mm.

#### See

 - [`BluetoothPrintPlugin.dpi`](BluetoothPrintPlugin.md#dpi)
 - [`BluetoothPrintPlugin.image`](BluetoothPrintPlugin.md#image)

## Barcode Formatting

### barcodeWidth()

> **barcodeWidth**(`width`): `this`

Sets the width of following barcodes.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `width` | `number` | Width of barcode ranging from 3 to 6. |

#### Returns

`this`

#### Remarks

- The initial width is 3.
- Depending on the printer model, it may **halt** if the width exceeds it's printing width.

#### See

 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)
 - [`BluetoothPrintPlugin.barcodeHeight`](BluetoothPrintPlugin.md#barcodeheight)

***

### barcodeHeight()

> **barcodeHeight**(`height`): `this`

Sets the height of following barcodes.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `height` | `number` | Height of barcode in millimeters ranging from 1mm to 255mm. |

#### Returns

`this`

#### Remarks

- The initial height is 72mm.
- If the height is less than 1mm it will be treated as 1mm.
- If the height is greater than 255mm it will be treated as 255mm.

#### See

 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)
 - [`BluetoothPrintPlugin.barcodeWidth`](BluetoothPrintPlugin.md#barcodewidth)

***

### barcodeTextPlacement()

> **barcodeTextPlacement**(`placement`): `this`

Sets the placement of following barcode texts.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `placement` | `"both"` \| `"none"` \| `"above"` \| `"below"` | Placement to use. |

#### Returns

`this`

#### See

 - [`BarcodeTextPlacement`](../type-aliases/BarcodeTextPlacement.md)
 - [`BarcodeTextPlacements`](../variables/BarcodeTextPlacements.md)
 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)

## Hybrid Formatting

### align()

> **align**(`alignment`): `this`

Aligns following texts, images, qr codes and barcodes with the given alignment.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `alignment` | `"center"` \| `"left"` \| `"right"` | Alignment to use. |

#### Returns

`this`

#### See

 - [`PrintAlignment`](../type-aliases/PrintAlignment.md)
 - [`PrintAlignments`](../variables/PrintAlignments.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.image`](BluetoothPrintPlugin.md#image)
 - [`BluetoothPrintPlugin.qr`](BluetoothPrintPlugin.md#qr)
 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)

***

### charSpacing()

> **charSpacing**(`charSpacing`): `this`

Sets the character spacing of following texts and barcode texts.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `charSpacing` | `number` | The character spacing in millimeters ranging from 0mm to 30mm. |

#### Returns

`this`

#### Remarks

- The initial spacing is 1mm.
- If the spacing is less than 0mm it will be treated as 0mm.
- If the spacing is greater than 30mm it will be treated as 30mm.

#### See

 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)

***

### lineSpacing()

> **lineSpacing**(`lineSpacing`): `this`

Sets the line spacing of following texts, images, qr codes, barcodes with the given spacing.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `lineSpacing` | `number` | The line spacing in millimeters ranging from 0mm to 255mm. |

#### Returns

`this`

#### Remarks

- The initial spacing is 30mm.
- If the spacing is less than 0mm it will be treated as 0mm.
- If the spacing is greater than 255mm it will be treated as 255mm.

#### See

 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.image`](BluetoothPrintPlugin.md#image)
 - [`BluetoothPrintPlugin.qr`](BluetoothPrintPlugin.md#qr)
 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)

***

### font()

> **font**(`font`): `this`

Formats following texts and barcode texts with the given font.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `font` | `"A"` \| `"B"` | Font to use. |

#### Returns

`this`

#### See

 - [`PrinterFont`](../type-aliases/PrinterFont.md)
 - [`PrinterFonts`](../variables/PrinterFonts.md)
 - [`BluetoothPrintPlugin.text`](BluetoothPrintPlugin.md#text)
 - [`BluetoothPrintPlugin.barcode`](BluetoothPrintPlugin.md#barcode)

***

### clearFormatting()

> **clearFormatting**(): `this`

Clears all formatting.

#### Returns

`this`

## Content

### text()

> **text**(`text`): `this`

Adds text to the print queue.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `text` | `string` | Text to use. |

#### Returns

`this`

#### Remarks

To print a newline, explicitly end the text with a newline character (`\n`).

***

### image()

> **image**(`dataURLOrBase64`): `this`

Adds an image to the print queue.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `dataURLOrBase64` | `string` | Image data URL or base64. |

#### Returns

`this`

#### Remarks

The supported image formats the running platform's supported formats.
For maximum compatibility, use PNG and JPEG formats.

#### See

[`BluetoothPrintPlugin.limitWidth`](BluetoothPrintPlugin.md#limitwidth)

***

### qr()

> **qr**(`data`): `this`

Adds a QR code to the print queue.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `data` | `string` | QR code data. |

#### Returns

`this`

***

### barcode()

> **barcode**(`type`, `data`): `this`

Adds a barcode to the print queue.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `type` | `"UPC_A"` \| `"EAN8"` \| `"EAN13"` \| `"CODE39"` \| `"ITF"` \| `"CODABAR"` \| `"CODE128"` | Barcode type. |
| `data` | `string` | Barcode data. |

#### Returns

`this`

#### See

 - [`BarcodeType`](../type-aliases/BarcodeType.md)
 - [`DataCodeType`](../type-aliases/DataCodeType.md)
 - [`BarcodeTypes`](../variables/BarcodeTypes.md)
 - [`DataCodeTypes`](../variables/DataCodeTypes.md)

***

### raw()

#### raw(base64)

> **raw**(`base64`): `this`

Adds raw data (base64 encoded) to the print queue. Use only if you know what you are doing.
Using base64 encoding can greatly improve the speed of data transfer through the Capacitor plugin bridge.

##### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `base64` | `string` | Base64 encoded data. |

##### Returns

`this`

#### raw(buffer)

> **raw**(`buffer`): `this`

Adds raw data (buffer) to the print queue. Use only if you know what you are doing.

##### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `buffer` | `number`[] | Buffer containing the data. |

##### Returns

`this`

##### Remarks

Each byte will be truncated/wrapped if it's outside the range of 0 to 255.

***

### selfTest()

> **selfTest**(): `this`

Adds a self-test instruction to the print queue which usually prints general information about the printer and its capabilities.

#### Returns

`this`

#### Remarks

The printer may not support this instruction and fail silently.

## Content Actions

### beep()

> **beep**(): `this`

Adds a beep instruction to the print queue.

#### Returns

`this`

#### Remarks

The printer may not support this instruction and fail silently.

***

### openDrawer()

> **openDrawer**(): `this`

Adds an open drawer instruction to the print queue.

#### Returns

`this`

#### Remarks

The printer may not support this instruction and fail silently.

***

### cutPaper()

> **cutPaper**(`half`?): `this`

Adds a cut instruction to the print queue.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `half`? | `boolean` | If true, performs a half cut depending on the printer model. |

#### Returns

`this`

#### Remarks

- The printer may not support the full cut instruction and fail silently.
- The printer may not support the half cut instruction and fail silently.

#### See

[`BluetoothPrintPlugin.feedCutPaper`](BluetoothPrintPlugin.md#feedcutpaper)

***

### feedCutPaper()

> **feedCutPaper**(`half`?): `this`

Adds a cut instruction to the print queue preceded by a line feed.

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `half`? | `boolean` | If true, performs a half cut depending on the printer model. |

#### Returns

`this`

#### Remarks

- The printer may not support the full cut instruction and fail silently.
- The printer may not support the half cut instruction and fail silently.

#### See

[`BluetoothPrintPlugin.cutPaper`](BluetoothPrintPlugin.md#cutpaper)

## Printing Actions

### begin()

> **begin**(): `this`

Resets the print queue while clearing all formatting.

#### Returns

`this`

#### See

 - [`BluetoothPrintPlugin.write`](BluetoothPrintPlugin.md#write)
 - [`BluetoothPrintPlugin.clearFormatting`](BluetoothPrintPlugin.md#clearformatting)

***

### write()

> **write**(): `Promise`\<`void`\>

Writes the print queue to the printer.

#### Returns

`Promise`\<`void`\>

#### Remarks

Calling this method doesn't reset the print queue

#### See

[`BluetoothPrintPlugin.begin`](BluetoothPrintPlugin.md#begin)

## Image Formatting
Sets the DPI used to correctly encode the width of the image used in {@linkcode BluetoothPrintPlugin.limitWidth} based on the printer.

### dpi()

> **dpi**(`dpi`): `this`

#### Parameters

| Parameter | Type | Description |
| ------ | ------ | ------ |
| `dpi` | `200` \| `300` | The DPI value. |

#### Returns

`this`

#### Remarks

- The initial DPI is 200.
- Must be either 200 or 300. Any other value will be treated as 200.

#### See

 - [`PrinterDPI`](../type-aliases/PrinterDPI.md)
 - [`PrinterDPIs`](../variables/PrinterDPIs.md)
 - [`BluetoothPrintPlugin.limitWidth`](BluetoothPrintPlugin.md#limitwidth)
 - [`BluetoothPrintPlugin.image`](BluetoothPrintPlugin.md#image)