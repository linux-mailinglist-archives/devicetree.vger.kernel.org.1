Return-Path: <devicetree+bounces-259395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE+QNQktd2nacwEAu9opvQ
	(envelope-from <devicetree+bounces-259395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:59:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5643985B0D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53ADC300617B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1B3313536;
	Mon, 26 Jan 2026 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PUnMPd9y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2F313E2A
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769417960; cv=none; b=PGYbrvwjl4vH71FXI+bQL7b+3rf1PM+Dbt+rL+Wf8J6KiFUllpmEuptrsgpobW5bxzQ/qzOGGqkIf95nPfWVkqHp60xSHl6TlkjELcTqp8mNogJlAA34QI2+tII2Dp1tcTpXndunkuPHqjtLlcoHbGxoi5fD7dyT1wRzzYLbkis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769417960; c=relaxed/simple;
	bh=rHXdkELnmXPgmfL/hpVHtqe/40spio7lZ9ACAwM5880=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ML5LdF6yPaj48lJuo67JYYyte10BPeCJJT5KJPrTct2oNTZOptXr07G/z1QxpieuTsk0M21ej6xxzV4r9IxstNLb19moCeNY/U6/QA/r7nLCI8IllJjRyI4axBmr0pTPxbQszvqQarLY9g+I98wqa7e2eHCvHKiAZTZbhN0bdCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PUnMPd9y; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-352e3d18fa7so3012478a91.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 00:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769417958; x=1770022758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhETkR8BTNErY7rf9frMZHrNNt0dwrD/s7H9/3Vpz5E=;
        b=PUnMPd9yYuUupoSKOgQs+H6BHt1JnvZ/Wr7RP/ebbx1GrKKu+5ngJOdgyw9pV6co1Q
         2w2e1rNsFRl33PeICxehPHtJ5wZalfhiLBX/tB/aZq2x90TpX6zOXgRQIxc1UOZi3/gE
         R/5S7xhRlUgy1F85AbYoa1IrvWbuRKyKcGP6bR3Fya75F6OvkGDphWgpoaIntVoGYXnI
         KOT/25zyBY/niSoPNCBB3UpxXzEXug4EpWh7S/0HC4n+KInzIm5q1OIFCk+TaqCkUjT4
         wwcJeMDYHo/tNUhlQjn5V/IKla79ZsIjlyQ0dP41BX9TLG/HPnv5EKxsToqHjflKxNFD
         rOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769417958; x=1770022758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xhETkR8BTNErY7rf9frMZHrNNt0dwrD/s7H9/3Vpz5E=;
        b=kySr1XriKxgIkWFzvT36bMpofwapViPlKHQa0kI36jCzODc0U8CGgJHoD3y7PD7eHV
         mDI1Fn/DfJcP10wR6xGURzTAQZOIwfWG3CqEawxD9jWbtJknF46VRjrcO/q6afnu+pYK
         GCFIzYYIX4UUwnJFyF5AAReFzxoTsPgePntluoO7KS1+kJsrKlrR3IZsMPJ1qlJi2i2a
         pTcye5FVmW4Ntah46dDXLsjP4XhEVqqMZx8jTOhG7zWo5XNVRhpjZIPksOG7RbMgX4zN
         VTxCbGoDCB9Hq3X6Z05D4SHbrFVraRTuTrhUcaEiPy+Lb0bI+EQZiI9waR88cEtQCE9N
         bfuA==
X-Forwarded-Encrypted: i=1; AJvYcCVek7WvTOHVtuGXyZ4LRQ6cBDVVBXTKonwM0QNqqVWYot8a9nRymjuLWKgJoXYbWADvv/DMwfjTXSnd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy979tXXi9iC4sQT+knSMLYrk2w1NdzL0uvDdzz6qFmzMPC5Sf+
	/GEzHF9fmAR4PJwx5BRolnkmcAS0qqo55L5AKs6otGl3cQ0mKxZ5FqgV
X-Gm-Gg: AZuq6aLERnDy0bT86T4hWwgKuykHwN1DsrRRC+bUPrv9PDMHT89MurCChHavppkwIlt
	w6I5p6GnMKAkrq8sV2HJMxb2+9lFMqFXyeNYA5rfMOSBncH0tLElxmaoMn0gFAGOINWO7Rrki3M
	slk3acexgqhcKc1xsTc1V/yrYEVZTvaM3tXA1OcYSeQEzTchTWyQujIOKG6vFPwUEWHJun+9s7r
	xxL8hGpiQDL3BnymzTWcmB2aC1xjrzdoeH8emsXnZqbdb/YplUd1TEMpgWdeGUqb6PtKw1jqbXD
	AF+lHDiQI9rSbkU9lGw+TE9lPL128TEYlByVJulqj9vLXhCPn0cCFB7tSt3eF4pybULvtcnH0PH
	V95tuf2nPOWoiotPt0VvocPZKSOAPfSg5Vzpvq2bqTEWQeJoKkJV2tbLejxdvF3QAA4PN5X6eYu
	Fh29QBa7voTnWjLIxRHnC4P4PzqBWEodcU0Ui2r+q1Ov3Ps9IW+1SpKpxZE0kjyv/EV6kiYu2Q
X-Received: by 2002:a17:90b:2cc6:b0:352:e3d1:8d69 with SMTP id 98e67ed59e1d1-353c40b9e8bmr2572049a91.1.1769417958446;
        Mon, 26 Jan 2026 00:59:18 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536dc3e0ecsm8251798a91.10.2026.01.26.00.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 00:59:18 -0800 (PST)
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
Subject: [PATCH 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU binding
Date: Mon, 26 Jan 2026 16:57:25 +0800
Message-ID: <20260126085727.2568958-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126085727.2568958-1-a0987203069@gmail.com>
References: <20260126085727.2568958-1-a0987203069@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259395-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 5643985B0D
X-Rspamd-Action: no action

Add Device Tree binding documentation for the Display Control
Unit (DCU) found in Nuvoton MA35D1 SoCs.

The DCU is a DPI-based display controller supporting RGB output
with optional external bridges or panels.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/display/nuvoton,ma35d1-dcu.yaml  | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml

diff --git a/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml b/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
new file mode 100644
index 000000000000..e3b79b5b7dbd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/nuvoton,ma35d1-dcu.yaml
@@ -0,0 +1,74 @@
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
+  - port
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
+        compatible = "nuvoton,ma35d1-drm";
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


