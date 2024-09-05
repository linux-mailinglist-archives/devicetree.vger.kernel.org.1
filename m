Return-Path: <devicetree+bounces-100372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD3D96D70C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 13:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9844F1F230A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C22199397;
	Thu,  5 Sep 2024 11:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="PJHlilPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7593C1993B2
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725535599; cv=none; b=XPx6skxkmkoFIb8sDCmdgu0iSEz9EdkE3rh5Q0hsIIW/KbhCmzdbg5bYBzSPlQ5zSx93TlzTmKooKxXY2UpVsTGURaLC5AGvKhCkZ0ZVro6Q5nu5BUA8ByzZSymceX3lsdnQYcuY99hj0I06vJ9KzMLsMgJEUyySRoznLksQf2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725535599; c=relaxed/simple;
	bh=uPKZajMj0+4NDMXOog9v35p92NDX8Zmoqti6dst4Gcw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n2mNoxMCH5rgxKVGhpD3iPVdFESXMv2x6/2Se0KjhObuqSGAQeR5VAqnpeLDpcPzZ7UT9zyGnRfzKmPHRJspXOOUCIom1W/y2xbjzSzaOSqVjBBvyl/9LA52MuGr0hCp3ill4uz5OcnqjlW0S14ES0l9LhC2NG039H10X3LdSpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=PJHlilPF; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2068acc8a4fso6934915ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 04:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1725535597; x=1726140397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6E6kzqN7sw0Bm/x9wPsmhlMXiVbetaL6tQQYNOBhsTk=;
        b=PJHlilPFtUFptyZYWqb1zp+47wMREy3qr8tVM31O1fUzzZnjoSKePLk1asTS0JXmm8
         Arux5+Yzd7duw6x7eyUgdlsH71DdSCqgLqsJpUOHPBsFSofTDTDa66ToP/cBWIZCitfU
         lmt9lER5n/cBeqc3t5mOW69SEtmuuNcmdXESI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725535597; x=1726140397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6E6kzqN7sw0Bm/x9wPsmhlMXiVbetaL6tQQYNOBhsTk=;
        b=umXbkNW8/bENnQeuOXJFgDBDaRc+5fXeISpufDhotfJPDffh1a4BRbFaho4mYyyMC1
         s+G/6EvMmkFi5xddz1h+2iOwIaWJIwqoGvuAQ+sVqpco1nLJy8jsEamHpNMIyjIPFi1k
         IBOBXw+LZVFQPKbP2S8eo5r+cT4/sUn9UwV+/QUBoDqHy1Mjg8PzOC/DBEUC8aJbDBGK
         JBTCiTL/m+Nv8NOlbENf3Qe27euJ5wfhIxkLy8NTvLT4EdbnOjju86e7oz114r5KLWkq
         VuWWLv+0xT+iPZAMbscv2dj7/NGC5vHoQF3zclffaoKurJi8h0WibdZTqQTBBZnKiVxB
         lF3w==
X-Gm-Message-State: AOJu0YwRhhOUE3P/mBOfTyBOHpP1lEueCfIbQFXjrMm++OFiqH2WbBS5
	CCP3LH3sPEUWp/gPRO6pr88x1nq0K8vg2Rh4MgM4hwb7qqEK/dF6YAXVuNdM8feG8HqFF+5myq5
	z
X-Google-Smtp-Source: AGHT+IGDiAam5e5vgT9ZHTVv+6stZBUzL5d+scDc2Ygdburm03QlPWrwuyEUEv/WOqY+DXJe9IiFRA==
X-Received: by 2002:a17:903:2285:b0:205:4e15:54c8 with SMTP id d9443c01a7336-2054e15577fmr186548705ad.61.1725535597501;
        Thu, 05 Sep 2024 04:26:37 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae9138c0sm27445395ad.9.2024.09.05.04.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 04:26:37 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH 1/1] dt-bindings: crypto: Document support for SPAcc
Date: Thu,  5 Sep 2024 16:56:22 +0530
Message-Id: <20240905112622.237681-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240905112622.237681-1-pavitrakumarm@vayavyalabs.com>
References: <20240905112622.237681-1-pavitrakumarm@vayavyalabs.com>
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
index 000000000000..dc5b38cd5e1e
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
+        spacc-wdtimer = <10000>;
+        vspacc-index = <0>;
+        little-endian;
+    };
-- 
2.25.1


