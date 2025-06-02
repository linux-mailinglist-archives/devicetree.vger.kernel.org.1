Return-Path: <devicetree+bounces-182351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A35ACBD42
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 00:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3EFE1893F1D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 22:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E2C253924;
	Mon,  2 Jun 2025 22:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="YKidf0+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8E024DD01
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 22:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748902998; cv=none; b=gDaZ6rppVZX49EX/XRI02ZX8HFFn6p6QNzogsjcf6YgGUDDhgfeIr1hp9uoOz70H9VC3dWotByGj6GZL5MxnMqyXM9WEN34gsbmCDYk3Ew7OtM4AS9qyf8nN7313vDdsBKzObTAIQxH0mii4Uz2cWWUG9zK0CM3A0HOzkpBxhXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748902998; c=relaxed/simple;
	bh=jI/XOJiu/uHjkltOB2DAaLW9Xpssw2d53/3GTGUFH4A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gea+M7SjZVsHBP7OWl3wcuU/5UOxFopWPXd3W3JshrVaykMHBpYaSWZYjwcp4Kok/yfxGXAcJqxamAU4CzFP/IoMLlEscsC0W5HGVSFiJQKEYx1wtemPpm9McU3NFgXiW0kQpWxFPvoivSpJ0SfxaEw1SxRNOrzL8LaT9odMFdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=YKidf0+W; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-30e542e4187so3453088a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 15:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748902996; x=1749507796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OU1+bLRoAzAUSHnYj7gViCy/t2O1L9vV81+QzmHCHI=;
        b=YKidf0+WGHnXAnhDo1nS08RXDvGsuZTRnKvw+3uVgg/nSUGKuflv4QOu+piKjGoP4R
         QL2gN5XYJgUIZt1gfZlosnJ5CGV6mtvy+A8UzYYVP8DkMPUwy+IBvmFWI8voHueUAHa1
         iPDcS504FzUDPwkHyOat8lIeZh+1NV1e4GQos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748902996; x=1749507796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3OU1+bLRoAzAUSHnYj7gViCy/t2O1L9vV81+QzmHCHI=;
        b=sBl5YTYS82Ri5lrOiR0en5M3sf3BnCbZqIu4AQ/RSbLW/a9gH/E8Wo34O3Q4ZiK+3Y
         7KHs47LJkCad8TkMCC8zur8H43MFVCj8XkmO7kJREkfExw5hH3KdqIjQuerysl/RT22N
         Y7Nfr5T094wswhrYCNNB9sD/gFK376wNXuD1Yj6Rp/9gWOY36NVfDnWlRsTpE62yUGL7
         dfmGLbELis7aPmjsNnxvxiIXMJ6EJ0DoJGpjM1zTENkSmWiQfszLu3QtrXoBlPU7Zm8o
         JNgobx9v947jCuy7VB/xeCET+tOjhHGE2ctgYVfg0Sh5SuDY3ukYkCdauxQbmFLLzQQF
         BRcA==
X-Gm-Message-State: AOJu0Yw4QzA58WANE8xML6g8nHhEW/2RWKn5r2P7c26O3NHuhF+L7RX1
	z27dgU77FNuG/h27vG3oZvxv58VXjstcO2Dep7J1TiuzEVYAiOfJdGvsBnNi/fePdRTyzuqVo8T
	jl2kICM9MiDBeW9dtqiF7b+OWeozpY/UdA4awXbasJAP1zUgCI7nw1s3zTr/xZE/DIGisbKpt4F
	H8s51htZcDyQ1mZnwHwf1u4tX+ew6ygoxESDYBrsXkJZYqsVAS
X-Gm-Gg: ASbGncuo4eeJloVb4tBb4fVJXnnbF3t7STDUvCoSxE1qIYnajcMHXYiAnK+gsBA2nvv
	BYTgeLnWni1ZQrfTBMF81rh0NHSgqvBDyVRAvXq4TrxDfO+t04XkfheRKZDHpbdfRQCnqUE5oYG
	Ls5m6kT9w0WQcY1vTKySRvBL0qEIrIYnSAWp0y7/i5ggYM7poj/9kUuJEf9SrR1DS10iNzGwlvZ
	fE94tc+i+pGSwux0LYwHvFE0CUznjCim01EnDmHwUAkxqlURRGc/cT2hdw3+wBJkWsq+TO34Yn5
	cHGR+G7BRImmk0bspVW/9iPqKwf2dfj79ceBaub3KyjDs59xbX6nrhqdbSTAh28BgYDd2lVbsMd
	fEFXW+NNpVlr8WuWmgcmpJLD5TY3SPk2oOimV94o=
X-Google-Smtp-Source: AGHT+IHBkZwTf5uAPPNKZ1EIkHfBWAY2y4/L/Xz3h5daCANBFmPwcI+l5/kEZPUaXLfYSUrh1djFyw==
X-Received: by 2002:a17:90a:e7cc:b0:311:a314:c2e0 with SMTP id 98e67ed59e1d1-31241532eabmr21919689a91.20.1748902995804;
        Mon, 02 Jun 2025 15:23:15 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506d19bfesm75565195ad.253.2025.06.02.15.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 15:23:15 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	Justin Chen <justin.chen@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: mailbox: Add support for bcm74110
Date: Mon,  2 Jun 2025 15:23:10 -0700
Message-Id: <20250602222311.2940850-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250602222311.2940850-1-justin.chen@broadcom.com>
References: <20250602222311.2940850-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree YAML binding for brcmstb bcm74110 mailbox used
for communicating with a co-processor.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v5
	No changes

v4
	Dropped minItems from interrupts

v3
	Added list for interrupts.
	Corrected dts example. Fixed ordering and naming.

v2
        Renamed brcm,brcm_{tx|rx} to brcm,{tx|rx}.
        Removed brcm,shmem node. Not necessary to keep in dt.
        Fixed example and added scmi node.

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
new file mode 100644
index 000000000000..750cc96edb46
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/brcm,bcm74110-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM74110 Mailbox
+
+maintainers:
+  - Justin Chen <justin.chen@broadcom.com>
+  - Florian Fainelli <florian.fainelli@broadcom.com>
+
+description: Broadcom mailbox hardware first introduced with 74110
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm74110-mbox
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: RX doorbell and watermark interrupts
+      - description: TX doorbell and watermark interrupts
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell is channel type and second cell is shared memory slot
+
+  brcm,rx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: RX Mailbox number
+
+  brcm,tx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: TX Mailbox number
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+  - brcm,rx
+  - brcm,tx
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mailbox@a552000 {
+        compatible = "brcm,bcm74110-mbox";
+        reg = <0xa552000 0x1104>;
+        interrupts = <GIC_SPI 0x67 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 0x66 IRQ_TYPE_LEVEL_HIGH>;
+        #mbox-cells = <0x2>;
+        brcm,rx = <0x7>;
+        brcm,tx = <0x6>;
+    };
-- 
2.34.1


