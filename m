Return-Path: <devicetree+bounces-266224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HRnKcuklGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:26:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5DC14E981
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4CFD306177B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B77036EA9C;
	Tue, 17 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hI1QJqUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351236F42F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349093; cv=none; b=LHr2cM0/QaNVYUswv0gzc1iC154a47sPCMDJ+766zUlOBASVnIVE4s9rYRCDngY2ngptenR/pi97PtvqkvOKj2nLW5+C+y4OkfJCRvV0I1vTo/JExXkI8mZRqnuyVzXA/QBG/GYTPt913rh4JvNJvdbRxp/1X9C+fJTgJexTnAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349093; c=relaxed/simple;
	bh=kYWar43X3FzHb1kOCL6jOOzDoHKAPCULu4KXYrqGWtk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i0Q+oIpX9mb+ACpnCPYT5p186BTN6AJ5CNZM9a4rmchHad86j29vu1iGt3EAvhl2+0OUxN+z8duXoX8u5dYLp3ZWuwYnatRf+KFz/kabT+1gkLe1tKqj8M8EwooUyXwy7zM7L37zYi98GZI2Yhihi/KN72LLAp5ooc/C+OBKmos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hI1QJqUk; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2aadc18f230so29179475ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349091; x=1771953891; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oIf2W/UVc68aR6lzv7jLUHhKkekhiH4laPerHLqaDAk=;
        b=hI1QJqUkELwD0jsaFr0X3kdvkx6V8FXkE0Orz1LvuxfDBAOIRwhbm+u63MNXrF7Nut
         mIduDeR5L5fw1ndncths3H6Vt0Q/Idh1CskOD4TjJ9t5qjPXkIcm/8r5p0f3O99R8Rd2
         l1qdX3mw0Hdc9uClsnFzzGakLsdcja7LF4mfPXK0s8PE1lmk37shClkBNyJCFUc9laFy
         M0bdsC+V572JfECY0Dy4tiVUSBI9oWN17R8qNkTljXR69lUO2sQP1yRxkpd3mCXKKSde
         pDtbGo7oskhkciggoGhL2KIrR4/MDT+2HbhY4Fk4mMf15eMb5VouB3POg7XPOml0d0Z7
         hWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349091; x=1771953891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oIf2W/UVc68aR6lzv7jLUHhKkekhiH4laPerHLqaDAk=;
        b=b7jMgXEwyR4/lN/YiiVueViNpj/QxyMAlABkzsO0oWPQD0hBujvkecnRgcrdLGdRaM
         AdFVrTN/4zQQ4Anqu3LfFwTvHGlopeZ2iiDCtXen1oA3b+9cDF/Vafm2ccVXmOXqdMAa
         3agqOtw7iyyDHpxlTeoNQ4X1plqJg8oummqU7W9bmUEQA9ryXHWIJ+KpIDFMDqhTzJed
         9Ca2s5P8ZtZAPL/aHzGnCPTAjCq1DpWzT1KfazwuCZ1zLr6RpEKqp+zTMz/tsbj8z076
         yol+WBS8p1bQT4Y4LaPprb2NN0DnT1d2Mn6H0SJ9EnUWb7AzC++UOFa1+1B58AOpRqlu
         v3xA==
X-Gm-Message-State: AOJu0YzLM+DRc1oyypm7L0vTFJ3sRkl/7Ck6y6C9Sb3jtkSuxVIdXZeU
	06VyjqIZv0d4cMVVgAbOJo/eB0qCONUiaklluwlE8UGCyRSBDAh04VaAJGj4NA==
X-Gm-Gg: AZuq6aJ8ZYVzf+Anm+UVHcUFC2K30OjzbfF8i23fTF23LdY5LrrOcOPDbASMOlt6EOV
	NoFAgvgRuZUSVVFGBfcYRwpdv94MehwX6yZaVVIQDHBOJ4/wbSLl8Gl22EGEPjEeEg8Wt+soHg7
	Wk4K6JDmpSBacmGwPMuuV9Xt/YoV4AX25XhrLPJl2HOHC8sQArRS3y8oHUF+TTJYdbJ4y3C8TcK
	AzYcudonflkcwwujtC93lKxXTamnk8DazsWK7kvs/Gb9So4VHNEKTh40Tklls6NhRqJ9o92vK8x
	NwjMaYzWf/yirPnUjogbQaSsj4ZjjA0b506Km3Jv69PBTUh9dZL5TpC+1y+z+rkPp2ERp4R0kZa
	7+T3AYWb7spHI2TzgGfGYcauuV9rxOrau3lrRzSWSaM2i2qG68FHFxg72X4/+jNyI33nMUG6x9q
	3WvS0czXHToIbaG5b7y1dyYa5dzRSBLvmO0rZD1BU+wE3OBCN3
