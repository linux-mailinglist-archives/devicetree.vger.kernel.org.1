Return-Path: <devicetree+bounces-221927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28DBA4256
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:24:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73F491C0596D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736EF2FE578;
	Fri, 26 Sep 2025 14:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="M2kxJ1LO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58392FDC5D
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896377; cv=none; b=ED0OtTjkZOfyyXedNbMlKgMGznCVQ7bfayUsgP+zOKV3Hg8SF1lPgGyblI1xz3V1EJy54qrTjNH8v3szNGurDbl+9l9QGDJobXsWMO/fk/QSTNJLm0JOvaSW3Ge8dC0qbBExxUjdnGdga+cq/NUG4Mws+6lT7T4aQDekveJydyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896377; c=relaxed/simple;
	bh=VqneJzSj6ZAncie4Pm4kr22vBIPcmTH6MVSrCpJuRgA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EhdGvuLkXJ+sS/uIfpANjzP2PrVNc+0LJiYcOlto9UJ0tT1Rj0i67hpKkxNrKQf+RBPRgL/f0yiAAy3fmDSGlvPbJRcRoCbRT4E4+9hyPq3CH/H9S9/HfnYJXwuG9fEp++M/goI1oFxo4G/SyPirOaegIzR+sIjGBS/3JO4YZ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=M2kxJ1LO; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-77dedf198d4so2868995b3a.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1758896375; x=1759501175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=M2kxJ1LOk8HMnTniyauDRUfDI4n9YtV7JCc8QTKvKN4C2q4vb349fOW/amhvDrXBg1
         scX+nj474/SH6mMk42WU3VHeIx40ako52jPmnDMfmwp1foZShwIuiHnbMTlMIpYHj2DH
         5yQUAhokwwPFVZv1657MynDXP3szQphsefwP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758896375; x=1759501175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=bmmE6t9yEAzQ/trtmGbKG/ZAJwLkZpMdnamdW7cKo6utIkZt0XPDKwRuNCPz6/Nmp+
         pbAp3hgl5kFvxbj5x7JAIn3Hm8iQasWS7DSr+mqjkZJhjp8O6XiSzpKmTDDD4mDSMA5v
         V9Jaq8Pb1aDIRsQbesYg8605x2SK8ovEpXH2X6fV+R6N8pAeP7CLzRyvXXdAEbdYc/hP
         T/IBWi3GmN9i54fPAGTZMXUF3366krOmZ0fFrPHMt8YqnMTdzXbCgJSFKRTtaM964+Bw
         mbZ2ificTep00Z+6CvLHhDPES1cwkMpxryZSMO01uAs6qLBQR1ysKPbQ5aE7HWHjg2I6
         ENFg==
X-Forwarded-Encrypted: i=1; AJvYcCVE0MicJNiIsWGmwGM0wYIJNBzRFbKjVl3szPq3eGGRLKTs54RHnfj11jqWHXgaPw/QBpDDMixXmeVZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+NwEN8aI1+AsiVgyQRETYkPZp1tgXpJWCvS5pSCqocAf9G6FN
	YX4mhNoIOoThav4uU0I6s9w8vGcbdVbJ9ZrALox5j61gi4ODALrN28h5ThJ2YNNcAmk=
X-Gm-Gg: ASbGncs+jYD9QDxuEopU++2ae+0GG8XduYa2NlsQBBNsMEZAKNGg5buvR5si3pcAybe
	eN115czT9WuWl3zcnjQbLjNp03mXOtz9KtlfRQT7Y/a2556sfbJHuAzXDOyv72szpD2IzN7cNZH
	+qi07Gu4sE/iOS6Hj676rN8USmTgf1Ywa09n7Yiq1iqpPBP/NjiFZoRp/4/mHgtyB9nQKnzuv7D
	mryOILUpOQuJoEGv34zWz7vmnHhRzbuck4GtjvFaCG/r1orz6r31uJcFQJrm2X230lbMTsa+tFE
	tWRkuS6wd+nR3a4SJojK7qUBUvd5wLF2DVsRjUe5I0L80LVwLIqbcJHDeEPfyL8lajFkK175AoF
	OQ/6sRdjDOYtnK0LD7H3qjKosMgoNMMYTOtLj/P4JGHklzNvESWbo0DIW
X-Google-Smtp-Source: AGHT+IEcY3QIpWH6lz0ggVqd6k6kh6dVCb/wEN6busVPTT3i9HXxn3vsYeSIaZisO9TiSkyf/QI7eA==
X-Received: by 2002:a05:6a21:3385:b0:2c9:1323:f7f8 with SMTP id adf61e73a8af0-2e7c441264dmr9569484637.6.1758896374996;
        Fri, 26 Sep 2025 07:19:34 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238ca1esm4624845b3a.11.2025.09.26.07.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:19:34 -0700 (PDT)
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
Subject: [PATCH v5 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Fri, 26 Sep 2025 19:49:01 +0530
Message-Id: <20250926141904.38919-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250926141904.38919-1-pavitrakumarm@vayavyalabs.com>
References: <20250926141904.38919-1-pavitrakumarm@vayavyalabs.com>
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


