Return-Path: <devicetree+bounces-268942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJikM/mAoGn6kQQAu9opvQ
	(envelope-from <devicetree+bounces-268942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:20:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C07E1AC392
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C998A35922D3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8788B44BCB8;
	Thu, 26 Feb 2026 16:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M1Mj1Yqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1142DFF2
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122446; cv=none; b=FrFxsfkKiAr5h12V2BM1exlvJIZg3TmebhDM4KwcedPeARATzL0Q4UDOWmHMSU4uN1tL8+2t+Zte8AmMU5RPa0CjCdnvGWia5Hh3fFDDUz2TNz58E7abB67S5HCyzCRMxMm0d40QsQDvOV39d1EqtNG8/fhq3a2e6b7alEC6NvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122446; c=relaxed/simple;
	bh=JP7DgXdHQPuBBg2E/ZpDYH96r+p/gjjerNH4x4o+0kk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q8be7RHEQHF0aJzZd3QG+f4Uf156+Et57+TBEq7tQn/MbGmA6dKtZhNnxj9HnsIV+hQxUpfQcfw9wRmNRLQLKZrcvQ/BSzLtVap92Hm2d1cesAm44Y2OOQB8/2WW6zc4rvZZHXTqczI2NKwJruyP8Mhzmzr1Z9kLjHj1KmL+ulA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M1Mj1Yqi; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2adae92249eso11145855ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122444; x=1772727244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EFga16pAfpv0gli5xDLk4KBBaOwrjAv2u5Qo96sb+dM=;
        b=M1Mj1Yqil2a8ZDyh/Hv33HBpFXxfjPB0TG9ZZVUMtkiyvs+LReLwLZ2RpLVGeb5J/E
         NbT/2myM9osmAP6pFkBvNJsJe9Zp+p7hhFoiv1S1Ul6ip9Tsag0DWTX3bN6qMNi1hGrY
         LiUOe6M35mWt3TnlgMAR5KKZ/3zmz/LL3Wav6t6+R0Ut8NAQ4hifarVnCdP5/eHoDY34
         LFBjlr1PeOan8ROu0JqsK9f+tYPOhWKHAwKQhts6q20RPQqM+vBJfEa+df4vTayLr0FD
         HPGQVBkqjcVKBHY0KHwRhQRRH7JiqDLjiGLYDKi9WUxaru9Od2y9on9+rckyJ+4sy4ug
         juSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122444; x=1772727244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EFga16pAfpv0gli5xDLk4KBBaOwrjAv2u5Qo96sb+dM=;
        b=I6w+PNv5hXUE0FHWJcpQznNLagVw/FncBoOcn/G20H/E4Z87kY0E+ocF4UYknpJHef
         ODHhWx9gSn+Gm0iiO0ELJYRqD4H6mrVQqx+68555uEx/Nr5AJIeLeI0MIaKMk8oswIlE
         GrBVX6D9C8zKrq/QUX62HaB6SCYor7Onvr5rrK3920zux9ckZhDsuWa3LnintFJKOFmD
         BtWqFFrxBAVcEiDDRDTzbnMgI0KfXszi8FGry0c3bch7YGbY7y2mKrse+NW0slTpjjCM
         tj1lmcUtTXNTbTVUOeZVUWnONdfPxfLNQRxonVbCG62HtJoTIH7ORad9Ywt13Xwt3iNz
         jyfg==
X-Gm-Message-State: AOJu0YykCXbiQi160Gn3LYnD9nc0dM8hpgopJtW8ssG7QK/jWc64CAbw
	FZm29oVFSn6CVCH6zhh+T7H4qxVaqq8fj7SqRWaaNMZt1PDcEKftd7Ft
X-Gm-Gg: ATEYQzyiAPn57FV2LJ5lk4SHd4umCxqNXOKsYZLcqQ2yUNa1U58do2U8gAfdc7b1ADG
	XgzTTYAE90NMijo6VSsZjle6hP6o792f96fJx1vV14GQKQkG0zsBUgFMDk4Wa9zRuqqqbRaSCiR
	FRpG/024gh3FbewWqPWa3wmdqzvRTgGWDDVxiYTTTW50EcpiZLfl2lT72Vz2VXyfa0ziwHrs2QV
	H42s6m/Z5Cmwo+09CTRNDH4Wc95qev6wOBebcluDHG2n2v3Mpw8jF28UG0kGYGfPEacmp0/PntP
	Ur/RdGjo2SUqko7NmchoEvjhzwZmTVoKKTtOxC+Ei4BzPGM2povpvfjZH+0sHFEvSja8/NLN7Fp
	M+g9SFWYGzo7BOWMtxxI7NEOo0wEUwkS4PZWgpd6G8M90ojoLnwmpccWdr3KeoR1DpW10UuTA9N
	T1SFs3W3amRcIR9D1Jx/fFfBDOBExdio6RXm8Vf00UD6GKQL7qxX6Ke886
X-Received: by 2002:a17:903:1b4d:b0:29f:2f40:76c4 with SMTP id d9443c01a7336-2ad744e05demr198619235ad.34.1772122444511;
        Thu, 26 Feb 2026 08:14:04 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:14:03 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 26 Feb 2026 16:13:37 +0000
Subject: [PATCH v3 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-microchip-v3-5-0bda15abd922@gmail.com>
References: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
In-Reply-To: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268942-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tuxon.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,ffffe800:email,ffffe400:email]
X-Rspamd-Queue-Id: 3C07E1AC392
X-Rspamd-Action: no action

Convert RAMC SDRAM/DDR controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 20 -------
 2 files changed, 67 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
new file mode 100644
index 000000000000..1516fc8e09e1
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
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
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
index 14642384bc87..000000000000
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Atmel system registers
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


