Return-Path: <devicetree+bounces-251602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DB3CF4BC5
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 17:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB86C3065E3F
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 16:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB55D30DD1F;
	Mon,  5 Jan 2026 16:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gTaWPxXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1720448CFC
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 16:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767629289; cv=none; b=ukvCPwfJrgTZXOHwROpz0WnyatMIrcrVjX6Uxuy8LJ5Jbw24fBM8XmeL+izhbcUZhOpBOj2I/IfAiKOU5J9ivgzvo3bE0EnPc+498LCxL0l+ksAy7PP3QxN6bS4dbJm8WdkEc6d/r6w5VjPNXxU/pyXWsA1odnwkk0gg6kcZDaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767629289; c=relaxed/simple;
	bh=tLTW8VR/hgm4d4LtCOnzDbpFpHNozRlT53fpU6ExxI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=MB+UnGT0dQpB6WLcsMLRmapR6strEXwro8KlJ+iS9RSzH1uIS3Jfa11fEezNoaiaEL9ZP476/pwb3GsQIz1IevZJ04YmgPfkgniFkeADIV6zOihsRgL/pjVuNWq1I/Zoz6zxIt7UIFmcj8JLhXWuJl0IzHEpHsGrEENs5riahvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gTaWPxXc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a0bb2f093aso370335ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767629287; x=1768234087; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a4aPx9Ksdn2f1hkjywQffSfK3dmxxEtjfJVrjCoq+cE=;
        b=gTaWPxXcPidPLjYZZEA+88j5PzAFmxz53n0kC6TI+1PLWflY88Apq32JKlhwLtmIOP
         GNUd2oQpbCYVXJDNm83N19jfui0afk9JdE6C3JKMwJmhAfkFS5MUitwE0vS2vozUaKVZ
         nVTmPbGQ/9K7HYrslM2oYtDP3UVirROglQ+0SiPw4WMLc3WC7++AzDLB7eJcu+4/D6Fp
         S72BKzAQRcUcp6ZLUbfndKNmtth14TMHfHCJkMY4wuyn9bz9LhNYki91tjGGG5TuNeXq
         KEhKNHGuGQk199fHzEuscdfRO9MNbwmnixx1TtyqAocMDDJdJ1SdZwsik3srJPMjyjiL
         DXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767629287; x=1768234087;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a4aPx9Ksdn2f1hkjywQffSfK3dmxxEtjfJVrjCoq+cE=;
        b=XVb0j6ax6q9s4QLiu1Q07FMQqZ7sz916+XlsyiRzdhg70P2T/CMl30lzjs4ZwsI345
         swy4Llj+746UyFqcRKQmqt/R2zRpI67Jg1QeMrhag1qGSZqu2SU7jqkOB78T+xl2EW3x
         48Xdi6uQML3qyBD3oNP/agU/wUsP/Uf9ChZE9LBbcFf8wHnpJ24TL/4MWa28ZxyEnmqo
         T5SGGImaMNaNsw+vVKOJwvJvtBQTw7nuUE+emdrs1xMhtVycFCsMnpGukPPfDT4Jl3S4
         qsGnQe0TSg6geO7q3fcsG3NGDaeT0v+TsDipmVyWjOqnPos2HE5sBbd7Bm1J0nBj7Qtg
         1Nzg==
X-Forwarded-Encrypted: i=1; AJvYcCWmdcP9N4fG0x8TwVbu29ZDopa1JYI+dD0P5z57r761cHKG6yQU3iluPyRHnMYktcoF3VF8rHk9c91m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt0BBja+yRRuuqMXC5MLGTuRCgmKU6T/CrgoaMzH64QMyH7602
	4BErxTZFiyCRVFLiNMFME3bpWBa58OAOhPvi+c849b0EiYpy8ukMAjqm
X-Gm-Gg: AY/fxX72pbCFct3+R/dW/qep0B7+WchCNnmQAx9oVWMI6eI83iY3AATrE1REri+Acgg
	KzlbqTY2x7bWNQJq+n9mrjkC6l0d1kvFqGbKBQY6sYP0PlC+QGvI26FJ5Du+2zjl7yO2rLJ8SBk
	EcgqwLKj9eaufuAgUURAUQxC3yzAFrTKUDdRxMbubKe3V1jutc8JlbnsJYMRxl90N2X7V2hugao
	nI8PcA84RuIgw2yfBRzDi3nIzTcmYc1sTTqT6daRTQNk196yk+qWujM87dLzSso6oIQOZ2Hq9Hy
	X6huMyW30arsH2BBUcs77SSnj/XJOKTfnSSwVuAGKKQADZi+/gpK1WiWyMbJynTyf9ZaNpGM8I/
	iOg5gNrQm0fdEuIr32qPsLTQVrsw1yDv+/QueA1gZAtgXYtDkUC2wzI3tRpAT+w5GEsZILSGJuZ
	QTh4PCC9yoIu8ilPuXsG1bvJfGcetx/btwP4SUUg==
