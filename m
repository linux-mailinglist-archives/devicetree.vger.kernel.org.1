Return-Path: <devicetree+bounces-222356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D143BA8471
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:44:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A09E816AF9F
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496742248B9;
	Mon, 29 Sep 2025 07:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="mGr9sWhT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A886C2571B8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131846; cv=none; b=KuDWeulFDdy9EgGynfHetmNbEiItvlHNfRlw1IvS1IOJtGIYbYdYeULEu+F0vnFxiD9R41E/VRqTV9dtGotzM0HkSMJGbJJKshv8cXTnpjM5TGej/sy1DhU1Makq6wYIPl6mJBvcAXa70afYSMFwFAXBJakIbPDuxUnqPYIX26Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131846; c=relaxed/simple;
	bh=VqneJzSj6ZAncie4Pm4kr22vBIPcmTH6MVSrCpJuRgA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ImLfBo/qT6DmjRmaC1OunikpqeSYicju5mzggQtGDb3r2BH1tX9BJiz4880X4cD71JJCI7i2VU1WByJ70FeKRqveS8ANMvQDJZuFfjIE1BvIGGVFM7imU+vn4f/fusIaYrLPm5W+wGBxfFjNZhZ4Dy+2XH41+fxjw4UjQ0Aydz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=mGr9sWhT; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b5515eaefceso4172246a12.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1759131844; x=1759736644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=mGr9sWhTpQT12zhTVLvLgPf7F1E1um9v/wu8W7ihhItPsJyvZqUrwLnkvkx7Mc0viw
         6LcSoIj3ltIsFjc/d+Z6p1iwCq987x9Anyq6E9ZjAHyeBET7pR4NMvoQXDPkO0jFA1Gu
         C6+0gh/zS1ogud192q67/V4JEgJ0QbJ0LenHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131844; x=1759736644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=mPbKz1FpzRZ843Rw18PCpESqDOaz456rCb2F/AalxU5RpUubSkvA8ZysOn3tzlSUOE
         okvQ9uAdLJtA+bMEJ0dyAytpctgj1Vx6jK4BVqGrq19GBJ/ys3F2SShf2wIa8FceRhv3
         KadwqPite9i4EQpls7szljS7ZQjW8X9vV+B2xr4COBaBVkd+mFgsoRlqKr9JekL8b+B1
         EPnoF//u0qCrSv72CA6Pk3ezPl6ivVdMYgXxJc5Pyw54VdKie2SH1+JsCdiac7wP6Xza
         hdoEwADBF1HbhcrsNZHqv4SFVpm1wb/V1XqoeytwcNhHN8fyleju2exMaTx/0+ZaNu12
         SPZg==
X-Forwarded-Encrypted: i=1; AJvYcCXvyX20KsAv3C0HQ0LUAMnYmUZ7zF7/E2vvc0d6rrZIwDvPWXf0y/F7JSlvL7ejlQeOaWQO0pNZeuHd@vger.kernel.org
X-Gm-Message-State: AOJu0YxeNqcGb1kvuC9sxjV1rLK1XImQyHmCfTjpPct0hnP4W0GYN0Qv
	A+Y5OIalcLf2VaQBWW9NUD63Aq8gCEIHIUfFduKEIrs5DZMO4g0Cnv8wumXb6Bzuu57npEMNrWD
	iNbvaviY=
X-Gm-Gg: ASbGnct7oqUfLjFm+EH3PTvtofRIXuToggz/ZO/BO8n5AlgUNPa9GbGKkDqbX2QkEhq
	vIKvwaxqFNTlQEhdQQQmpGbxhAzXIAIjZRuAL6F/AjfVrhLstI6AnI6VTylHGuUAAVcdxR2jKrf
	rr8QK8US97uPuthlNZynVbK0V2fr+9NT+ooNplHgtnnRievPD0j7zhPie8hEONHg0UgiN0kzrLw
	iXUJAfmgRMlV7tvAPDVqyg4D8AWOaSPMYIIieIOMIAjcd+IbbPMVudDAnPw4ehPh55Dbde8YxZD
	M8Pqhn94Cy5ySQuK6rUZNZtcw/HMPdQC+Mim+ad2Un91uRzKmW7rTHyiRLpOSepzZEOtPmiwseP
	s/7JnA8Li5Uid+IyoUYBVNxKF4Rv/ciQQDWuZ0OsEf/TiyQ==
X-Google-Smtp-Source: AGHT+IHxrZbPwGSttT/rK/3nM9d++wHRed2uyihSorrTkwzRs+DsdBy5pvENJ/cXjyA0kBi6xWr2PA==
X-Received: by 2002:a17:903:ac5:b0:269:b2ff:5c0e with SMTP id d9443c01a7336-27ed4a4959bmr172403005ad.46.1759131843753;
        Mon, 29 Sep 2025 00:44:03 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69bc273sm121341105ad.124.2025.09.29.00.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 00:44:03 -0700 (PDT)
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
Subject: [PATCH v6 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Mon, 29 Sep 2025 13:13:31 +0530
Message-Id: <20250929074334.118413-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250929074334.118413-1-pavitrakumarm@vayavyalabs.com>
References: <20250929074334.118413-1-pavitrakumarm@vayavyalabs.com>
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


