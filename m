Return-Path: <devicetree+bounces-266221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JzXDI+klGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A90214E954
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32B21301F4A5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D1D36F419;
	Tue, 17 Feb 2026 17:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEze+cwu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8363721D5B0
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349079; cv=none; b=jj3LHLsHhIK89qtgi0vGKPrPrgYCmknQu7tfTSEuZ8jaGpcDSrAXfLMLPOA4wHOtNswWobrlxmdbrhlKIUx9wPZlPwo/VLvHwETF0RKnK4AGPehr1gKawSkwKmnMcuP0UPpb2pmn+9iBNqeXs9fzaWygPhGuYsEOkbaaEUW+6HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349079; c=relaxed/simple;
	bh=/IumJo2wfiLxkURjAVtdha5zqZEcACkLKRwXGmiMbz4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CRq8UjCFFVPonjKoPEOpToiWvu8mzuLL3mag6UxevaBOVfuVyER4WAJlGANFhcAF0PaCzYvRPX1O7Mk20gfNTWzMSAGCMxS0u+fI6hNYo0QI69ptlEv3nt8mqoItPSKvT2iIN1CBMH0Uc553i+bxy/xzlzsRTZSHbUFEhMmAkGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EEze+cwu; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2ad4d639db3so697375ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349078; x=1771953878; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=48uzX4AC3kmorumjWvelh24/92P7g/49N7P//38GtHE=;
        b=EEze+cwugrFHV0XUqekVSa2sfvTW/15BD57F9WOvgVVtPpA5GapKRYPvxy576WKBfj
         3WhXf6CX7Dp/c5Yv8l9eMWEWcByTj2RkxqdS6zwg0cTJ11G+EWx9llTJH/bwaVO17h6Q
         1QmE1S+lIX1s2g2RVlGopzb3T0NZgz6YxKhAtuU1UfLd/POaAJ9LHj2RkYVryQWjZGeN
         IYJ9Yk93+t9Jdj9WFiTwVE0l63fw4/3dBXrcfqetVOL2nUzmWYBkhTgBVzi/vKxATfLX
         xBYZFwPY64Q1pNvi3N2fSKolHsgQvsbN08qSca0l0Ss6O/ZNgW8LG6yJmTBnQwQLvmru
         XGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349078; x=1771953878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=48uzX4AC3kmorumjWvelh24/92P7g/49N7P//38GtHE=;
        b=hwilqRjBdQ4frJWLF990JkR5z0Ki97AHSNZEufPcwIsvyTK16iD01iIUkXN1hDM9jY
         PUyqf9kVksVxAW4gFm5aTTgOoE6CbGCLeJq51+6HdNKBp5KDSaiVvvoaesZ8vcbqDwM7
         Ddmon41uMcMwLM7w/olXWc+I2VfR3opM/XSGfQHLr77h96tX6p1oY9nLsrNTfI79+TaE
         XhcbO/L9mIwpwMVE8G0YyHLUOEhOEO5dR0tIECDTVPBjq1YKrrgJKRKcnG3+37bt+mfZ
         mlgIdjgHXucISNloRfbTu47wojbQ4yXunLIddtY0wpp0AmtDB7QssiRjiYdEW60yjvSR
         ti4A==
X-Gm-Message-State: AOJu0YytDU2JkYEa7f6eWIh7peAmi3AZX0JlyuVSjtAz6ZndHZkUrCJS
	NnNGXGUyF92phsTpKPBHX/na16W6h+hCUK4lz4HtIfezu1rFmcHQx61gXvdwNw==
X-Gm-Gg: AZuq6aJAwEXJZ8Oi+7DH4FLEM1DuJ8BMOq3zJakkaTsJmLeCxrgdnpdcKJvufZ9e2ep
	tDSbXtKIXsvrRaBcD4xzzhMvaUtiCaaT5PWYzkpaCXvOB9NprFpIsUPBeJa7EtTlEklTheP/1lr
	M8uol7/B1oYlZMXAm7mMPtt0K0UWG8GBcK7QcPHAIsYPtgjkDkS3AKLAJyvw3hg/zernfrkMkSL
	FtSkkatfdF0edlZTJ6DTu35E7pXqgioiOSVK9Gv1xKHsvF5MjHSUzia5Btg6hVzZ3WKHOM4iTsM
	UXxmIvEjYDUWRveatbD3eaoNT1W4kKF19HFDeY1kAndhQzIg7YsAPREYDQp7goxBGWXiuX36pPp
	NYszHFig/+CZsVFgVPDdgcC4uDpOzQXb2XMgv1rro6k2n7POy6j2pe5VSFxjZfDtMxq74L7jzmr
	KASWnpNsbk5tCKZhXudke4VvKR3fygic9BPATCkmI0ITHq9xN2
X-Received: by 2002:a17:903:2b0c:b0:2aa:3ec2:376a with SMTP id d9443c01a7336-2ad175be049mr120134365ad.60.1771349077878;
        Tue, 17 Feb 2026 09:24:37 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:37 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 17 Feb 2026 17:24:20 +0000
Subject: [PATCH 2/5] dt-bindings: arm: atmel,at91sam9260-pit: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-arm-microchip-v1-2-ae5d907e10e3@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-266221-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,microchip.com:email,fffffd30:email]
X-Rspamd-Queue-Id: 6A90214E954
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer (PIT) binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml b/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml
new file mode 100644
index 000000000000..954cd14ac1c1
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
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
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

-- 
2.43.0


