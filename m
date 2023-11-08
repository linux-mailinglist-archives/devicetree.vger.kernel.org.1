Return-Path: <devicetree+bounces-14576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E017E5921
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3E54B21006
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 14:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026A21BDF5;
	Wed,  8 Nov 2023 14:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sW7Xo8QJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A0718C23
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 14:34:03 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 779E21FD7
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 06:34:02 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50797cf5b69so9185144e87.2
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 06:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699454041; x=1700058841; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M2oP0CAwM9fqA+0Dgb2EoSHPOfdHteJ6dO8seqEUSC8=;
        b=sW7Xo8QJdWxPflBHJcbXzP5aLbg/kpAem6CFaTOLIAnzFhvb3eMw9p3pkXkB1yc0aI
         9KGny/+dSYoKAuGrYyyhSl6VHfK9HiYLEagOnu9Pwrb+79xb0/m3TMlSuESvYm9oVCL1
         4R5l1P9cZKciRQTCrfnX6a8otqDE1HZ3wVzDPjXhVj8SIJFD4qwwDma7C4WHme6yDuFD
         6+r9PvceMsf84KoRAQUobaWB6lAI+2nuvmQl8La67RJjzWWBytG8ui0vGL1m+/kA44dj
         6lk+xmtpm7H1M1MgAEURLZOqwXj1RXsgNrGHMPpRVEdATSNbVI6iJp9A+9rJwTZcqWaD
         BpjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699454041; x=1700058841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2oP0CAwM9fqA+0Dgb2EoSHPOfdHteJ6dO8seqEUSC8=;
        b=gqd+C2UeLss8cLC7qlAWRMjLNGCiJkc6IX/PxJjko1Vf/dR+aEhAigkA2VLF783H26
         /yuWJBA5eOT4Pnb83V+dwddfGQkoNSFXsNlhrHbhJK9TuPkJeUwwL77MJx1oq0fBMC0i
         4BOMSJ/lpUf3QM3Lj8YUUDvEHB3OhR+hLiPbNMjiuOmAKzsE0ySoK3j+XHInQhMqLv1t
         TbjWiwfOIYIdmLM/g4KHyBp+tgWss59a+xzj4WG5p9G6BbAqnxQr67pVje0eL5Ka2e7o
         WEva5AJPndQeajgU3xbCm+yUZABuDybj/AC8OZwa9hsk5+weLce6iNmIWIoSH4rkoqRU
         6tFg==
X-Gm-Message-State: AOJu0Yy6WIsHNaaR2XqkkGmhqp0Wea9sNaoojK6gqqMlK1eg/iaErDl2
	NUQQQkaBBUsM0XTK/4dzfKb08w==
X-Google-Smtp-Source: AGHT+IFeXnsMtyy2DU5D81yc59LJjJ/iZ2FiMOZRYehCSURuyYWkuW9aCmnGrNB56MFltC8JL+AJdA==
X-Received: by 2002:a05:6512:2808:b0:509:45ed:1083 with SMTP id cf8-20020a056512280800b0050945ed1083mr2130529lfb.40.1699454040709;
        Wed, 08 Nov 2023 06:34:00 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id q10-20020ac24a6a000000b00507a3b8b007sm686773lfp.110.2023.11.08.06.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 06:34:00 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 08 Nov 2023 15:33:50 +0100
Subject: [PATCH 2/6] dt-bindings: mtd: Rewrite gpio-control-nand in schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-fix-mips-nand-v1-2-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
In-Reply-To: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Ben Dooks <ben.dooks@codethink.co.uk>
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Howard Harte <hharte@magicandroidapps.com>
X-Mailer: b4 0.12.4

This creates a schema for GPIO controlled NAND. The txt
schema was old and wrong.

Mark the old way of passing GPIOs in a long array as
deprecated and encourage per-pin GPIO assignments with
the named nnn-gpios phandles.

