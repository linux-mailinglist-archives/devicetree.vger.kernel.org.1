Return-Path: <devicetree+bounces-269305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Thv/Lau1oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:18:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8431B9923
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1E4830849F0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A7243DA3B;
	Fri, 27 Feb 2026 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eP1M9Zpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24AA43D51F
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205307; cv=none; b=q8IQ0Ql8M6QHlGCgQ+qgYIprknb86vG2Je4pba+f1z54AJ9KH80yOeojhO9SsKGbw495AE0Q0ixXl5l+s/CkLuYFL72QAyCICOXdxxGW4HFTG2Y8Zhlu2TmkoCuNMR3aRTuHtaGblYN/Juwc7yCRKVl59fe1VtHAJmUONTREKaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205307; c=relaxed/simple;
	bh=81+CouTSV8D7ghSuTSx7keDNAgQQfQPZybhJXqJILIA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b+weVrZH6exJS1G01CLVlanteSBAzGK7agM1OWzxsrSSGOnHXDBTpPIv6MQFHCVWtX+a89Kkfu6IA4MB5N4WDCDowh/7TWnRrCFSPjrG4wrkWvfhfYTRgggLPM5XZhk0oox2/fGh9Uq+YbY4DUQgdPE7Mva6ScQRD/jy0AR9Ivo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eP1M9Zpk; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-358ed696623so904808a91.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205306; x=1772810106; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pCOf+ZmqqtgPwlWCtohRjVDrXj8iEckMKHZrGnl9m9E=;
        b=eP1M9ZpkyXvmnBdmNt8jnpmhVMbeLZOCJB3eeLdbj+kFlN4OGIOfDtxUfCXsoXctwL
         g0nanIkDjxSJuH/kvW4SzLnUGftp6qaYme9aDHWrPyuIzhihGuaMfdWM8foPtYS3mABU
         tGVGurKHsXgGCbAm32v0mFYoqsnRXfXD2CaZehZiRLt5GBvjcEerpEUHaJD+MVMQ0Z/+
         b7aRSIPcm5n/T3WRr9nijEzkkW4GezPAXzNZo92WSrBMr7sBSK6t/NApST1AYBiZeobg
         mVd5LwlSWA2gHk244MyEthIznnDbbI+yR2XdEReLutA/Pum0Rxg/Zs38z5YaDyMgr1VL
         fyVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205306; x=1772810106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pCOf+ZmqqtgPwlWCtohRjVDrXj8iEckMKHZrGnl9m9E=;
        b=PAf1o+bUrlIgHO4zPb1j7RWyBZ9kx6mcpMEu4LneURtP6ORNzuthYE4p5W4JeoePLL
         72lQS+DCDb3WKwRGnXNQQH1rRzJH/6YE8I/X7w+nnOS5Bev6niB/cfs9t5HS/MyeloF0
         5tM5xDKwqMN6Hn8OJ/rT0IrAf5EhSAIWYru9Df2CcA/B8ogckwfBmVlylUkdRjRWM6jO
         gb1nov2REggiv2W7RfZsvnHXe93hW+QfOKQ65E5jaqp1G72JMM0Xc9NglB9hFdwXi70M
         gc87FBTv2r0SnPF/QW+yT8Aky76TF6ehMxfZwIYzc3inXN0EQaCRk4QZNHk4XqqmEB0v
         bBHw==
X-Gm-Message-State: AOJu0YxafPTyCc4quWmdDaLJlto1atlyyd9kONm5KySn8Gw9cHbM27N7
	pxfz85MCAvlDIDcGv2TO0m3FJKJu/FHwUD6JhIZscq9oNHej4RE+HEJc
X-Gm-Gg: ATEYQzybC5XMPQbHJdTC9FtqBXf0pt4z0zObqXAWSZd6fOXuaEtmefNjjPmmT00tkdn
	h4AZ/mmIahtR4ioDvmaQ143FQQZtol9Uso3FfkxqC8Q8e0J11YGcvQtXuhuWCi2H2KqxAN6h8vm
	hwGRgC4lr/pe09CKvGcEucFbdcdctN6eQJCwhjpnjrHtTwC8TQzyGfsbdC1vWK1X4DNretyqhGd
	Fs0V67ex7vqxkj/XOLPVaG+0O7oaknL+ru5ht6LpBlaRhLfXVDlenx1fDjQO0zhuMvSC28sNl3G
	KrMo+PldlGwmXhglSx/oNZljI5VrFoHXOtiefMIsGuzcDF3l0PUioyPmvR1pdNpUUacd1lIzp4B
	SwuAKjF0DJsNVMwdn6Q96IMqZFEJtB9G2CzFPL5kD/PV14y2f+5/7ZVD22v6C5qDDFO2PIcdRNO
	IPTLt2I65iPOUBgtOurhocFiQZsHGPu+PIMqPr1b6kAA982Dvt
X-Received: by 2002:a17:90b:6c5:b0:356:1dad:1b07 with SMTP id 98e67ed59e1d1-35965cc9b4dmr3070943a91.23.1772205305387;
        Fri, 27 Feb 2026 07:15:05 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:15:04 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 27 Feb 2026 15:14:35 +0000
Subject: [PATCH v4 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-arm-microchip-v4-5-7e2ae1c5b5d6@gmail.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269305-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,tuxon.dev:email,microchip.com:email,ffffe800:email,ffffe400:email]
X-Rspamd-Queue-Id: 6A8431B9923
X-Rspamd-Action: no action

Convert RAMC SDRAM/DDR controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 66 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 20 -------
 2 files changed, 66 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
new file mode 100644
index 000000000000..ac7e0f454a34
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
@@ -0,0 +1,66 @@
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
+      - enum:
+          - atmel,at91sam9260-sdramc
+          - atmel,at91sam9g45-ddramc
+          - atmel,sama5d3-ddramc
+          - microchip,sam9x60-ddramc
+          - microchip,sam9x7-ddramc
+          - microchip,sama7g5-uddrc
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


