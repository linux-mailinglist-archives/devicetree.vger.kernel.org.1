Return-Path: <devicetree+bounces-268938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICojENWAoGn6kQQAu9opvQ
	(envelope-from <devicetree+bounces-268938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:20:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9438A1AC35D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F5953216F8C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56773429826;
	Thu, 26 Feb 2026 16:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VYhx6d1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D97429828
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122428; cv=none; b=cJcJdQBlDA+dKEghnEM/tvJFEhV/XGLWHqbcrmFjdi++D2nODeCdDFpxHabsQ51IQ1jBuV9FA7yiLsIoe+eeTG5LCA+tgeYyNCbZwcbL4MMvoZyn+NRclofkp+t5abAKsKTWx2aeRYue8Xvwa7UiqysynmrDIsNOHnV+eyElNcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122428; c=relaxed/simple;
	bh=52TCG1qsp4Vf5n4NZNaMMCWw1N4K4G/SeEqrPrJstK4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UMsd7Abbf4mrWjw7uFtrpBqmjQcT10js2XT2OQ2XmJexFE7AqoQC/B+M5BgMXk4pvIKJdNZzpOiZHyeBc6l7eVWHnOSBhryrnvF01vI4tDAbrzGKNNuO7kXRQg6cNYlGWUGlAh4IuCvDd1omhrk4ADEjYy0TMFy8hTtntZSX/gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VYhx6d1X; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2ad9a9be502so6981405ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122426; x=1772727226; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=joFWr06FeJI623EHr798LyyPcGvBM73LqMWCNipZMCk=;
        b=VYhx6d1Xokqt1mB770W0Rwc6uHsMRPyeBBMBICy7nn17zuGeFhsnsW4//CpIrQx2BO
         5AIP+3qn/mrIxXUD+BiuUFPyLXhb5zwlhIRvKs4RqERNBhz69hf5DWrzx6X4Bd/7O3n4
         ztxLB0dFVPOBLcEwrNW/dZoRgJleyMD3MkHtQf+UoxhgyMA6WMFpQp9w2D+mMf9HUXmU
         ih6LW/fTArnHzlRwOR/oYs92np/knz/ruNR5ug+ECAT8YLt9oCI9p2EurBm4h8KyB81J
         P3IRbtJ2a4d506AFHDV8EK+AJqSDOAXUXVcdFD18DYzPifmEisRp9leJQs0H8xd09evE
         Hq1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122426; x=1772727226;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=joFWr06FeJI623EHr798LyyPcGvBM73LqMWCNipZMCk=;
        b=sCJiCygpFTclskKAqxs0OEaryNMD2xM5OyB9zLdixv+g/eT5nemYgwIOG6hSGVZdQQ
         4+oxZid5NIKUAQr6tvdFMuQ29kzjFBYlJ3ff3cGVwI9Kfp24CMAQWKQQ2p0EccjCEuY3
         kL/u49JlqlmZTXTgO0uNrkJ5fT2sD/Jk5ZS6xuBlL3zZG1kj2tgK/hWMUBptwD21UztJ
         Z4f7BXNGdbH5cWJHerj3+5I0PtpJzdJgwxqLN+FXCXqE6rTubnEVxGOZzREeJXmBRfd4
         AfYCgmy8qoRV/p8Qo02DIFe+KXt/u/MJJ/m8KF4VkCO5HHKK65jt/UqFf/Ryf1iisMfM
         ao0A==
X-Gm-Message-State: AOJu0YwnJYr33exXEnMo5dMrAXw0cBHz68V3LuFqf3MEm7g7yN7iV00z
	R8lMlUgYH1+wGjqhEtEPLL8hxt7J1FLOdIHTc2mWveSmHAFOL7irC38p7kTGMQ==
X-Gm-Gg: ATEYQzx9m15b3LthRHzgiqrfha77AT2nzaL492rfIQhDx+M3p/1Wxdd05SDV0BOINxv
	EWZgYhltifx5QsD11pnCtmrVwJm3I2m5gwLDSPQ1TE9XM6/MECU0lzy6N23zlHasj2VCScn8lGA
	raaymvdOMrZ5gijBIk8nK2cLKkeXiqF8RDEjwwp/TJBRPhr3HsGPrw4aHKJWka3b51kKgDEWhDr
	HBGB6eaWYLmM4BKf6+T44Uu6Gz9WtI7qOgM8U501gnh39GgyFl9wBoBwGeP0GGXmkGl/UrCh+Dr
	yc2t10VYlzrY+e+zaPsRfkedyZHYcOEboIyZWJYqdilOFOHqsKWjAMlAalTh+jQCI6kIiT9NOLm
	M3M91bpd4wVXalWXG2WosPqfFGYw+tR1Tm2HhaXcHoN+7h8v9SOyGbbguj91wjWsUaKylkc0CZZ
	qfOrkTZIh6e1qi7C2FLuscB/PhkK7yjc0/nmYfFNYXxvPzXQ==
X-Received: by 2002:a17:903:4405:b0:2aa:ecec:a447 with SMTP id d9443c01a7336-2ade9a3705emr42787935ad.36.1772122426447;
        Thu, 26 Feb 2026 08:13:46 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:13:45 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 26 Feb 2026 16:13:33 +0000
Subject: [PATCH v3 1/5] dt-bindings: arm: microchip,sama7g5-chipid :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-microchip-v3-1-0bda15abd922@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-268938-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fc069000:email,devicetree.org:url,microchip.com:email,tuxon.dev:email]
X-Rspamd-Queue-Id: 9438A1AC35D
X-Rspamd-Action: no action

Convert Atmel system registers binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  5 ---
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
 2 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 5ce54f9befe6..4ee18112586d 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,10 +1,5 @@
 Atmel system registers
 
-Chipid required properties:
-- compatible: Should be "atmel,sama5d2-chipid" or "microchip,sama7g5-chipid"
-			"microchip,sama7d65-chipid"
-- reg : Should contain registers location and length
-
 PIT Timer required properties:
 - compatible: Should be "atmel,at91sam9260-pit"
 - reg: Should contain registers location and length
diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
new file mode 100644
index 000000000000..4fdb068be929
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel/Microchip RAMC SDRAM/DDR Controller
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  This binding describes the Atmel/Microchip Chip ID register block used
+  for SoC identification and revision information. It requires compatible
+  strings matching specific SoC families and a reg property defining the
+  register address and size.
+
+properties:
+  compatible:
+    enum:
+      - atmel,sama5d2-chipid
+      - microchip,sama7g5-chipid
+      - microchip,sama7d65-chipid
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    chipid@fc069000 {
+        compatible = "atmel,sama5d2-chipid";
+        reg = <0xfc069000 0x8>;
+    };
+...

-- 
2.43.0