I was unable to re-use raw-nand-chip.yaml or even
nand-chip.yaml: the reason is that they both assume
that we have potentially several NAND chips with chip
selects and thus enforce a node name "nand@0" etc,
which doesn't quite work for this device.

Since the GPIO controlled NAND is both a NAND controller
and a NAND chip jitted together, I have to modify the
mtd.yaml nodename requirement to include nand-controller@
as this is the nodename that this device should use.

Deprecate the custom "band-width" property in favor of
"nand-bus-width".

Reported-by: Howard Harte <hharte@magicandroidapps.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Check the required section especially. Since there is no
hardware default for anything when using GPIOs for this,
I think all these parameters are compulsory.
---
 .../devicetree/bindings/mtd/gpio-control-nand.txt  |  47 ------
 .../devicetree/bindings/mtd/gpio-control-nand.yaml | 168 +++++++++++++++++++++
 Documentation/devicetree/bindings/mtd/mtd.yaml     |   2 +-
 3 files changed, 169 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/gpio-control-nand.txt b/Documentation/devicetree/bindings/mtd/gpio-control-nand.txt
deleted file mode 100644
index 486a17d533d7..000000000000
--- a/Documentation/devicetree/bindings/mtd/gpio-control-nand.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-GPIO assisted NAND flash
-
-The GPIO assisted NAND flash uses a memory mapped interface to
-read/write the NAND commands and data and GPIO pins for the control
-signals.
-
-Required properties:
-- compatible : "gpio-control-nand"
-- reg : should specify localbus chip select and size used for the chip.  The
-  resource describes the data bus connected to the NAND flash and all accesses
-  are made in native endianness.
-- #address-cells, #size-cells : Must be present if the device has sub-nodes
-  representing partitions.
-- gpios : Specifies the GPIO pins to control the NAND device.  The order of
-  GPIO references is:  RDY, nCE, ALE, CLE, and nWP. nCE and nWP are optional.
-
-Optional properties:
-- bank-width : Width (in bytes) of the device.  If not present, the width
-  defaults to 1 byte.
-- chip-delay : chip dependent delay for transferring data from array to
-  read registers (tR).  If not present then a default of 20us is used.
-- gpio-control-nand,io-sync-reg : A 64-bit physical address for a read
-  location used to guard against bus reordering with regards to accesses to
-  the GPIO's and the NAND flash data bus.  If present, then after changing
-  GPIO state and before and after command byte writes, this register will be
-  read to ensure that the GPIO accesses have completed.
-
-The device tree may optionally contain sub-nodes describing partitions of the
-address space. See partition.txt for more detail.
-
-Examples:
-
-gpio-nand@1,0 {
-	compatible = "gpio-control-nand";
-	reg = <1 0x0000 0x2>;
-	#address-cells = <1>;
-	#size-cells = <1>;
-	gpios = <&banka 1 0>,	/* RDY */
-		<0>, 		/* nCE */
-		<&banka 3 0>, 	/* ALE */
-		<&banka 4 0>, 	/* CLE */
-		<0>;		/* nWP */
-
-	partition@0 {
-	...
-	};
-};
diff --git a/Documentation/devicetree/bindings/mtd/gpio-control-nand.yaml b/Documentation/devicetree/bindings/mtd/gpio-control-nand.yaml
new file mode 100644
index 000000000000..5b30ee7ad4a5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/gpio-control-nand.yaml
@@ -0,0 +1,168 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/gpio-control-nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NAND memory exclusively connected to GPIO lines
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  It is possible to connect a NAND flash memory without any
+  dedicated NAND controller hardware, using just general purpose
+  I/O (GPIO) pins. This will not be fast, but it will work.
+  The address and data lines of the chip will still need to be
+  connected so that the contents of a NAND page can be
+  memory-mapped and accessed after the special lines are toggled
+  by GPIO.
+
+# The GPIO controlled NAND has wires going directly to one single
+# NAND chip, so it is both a nand controller and a nand chip at
+# the same time, but it does not have things such as chip select
+# since the use is hammered down to one single chip only.
+# There is no point for the chip itself to be a subnode of the
+# controller so the raw NAND chip properties are added right into
+# the controller node like this.
+
+allOf:
+  - $ref: mtd.yaml#
+
+properties:
+  $nodename:
+    pattern: "^(nand|nand-controller)@[a-f0-9]+$"
+
+  compatible:
+    const: gpio-control-nand
+
+  reg:
+    description: |
+      This should specify the address where the NAND page currently
+      accessed gets memory-mapped, and the size of the page. Usually
+      this will be the same as the page size of the NAND.
+
+  label: true
+
+  partitions: true
+
+  nand-ecc-algo: true
+
+  nand-ecc-step-size: true
+
+  nand-ecc-strength: true
+
+  nand-use-soft-ecc-engine: true
+
+  gpio-control-nand,io-sync-reg:
+    description: |
+      A 64-bit physical address for a read location used to guard
+      against bus reordering with regards to accesses to the GPIOs and
+      the NAND flash data bus. If present, then after changing GPIO state
+      and before and after command byte writes, this register will be
+      read to ensure that the GPIO accesses have completed.
+    $ref: /schemas/types.yaml#/definitions/uint64
+
+  gpios:
+    description:
+      Legacy GPIO array for the NAND chip lines, order RDY,
+      NCE, ALE, CLE, NWP.
+    deprecated: true
+    maxItems: 5
+
+  rdy-gpios:
+    description:
+      GPIO for the NAND chip RDY line
+    maxItems: 1
+
+  ce-gpios:
+    description:
+      GPIO for the NAND chip CE chip enable line, usually
+      this is active low, so it should be tagged with the GPIO
+      flag GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+  ale-gpios:
+    description:
+      GPIO for the NAND chip ALE line
+    maxItems: 1
+
+  cle-gpios:
+    description:
+      GPIO for the NAND chip CLE line
+    maxItems: 1
+
+  wp-gpios:
+    description:
+      GPIO for the NAND chip WP line, usually this is
+      active low, so it should be tagged with the GPIO
+      flag GPIO_ACTIVE_LOW.
+    maxItems: 1
+
+  bank-width:
+    description:
+      Width (in bytes) of the device.  If not present, the
+      width defaults to 1 byte. This is deprecated, use
+      nand-bus-width instead.
+    deprecated: true
+    enum: [ 1, 2 ]
+    default: 1
+
+  nand-bus-width:
+    description:
+      Bus width to the NAND chip
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [8, 16]
+    default: 8
+
+  chip-delay:
+    description:
+      chip dependent delay for transferring data from array to
+      read registers (tR). If not present then a default of 20us
+      is used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - ale-gpios
+  - cle-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    nand@20200000 {
+      compatible = "gpio-control-nand";
+      /* 512 bytes memory window at 0x20200000 */
+      reg = <0x20200000 0x200>;
+      rdy-gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+      ce-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+      ale-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+      cle-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
+      wp-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+
+      label = "ixp400 NAND";
+
+      nand-use-soft-ecc-engine;
+      nand-ecc-algo = "bch";
+      nand-ecc-step-size = <512>;
+      nand-ecc-strength = <4>;
+
+      partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        fs@0 {
+            label = "SysA Kernel";
+            reg = <0x0 0x400000>;
+        };
+
+        fs@400000 {
+            label = "SysA Code";
+            reg = <0x400000 0x7C00000>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/mtd.yaml b/Documentation/devicetree/bindings/mtd/mtd.yaml
index f322290ee516..e6fd82cbc35d 100644
--- a/Documentation/devicetree/bindings/mtd/mtd.yaml
+++ b/Documentation/devicetree/bindings/mtd/mtd.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 properties:
   $nodename:
-    pattern: "^(flash|.*sram|nand)(@.*)?$"
+    pattern: "^(flash|.*sram|nand|nand-controller)(@.*)?$"
 
   label:
     description:

-- 
2.34.1


