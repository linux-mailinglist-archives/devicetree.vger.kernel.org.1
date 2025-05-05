Return-Path: <devicetree+bounces-173668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 575CFAA93AC
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:57:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6995D7A543A
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A580324C676;
	Mon,  5 May 2025 12:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="FIJC5iMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C19D20298D
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449818; cv=none; b=l2CufD5lfWEdjwlgXV+Jcn2+664P2Qhkodq1XhreVmahcmpbPKgX2vEvfAtCQlX/q0uDhS5H7euMAZS/h0hmqZ8uiH+l/JhHjTALCZ8fNmwDNPlFKfchJV/pgMKNYFeYIZfl5gdmPKiGQyiWy9o3Mu6l1sYDfEqmp5Qehsx7z90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449818; c=relaxed/simple;
	bh=FiWexGFg8BIBHrmY4WuERV+Gwq585xDO5l34UTSccv8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kYfKOguO2PV0/vKx2f0aSjXGltq2aPmNiH5ZViw10JpraMdvARSkXT5/4Aau2J/pUBv37FkoIjUvePQNpS9BwmRTy0Z0hwvHNl/1ZsqELjQAe1a6KVocqMFSKhVTsY66BF2caN9Vde2PZbCp3pFmC846EDoL/ynEPISAx9NdxPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=FIJC5iMs; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-225477548e1so43861335ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1746449816; x=1747054616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZfE2hNbMHbAZropHJ6kfzfLxfS9KqaoJbdRhtwFnTQ8=;
        b=FIJC5iMsMu+MG+pc/wTMicpKaOR6G5x2gqR9H3NMTGZOETGlFlNf3/4qaJ6B6ekk5s
         5X/VxptHgRnO0Pr2/5+Gia2tYEqDp+Ha+xpIGDt66u0zGv0OOsfQi1VuCa641cO9fDhm
         0NwL6IGNCl6/zoZ+dX88oYY11ksV88WU6iTQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746449816; x=1747054616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfE2hNbMHbAZropHJ6kfzfLxfS9KqaoJbdRhtwFnTQ8=;
        b=r/azteFNGdLf5NtcuMVYnPqS+qsxR0NKSXa9SbCgvvO7uk/aFDsEwzxyXx7P6s6jvw
         m5mRMqeqU3/o/SJGe1TS29IjR662OI32hFmgxk6BarPHuiuvzXPCx7zE5ExUfXOudtus
         9BZgB7kWFTrZEp1xSJFH33Pj67miQAXoo050oreqbxViCnZTQqIJK0F9RDsktgaVsTEx
         bk6GkYFOczI5KiLQwykwTVcXfJTmsVJnRsHyJWpJ+6ktA2crMue+UTJ1E2lxIQO1Nss7
         w/XtX6c6TchtE12likBn2LXhazplPW80GkO74O1f1qCXhKX+WD2YiyJ5VJW7bUBRJnZu
         mv1A==
X-Forwarded-Encrypted: i=1; AJvYcCVdQRPSKtGMJlxaYvXcM0enpba2IhKgiTgrOgZLAP1PRPlv735rlQeOfG2MQ1iWB197mcSaJqYQiZAe@vger.kernel.org
X-Gm-Message-State: AOJu0YyxTAu+KpcSwYVmZB9/acmWxHrecbTL85thShS4ZPTrU/MKdhHE
	ihQ8jLr+WQO79lCBRck2hSMOhnTbxlB3MXZCH7dM1pe2jK9aNSEML8cvV5AFanI=
X-Gm-Gg: ASbGncv7TXoA3uXUkiWlOvoMMBCgmWhdwviXFMy7jcSmWopYCjgR5he1lrCgegFxbp6
	d7uvkzKs86KuJw8/BI3EUhuphGIW7xeJU0eEdHjOFg0e4bdcvLu2XP7cf6rR1m5fr3UyGFxMqmx
	vl9lt4JPwLBHnGZQw4uc4uE42pGRFm2ROeg1+ASmJdDl/fSr7uiQ4IIm2zxqMXjwyzkrKY/MxsC
	yRqu6pLGp6CN/pZrFds6ranqdzmw3wNplYRgvDb3q8kgfLn2+2Db/IWMLw2U484TMxdkE2StxHI
	hTV+RpBSuikQOnwQK+SORPvUJjz+awOhSSiMYzZXyNUEEOz3+x1ctbr2eY+PcwAH0grffbIqF70
	=
X-Google-Smtp-Source: AGHT+IG90imdHFa9iItNR6oHqRLpczzLfNkn2baiZ/BsA5RMwoC4leyNhTFUEmpPnrWHVK6cYpzDvQ==
X-Received: by 2002:a17:902:f543:b0:224:2a6d:55ae with SMTP id d9443c01a7336-22e1eac1872mr131071505ad.48.1746449816284;
        Mon, 05 May 2025 05:56:56 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e1521fc6fsm53559565ad.145.2025.05.05.05.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:56:55 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Subject: [PATCH v2 1/6] dt-bindings: crypto: Document support for SPAcc
Date: Mon,  5 May 2025 18:25:33 +0530
Message-Id: <20250505125538.2991314-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250505125538.2991314-1-pavitrakumarm@vayavyalabs.com>
References: <20250505125538.2991314-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..190c0a3f6d6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto Engine
+
+maintainers:
+  - Ruud Derwig <Ruud.Derwig@synopsys.com>
+
+description: |
+  This binding describes the Synopsys DWC Security Protocol Accelerator (SPAcc),
+  which is a hardware IP designed to accelerate cryptographic operations, such
+  as encryption, decryption, and hashing.
+
+  The SPAcc supports virtualization where a single physical SPAcc can be
+  accessed as multiple virtual SPAcc instances, each with its own register set.
+  These virtual instances can be assigned different priorities for hardware
+  arbitration of crypto operation processing.
+
+  The SPAcc IP has been instantiated in programmable logic (PL) of Xilinx
+  ZynqMP(zcu-104), connected as a memory-mapped peripheral on the system bus,
+  and accessed through a standard interrupt routed to the GIC. This binding
+  describes a standalone instantiation of SPAcc IP, without SoC-specific
+  customization.
+
+properties:
+  compatible:
+    items:
+      - const: snps,dwc-spacc
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
+  snps,vspacc-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Virtual SPAcc instance identifier.
+      The SPAcc hardware supports multiple virtual instances (determined by
+      ELP_SPACC_CONFIG_VSPACC_CNT parameter), and this ID is used to identify
+      which virtual instance this node represents.
+    minimum: 0
+    maximum: 7
+
+  snps,spacc-internal-counter:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Hardware counter that generates an interrupt based on a count value.
+      This counter starts ticking when there is a completed job sitting on
+      the status fifo to be serviced. This makes sure that no jobs are
+      starved of processing.
+    minimum: 0x19000
+    maximum: 0xFFFFF
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    crypto@40000000 {
+        compatible = "snps,dwc-spacc";
+        reg = <0x40000000 0x3FFFF>;
+        interrupt-parent = <&gic>;
+        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clock>;
+        snps,spacc-internal-counter = <0x20000>;
+        snps,vspacc-id = <0>;
+    };
-- 
2.25.1