X-Received: by 2002:a17:902:db0d:b0:2aa:e21e:bfc0 with SMTP id d9443c01a7336-2ad1754fcf7mr120165095ad.47.1771349091328;
        Tue, 17 Feb 2026 09:24:51 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:50 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 17 Feb 2026 17:24:23 +0000
Subject: [PATCH 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-arm-microchip-v1-5-ae5d907e10e3@gmail.com>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
In-Reply-To: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266224-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,microchip.com:email,ffffe800:email]
X-Rspamd-Queue-Id: 0B5DC14E981
X-Rspamd-Action: no action

Convert RAMC SDRAM/DDR controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ----------------
 2 files changed, 67 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
new file mode 100644
index 000000000000..76cd8f73331c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-sdramc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip (Atmel) SDRAM / DDR Controller (RAMC / DDRAMC / UDDRC)
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
+
+description:
+  The SDRAM/DDR Controller (often called RAMC or DDRAMC) in various
+  Atmel/Microchip ARM9 and Cortex-A5/A7 SoCs  manages external
+  SDRAM / DDR memory. It is typically exposed as a syscon node for
+  register access from other drivers (e.g. for initialization or mode
+  configuration). No interrupts or clocks are usually required in the
+  binding.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: atmel,at91rm9200-sdramc
+          - const: syscon
+      - items:
+          - const: microchip,sama7d65-uddrc
+          - const: microchip,sama7g5-uddrc
+      - items:
+          enum:
+            - atmel,at91sam9260-sdramc
+            - atmel,at91sam9g45-ddramc
+            - atmel,sama5d3-ddramc
+            - microchip,sam9x60-ddramc
+            - microchip,sam9x7-ddramc
+            - microchip,sama7g5-uddrc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: ddrck
+      - const: mpddr
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/at91.h>
+    ramc@ffffe400 {
+        compatible = "atmel,at91sam9g45-ddramc";
+        reg = <0xffffe400 0x200>;
+        clocks = <&pmc PMC_TYPE_SYSTEM 2>;
+        clock-names = "ddrck";
+    };
+...
diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
deleted file mode 100644
index 5ce54f9befe6..000000000000
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-Atmel system registers
-
-Chipid required properties:
-- compatible: Should be "atmel,sama5d2-chipid" or "microchip,sama7g5-chipid"
-			"microchip,sama7d65-chipid"
-- reg : Should contain registers location and length
-
-PIT Timer required properties:
-- compatible: Should be "atmel,at91sam9260-pit"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for the PIT which is the IRQ line
-  shared across all System Controller members.
-
-PIT64B Timer required properties:
-- compatible: Should be "microchip,sam9x60-pit64b" or
-			"microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"
-			"microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for PIT64B timer
-- clocks: Should contain the available clock sources for PIT64B timer.
-
-System Timer (ST) required properties:
-- compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for the ST which is the IRQ line
-  shared across all System Controller members.
-- clocks: phandle to input clock.
-Its subnodes can be:
-- watchdog: compatible should be "atmel,at91rm9200-wdt"
-
-RAMC SDRAM/DDR Controller required properties:
-- compatible: Should be "atmel,at91rm9200-sdramc", "syscon" or
-			"atmel,at91sam9260-sdramc" or
-			"atmel,at91sam9g45-ddramc" or
-			"atmel,sama5d3-ddramc" or
-			"microchip,sam9x60-ddramc" or
-			"microchip,sama7g5-uddrc" or
-			"microchip,sama7d65-uddrc", "microchip,sama7g5-uddrc" or
-			"microchip,sam9x7-ddramc", "atmel,sama5d3-ddramc".
-- reg: Should contain registers location and length
-
-Examples:
-
-	ramc0: ramc@ffffe800 {
-		compatible = "atmel,at91sam9g45-ddramc";
-		reg = <0xffffe800 0x200>;
-	};
-

-- 
2.43.0


