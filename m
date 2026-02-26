Return-Path: <devicetree+bounces-268940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACH8HqeBoGn6kQQAu9opvQ
	(envelope-from <devicetree+bounces-268940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:23:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E6E1AC4B0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0978F3289F0E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F4D44B66C;
	Thu, 26 Feb 2026 16:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RexdVJcy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F22344A72E
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122437; cv=none; b=kOqUz6CYAxAwIFblb1d8MpSBXE/AJRCJ97ohiXM5+mdR/Z5J9XpHIYVfp3A3uqTXuF2hf4gzbaWuGrO/fAyjxU+nSoD95NvWpbFqYSoeeak8l5b5MzedtJd8kRE+WfdZngCIRzgWx20OWeljtzZRHNSSspKRPS9mqEy0vXafT+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122437; c=relaxed/simple;
	bh=yBfGTXJZuqNJlbhyelQM6Tm4pPHQV4GvFhASmBmQRqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YST6NJ9cI6fGbK4g2vBlcsBnaJC6GB/ICdKQGSpmNTnZ+8yXWgaLlHW86HTjWqBA4LnqaawqS5JRJxGQQhp7ZZxNEuDT7zszwrR6S0VYnzQ4Ov07g0hfMf5IGY6Qd4x5SywkZrOY76g02Jx7IOsLxkoVYD1Fw42OgvlxXAn+AjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RexdVJcy; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso5063945ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122436; x=1772727236; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSWTbNL/6QdNnBgGRc4rlVRWsEK1pvjK/NfqqE+tJ94=;
        b=RexdVJcylnLHcNwQAw6zqsQJH0GbhsSl/CoPse4CFdqA8GkD9E4zqwanc/Q40jVfAq
         Mu6JumX1l+GaKX1hI441h5elD/a1IESh2s2d9kCdsJPWzb3Q8BfIv1iB7r8dWtj3pNje
         iuxXjRtaDsZ7cWieq5fmrd77R29JHhMO7n4Ge8HiyFCPyXjJ2dkUj2BR+GKIIHkeMtls
         N1PT5nLN8NUum2HZ1zA4dKtfLt74oPPnNGNpMbykstzOU360UXpEedGqqiEGNdV5Gu/X
         zkLA6yviNorPocotIqw3lY+wVxRnKgz5boY7WRJEcihF3+ZP85LA3mQwxfljCiOr52DG
         qRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122436; x=1772727236;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YSWTbNL/6QdNnBgGRc4rlVRWsEK1pvjK/NfqqE+tJ94=;
        b=pzWKx+uDFSdAx+tIkpdMdf8QAaKC7ANj8nj9ZlH6mpKxBaQUr4+0T9hBgsFK/GJzV+
         K8AaKdkzd2Pd00+KIb6W/yxBdSQqbXFbimUxFbnLvFMu5OKtNu+Yl92xmiaBulScKVOp
         hjp/GyyT77BDOQMK/9XyU0y4nXryIN9YVqUFvdMynrALo+/q7EQn6/VJ+bxmGr7gxyue
         koKQ14gCOXmvpXhXufJveTvch4Hx14+JyR5cxRTs0bKsjn4/JWc7zpQtZw2wRTdsn9BG
         H+c54zD17KmtOljVueNIUOTF+hDthL4F15GNt3cWA0fGL5HhdIfUnD3hxekl15OWDnFB
         tylw==
X-Gm-Message-State: AOJu0YzJme+pekfoQY1P+XT2TAH466onmz7x2z6O5CJyEt0JxGw5gD8W
	I4hwX10K/nUFJQC/vnc7edDNjKIdZ8dh/WbnS/NJaJB5GwY66SvAntUl
X-Gm-Gg: ATEYQzw6GN3IGXfpr8zX2Bx7ynR9yJ76F8wM7OqSIfeJfAxTuMDExc/pgYcJ/zcaMV2
	cAADzSN82FWJKa7lfMQ51+vrLMjdc/FQmP9/X666IhS23KMb86PXgKjtJjrIvVswrVapUzMmyb7
	OBqMhII1sKUmUgLsLbwRLteFu2xxAWaEQvdPoKf5JCO0bhSFWp6AgzBEn88ewM4dY9vUBxvpWJ2
	Wo5A3Rk+fUe+Wv4dcc35K25qNdH7MGC0eDPH1sVAzjdNoLeBP2KIq5YCmKGytFLhlqD8E64ECGW
	5djHr+0F4jMUhTfys8mjDr7MhZ3l/jQN/AIGnwScjLAf30BhSZ7TsCCioyChWRZ3ZfSW+/oxuL9
	jRh3zqWhSs+ItryLABj1Yc7QQ6dLAHpN5I+Jcf4/31DMldqfqr3lVKg56vpYU3vE0tNJAWSf872
	X8+xrO3GPtQwiV+IWqjCmt3CZbB0NdCZzz+RkKVrirHtIMdg==
X-Received: by 2002:a17:902:ef0b:b0:2a9:47ff:101c with SMTP id d9443c01a7336-2ae035bd264mr29398815ad.46.1772122435459;
        Thu, 26 Feb 2026 08:13:55 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:13:54 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 26 Feb 2026 16:13:35 +0000
Subject: [PATCH v3 3/5] dt-bindings: arm: microchip,sam9x60-pit64b :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-microchip-v3-3-0bda15abd922@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268940-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email,tuxon.dev:email]
X-Rspamd-Queue-Id: 02E6E1AC4B0
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
format.
Changes during conversion:
- Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
compatible "microchip,sam9x60-pit64b".

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  8 ---
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++++++++
 2 files changed, 68 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 70059f66f2b4..d0561f7f465c 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,13 +1,5 @@
 Atmel system registers
 
-PIT64B Timer required properties:
-- compatible: Should be "microchip,sam9x60-pit64b" or
-			"microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"
-			"microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for PIT64B timer
-- clocks: Should contain the available clock sources for PIT64B timer.
-
 System Timer (ST) required properties:
 - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
 - reg: Should contain registers location and length
diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
new file mode 100644
index 000000000000..f00ac7e858d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIT64B 64-bit Periodic Interval Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  The Microchip PIT64B is a 64-bit periodic interval timer used in
+  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
+  SAMA7D65 families. It provides extended timing range, flexible
+  clock selection and supports both periodic and one-shot interrupt
+  generation modes.
+
+properties:
+  compatible:
+    oneOf:
+      - const: microchip,sam9x60-pit64b
+      - items:
+          - enum:
+              - microchip,sama7d65-pit64b
+              - microchip,sama7g5-pit64b
+              - microchip,sam9x7-pit64b
+          - const: microchip,sam9x60-pit64b
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - pclk
+        - gclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    timer@f0028000 {
+        compatible = "microchip,sama7g5-pit64b", "microchip,sam9x60-pit64b";
+        reg = <0xf0028000 0x100>;
+        interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
+        clock-names = "pclk", "gclk";
+    };
+...

-- 
2.43.0


