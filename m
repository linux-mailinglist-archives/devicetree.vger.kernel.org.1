Return-Path: <devicetree+bounces-267940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hPO1Af+5nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90879188A2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 64EDA305AED7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB18F39E19A;
	Tue, 24 Feb 2026 14:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hh0isYbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7C121C9EA
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944428; cv=none; b=NIF5tvc0kQ5fe5HBIlIm7slrh1iHs8xLR1B6Z9NYiTf5EjRcr0Vr+mA8GI4mWXhXMdKH5gqjfDVdTUF13pIjm4Ob3sQ4zCnGKrHwfWK1SeY7BCQfU4oX9+JNsWZ7EQgXkOj+8Ve9QGTb2k9RpPnxwxFMG7VoTWIv/obaBiByjTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944428; c=relaxed/simple;
	bh=PumNPGcrJ4skfCVrGiNWbZXjDUFAlULb6bn6UMPZsN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VASdIE2i5WQfW8+X+MmbAtKPp6M1cbhAV8MTS6YFNFv2OpDsU3XmFv9MT9+A8UijU3TyEcMvSdE/eeXnV+dpq2ySyADs1vwPtgg1/RggCpfCEjGputzrbpMA8coR6MeLORjmbrIBKDN01dejm4o0ifn8ph0/JkpPP+l2AaypdpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hh0isYbO; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8249fc726e9so2910310b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944427; x=1772549227; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aEkY17WKmEZ1jpJye7hkjNkT/qCVa5K542FVmlWtk1I=;
        b=Hh0isYbOOzpiUZcdEcFEXv5JBClFADrW1O8mapVXh0LzentSFz4QJ941DCgSYEQkF3
         cTllFpLQesVAXC08S5z/IOH49fuDiMMSxmuvkjCeT62nun+NxU/X/O3MHfdHw9QkwGmd
         6O1ryGprP/P2aRiIdKQEb/ZZln1SwSB7LXVpaXx2/5PiPzecZbq278rClCKtSwusWb68
         8ZtMwHwaO6K0cww7WS5qykME+5f7NeAGs3lJkmr9Ms0/T7TK1G0oUaTGboJDBAjBTOCR
         rNmH4ZAbAPcISkWkiuHFxQybANbuiX80ml9DdAKz7mej5HEzOw2hL7Hib1Kht8GSoHl/
         3H2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944427; x=1772549227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aEkY17WKmEZ1jpJye7hkjNkT/qCVa5K542FVmlWtk1I=;
        b=hYvzIZ0Cdl7vr5z1VQ8SM1y41T4SZltVdW5UeT5YOB9RcAQqBMLJrhYThQ6iU9O4X5
         WvaBWwu/cX/ndKelQHrL6WpPK/j5obxVGU1CZghqEX+4m9F23G37L1LoyUqM8ItoBkNS
         +VTJ7VK2yzSZZsEILmjHh/rE4ks8v92IsVotS7m3k+EMzNYfC9ANHBNRGtc3Gfx8j3k4
         0ErVtXGmVZ6RLc9/icDvdz2SSNpxqJd3h5ZZti/7MQUfmSjOl+V9IenE8fLQ39C6AGAe
         Etm7D3D2jK9R6c+W0Hg4CKeaf2JcQhugx2Yw3+dLZY49YTsmQC2tcvWqo5+Imlb5qrSe
         3Lfg==
X-Gm-Message-State: AOJu0YwaOkUK49Do+GalDOMM7LXWpt+8UfRqZA4JgHKIFyXqVSy3xV3h
	kHwk2pnUPZe2ls7A+W55yHuaXkHdyVeLb1/aO7vvrX0Vyxg40hV+R/KAyYqxQA==
X-Gm-Gg: ATEYQzwaFBFLQx27xdA78vX0dc658TCJtsdD2gdZRK0JUO8KMrtW2cUfuLcfMj/g3D6
	m1dpLs25ppeJW8RM/PyiT2egvT3D8EiV82+9plx55C3EMsnoOLLLl+8tPah3X8e07AR3fN6yp9H
	a/ptq0cf1MjbHtXTPJfs33zCdDrdra2SiqdnF/3jnVR3etE4Ni8vlRbRz+nyDjOOZld3K+MudqA
	QceQPY4202umE9mw8X0zxBKOwSkCodsddpsefuJj0ol6H2Y42h5yQEE3ewu6IYyByKWi724GEaZ
	93YONIPSfMFSf86effrt0q6vmSE8smDL4px2qXi23gMI+/BxDSxsXY5PfdSSNH+9ABrDMe0zy1C
	Xp768j8KxtC2QELEnxP1r2Dvjpb4GrMDnV97dg/4jKJYVKoqYvtIuQuSbxgxJNa3rdh4q3A8CQN
	2bVVwwjOXFrJ1wKjo8TLtf3FHvBPmH5oH+1j382zYe4Y5Qrarz
X-Received: by 2002:a05:6a00:2987:b0:823:1491:da10 with SMTP id d2e1a72fcca58-826da8b3a1emr10351191b3a.12.1771944426704;
        Tue, 24 Feb 2026 06:47:06 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:47:06 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 24 Feb 2026 14:46:47 +0000
Subject: [PATCH v2 2/5] dt-bindings: arm: atmel,at91sam9260-pit: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-arm-microchip-v2-2-8bedacd2cdcb@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-267940-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,tuxon.dev:email,microchip.com:email,fffffd30:email]
X-Rspamd-Queue-Id: 90879188A2A
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer (PIT) binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml b/Documentation/devicetree/bindings/arm/atmel,at91sam9260-pit.yaml
new file mode 100644
index 000000000000..dbb5fd843a9b
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
+  - Claudiu Beznea <claudiu@tuxon.dev>
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


