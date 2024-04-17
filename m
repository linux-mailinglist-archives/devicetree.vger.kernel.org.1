Return-Path: <devicetree+bounces-60040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CC98A8008
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C7EC1F23AD0
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA44130ACC;
	Wed, 17 Apr 2024 09:43:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A0F516;
	Wed, 17 Apr 2024 09:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347020; cv=none; b=hMX4M9xGFaxfrQam2gE9jaXe1K7/kPaL0p7uELlR3p5NmEfgPl8C/kNHsvfHEWDwMNbH75BYhI8ldKwUBHD9RTwvXApIgoR3P8cA9UFgm7W+KhvCWCA8WpKd1n+jqidz6WHRo0dOSaT9QEjhlTNAJiBzgfHT/jgrHJpEfhs01LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347020; c=relaxed/simple;
	bh=poh2qD6XZNTF/7nScF9hes9m2oNgfOyV9t6e2OvH4S0=;
	h=From:To:Subject:Date:Message-Id; b=b+EBMePo+Ac9sXPloA/R2MksAORCJ49Zoe/KEWXe/KHrvqvb3BBUnD7P/DZQ436Wi44h23s7pEvY4nCalr4hgDhuGLmS1X+ec0s+e8M/1+H5t6BG8KW960QG5UnoXpWnjPCt18fj3KrM9L/8uw57dPAWRGz6Aoc8TOhoUTzWPgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 84025200478;
	Wed, 17 Apr 2024 11:43:36 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6EB92200462;
	Wed, 17 Apr 2024 11:43:35 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 03752183AD14;
	Wed, 17 Apr 2024 17:43:32 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shengjiu.wang@gmail.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: fsl,ssi: Convert to YAML
Date: Wed, 17 Apr 2024 17:25:32 +0800
Message-Id: <1713345932-6408-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Convert the fsl,ssi binding to YAML.

Add below compatible strings which were not listed
in document:

fsl,imx50-ssi
fsl,imx53-ssi
fsl,imx25-ssi
fsl,imx27-ssi
fsl,imx6q-ssi
fsl,imx6sl-ssi
fsl,imx6sx-ssi

Add below fsl,mode strings which were not listed.

i2s-slave
i2s-master
lj-slave
lj-master
rj-slave
rj-master

Then dtbs_check can pass.

And remove the 'codec' description which should be
in 'codec' binding doc.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 .../devicetree/bindings/sound/fsl,ssi.txt     |  87 --------
 .../devicetree/bindings/sound/fsl,ssi.yaml    | 186 ++++++++++++++++++
 2 files changed, 186 insertions(+), 87 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/fsl,ssi.txt
 create mode 100644 Documentation/devicetree/bindings/sound/fsl,ssi.yaml

diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.txt b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
deleted file mode 100644
index 7e15a85cecd2..000000000000
--- a/Documentation/devicetree/bindings/sound/fsl,ssi.txt
+++ /dev/null
@@ -1,87 +0,0 @@
-Freescale Synchronous Serial Interface
-
-The SSI is a serial device that communicates with audio codecs.  It can
-be programmed in AC97, I2S, left-justified, or right-justified modes.
-
-Required properties:
-- compatible:       Compatible list, should contain one of the following
-                    compatibles:
-                      fsl,mpc8610-ssi
-                      fsl,imx51-ssi
-                      fsl,imx35-ssi
-                      fsl,imx21-ssi
-- cell-index:       The SSI, <0> = SSI1, <1> = SSI2, and so on.
-- reg:              Offset and length of the register set for the device.
-- interrupts:       <a b> where a is the interrupt number and b is a
-                    field that represents an encoding of the sense and
-                    level information for the interrupt.  This should be
-                    encoded based on the information in section 2)
-                    depending on the type of interrupt controller you
-                    have.
-- fsl,fifo-depth:   The number of elements in the transmit and receive FIFOs.
-                    This number is the maximum allowed value for SFCSR[TFWM0].
- - clocks:          "ipg" - Required clock for the SSI unit
-                    "baud" - Required clock for SSI master mode. Otherwise this
-		      clock is not used
-
-Required are also ac97 link bindings if ac97 is used. See
-Documentation/devicetree/bindings/sound/soc-ac97link.txt for the necessary
-bindings.
-
-Optional properties:
-- codec-handle:     Phandle to a 'codec' node that defines an audio
-                    codec connected to this SSI.  This node is typically
-                    a child of an I2C or other control node.
-- fsl,fiq-stream-filter: Bool property. Disabled DMA and use FIQ instead to
-		    filter the codec stream. This is necessary for some boards
-		    where an incompatible codec is connected to this SSI, e.g.
-		    on pca100 and pcm043.
-- dmas:		    Generic dma devicetree binding as described in
-		    Documentation/devicetree/bindings/dma/dma.txt.
-- dma-names:	    Two dmas have to be defined, "tx" and "rx", if fsl,imx-fiq
-		    is not defined.
-- fsl,mode:         The operating mode for the AC97 interface only.
-                    "ac97-slave" - AC97 mode, SSI is clock slave
-                    "ac97-master" - AC97 mode, SSI is clock master
-- fsl,ssi-asynchronous:
-                    If specified, the SSI is to be programmed in asynchronous
-                    mode.  In this mode, pins SRCK, STCK, SRFS, and STFS must
-                    all be connected to valid signals.  In synchronous mode,
-                    SRCK and SRFS are ignored.  Asynchronous mode allows
-                    playback and capture to use different sample sizes and
-                    sample rates.  Some drivers may require that SRCK and STCK
-                    be connected together, and SRFS and STFS be connected
-                    together.  This would still allow different sample sizes,
-                    but not different sample rates.
-- fsl,playback-dma: Phandle to a node for the DMA channel to use for
-                    playback of audio.  This is typically dictated by SOC
-                    design.  See the notes below.
-                    Only used on Power Architecture.
-- fsl,capture-dma:  Phandle to a node for the DMA channel to use for
-                    capture (recording) of audio.  This is typically dictated
-                    by SOC design.  See the notes below.
-                    Only used on Power Architecture.
-
-Child 'codec' node required properties:
-- compatible:       Compatible list, contains the name of the codec
-
-Child 'codec' node optional properties:
-- clock-frequency:  The frequency of the input clock, which typically comes
-                    from an on-board dedicated oscillator.
-
-Notes on fsl,playback-dma and fsl,capture-dma:
-
-On SOCs that have an SSI, specific DMA channels are hard-wired for playback
-and capture.  On the MPC8610, for example, SSI1 must use DMA channel 0 for
-playback and DMA channel 1 for capture.  SSI2 must use DMA channel 2 for
-playback and DMA channel 3 for capture.  The developer can choose which
-DMA controller to use, but the channels themselves are hard-wired.  The
-purpose of these two properties is to represent this hardware design.
-
-The device tree nodes for the DMA channels that are referenced by
-"fsl,playback-dma" and "fsl,capture-dma" must be marked as compatible with
-"fsl,ssi-dma-channel".  The SOC-specific compatible string (e.g.
-"fsl,mpc8610-dma-channel") can remain.  If these nodes are left as
-"fsl,elo-dma-channel" or "fsl,eloplus-dma-channel", then the generic Elo DMA
-drivers (fsldma) will attempt to use them, and it will conflict with the
-sound drivers.
diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.yaml b/Documentation/devicetree/bindings/sound/fsl,ssi.yaml
new file mode 100644
index 000000000000..bc8daafb7d81
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/fsl,ssi.yaml
@@ -0,0 +1,186 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/fsl,ssi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Synchronous Serial Interface
+
+maintainers:
+  - Shengjiu Wang <shengjiu.wang@nxp.com>
+
+description:
+  Notes on fsl,playback-dma and fsl,capture-dma
+  On SOCs that have an SSI, specific DMA channels are hard-wired for playback
+  and capture.  On the MPC8610, for example, SSI1 must use DMA channel 0 for
+  playback and DMA channel 1 for capture.  SSI2 must use DMA channel 2 for
+  playback and DMA channel 3 for capture.  The developer can choose which
+  DMA controller to use, but the channels themselves are hard-wired.  The
+  purpose of these two properties is to represent this hardware design.
+
+  The device tree nodes for the DMA channels that are referenced by
+  "fsl,playback-dma" and "fsl,capture-dma" must be marked as compatible with
+  "fsl,ssi-dma-channel".  The SOC-specific compatible string (e.g.
+  "fsl,mpc8610-dma-channel") can remain.  If these nodes are left as
+  "fsl,elo-dma-channel" or "fsl,eloplus-dma-channel", then the generic Elo DMA
+  drivers (fsldma) will attempt to use them, and it will conflict with the
+  sound drivers.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx50-ssi
+              - fsl,imx53-ssi
+          - enum:
+              - fsl,imx51-ssi
+          - enum:
+              - fsl,imx21-ssi
+      - items:
+          - enum:
+              - fsl,imx25-ssi
+              - fsl,imx27-ssi
+              - fsl,imx35-ssi
+              - fsl,imx51-ssi
+              - fsl,imx6q-ssi
+              - fsl,imx6sl-ssi
+              - fsl,imx6sx-ssi
+          - enum:
+              - fsl,imx21-ssi
+              - fsl,imx51-ssi
+      - items:
+          - const: fsl,mpc8610-ssi
+
+  cell-index:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2]
+    description: The SSI index
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  fsl,fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The number of elements in the transmit and receive FIFOs.
+      This number is the maximum allowed value for SFCSR[TFWM0].
+
+  clocks:
+    items:
+      - description: The ipg clock for register access
+      - description: clock for SSI master mode
+    minItems: 1
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: baud
+    minItems: 1
+
+  dmas:
+    oneOf:
+      - items:
+          - description: DMA controller phandle and request line for RX
+          - description: DMA controller phandle and request line for TX
+      - items:
+          - description: DMA controller phandle and request line for RX0
+          - description: DMA controller phandle and request line for TX0
+          - description: DMA controller phandle and request line for RX1
+          - description: DMA controller phandle and request line for TX1
+
+  dma-names:
+    oneOf:
+      - items:
+          - const: rx
+          - const: tx
+      - items:
+          - const: rx0
+          - const: tx0
+          - const: rx1
+          - const: tx1
+
+  codec-handle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to a 'codec' node that defines an audio
+      codec connected to this SSI.  This node is typically
+      a child of an I2C or other control node.
+
+  fsl,fiq-stream-filter:
+    type: boolean
+    description:
+      Disabled DMA and use FIQ instead to filter the codec stream.
+      This is necessary for some boards where an incompatible codec
+      is connected to this SSI, e.g. on pca100 and pcm043.
+
+  fsl,mode:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ ac97-slave, ac97-master, i2s-slave, i2s-master,
+            lj-slave, lj-master, rj-slave, rj-master ]
+    description: |
+      "ac97-slave" - AC97 mode, SSI is clock slave
+      "ac97-master" - AC97 mode, SSI is clock master
+      "i2s-slave" - I2S mode, SSI is clock slave
+      "i2s-master" - I2S mode, SSI is clock master
+      "lj-slave" - Left justified mode, SSI is clock slave
+      "lj-master" - Left justified mode, SSI is clock master
+      "rj-slave" - Right justified mode, SSI is clock slave
+      "rj-master" - Right justified mode, SSI is clock master
+
+  fsl,ssi-asynchronous:
+    type: boolean
+    description: If specified, the SSI is to be programmed in asynchronous
+      mode.  In this mode, pins SRCK, STCK, SRFS, and STFS must
+      all be connected to valid signals.  In synchronous mode,
+      SRCK and SRFS are ignored.  Asynchronous mode allows
+      playback and capture to use different sample sizes and
+      sample rates.  Some drivers may require that SRCK and STCK
+      be connected together, and SRFS and STFS be connected
+      together.  This would still allow different sample sizes,
+      but not different sample rates.
+
+  fsl,playback-dma:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to a node for the DMA channel to use for
+      playback of audio.  This is typically dictated by SOC
+      design. Only used on Power Architecture.
+
+  fsl,capture-dma:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to a node for the DMA channel to use for
+      capture (recording) of audio.  This is typically dictated
+      by SOC design. Only used on Power Architecture.
+
+  "#sound-dai-cells":
+    const: 0
+    description: optional, some dts node didn't add it.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - fsl,fifo-depth
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+    ssi1: ssi@2028000 {
+        compatible = "fsl,imx6q-ssi",
+                     "fsl,imx51-ssi";
+        #sound-dai-cells = <0>;
+        reg = <0x02028000 0x4000>;
+        interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX6QDL_CLK_SSI1_IPG>,
+                 <&clks IMX6QDL_CLK_SSI1>;
+        clock-names = "ipg", "baud";
+        dmas = <&sdma 37 1 0>, <&sdma 38 1 0>;
+        dma-names = "rx", "tx";
+        fsl,fifo-depth = <15>;
+    };
-- 
2.34.1


