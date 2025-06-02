Return-Path: <devicetree+bounces-182108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3575BACA8EC
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E432B164A1C
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08DF17B506;
	Mon,  2 Jun 2025 05:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="o8jmx6JK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2694517BA3
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748842501; cv=none; b=bRmVX+EiFLmZmfu9H66KZ5HZhI9cm2nUvoLxVYTWshipRsK9fi2ouZ1Lgul6xEQ+rwIBz28EG9Pm6RCok11lyEgNuE1oq6CtypuWZSRmzahJy326sx6DVSxOdfk4hVpvB+f8R/tZMsfX6x4GQ8gPju2cxuO/vra/GSWo52NXpXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748842501; c=relaxed/simple;
	bh=CitsjnGMT2tpHAOqWQTJepEfFEsmNNIOj2PFTQGHKmU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Trv4ETowOMlDy1+I44fMYvxKRoXzL/1/bBpxumzIVWJ3JXt51x2B5hhbj3F2q8ND8dOpUknIcbkAlpi/H2d5UXewfIcLNEY+GGbpNghjpNtmcQ1xvFSOHt6lNViQSGuN12A5MCSttuIDxtPrDnyNSoyFHdGoQPk9nJL8DWLrxYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=o8jmx6JK; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-311d5fdf1f0so3642162a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1748842499; x=1749447299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vcQsINFfHCo0hVwMqVIxbmVwPSe7ekqyAfXyvWsPPeE=;
        b=o8jmx6JKtsAS8Qu915LTTLicXjVEQmAU3OES1phJmgBpXVDO2/cRClaHFWFhqaMfAx
         +7zb6Vf5aAHCo6L2xLVd5oNXdEpGKp489E8SvGGYcYAaVg83OuICTrqxUBeeX1ei3zK3
         EmrC4WyE+YCw39htanp5768dQTnvZ6cg7SKBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748842499; x=1749447299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vcQsINFfHCo0hVwMqVIxbmVwPSe7ekqyAfXyvWsPPeE=;
        b=NywfgtFcSNkwMNiROZNHD+23nzdVBLZjp3ReGJR6kuOpfVANQwP+TP1XaRLJ9N5TF3
         7JPCjh71+LxUrPqJr+PuJBgOWH4RsJOVSohkDu0hfTLH5NfAOHsO7LysxJmYbuUNwqMG
         VDsWRFbKX/kSbW13s+SIJVK6xpuasVl2Ts8Jnb3ZthasQ4k7AHotTVNHokmJp1vG9t0t
         K8Jl2w/FVtXN48vWkthY9eDLss6WXMBKViRvHqDCF37pAG22BwWnr7gLZ6R1PJVlS7yl
         qDK9IeyC22IAHmE2Hq3rUlMh87F5/gG/BYfS6GwMWSc4H2/Fv/4q8Bmk6kRDhxB4We0e
         Qn0w==
X-Forwarded-Encrypted: i=1; AJvYcCWRGLQWDaXvdTDS4ewoX/7SY4WI4/ahOkJVm+Zz4r9OnPWl988kOxpb+ddFFSP3L1h3Nk5fOgfeohZJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxIohQiTnbH6tOP0KKCxNnJ6nNMhfRMvIzu6NPRQLxYgYVBFu6H
	sqGHhCbS/AJiiI5CsfygCJinq7Ujo1soQRnhNmFf3HhUkRzMmZ+HfIqP4+TuSKfDluM=
X-Gm-Gg: ASbGncukVt8NqeY/8vOH2fq93Yok7UKl3Ree0KRMyjYM+cuMnc3Bp06mh+180bjJ9CO
	L3RTMEAt0RKDAxs/mD9IGz7GS7jQUbV8RmANfdg4+C15DUkamwNxJKr0xIwtWep8k3Ohe+k8E8B
	cV/oB1WlJbMK2SzMq/jRYdzJ4k5ZOwtzqg2WfPs5xhxZYb9naJO0VXFPuW6pNcXDxxYD63gasNb
	HHQQbfYnu/PeaTFeLGovtJuxutkhaMjW4C71ajdM5PGYMx/B38beq8yZf+NZeFiy4oqqI9tfh6S
	NcSR/gOM1iH8alVI26tBtpCw3/TjeqVJtHnDj8owp4/mS/mNs/lk3AaWQEuKpZLYwqclbzAOuZ8
	u44El+JWQQB0tIA==
X-Google-Smtp-Source: AGHT+IHlUCRblKWGlQN7n7wByy1NApB39s/TRoiv/q2p047yt9Q2knvFW5nqj8ETq2xDhak0tIJA6w==
X-Received: by 2002:a17:90a:d450:b0:311:b0d3:855 with SMTP id 98e67ed59e1d1-3125034c7fbmr17082259a91.2.1748842499355;
        Sun, 01 Jun 2025 22:34:59 -0700 (PDT)
Received: from localhost.localdomain ([117.251.222.160])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e30cbe6sm4836986a91.39.2025.06.01.22.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 22:34:59 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Subject: [PATCH v3 1/6] dt-bindings: crypto: Document support for SPAcc
Date: Mon,  2 Jun 2025 11:02:26 +0530
Message-Id: <20250602053231.403143-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
References: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..2780b3db2182
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,77 @@
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
+  These virtual instances can be assigned different priorities.
+
+  In this configuration, the SPAcc IP is instantiated within the Synopsys
+  NSIMOSCI virtual SoC platform, a SystemC simulation environment used for
+  software development and testing. The device is accessed as a memory-mapped
+  peripheral and generates interrupts to the ARC interrupt controller.
+
+properties:
+  compatible:
+    items:
+      - const: snps,nsimosci-hs-spacc
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
+
+    crypto@40000000 {
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3FFFF>;
+        interrupts = <28>;
+        clocks = <&clock>;
+        snps,spacc-internal-counter = <0x20000>;
+        snps,vspacc-id = <0>;
+    };
-- 
2.25.1


