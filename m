Return-Path: <devicetree+bounces-100485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C5096DD87
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D3C61F242D0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3841A19FA87;
	Thu,  5 Sep 2024 15:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="csFAmD5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB87C19FA64
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725548967; cv=none; b=bdGZmYjczyG7JAHhRKksy3QpRQpttzw3EDvctzQst62X2XC/9W8hoYRsbeOQbROKqLOQUlmJPdYCkNanGyIjnMZpMKNVQN+tL3Vlkhl4bGp38F0N5yXHDJIHHLT5AAPVWtAfU2NiJauVfXRRKP7a6pDlmNzqHmyOY55nrcUtMHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725548967; c=relaxed/simple;
	bh=P9RokBVbyl/jxIL39jzH27oNSYIsI3t6ZGlI2++0Mzw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r66l8qniOr90VlFczuWHc56VV/Nma927X5fFGjPMEW2fvo848tmSAZdnefND7WSywJ88jLGZGbHaHblFBnV1WHeO9e/OS6MkJlX/bU/aCbedOimyohg7AqAKK4x+np3n31YKRzlPNPYkwjs0YeW11AS5Mx7rkwswU8kIkZWRSKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=csFAmD5+; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20551e2f1f8so9301105ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1725548965; x=1726153765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WeKZzC3h8KzAK+YZsDD+0U9LzB2BKdgLrWi7Aw3zIhI=;
        b=csFAmD5+PjSd6hEss/J37zJwBQiLLF1piIM1M8nU8jSUT7tZ2FMvNxj2YDTkyWiFD9
         jUoVCUf2IHQDaWb3qHkJnmifdcjen1n2D1ynbI5hcGjq45B+QZJ4ChZiem2QlTxq8XU0
         Vcj02QqBACiFIwAcEGbjbu9qeUMkN2S6POYOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725548965; x=1726153765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WeKZzC3h8KzAK+YZsDD+0U9LzB2BKdgLrWi7Aw3zIhI=;
        b=TFSfAss27nW8HMQLrdie75mCZAZNDfQ/QIRu0+fwk7Z4WJIb2xom4Q9epN5JI96Zo3
         EhOxSckmfyKotYzXucgkIWzSTQU/AJhX1Luefx/XbBh+Caob+5EahdmDdmqwOrhKvQaP
         KjXlCQDMz8nsOnWJ/HgNeO+TfRdJ+gAuPaRrV2VHxohALqF85zXnfmkQpzHuAFe27D9g
         0SAKyytTPEOfGmhmVnei4K1mBT+1qmVs518iYBV/Rkm5C75+ua90rnkWNeid6kb5zt7p
         NuWqwXiMLtZrN7VcC8YKlq192oGikFIwT30JVoaG8sOoxHR7+oV3yRO/HIZedwYaNvEq
         srCA==
X-Gm-Message-State: AOJu0YxebEJGb5FSi2rTm4ZIF+OnQvhhAAdrtZ9cFxbdTiLF3IVkYE4V
	wMtHfYbiz4ambyJ/9Z19kp2V/z5NNqDFB5uHO8a7nlbVphPsdFXgIJSCYkoe4O690nNOOGkUNuk
	k
X-Google-Smtp-Source: AGHT+IFlXOW31SFSYAlBQYsmF3FsrTGoFB/cAT+OIPXRNyueFf7y0Siho6jxscGlNXwJVpnUXckjLw==
X-Received: by 2002:a17:902:ced2:b0:1fd:791d:1437 with SMTP id d9443c01a7336-2058417b1d9mr194337195ad.6.1725548964908;
        Thu, 05 Sep 2024 08:09:24 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea556f8sm29779855ad.198.2024.09.05.08.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:09:24 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v1 1/1] dt-bindings: crypto: Document support for SPAcc
Date: Thu,  5 Sep 2024 20:39:10 +0530
Message-Id: <20240905150910.239832-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240905150910.239832-1-pavitrakumarm@vayavyalabs.com>
References: <20240905150910.239832-1-pavitrakumarm@vayavyalabs.com>
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

Signed-off-by: Bhoomika K <bhoomikak@vayavyalabs.com>
Signed-off-by: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..a58d1b171416
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,79 @@
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
+    contains:
+      enum:
+        - snps,dwc-spacc
+        - snps,dwc-spacc-6.0
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
+  clock-names:
+    maxItems: 1
+
+  little-endian: true
+
+  vspacc-priority:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Set priority mode on the Virtual SPAcc. This is Virtual SPAcc priority
+      weight. Its used in priority arbitration of the Virtual SPAccs.
+    minimum: 0
+    maximum: 15
+    default: 0
+
+  vspacc-index:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Virtual spacc index for validation and driver functioning.
+    minimum: 0
+    maximum: 7
+
+  spacc-wdtimer:
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
+    spacc@40000000 {
+        compatible = "snps,dwc-spacc";
+        reg = <0x40000000 0x3FFFF>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 89 4>;
+        clocks = <&clock>;
+        clock-names = "ref_clk";
+        vspacc-priority = <4>;
+        spacc-wdtimer = <0x20000>;
+        vspacc-index = <0>;
+        little-endian;
+    };
-- 
2.25.1


