Return-Path: <devicetree+bounces-311488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PQ3HFfXpLmpO6AQAu9opvQ
	(envelope-from <devicetree+bounces-311488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 19:50:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44961681D13
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 19:50:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bNkimD8N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311488-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311488-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F42D300159A
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 17:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75085396D13;
	Sun, 14 Jun 2026 17:50:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0427230D3F5
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 17:50:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781459439; cv=none; b=rqPZrwJaw344dqU2wsNhvp539GoBwSB71+Ii08+kp1hsS1HSpXbJxaV9EK3tcpnzJLmFgiGukg7SKvlshm3ULpICcTHDk4nFqfSQREQ5dkjusJiBT0Ru+AzMggDdrK43TF2P5SOt3x3h2LKbQ7vOCnrfMSQu5piawc5lwY6fum8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781459439; c=relaxed/simple;
	bh=mZqoP8B2KhwXFXwkQ80xxlpxRKflgVCHXYzMoDnt1o8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZFtt/QDqgoCIJO+CUmH3yi04qZACqtA8WPFOIa7UFH0brMSxDtQp3I7yOqKvfPwFeNDlurRtLKy0o3yCdAMlDjMgM8ihTMieIEm+ZmczvxaUXRGmxhwpEd1VvCprAvO9ta8WFLb6WoKIbau+a6kGmWIFq7fXjbTDTymMq/AOdnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bNkimD8N; arc=none smtp.client-ip=209.85.216.41
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-36b9d265355so1164153a91.2
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 10:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781459437; x=1782064237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+hcsnUGTB2wQ326+1MHHf35X3iGgQO7l4/OOgtUgNTs=;
        b=bNkimD8Nx3B4/PL9gctOq4FWQ82/V0kMgaDOcauG0IS+ngFob/pvgeWzfEIjkuwE0N
         d3JRsRVKOwt3dNz0MTG+nYJiquA3616cluXLnzIV5HIRJMoJVsEw9J5v8dw8kvI9pMad
         Sd0R4QuYseJDdxpv6Oy9Vl/cGhwtBrQVz/2wxRf2uA+rnYgdzLXucbEuqHFMHkfH23t4
         2JZ6U6+LLdBmS83PPiLRp4wRFCajtgxZl6enIMhvbCD/dVh72AZ1r5iiRQGdOZ7ZTibd
         JzYZU/hqrL9O1/Jn3YVbjrENJH1OdPOot/8yK52YCrhk0c2fwWeqAWO6Cr3eUvhPoN7C
         +GhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781459437; x=1782064237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+hcsnUGTB2wQ326+1MHHf35X3iGgQO7l4/OOgtUgNTs=;
        b=rdJ4NuweYGoUA0iGeuFQk33AN+GtSuTlVozHm8VcI97VGbmMkQqR2+TjTPhf16jeea
         kQGq6XwzeAVsrtum6Jtw8Myxb2r035gcRdx4RUK0yUNZNr4gQMSeXSmUgZ68CvAc30Xv
         1/qFI9igWSDJVjDKaYH4PLS1mDx1aQeM+7jj10AEEqChA295eqHT1Z935zb2Ozf9liVY
         5k6UuQVM+WHFoPcGht6Zh+YS7OjSYPxXrKebCRCmFxX5kqoAu5gwyuhzUdRjgfZT4Vqb
         z2RaoiX1nme97UuiQd8pd3f/eYIgCybDsBkCiL+EVLVNAUwM69c4lomtxDAr8siBbEx3
         UOzQ==
X-Forwarded-Encrypted: i=1; AFNElJ/x2F65RvrdF7yhgZ6hoh+i/IJv4bdRkmw83K/67qYjxJAD/EXFNNraN3xQww/jWOeRqLpa9aNhwgJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YyuIqvSakxwp2h9FrhuejiwprzmT8M5UNQ2CtD17vZaQbvQ2l/G
	b9Bjr++0lQToxTqoSo85mLsBNw7aJ+smXqqVC/NwbT4ZXyBtrJoBg2v9
X-Gm-Gg: Acq92OEXpmPvICuQSXeFL6Zv7eK3w9AYcqGpqXdtFjkDbJ8i3l7c/2Cg1gLAXrgLX5Q
	PK2PddfJQgpYJ/L/QVFH4HlcUvC0i/tv6+gCSeJGvAy6ZUKrS0OB14FBByJqe9bJPLQTkF6kXbX
	UcVfbLv9mBIQJVgocD6EcorZ6iaS8zM60vrcMouCTCHaDmFRL49x8x3Pm2wFom5jV15bAriOXz0
	WiyjXlIrnaBUGv4v7zgsvt/WV2+p7vNIAgYBMy6Q+L1nZ0Dg65kXMK7ze08laWiBCsk9ycaBJSS
	snjBxnKcCR3cCnMsAA+ojFWMydQYkN7PWtySi+LWbVOeiaZ94OUXroz3r4K++AI+fEkBl3L3DzI
	NvzJFx86IEC8EJ1Ix7MOZ1RJ1/yZy2BWMfg85OfBq6HTwjDQn4Kh4iBx7pD+herkEUa2ql+Nupi
	Epf0Y8A77AWq6L/PDKToY+Ex+wD4LaSbUGVDVmbmbMSphVTSHiV88=
X-Received: by 2002:a05:6a21:6196:b0:39f:2dd0:65d5 with SMTP id adf61e73a8af0-3b784025ba5mr13380372637.39.1781459437403;
        Sun, 14 Jun 2026 10:50:37 -0700 (PDT)
Received: from inhnjlux1020.ls.ege.ds ([49.204.164.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866325e477sm6517913a12.10.2026.06.14.10.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 10:50:36 -0700 (PDT)
From: Udaya Kiran Challa <challauday369@gmail.com>
To: tsbogend@alpha.franken.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Udaya Kiran Challa <challauday369@gmail.com>
Subject: [PATCH] dt-bindings: spi: microchip,pic32: Convert to DT schema
Date: Sun, 14 Jun 2026 23:20:05 +0530
Message-Id: <20260614175005.435826-1-challauday369@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311488-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tsbogend@alpha.franken.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:skhan@linuxfoundation.org,m:me@brighamcampbell.com,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:challauday369@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,franken.de:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44961681D13

Convert Microchip PIC32 SPI controller devicetree binding
from legacy text format to DT schema.

Signed-off-by: Udaya Kiran Challa <challauday369@gmail.com>
---
 .../bindings/spi/microchip,pic32-spi.yaml     | 78 +++++++++++++++++++
 .../bindings/spi/microchip,spi-pic32.txt      | 34 --------
 2 files changed, 78 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/microchip,pic32-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/microchip,spi-pic32.txt

diff --git a/Documentation/devicetree/bindings/spi/microchip,pic32-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,pic32-spi.yaml
new file mode 100644
index 000000000000..97a381b2065f
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/microchip,pic32-spi.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/microchip,pic32-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIC32MZDA SPI Controller
+
+maintainers:
+  - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
+
+allOf:
+  - $ref: spi-controller.yaml#
+
+properties:
+  compatible:
+    const: microchip,pic32mzda-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Fault interrupt
+      - description: Receive interrupt
+      - description: Transmit interrupt
+
+  interrupt-names:
+    items:
+      - const: fault
+      - const: rx
+      - const: tx
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mck0
+
+  dmas:
+    items:
+      - description: RX DMA channel
+      - description: TX DMA channel
+
+  dma-names:
+    items:
+      - const: spi-rx
+      - const: spi-tx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi@1f821000 {
+        compatible = "microchip,pic32mzda-spi";
+        reg = <0x1f821000 0x200>;
+        interrupts = <109 IRQ_TYPE_LEVEL_HIGH>,
+                     <110 IRQ_TYPE_LEVEL_HIGH>,
+                     <111 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "fault", "rx", "tx";
+        clocks = <&PBCLK2>;
+        clock-names = "mck0";
+        cs-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
+        dmas = <&dma 134>, <&dma 135>;
+        dma-names = "spi-rx", "spi-tx";
+    };
diff --git a/Documentation/devicetree/bindings/spi/microchip,spi-pic32.txt b/Documentation/devicetree/bindings/spi/microchip,spi-pic32.txt
deleted file mode 100644
index 79de379f4dc0..000000000000
--- a/Documentation/devicetree/bindings/spi/microchip,spi-pic32.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Microchip PIC32 SPI Master controller
-
-Required properties:
-- compatible: Should be "microchip,pic32mzda-spi".
-- reg: Address and length of register space for the device.
-- interrupts: Should contain all three spi interrupts in sequence
-              of <fault-irq>, <receive-irq>, <transmit-irq>.
-- interrupt-names: Should be "fault", "rx", "tx" in order.
-- clocks: Phandle of the clock generating SPI clock on the bus.
-- clock-names: Should be "mck0".
-- cs-gpios: Specifies the gpio pins to be used for chipselects.
-            See: Documentation/devicetree/bindings/spi/spi-bus.txt
-
-Optional properties:
-- dmas: Two or more DMA channel specifiers following the convention outlined
-        in Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: Names for the dma channels. There must be at least one channel
-             named "spi-tx" for transmit and named "spi-rx" for receive.
-
-Example:
-
-spi1: spi@1f821000 {
-        compatible = "microchip,pic32mzda-spi";
-        reg = <0x1f821000 0x200>;
-        interrupts = <109 IRQ_TYPE_LEVEL_HIGH>,
-                     <110 IRQ_TYPE_LEVEL_HIGH>,
-                     <111 IRQ_TYPE_LEVEL_HIGH>;
-        interrupt-names = "fault", "rx", "tx";
-        clocks = <&PBCLK2>;
-        clock-names = "mck0";
-        cs-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
-        dmas = <&dma 134>, <&dma 135>;
-        dma-names = "spi-rx", "spi-tx";
-};
-- 
2.34.1


