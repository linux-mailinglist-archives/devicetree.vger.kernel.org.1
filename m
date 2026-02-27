Return-Path: <devicetree+bounces-269302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFcDE/y2oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B700F1B9B2D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5541311067B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67ED43CEF3;
	Fri, 27 Feb 2026 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wu6an1M6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C7F43CEDC
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205294; cv=none; b=Ub2iJ4MjSbHgHxOFIthSqQJo45HCGx7x5rYvBKHDJEJb4aODFO1qUsAQDu6q8A9mrWJ/2uEPf5cwNIsUpY8jLOVwZ/XOK/oZ86J579FDqq4/L5VacFWjn0TYhv0ej+kDO4njE64lKio1lPjHZx15WtIR65w+ZaX+KlH71tsbQGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205294; c=relaxed/simple;
	bh=rj3+kO9k4vG1VXjBc8dP+e9wpbLTLX/NLDnWovaZknI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YqJgrjwoaBYa+Aa7NKpIRDLlOwJzB+iTDqqD8dU4Q8ViIll7iPLZK93Ux3doXuRseZn7DChqOKIWgaC500shi5b5sk3HI4PnLc2CAIbek9K4uXPaM4qr/8LNhzyWw57mu7TID6vfZjOcJpJtbyENy0tx/1GacX/lhTd5yn00QKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wu6an1M6; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c70b4a0cda5so802487a12.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205291; x=1772810091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DE5SdSXqoRzT/zzVjsASLBPwA7BQiH/VpGj5zl1TCDo=;
        b=Wu6an1M60zAplNeLzvAZePXAtllZyRq5QiPqiJImqZshImeWeVyXwwQgmKr+OQ/fPJ
         ts5C9zAlFWCjpCrcL9yhHc5Wf2sDohxQwjAkKC4oR3e8yZYplKvodi95inrZPHhrZBgy
         pk2GZPRmZlxr+pTZnHPVfk6r71JQqy/Qz4ej+3TR7e88ivZehBBzfMqLoJspT5QSWF3t
         vT8pL8W119mdnIkFyBGX6Tbots8tgMF68p2FQQ0tVveMNcSDa2zBBNM3705ItdnLxdhM
         vJNXIHErO5FBz0xI0Zda/IR3eDL77jiL6p9tXQTm0mxp/FLxrEl4mJ6wCxQZmHjHChHD
         T3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205291; x=1772810091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DE5SdSXqoRzT/zzVjsASLBPwA7BQiH/VpGj5zl1TCDo=;
        b=k4lQ4n7yCSUhiOQD66G9ot43sCn2tmOO8EEpywaQ0K05Wg8/m1BMmdwOpfS8oy+bof
         n8lQXOyPgyrbEMLR/TVNBa7IgUPfjB7hFtpJ3Jk68r2VAik9Nt/9hgiToI7JqsAETYI3
         NLcWC1qKGO5CDQD3HZfXubGCFbhfqpf4uGFBy0eOl9WOjAOVxwZEI3hnsyrW17A3GKRz
         GWSbYX9jVdjrsvY7Nng1ePrVosKy3DGdHSt66JqunqMqjbKT7mrdh9/1oHE3u8QHpMf2
         2W0SbvDa+LcMO4qMRK7PDH6ifpI66HFk3A/KlH3XzNBxJe+g1bGUINTCoXLWmug6U+Ox
         qkRw==
X-Gm-Message-State: AOJu0Yy/6e1T4pjZ65gPtD0eAaEdYElyO0fQbTcUSPPvjQAxs5e3UQC0
	Q3IfhDhyOMlmnOVKYk8iaNbGnFC3Bp52yK66Ivq5D/gQ0CE3x4T0daXy
X-Gm-Gg: ATEYQzz/Gj45nHViOFPG2Ct3G96EZP+pgS6ulwWbXQaUOn907dUNcOq45+OoWPHYX/Q
	ic8Ywyj43v6t+l+ui7I+makBOjXa5GgJvJmCGY9Gh2/hQ9Trfr4+jI3wFHd1DZJP2pqL+IGIwLs
	ji86JrzTUvTO0JJHXeifz65KTtbHpUIInoipfnBF04K5FeyuVRRJzpUcjwgN50xPbC+rN7QsRqm
	wCUTKCGCkdBzXY2/YWCfs1lYez324+ClsDmaSR4zzbVwj13h7XLh8l5DfgTAow1bnYcne6S19lA
	S0hBCdDnzbkAjAN+wWv42EeYl/yrNYsm65iXbygWVD9nCoYuPIDRcaO/wH1fO0QDTUrnb86zPA1
	IvafjkweEzODmoKdhaFm9RC2ysXPZlf81KEFiQOTl3ZppTw+w4aRx5bdtUunD4Lo8tBPNzmVK1K
	ye2qWThC1UKc2g6srlljIyxkRNQTMHQ73MEyBy8k6AP6wUzr3u
X-Received: by 2002:a17:90b:544b:b0:352:ece8:1f6c with SMTP id 98e67ed59e1d1-3593862e0f3mr5550934a91.8.1772205291129;
        Fri, 27 Feb 2026 07:14:51 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:14:50 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 27 Feb 2026 15:14:32 +0000
Subject: [PATCH v4 2/5] dt-bindings: arm: atmel,at91sam9260-pit: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-arm-microchip-v4-2-7e2ae1c5b5d6@gmail.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269302-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:email,devicetree.org:url,microchip.com:email,fffffd30:email]
X-Rspamd-Queue-Id: B700F1B9B2D
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer (PIT) binding to YAML format.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


