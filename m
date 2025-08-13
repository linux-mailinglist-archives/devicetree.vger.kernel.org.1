Return-Path: <devicetree+bounces-204365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAD9B2533A
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 20:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D5DF1B68650
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3AC2D061A;
	Wed, 13 Aug 2025 18:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FWMSK2Cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E939F2BF009
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 18:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755110833; cv=none; b=oXV/9CF3uOWeK9xDl6rk7pKkdrARdPLYNJpWQtPPpfKW18tnkWSD1YO9vgLCInJoCugsvOrbsma1PF1WIIvGO5YbcvbvMAmuAEq39RWAj3tqilH7+O7Xv7CStVl8r0E3IaeDZll9BJ5l0q3gnrtvurO3k6htyxK7Vjd8HKrV0xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755110833; c=relaxed/simple;
	bh=ObVTQfTP6WmVdXDTlQq2ihRv1LL2FrZFdRYiGHsi+L4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kpu+OCIp2DhMjB1RU0CPnUYgtvkRXH1pztrzVV20SZ2ZpAcfIEfNdzYBid5rTATm1s3lZmmj8fBoC1CbSSoJOWdMkYd+5ozgj0OeNGka0NL/aLOBO2/DQYd9MevNobqqu/7lOpoRvPvhh4gCRV8iykPTRNT4Y1TsDgVHFXiPv+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FWMSK2Cy; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3e57056daecso504625ab.3
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 11:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755110831; x=1755715631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3anfg9B6GDnUStv+H7P2Qqm8t3EB0LsOUKal4iU9hMY=;
        b=FWMSK2Cy5PZFYKRIX2oqmv8HveuMcFC+oKPObv24ikXTycDT8WC8k2XDkMco/yWOwF
         z24G/LCormMuwIosa5eoWni2yvj/dp+uXkvpjcjXtr8C3Nl69L1U1pe8jPlsvKKrDMSs
         VQBvItUTC1p1biZa2Ef9Y+ZeM5zAtKKzceYFmdzM0COWzZXmvD/1saTIIHOm5+Ujubmh
         VNmJqIpRZ3X4HgiVt3wDtF9MNAsc9RbdxJhhX+ssdKFbyqhZQpnz4Tm69n5tpzZabJvR
         NXt9A+XplZgWt+kqRLiLOcNK3kLbLoRGH7omBFe4BtjE0E2liu5F5A86IWATzA92XyS1
         Nm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755110831; x=1755715631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3anfg9B6GDnUStv+H7P2Qqm8t3EB0LsOUKal4iU9hMY=;
        b=DeZUILhigN0gBKiMWHfwlEGKejHGwfObLceP+jVte5tRLmiHHAwvj7Yg4VFRzv8n4s
         nZKx4BoRnv7f0feuYH/S58WV3Z6FphWub3BokKSxlpPmEbeSc94zbPdw3gaHXGDXUW2l
         v7gOr9I9isgumuAWjLQv2Qlwsj1bxZX3qT1hN3OHn5ptvVeyFBhsJcdrUiNeZFPJ/o1f
         cMUUCUaC1GrHSotUqPrMv7WZta1XsySUIY8rXg3WMEBy0Ar5k9rlqi7dxpYVh6VO0wO8
         5RocQmmzyr66R36l1SkGwWzIj//0KMQR2V2NJixi6QwtYOYnOZYywnUZ9GZoUQ3m+LU7
         qDYw==
X-Forwarded-Encrypted: i=1; AJvYcCW9Z4KoQks6/SPN5IKU6Qi4vpwCMOLdcNr5f7TpAqyfegwnFAV7Tm1vlK/w5d9bfBkxb6HvboiTPtKT@vger.kernel.org
X-Gm-Message-State: AOJu0YzVWgb8y/p2zdZ/P88KlVRaoGpPv+OgvCfkVRWimCOq1oyuC3I+
	t5lwxchlKBH50Fr/ULByTMjJbcI60McFJATet4AReD96zum1QG3vrEGTb+KZHFLu68A=
X-Gm-Gg: ASbGncvJxruf5V20dT79Z3XbSFk9iSCBDneyr6PM1s8fTbEb/aJDrYDD2eXWqIhYHFh
	AMweWDGucZBrMCOdoGy+rIRmmrcYpp317GJA/WHTTfLfo82cobJRcDVF902yVYSj8We6KMEu2t1
	YJEq3cySaYcHAGI83i8EUCrW3ZI5BrwHfXNjIjqwiob1QOX3yyRiMaeYv6k57S4HnbdP/HIwis0
	Ks1zomsMdYGmS6bTvH2xIKMeWe15RhiUpGRtZ0txl2AMQsWR5bBgbRdqDyEWrc7NJyi8oDvoz/7
	jfUTCwM/1dO7O/C0z/+hlC5cJzP2Ri04A3ZtzKDL0bhZ9tNpH9JmVJD9PtbR8XE6vVPQdDwZfqf
	gyx4q02mgTY2ZmYUyPFnXMGGgq6IU/h4DM9MGbRyTZ8lCB3ouzxNYqLr9d6Lr8eyVyiVcY/E2EE
	Of
X-Google-Smtp-Source: AGHT+IHqcfmnRrUjdAlNWmje55A9T53WMKx9lEOXpWePQCsQDSmAhiGvxZUCa4A2bLPkAxx42qtLRg==
X-Received: by 2002:a92:c24e:0:b0:3e5:4a4c:2ed0 with SMTP id e9e14a558f8ab-3e570964fa7mr4127025ab.24.1755110830847;
        Wed, 13 Aug 2025 11:47:10 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd89d7sm3933104173.59.2025.08.13.11.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:47:10 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	tglx@linutronix.de,
	johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com,
	namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	quic_schintav@quicinc.com,
	fan.ni@samsung.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: phy: spacemit: introduce PCIe PHY
Date: Wed, 13 Aug 2025 13:46:56 -0500
Message-ID: <20250813184701.2444372-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813184701.2444372-1-elder@riscstar.com>
References: <20250813184701.2444372-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Device Tree binding for two PCIe PHYs present on the SpacemiT
K1 SoC.  These PHYs are dependent on a separate combo PHY, which
determines at probe time the calibration values used by the PCIe-only
PHYs.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
new file mode 100644
index 0000000000000..b0cbd231d9378
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description:
+  There are two PHYs on the SpacemiT K1 SoC used for PCIe (only).
+  These PHYs must be configured using calibration values that are
+  determined by a third "combo PHY".  The combo PHY determines
+  these calibration values during probe so they can be used for
+  the two PCIe-only PHYs.
+
+  During normal operation, the PCIe port driver is responsible for
+  ensuring all clocks needed by a PHY are enabled, and all resets
+  affecting the PHY are deasserted.
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    pcie1_phy: phy@c0c10000 {
+        compatible = "spacemit,k1-pcie-phy";
+        reg = <0xc0c10000 0x1000>;
+        #phy-cells = <0>;
+        status = "disabled";
+    };
-- 
2.48.1


