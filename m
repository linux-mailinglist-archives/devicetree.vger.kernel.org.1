Return-Path: <devicetree+bounces-268939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLSpOT6FoGkakgQAu9opvQ
	(envelope-from <devicetree+bounces-268939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:39:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 158861AC9A7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2545930699ED
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F189642E016;
	Thu, 26 Feb 2026 16:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H50Y63zX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E8C42E004
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122432; cv=none; b=p1HoJhj5mHoB9XPHHgMOWXgUHY8etECtmrgp8gtHZRhKyd3aRu3DdlJPlScPQBaUDPKBPQWEdYjIz/o7+B4nhjO4K2i5DQUpfH/iTURmWdSL3UvRHFt/E7bUQs5k8g+ee9VeJ6i3CwDdncrVDuLDrSN+Nu6gw9BJ08EjZXn42MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122432; c=relaxed/simple;
	bh=ihBzXRccR+HCkaBr9qoQpHHAcWNJIBrlT7SFdsXjHBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kJSUeTdw0EuEXIew1YRDd1HuvM6+OOst/yoZfPH7McWSMWsQ0q5I6zSPOZcdQaWJPpy7W2s3D9gLmxBJ+9RH5PcFNqOH5nraAbV8dYLgn280GsIq2eukQSeZcoJvVfrW4weIizAbxaqGM6N8EiGEiEr0Fv+G6q4Cfqi80y3tCuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H50Y63zX; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c648bc907ebso627596a12.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122431; x=1772727231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7DhZk4iWlSuUnzj11NOqHHhy/raWDALC0iIdSjjMA3w=;
        b=H50Y63zXoTuVT0wWfQ2kIFZWLy/wKwfRfFCGXgmEnmU57GfcTEAZbHx8r/dB/Wv9zB
         W27jWjeo/R0dRAdefTjuC/3vB/564dtxfgf/SVQEYJXI7bzxROjdmPXnfPnre4saS23V
         ta79dDmEp92ZFhDyVlEMQe+yLu1LeoZE84IpfZT151PmbCHDzi16BAPtkboqxzwsDMop
         0R4w6HZ1VNbofH7ag9U1CWT+Vt3/R1zg21dXZti31h5oYg8+RepXGcFQDJ1RW3JNGiW/
         aiaJAB/rs8zxukpoPLDP+BZ4YxyZTtzvZIyKk6Lqx7hO06AmC+ZdW6F3Si/6IHKvqNoM
         r+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122431; x=1772727231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7DhZk4iWlSuUnzj11NOqHHhy/raWDALC0iIdSjjMA3w=;
        b=cZ5HB00mU20B60mqdm9PaNUKXsBGlgoY1OG1yrzFSBLrVdFjIaoOHnYy8IZG31i0kY
         8r5qh8mRas5AYnCezXmu/J25cV3LAoVxF5trMWWFijqhmREzPXk5RNJEFxBdzb2EsD5g
         yNM4BYs7eZwsR9DLXFLKf34W+k18iQyIIzIiENAIANC3R2t1ApBTThstuwiTqIvxgZkS
         vlID78UEGkwvSeDCyDFB2nTkGe96XsFTdpXJnVfC2FchIsBLCHsxoddQCSdCcrJ/Ldna
         xLMjiAPnn6Btils3GeXvADnulogRZ3rEt9hgQGqrvA0UJ6zu5LtSU1MsewYL9vpqMwRa
         WILQ==
X-Gm-Message-State: AOJu0YwStNhJn/BAHmyUTrZMQ0OlZOjqEY1vz2jcqdSHxzaOlyAi2GlP
	ruTUhnGtVn+7/soHaSrNSWjNSVHIOjhUNKVsGTeZ7v3+9W8CpVOE1Zia
X-Gm-Gg: ATEYQzwZGBi/kHWFZvYvjlYJwcVCOB5Bp3IMYiU6H0tX2QeZRsseZrZEbajVp73oCNt
	Wgxdeb2SLpcC7pkP3uRmSTYEUgcgSvhfX7g8HTf8yXkOSfzCtwqdbw4PMMBaQoQYXpKKC+MI3ov
	IFTC9W+MdtQt4k1oKwj/n2s3JIq1i/CInD63ylsuiHKBsVDGnrD1IcE06+4cMujm844dCSktSmV
	+rSVU0RU/COrUht8VODh90HY0Wy5224ScbR8RGqNZRFPUkfaVVDZbNcsYrW90fa0kBYtQH+PlZG
	Qr0ZA1WDqog7PCadidFtVKUb4N9rFzygzFFjJg0I4U06c9nxHwcsF8BoG5uS6ZxaP8Bjky3yUsP
	TLhNV7PTlDGixIoi212mOQW4/EL7wr60A66LM777aJ6wWNSt5W5MF1LGnDMDm+bXQsVMt512Gwh
	1JFoFoUMuuRIUEaFopo1rluq87soAXWH4GLLmZrLqjw56pZg==
X-Received: by 2002:a17:903:2ece:b0:2aa:e075:c914 with SMTP id d9443c01a7336-2ad7441b03amr215547465ad.15.1772122431009;
        Thu, 26 Feb 2026 08:13:51 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:13:50 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 26 Feb 2026 16:13:34 +0000
Subject: [PATCH v3 2/5] dt-bindings: arm: atmel,at91sam9260-pit: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-microchip-v3-2-0bda15abd922@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268939-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tuxon.dev:email,microchip.com:email]
X-Rspamd-Queue-Id: 158861AC9A7
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer (PIT) binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 ++++++++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  6 ---
 2 files changed, 49 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml b/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml
new file mode 100644
index 000000000000..d1bdc4a4f9e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/atmel,at91sam9260-pit.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91SAM9260 Periodic Interval Timer (PIT)
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  The Periodic Interval Timer (PIT) is part of the System Controller of
+  various Microchip 32-bit ARM-based SoCs (formerly Atmel AT91 series).
+  It is a simple down-counter timer used mainly as the kernel tick source.
+  The PIT is clocked from the slow clock and shares a single IRQ line with
+  other System Controller peripherals.
+
+properties:
+  compatible:
+    const: atmel,at91sam9260-pit
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    timer@fffffd30 {
+        compatible = "atmel,at91sam9260-pit";
+        reg = <0xfffffd30 0x10>;
+        interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk32k>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 4ee18112586d..70059f66f2b4 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,11 +1,5 @@
 Atmel system registers
 
-PIT Timer required properties:
-- compatible: Should be "atmel,at91sam9260-pit"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for the PIT which is the IRQ line
-  shared across all System Controller members.
-
 PIT64B Timer required properties:
 - compatible: Should be "microchip,sam9x60-pit64b" or
 			"microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"

-- 
2.43.0


