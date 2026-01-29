Return-Path: <devicetree+bounces-260710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGCBHafcemlE/AEAu9opvQ
	(envelope-from <devicetree+bounces-260710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:05:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A9AB9B4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B86D3024120
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 04:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C92626E6F9;
	Thu, 29 Jan 2026 04:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZOXq4ZrX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A81290D81
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769659543; cv=none; b=aPa2ym4cEkNzggpaKkElWCW2aJRjJhQ6TU4WvUygLhy0bire2Qen/yXqb4zXY2ptmo5LA3GYb5oC2zLN+Mj4H7khwgXZFGK+mCycPJ5FbIJ4ZctNUfQh1domc9zLR+1xysZg7O2w1LoGLDgar3dlO/jlvxyGn6aNeL6zRQS8FD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769659543; c=relaxed/simple;
	bh=+vwNPlWwkjH6h++Xv+jKnOVO1xWHDFJPGzNnoOzcQYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iy5BcIGXydGfDvCM0v4HfG9kyb193xk33GILiPZqm6AE/za4K/GSMFvX2Mzrs1jJlI7v7xsgXmWjoJT+13El3zblMSqUlVwZtbRsuquiKvNIVr0se0cRNIt6tb0OcccV2rEM2vTyKMLFdD1M2WXzf9yVct0xz8r+UlQWIr8SnQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZOXq4ZrX; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81f4e136481so259304b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 20:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769659541; x=1770264341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E68djXKo/Qb6+8kiZNd4FljhUOa17e5P51Qp4W2uY20=;
        b=ZOXq4ZrXkeD1qPHwhKpkPKMYhm4M+b1RyVLLk/rwl3O31xqEcyBzhVFNddDp/dcqlF
         wLjGRUvpPOkWTGOPOH1j9OQejdt+z23fEoyMaMO+HPlfHnISZZldNLwi6TkJ2t1IoPO4
         p8aOWQkqt1qmxg3WLrBTUAigjptGhiA6+atP1t/JhobFqxOZx1df1LWZ7KBa69/pIGQ2
         TtuvMez7pSN1SvnI5qanvH/nZS9d2t/Gg9ZaMy3VHHTl/vnlvFPM6hA3atyZjlu5lqmM
         DRA57s+M0X3VYqbaPq/u5K6NrEAlofsFyMxi5uuckfwxQZ7l7TdIHBwuzAOspQP6iuiM
         e2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769659541; x=1770264341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E68djXKo/Qb6+8kiZNd4FljhUOa17e5P51Qp4W2uY20=;
        b=RHPBRYYcXyGK+PONBZwcztpvqiuoGbI+Dx3abt2i1z5XyzPLf1oTe8qC/u7xp1uPAX
         nkZ5J68QC1+5B+u50D5SN0GHcs2xx95u25jI9wL/qn4KPRx0YSxKIYblOvpGcZogqbSR
         SUaaEvVw/+plYPRUArfh/t6MiASZIGl9uAuGkNyIc5UC+n6o2JOdzhcoqDsDbTntzDle
         rkk8Ra+h78Bm2aIU6YF9ViWS2kjuPrdpKgB85ttrNllG4hhxvoGgEpod2zzGY2JPdjl5
         jlXzgZrSSeuL/osPjs1waWJxUW5iT58Jbpshim7c2VLgtWjLlonsGkUfeXo64r4DpCr1
         YwiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLq9LhhSCiEVBCc4j4FjMot+ikpz6UpkRWuBIUjvECUCDkZK8dgvQO0Cn2XZAp1UQ+VYc7WI5MyvTZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4VGwEbdwDQG9AKNQseGxu1s/M0Vk3xViAMhumMf90k92Cskne
	NB/xKQIz3aVshR6bvLqU9luLcR5MccsVN2kIYz8wElF5Kcb+zx0B6zb8
X-Gm-Gg: AZuq6aJsG4iZbFcz3nTP39SoqgtNQlpohtZZsLLxl64xmogPpshBNAM70yK32nM2Gbd
	0kyYTU92yLpWL13WmSBHdzbwOkuNDew8vAKNQ652SH4Nn8Ov4WOLKza5y/5j3Wc63yg0n9grNgc
	FreAOsygj/hQghc27JxJH57Y3LVmF3qWMmpRWcWC+YV5a2lTmtZPRTds9/1KSSCsE0cpFSkosqC
	8XJ1Wo5ZICiQSUwEHdQQKzFyE1/fWxBD1TChfs20kT0/UMEyZRtjuAg8iloVXwUkYvTV7CtS92L
	cxe/PrNdby4ABcuy9zJQs2vAUd4sVPjaVFzv89OKfi4QDa30cfb9+q3da9Ditm5YSsMYF1Uqbsg
	R9QaqlmSP7Ek3VnoDA1xp/D1oXvnwKiBo6fjbDVMfU6mp7P9g156UpiEsk6CQBehWO9bGn/j1XN
	1JpcHPCoAgkzlL8tNhIBjMDxb2jf82+5NDf67Iqta+Jv75PII3/jkC7Y+oxSlfIjg3bRBFpXkI
X-Received: by 2002:a05:6a00:94f5:b0:81f:3bcb:af2a with SMTP id d2e1a72fcca58-8236917be3fmr6772085b3a.26.1769659541008;
        Wed, 28 Jan 2026 20:05:41 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c22672sm3857721b3a.51.2026.01.28.20.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 20:05:40 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	a0987203069@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU binding
Date: Thu, 29 Jan 2026 12:05:30 +0800
Message-ID: <20260129040532.382693-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129040532.382693-1-a0987203069@gmail.com>
References: <20260129040532.382693-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	TAGGED_FROM(0.00)[bounces-260710-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.102.81.160:email]
X-Rspamd-Queue-Id: CD5A9AB9B4
X-Rspamd-Action: no action

Add Device Tree binding documentation for the Display Control
Unit (DCU) found in Nuvoton MA35D1 SoCs.

The DCU is a DPI-based display controller supporting RGB output
with optional external bridges or panels.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/display/nuvoton,ma35d1-dcu.yaml  | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml

diff --git a/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml b/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
new file mode 100644
index 000000000000..adfc20117eb7
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/nuvoton,ma35d1-dcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 Display Controller Unit (DCU)
+
+maintainers:
+  - Joey Lu <a0987203069@gmail.com>
+
+description:
+  The Nuvoton MA35D1 Display Controller Unit (DCU) supports multiple
+  layers of composition, blending, and output to parallel RGB (DPI)
+  interfaces.
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-dcu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: DCU Gate clock for register access
+      - description: DCU Pixel clock for display timing
+
+  clock-names:
+    items:
+      - const: dcu_gate
+      - const: dcup_div
+
+  resets:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: Video output port
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+
+    display@40260000 {
+        compatible = "nuvoton,ma35d1-dcu";
+        reg = <0x40260000 0x2000>;
+        interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk DCU_GATE>, <&clk DCUP_DIV>;
+        clock-names = "dcu_gate", "dcup_div";
+        resets = <&sys MA35D1_RESET_DISP>;
+
+        port {
+            dpi_out: endpoint {
+                remote-endpoint = <&panel_in>;
+            };
+        };
+    };
-- 
2.43.0


