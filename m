Return-Path: <devicetree+bounces-106377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE74989E60
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 937151C22834
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C566189918;
	Mon, 30 Sep 2024 09:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="JIe4MGsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D28C188734
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688709; cv=none; b=Dcw/ONbCjf3axBA3xsen/8h9IBFe8fXLtnVw6YsaK8ps5Vti95PsAnZ7xPF3v/PBX8Pu/gB2dIftuqR/wsXslJpsvfiehFcBxFaJEhTNFIa3y5tc5ZqSzia9n0ZzBIlKlHOst1lrwqoUCPaxQ5QPzF28Hs2HRjO+Xt6J5aVV5WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688709; c=relaxed/simple;
	bh=lh7vQP7YZYkRfhbJ+3sJimha87K0zmd4zjG0J7UpcMM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mj9P+iD5tHlYgCo3KKC8/0rSXf46SteFU/pMUEQSkyeI5o1ohZZ9OEzK87i8uUY3PFCIvKIT2tJPz81C3ZnaOUlrNeXYAnY188yBF54N0/et3Ka3PT39fFkIuykc2zLhnDOJMOF21SJS6Xe/yFjO4WXSM64NsFsUPe4YHV3cYrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=JIe4MGsq; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71c5df16b10so2057914b3a.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1727688708; x=1728293508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6/r2qbqsI1AlqoPBioCj0dRyfiMeEnom7E5xcoB3Rk=;
        b=JIe4MGsq8PdPlwGbTRpYj1nJZy068O8mmj290w79MyhhWDEmvCk8mqepTfgTyV+DhA
         G5s7wBZoLyUWxGvy0YK1NVec/XizsNVYh5Mm/HKYvi1tO92ecvQfhbljE/Kp8e9ZnVPz
         bj5pTJadz5kNpphxnIjQVZUVdnO2J4XaP5DCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688708; x=1728293508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6/r2qbqsI1AlqoPBioCj0dRyfiMeEnom7E5xcoB3Rk=;
        b=sq2w59rwHRF+8gVdFKZPX65XN0mcapOTInbLG1XWDMNWjIHteXMsgJBQSQBhPN0Tvc
         EM2SFNTMrwj8vmJIDkx/cpotuKvMu516Zy8IPjmGQduzo3WP7E634mWESEJL9UwtHLQh
         5ayBLAkw+b+sJas6HzoCgpLAD+bxh/1/YmFsBTZ4nGWCOJd29YAmwl+Nz9xQ+6eRoD8X
         p83MDi27/yyLXrCjYJ1M+FGZjy8DWGc2SBR2DMOOssxbKBM0PEm+t4hqaIVkiazohP9Z
         SD07hqCyUdSlDuFtY4Z+dUtHfDM+Sk3MtVWLj2EHAfRam873p+Em79rqH6H/9RoYOzNa
         aPgA==
X-Gm-Message-State: AOJu0Yx46VzSQYnvp6iSKv+IbePEXjUoe6/Z8kb89lEw3bYGWujODwEp
	MO+h8ERGmkXl6EqDTmrXAn1k9lKAIIZ4QOJ5mLPLqKMkcB/7RxYHkBc3T6Zq1lCFH2cCqdrlf1u
	M
X-Google-Smtp-Source: AGHT+IGwc2v/OEjF63gg/Ep4W0s6lvCOPX6lcDSVBT8lh4S89A9boXgJmBADW5231WmtiE5ztwDsNw==
X-Received: by 2002:a05:6a00:9a1:b0:70d:2a88:a483 with SMTP id d2e1a72fcca58-71b25daa507mr19532255b3a.0.1727688707510;
        Mon, 30 Sep 2024 02:31:47 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26499743sm6037482b3a.18.2024.09.30.02.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 02:31:47 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v9 7/7] dt-bindings: crypto: Document support for SPAcc
Date: Mon, 30 Sep 2024 15:00:54 +0530
Message-Id: <20240930093054.215809-8-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
References: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
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
Co-developed-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..6b94d0aa7280
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,71 @@
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
+    spacc@40000000 {
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


