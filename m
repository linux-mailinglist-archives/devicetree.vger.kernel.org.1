Return-Path: <devicetree+bounces-260486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOMJLp81eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:13:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D87A5485
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32D3C30CC8DF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D54462D660E;
	Wed, 28 Jan 2026 15:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FicnEhqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738192D6400
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614581; cv=none; b=edwRkrYcyL56NvACRJTqGItSScRbB+o3FlAXRI0Owi8xEUfv6YaD/s6K2PGVoPhYjFSIGbnPOtU9/UwD3p/nkNTU+4Orad5SZW3k56zTsSMgpldXx6vZ7EIh17mg3CsqD8i4uwHnKrjDQGB7rKShozsN/g68fmPPRSmx+XNttAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614581; c=relaxed/simple;
	bh=RBTf5SpmW6wB8sbqGZJyrTpu2MaeLlNvD3QCGNKoHJI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=orceLiCPZbD1cO/63yCZWJX6zjuUn6jkrhCR/sadPfjTP5dhFrlMgJ7+/cUacf+mLvwfVdVfF1ws/e/hTYcTncw7dfh57ZwzAcH7UXwCtIMTG3EaGPY5Vwt/OjoTQl4uCxt8JrZP6cy5BWXop6c/u2N0qPRFZhL6GoIT0iXd3Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FicnEhqu; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34c24f4dfb7so3721069a91.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769614580; x=1770219380; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nuofcrz98MXCzhxYxay1gJcoLhghs/UDg58+L67iybc=;
        b=FicnEhquhUbXer9bW8IrLnQTUCoN77P6LKneOn3lEvNbkKmvc3RyTi7tL+tb81v5SS
         KS/XmXjqjyLnBD0LRB/wD2keUMdU9eC4m3lOgND6+rPToQiRYqWdcVck8A6De8u8AKUj
         4Wd8bMKA3FqF5KYOiQr9/UvHyXOVeJ/yZ/8evxWu7XOrXr57s9obfbGhZqvjZbxqBet/
         5lb+ZVy5vmTy90mojDliSCTiImRFh5HOWzSl62tNPfDhdgM8ZkAVra3Bv12P6vRZzTE4
         5snjJ7qQoujcf0N0lWfNvdHbMXYLAZBrPB0Fhop0D5ZoFjZ1cPnowyLgBv2hzrB5Vplz
         5UlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614580; x=1770219380;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nuofcrz98MXCzhxYxay1gJcoLhghs/UDg58+L67iybc=;
        b=AK9uMx3g6wATu3odwwurMpBS0RRQtLubXIYq2KA/hdQpENT/Qqz5Mhe6+FXX91HPJ1
         rNdfObXitNb6wsmG8UZH/xqd96qVWeYwURcNfN8f86R5+mF7+f3fOQNvY9R/whPtrDKl
         k6zXmrjTTREKUJ11e5LQAASMfoUThHVg1GFVXJHjYGOnim98jqcfWymWnw/U5r7yUT4/
         LiXGxm3qt0KvBjnf6LNL6jAbe0+SmYyWZu9ETTds31/g5Q1/X41rFXHy5ObK81vd9DAv
         vvc+oIU2WKxPjo98ZRMqTet0fRfTag69gNfow7eyhPrboezj8iVyFHacl3qr3okFTJGO
         BMeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdvS1islimroW5UQt0KndKlIo1w2f1XKN/5GZ93bG8GZOJHcxrDMOSNedE93mhPlNJf+P0XeMv0XuO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzppv55Zw9NeQ7tAtpyPJkoCODEwQ4CCts11FyM5jWWkiwPlNoW
	nFe2hgsK9Z3q8eQJ7VHxCeTyzsZ0HzW1wmcb3Vb6F4J8AqxLj34/s9pA
X-Gm-Gg: AZuq6aLkraWo2hJe4ucWTw9A3AoIVChgAJ/PjVXDq8zUWjKfVNO+96YJ8vC1wfq5P52
	Bg+Fot0fUGIG5kldYh25BlxkeFAxEkjKiOUyi8ze4lHKO4vSyZ//A9ZAYOBnuU3FGCC/JFL5dwU
	P2qJ83nRzSNZ9ku/671sU2bzOY5eeoXBQXRp3UnyO7389WZg4Wyfr152+0rTiTn6yO2Yl3EXfTE
	Pz96iEHaYm7PSXFc03qN0QovTy04m67wysDQdPWp70Cd06JGMn9B2x0s0JHoZEjVrYvSm95sFNb
	KUhZb6L8qmEbxEShmmhQo3Jx4U/WdkkpSMDsX0h5cgcl0HykTRvnUNNcbJM99v/UHLNCGh3RTqr
	PuUwHgS3Sy3meHUNM0WWbrN6iVBHk4xiqpgHdGInfiGv+P08/MO5kIiCRrqpHS+mGDycPywBo0l
	gTRcUvY94/7uPNqauxkbJrKHq1tkT0zbGV0Da0sEJa+AXyT6s=
