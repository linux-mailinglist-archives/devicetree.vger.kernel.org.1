Return-Path: <devicetree+bounces-267943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMgbBkO6nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:48:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DA3188A7E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:48:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5617A30D983D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3F93806A6;
	Tue, 24 Feb 2026 14:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVqizp9L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9603A0B1B
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944444; cv=none; b=NiHvGz8NuVq6W7mXHftffYSXs/aYlTYDFXCFp4iwrMmNW+lStmBLfREN/HMcuEACCbK1C0RJzmq1wOvug0u3tyF68igMmAx5P3nP2PSUSAFAdkNUFTGpGq4AhPoHyR9MgK/P+w8Tr8fjwK2zc7LecNIe7QOvXH0uz5uiAWOgl2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944444; c=relaxed/simple;
	bh=6pj4czSfC5AwFl7fC7622loFsarR0OofduXKnoBO3TU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YZacMWwYBeHxuJPR6ki67HEWV7/rizeuRWQBhlLt3EPIh1YkA/TFzk8b5PrMskGtZORTtpugftT0RYxmGMrfF3lBhDDV0nMkoPvTawl7meOLDFo7VGa4qB44d3Isvz+O2Izc87yq3mK7B44tITD+lF7KzUKShUjHccOIOi3sJQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVqizp9L; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-82318b640beso2898631b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944442; x=1772549242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjdpMyB6qGuRoWUV7GpKDY315X8Hm3FSv9zQSVKZysU=;
        b=jVqizp9LtY1bct3pstVADBqFn6zlFwqqc+vBo71xlI3AXsicG/LFXWyFBRGEF2smGs
         stul9VroYu9yfuouikbW/d9EWpjPUkABDNWAyJfkYZiVtIvIEH/l250zw7d4egpeFiKV
         w21bTIKUB+sHRlugkfgrosgWJGT5W+oWXZoelxyEjj6ihNGnsPaD6HIW+XI53RV2y3uV
         7Dzy6dc4lFrMxeiUz9LqwMQ2RPTgV3sjKVPYzhnVLjhZYNIDu1NqskT+Ia0zwzst5Wcz
         UgmjtGQ/5VAkEngZfklfNmFUQQ36yUt8wUGd/gKOUq4zy//KeQ3PidwraJFiTixbE/2s
         L34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944442; x=1772549242;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zjdpMyB6qGuRoWUV7GpKDY315X8Hm3FSv9zQSVKZysU=;
        b=IDmI6Ll97XQrTyPSCz1vfmhgsJ3nRqaGxhK5Ea7YkwO9EnyfyYlADHxlufeiq0bari
         7jBXHHhCclPJY6pgxt8aq5CK1qUWfjpiLuH0c+dQzOFMfajyYydVdDO9WfmbuCsThFOr
         QW5V9xWQ30hjh25zTjIZ1QPYhgq10mfa/UgBa9wzbS6BkVsow9NRuyiy6oqnQfLO1Mft
         KOHSsyhBoqyRWD3tUneHJuU5vom32j035UDGOAjNeXmELktll2ZSRBfR/q8NazQ2kVbB
         LEfYi3wZ/Mq8i7J1YOGTtxC4vV2bFiZdAKU89ioyue2dkP+A0WYRKI51puUGAjsFc+tD
         Vi+w==
X-Gm-Message-State: AOJu0YyX1ngFDoK0KWDTxZmo1SKTmshzeQssEuLKzfxNY4qaJjy2ZYN/
	uWhoEvfdcs/OIJGJa53tUiRIUTlCcC9yjnYem3jF7jezvHuZyAQcD908B/eABw==
X-Gm-Gg: ATEYQzz1ZjOaCOnu8Q5sFFmjG4/YJQ0iEVbVyMui+eo0wz8Rthx0KWIoC4eeljfbqZ6
	o/qeUC3XzNnwQIyWndUUXfxWkr9cYMpUa4kIKy59G0cfkSWfBR8KwYSlicWyElIyQKXom33M7Bi
	lMqVdoyCD3Ua09VIpys2gDXbbVYypZYO6ZVQRqO02lYMV5SA6+Sp+3+tT8a1HBpjHqiWrVurzS8
	9aKN65SZKZ/dUPSwmFeVfoyhSDHCZHeDAru2rK1ZHrASl4C4/Hd89fAm1aZsQzlXyLk0p1YL3bN
	KCEodU1LADHzI4PCkhb7EseGsPKbL0y4LEb0s63aIVaGn13rFAcbr8UWVjnJvcKFodpt/zQG3GU
	J1txr+crAKRnt5YfMZHPX3gY7qoXYF7U8D9FZQMnPP+U1d6onbMGrE/BW+d6Y/ggcmFWFEnQO9A
	P5EhezUk5oyG/t6kq270TR9Rlh0Bnk8B2rDxjSKajyTZoZJIxq
X-Received: by 2002:aa7:9a87:0:b0:823:9c0:47a8 with SMTP id d2e1a72fcca58-826da8d7c65mr9910568b3a.9.1771944442106;
        Tue, 24 Feb 2026 06:47:22 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:47:21 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 24 Feb 2026 14:46:50 +0000
Subject: [PATCH v2 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-arm-microchip-v2-5-8bedacd2cdcb@gmail.com>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
In-Reply-To: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu@tuxon.dev>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267943-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:email,devicetree.org:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ffffe800:email,ffffe400:email]
X-Rspamd-Queue-Id: 83DA3188A7E
X-Rspamd-Action: no action

Convert RAMC SDRAM/DDR controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ----------------
 2 files changed, 67 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
new file mode 100644
index 000000000000..2cc07a772063
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
+  - Claudiu Beznea <claudiu@tuxon.dev>
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


