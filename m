Return-Path: <devicetree+bounces-169862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E76D3A986FB
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 12:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24EA716BBFB
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563D77DA6D;
	Wed, 23 Apr 2025 10:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="k7SXn/f4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8503234
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 10:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745403342; cv=none; b=ALoLl1FccFRZjKxOr6T0pacydHQ4y47YTFKsvMyYRgZQ+0yOe/ubvsEzV+5Sxa7YfwuwmBmi7UzCn/zFSvj0yNuvFS5BlBipbe660smEpsFXPbuzSVKGVfFzDAYwyuUaI7sdVU4GIZTchtfdNPgDimY5EsoCquXeCDCDlRn5Eig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745403342; c=relaxed/simple;
	bh=hNHyK7sYRATEOnXBaEBugC1xa6QatnUi2VC7rPSw3cQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i4mptMJ9n5PeEhBhjC5u+AwDpsPHDEP78zL8FYZTQ0633bAZCuyaifisimkW2SKzLMngqkQHFYmDilCNvai46+f+TiteSgKbwqlliTjvApIQF3TfSgiX2sznR55X5nmv0CwjLEZhVDZKyw6oRJv1xml5RXxhgt/TR2gJiV2tZgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=k7SXn/f4; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3015001f862so4831488a91.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 03:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1745403340; x=1746008140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2KpsHxYxqq8V+J4o9JO9x+VWMDjYxeceKbmpTVUGyvM=;
        b=k7SXn/f4mT2Zw8sIERwovYm3t5bTuuAtEH/mef8GGv0ysSkKYsHpjy5biuSOe4kXon
         CkSsHmTImYv+YNJBcktXHTCNpk+0BSizVxCISVJsTRDH0+fB/YrFtRnlk3Qo8+1bz7H3
         tr7yu53qhGXpWzc0plopyNDNND/gpqQrjq37M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745403340; x=1746008140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2KpsHxYxqq8V+J4o9JO9x+VWMDjYxeceKbmpTVUGyvM=;
        b=Y5FFAr5oBPDM5yWtdeROG1wravvaa+2Lask27kfGxLPaggNBM4Uevi7uP0J7syh6s2
         Ub2fhpze3N3jIeJ7BirJbpDZUIdazIFDtZQLEtCVbN1NdPHHQ7HW8zRkhQY28gREQQv/
         dLGM8jrqDCnCEMFZG3MXiRThRrpvmHKBIZ6QuPC8KyOrenxGzRawcJCK7OwOke7YL5UA
         nQR2tonzs7WGDb8SnezEs5IAutPUNtZ+uuZDu6eRUlpjU5j1J/O+CmrWV7VBrAZq0fmU
         NxCHzJPqpt6nSVtvhw8OdfiwlY4U7ktEMdYozLWvS44vCENknP7Qn89gwBoU62eh0TSl
         PFNg==
X-Forwarded-Encrypted: i=1; AJvYcCUJheGTOE9OQPCZw+2suvXspxqvZclMGRsTAkxfDHnqUpHzUqs5nR24P+77T9cu6jmKhi0BkxFACjqu@vger.kernel.org
X-Gm-Message-State: AOJu0YxPT4S5bifbKZYtNqz8kPcZXhEkJXFPq5LYT7DkH4ACIKeUW3ZO
	AEeRB6ES5Mou0foIKBOho8RW83YkXrYqWAX55b8SpQFWbQ8yJq46PMVKK/HxGwM=
X-Gm-Gg: ASbGncseGBna2IKEQ5IcJCE/FvOmaMqYrtkU3t2oULfYzlkLA5UsQMKL+9fInvHW0u8
	Nqj7StNuZapS51rN9YZVXSFKReqnzlExgyP/P/XKGC1xAbeBSYCNJnexRv1gH7Mv13RNGc7gT3X
	ZCpmbzfKS6dYR3mxdT7dC9gYXP8/PItcQvQ5Jgh0GXadjgRaZVSeTLInhfUsr4rpD1yPbHSx1M7
	iwVtXLOTR5/rlNZmxTF2LTw3uaphlLdkYa5155iBx3dsdtILSgRtsW8WbnLDblBxNhAJTMtVi6R
	AheqTQ9EEpkF1Wn1Ps+UFc78ENNK3MNXwhRBxsYbyPDL07GtdCm7gPjW/JenGLNtcbMEzTQRkE0
	=
X-Google-Smtp-Source: AGHT+IFMx1JMcFxSfIIPogkURy6hNx+xlDDyrcEDlLQEUMe+K1R2Hq4S/JBlc/CUNzzyM2X9d8xGQQ==
X-Received: by 2002:a17:90b:5445:b0:2ee:f076:20fb with SMTP id 98e67ed59e1d1-3087bb6a70amr30575310a91.17.1745403340014;
        Wed, 23 Apr 2025 03:15:40 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309df9ef918sm1205765a91.7.2025.04.23.03.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 03:15:39 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Subject: [PATCH v1 1/6] dt-bindings: crypto: Document support for SPAcc
Date: Wed, 23 Apr 2025 15:45:13 +0530
Message-Id: <20250423101518.1360552-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250423101518.1360552-1-pavitrakumarm@vayavyalabs.com>
References: <20250423101518.1360552-1-pavitrakumarm@vayavyalabs.com>
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
 .../bindings/crypto/snps,dwc-spacc.yaml       | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..ffd4af5593a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,70 @@
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
+description:
+  DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto Engine is
+  a crypto IP designed by Synopsys, that can accelerate cryptographic
+  operations.
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
+  snps,vspacc-priority:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Set priority mode on the Virtual SPAcc. This is Virtual SPAcc priority
+      weight. Its used in priority arbitration of the Virtual SPAccs.
+    minimum: 0
+    maximum: 15
+    default: 0
+
+  snps,vspacc-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Virtual spacc index for validation and driver functioning.
+    minimum: 0
+    maximum: 7
+
+  snps,spacc-wdtimer:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Watchdog timer count to replace the default value in driver.
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
+    crypto@40000000 {
+        compatible = "snps,dwc-spacc";
+        reg = <0x40000000 0x3FFFF>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 89 4>;
+        clocks = <&clock>;
+        snps,vspacc-priority = <4>;
+        snps,spacc-wdtimer = <0x20000>;
+        snps,vspacc-id = <0>;
+    };
-- 
2.25.1