X-Google-Smtp-Source: AGHT+IHmTtNImRFcMTd9bEdO5bmpDmbMDapPG+W7jQiu3FXqxaDNoVVpZNJnkHcYnELInEv2WJGx3w==
X-Received: by 2002:a17:902:dac3:b0:2a1:2ebc:e633 with SMTP id d9443c01a7336-2a3e2c921e2mr2509815ad.4.1767629287115;
        Mon, 05 Jan 2026 08:08:07 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.104.101])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a3e2b6991dsm2066095ad.48.2026.01.05.08.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 08:08:06 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Mon, 05 Jan 2026 16:07:59 +0000
Subject: [PATCH] dt-bindings: mtd: st,spi-fsm: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-st-fsm-v1-1-d1dd935ccee4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAN7hW2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI2ND3eIS3bTiXF0LkyRjE2NTQ3MDY1MloOKCotS0zAqwQdGxtbUAZIF
 QwVgAAAA=
X-Change-ID: 20251231-st-fsm-84b343517035
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert STMicroelectronics SPI FSM Serial NOR Flash Controller binding
to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/mtd/st,spi-fsm.yaml        | 72 ++++++++++++++++++++++
 Documentation/devicetree/bindings/mtd/st-fsm.txt   | 25 --------
 2 files changed, 72 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
new file mode 100644
index 000000000000..f374c6aaa185
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/st,spi-fsm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics SPI FSM Serial NOR Flash Controller
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The STMicroelectronics Fast Sequence Mode (FSM) controller is a dedicated
+  hardware accelerator integrated in older STiH4xx/STiDxxx set-top box SoCs
+  (such as STiH407, STiH416, STiD127). It connects directly to a single
+  external serial flash device used as the primary boot device. The FSM
+  executes hard-coded or configurable instruction sequences in hardware,
+  providing low-latency reads suitable for execute-in-place (XIP) boot
+  and high read bandwidth.
+
+properties:
+  compatible:
+    const: st,spi-fsm
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: spi-fsm
+
+  interrupts:
+    maxItems: 1
+
+  pinctrl-0:
+    maxItems: 1
+
+  st,syscfg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the system configuration registers used for boot-device selection.
+
+  st,boot-device-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Offset of the boot-device register within the st,syscfg node.
+
+  st,boot-device-spi:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Expected boot-device value when booting from this SPI controller.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - pinctrl-0
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    spifsm@fe902000 {
+        compatible = "st,spi-fsm";
+        reg = <0xfe902000 0x1000>;
+        reg-names = "spi-fsm";
+        interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+        pinctrl-0 = <&pinctrl_fsm>;
+        st,syscfg = <&syscfg_rear>;
+        st,boot-device-reg = <0x958>;
+        st,boot-device-spi = <0x1a>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/st-fsm.txt b/Documentation/devicetree/bindings/mtd/st-fsm.txt
deleted file mode 100644
index 54cef9ef3083..000000000000
--- a/Documentation/devicetree/bindings/mtd/st-fsm.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-* ST-Microelectronics SPI FSM Serial (NOR) Flash Controller
-
-Required properties:
-  - compatible : Should be "st,spi-fsm"
-  - reg        : Contains register's location and length.
-  - reg-names  : Should contain the reg names "spi-fsm"
-  - interrupts : The interrupt number
-  - pinctrl-0  : Standard Pinctrl phandle (see: pinctrl/pinctrl-bindings.txt)
-
-Optional properties:
-  - st,syscfg          : Phandle to boot-device system configuration registers
-  - st,boot-device-reg : Address of the aforementioned boot-device register(s)
-  - st,boot-device-spi : Expected boot-device value if booted via this device
-
-Example:
-	spifsm: spifsm@fe902000{
-	        compatible         = "st,spi-fsm";
-	        reg                =  <0xfe902000 0x1000>;
-	        reg-names          = "spi-fsm";
-	        pinctrl-0          = <&pinctrl_fsm>;
-		st,syscfg	   = <&syscfg_rear>;
-	        st,boot-device-reg = <0x958>;
-	        st,boot-device-spi = <0x1a>;
-	};
-

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-st-fsm-84b343517035

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