X-Received: by 2002:a17:90b:56c3:b0:32e:64ca:e84e with SMTP id 98e67ed59e1d1-353fecec28emr5232327a91.15.1769614579618;
        Wed, 28 Jan 2026 07:36:19 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.144])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-35410ee55d1sm167976a91.3.2026.01.28.07.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:36:19 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Wed, 28 Jan 2026 15:36:12 +0000
Subject: [PATCH v3] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller:
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-mxic-nand-v3-1-c61764e85f60@gmail.com>
X-B4-Tracking: v=1; b=H4sIAOssemkC/1WMywrCMBBFf6XM2kgyferK/xAXIcm0AzaVREKl9
 N9NC0Jdnss9Z4HoArsI12KB4BJHnnyG8lSAGbTvnWCbGVBiIxWiGGc2wmtvRVuh6kqFtZMl5P8
 rOOJ5b90fmQeO7yl89nRS2/qrNIdKUkKJum4tVVpa0u2tHzU/z2YaYaskPJrd0cRsNiQNXSpCs
 n/muq5fuG9HKdwAAAA=
X-Change-ID: 20260122-mxic-nand-742183125e03
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mason Yang <masonccyang@mxic.com.tw>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260486-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24D87A5485
X-Rspamd-Action: no action

Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v3:
- Fix errors detected by dt check.
- Link to v2: https://lore.kernel.org/r/20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com

Changes in v2:
- Add "Mason Yang" as maintainer.
- Link to v1: https://lore.kernel.org/r/20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com
---
 .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 78 ++++++++++++++++++++++
 .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
 2 files changed, 78 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
new file mode 100644
index 000000000000..81c041aa2610
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/mxic,multi-itfc-v009-nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Macronix Raw NAND Controller
+
+maintainers:
+  - Mason Yang <masonccyang@mxic.com.tw>
+
+description:
+  The Macronix Multi-Interface Raw NAND Controller is a versatile flash
+  memory controller for embedding in SoCs, capable of interfacing with
+  various NAND devices. It requires dedicated clock inputs for core, data
+  transmit, and delayed transmit paths along with register space and an
+  interrupt line for operation.
+
+allOf:
+  - $ref: nand-controller.yaml#
+
+properties:
+  compatible:
+    const: mxic,multi-itfc-v009-nand-controller
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: ps
+      - const: send
+      - const: send_dly
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    nand-controller@43c30000 {
+        compatible = "mxic,multi-itfc-v009-nand-controller";
+        reg = <0x43c30000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+        clock-names = "ps", "send", "send_dly";
+
+        nand@0 {
+            reg = <0>;
+            nand-ecc-mode = "soft";
+            nand-ecc-algo = "bch";
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
deleted file mode 100644
index 46c55295a3e6..000000000000
--- a/Documentation/devicetree/bindings/mtd/mxic-nand.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Macronix Raw NAND Controller Device Tree Bindings
--------------------------------------------------
-
-Required properties:
-- compatible: should be "mxic,multi-itfc-v009-nand-controller"
-- reg: should contain 1 entry for the registers
-- #address-cells: should be set to 1
-- #size-cells: should be set to 0
-- interrupts: interrupt line connected to this raw NAND controller
-- clock-names: should contain "ps", "send" and "send_dly"
-- clocks: should contain 3 phandles for the "ps", "send" and
-	 "send_dly" clocks
-
-Children nodes:
-- children nodes represent the available NAND chips.
-
-See Documentation/devicetree/bindings/mtd/nand-controller.yaml
-for more details on generic bindings.
-
-Example:
-
-	nand: nand-controller@43c30000 {
-		compatible = "mxic,multi-itfc-v009-nand-controller";
-		reg = <0x43c30000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
-		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
-		clock-names = "send", "send_dly", "ps";
-
-		nand@0 {
-			reg = <0>;
-			nand-ecc-mode = "soft";
-			nand-ecc-algo = "bch";
-		};
-	};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260122-mxic-nand-742183125e03

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


