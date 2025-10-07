Return-Path: <devicetree+bounces-224031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F582BC060B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 08:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE56A4F32C8
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 06:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7172367AE;
	Tue,  7 Oct 2025 06:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="SyLl3MJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB284235BEE
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 06:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759819847; cv=none; b=dYkKS/EqSioLxVXEJZgPT+7sqv8U0pllznKPaHjZk3RzOsS1uIy1oNZWJYQzk55v3lXkb5kNVo04elNA4l12S0R3+AfGmS55Eo8VFVyjU3a9AOvTzaqnMX/xUmjZRQONCZKM9DbzJEAQtXc5wKlu4QkQ7B4rfRqacFZUvwMaNS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759819847; c=relaxed/simple;
	bh=VqneJzSj6ZAncie4Pm4kr22vBIPcmTH6MVSrCpJuRgA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=quN6DtPAeSsq6rFr0CG5d2amWwocWptKTGBm1CC2sKTAqOItTXgyBfWYrhYQlc6uVEqOSggD2ubtVE0sdCpzBChyhdL+uo0pbMa1E5Liwn4pRNqnAz6FvLs1GjPLrGoLt9hlGOEo+Dj7ABEk/y/kcVryKoqILWsm2wBeSWATVkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=SyLl3MJw; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-27d3540a43fso61382205ad.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 23:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1759819845; x=1760424645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=SyLl3MJw+2h4+xzwCacvKjyBJaPCgqOYk+vXfeSgM/0RIa4+fhE/kzw6Rpk041oc0f
         yyDPu9YMQ1YVO7b44g93/FEY2QHwF2qS7k/cplbAPWnfAmJz9NVbY3MNrPVdIIv0yjFU
         b8Gg/8CK/iZmFf/qOMcMbUcwAzALsvcPvCQro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759819845; x=1760424645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=g2iBS1HKSILtYGk2+CBgWz/5oyB9m+8teccAUC01mWQuLVveWgre9JZk6lFZaXlv7S
         FSz8JubBx7a4q89loW7BlyvBNtZvlW+U6xo9ocr+G8knLtvusNyXhkR+yqFLrijTUEs2
         PpUQzGIhKT9DhjkgJRcWyf5eaRl2CZuxlsoXSaJP15F3zzNJV/i7mNPz4B16IOGZW4ni
         RGUkcz8o4SWchFZXRYlGgRU+vKW+ccV8m/LW+yAFV3j6W0AaXS+UOoOsXyQGIDIEc3zV
         K7iJpp39kq15lVvtGqWrP6xwb/Hag4xE+GvuHEUAyTOiUGRYZLdoSLT2deUhxbtRVB/E
         9dHA==
X-Forwarded-Encrypted: i=1; AJvYcCW46P9atS79g67tzVRJnVwlJR5Ym7qpjrIcGdni0Sv7VlMfrfwEFiZY8pItgcGRc4rDwOP1y72gKjW4@vger.kernel.org
X-Gm-Message-State: AOJu0YwkAR3LS7onyQ/aE2+4BWgQx/gRHK/oYg+Uty2EPDp6tB6Pa6Ua
	8Hvj5P+Yiw0oHTjgvD+AIqgtxf78Qw6Yu8Nnt34lyP4gHzzQeQtQN2A4b5JsPZXdbls=
X-Gm-Gg: ASbGnctzJsldzkXjUb6QmTk4+HK+Ny4/tTSAozFGX57SFupuzT/Dwpx6MsRBCTsZXf3
	PLaZv1+pSIcMrjXI7EBTJDc2051lSNNue/rjTtkHXTElL7gCNxzrZek1ErzTkKUEsGwR7FNvKqf
	bnuBaLkly+I0IaOlYo5v6oJ7UYWELJYlmyFOdgp66/wfWjvgZldeUTTAvJdKgHEA3KcdUdSQv/J
	1OLXyjIXyGJXqD+89hlgD7FV+Ti35P/H1e2SUMbDZybt8JBFLhznw0lybIbkle6zqd3KBln7Ulr
	zAnqguTksxcTKGiEb94xbYgnUrtB9wS4RC23roWqg74rfCB0Ihq7pIrSdU+9/IfbKq+0DdKKkbB
	YKk3fpqeCJutZ+x0YCegOLqw2lASZJs2pzBNNOTHq4ZVBI8q9Jjyk6QlAV3IZK/LiOZ6ymA==
X-Google-Smtp-Source: AGHT+IGf7z32DL2yDGcqvsmiE5xqAs7tlYdtwGe0SR5ZFDEoNImxi7NJNP6k9amo0/HQU06aHxLepw==
X-Received: by 2002:a17:902:e74b:b0:273:240a:9b6f with SMTP id d9443c01a7336-28e9a61a8damr203146785ad.39.1759819845150;
        Mon, 06 Oct 2025 23:50:45 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d111905sm153287745ad.24.2025.10.06.23.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 23:50:44 -0700 (PDT)
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
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Tue,  7 Oct 2025 12:20:17 +0530
Message-Id: <20251007065020.495008-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251007065020.495008-1-pavitrakumarm@vayavyalabs.com>
References: <20251007065020.495008-1-pavitrakumarm@vayavyalabs.com>
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
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..857e5c6d97fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,50 @@
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
+  The Synopsys DWC Security Protocol Accelerator (SPAcc), which is a
+  semiconductor IP designed to accelerate cryptographic operations,
+  such as encryption, decryption, and hashing.
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
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3ffff>;
+        interrupts = <28>;
+        clocks = <&clock>;
+    };
-- 
2.25.1


