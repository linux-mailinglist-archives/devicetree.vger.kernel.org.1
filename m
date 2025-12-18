Return-Path: <devicetree+bounces-247892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3F9CCC6A7
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1E1B3068025
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E428734B69B;
	Thu, 18 Dec 2025 15:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="2Ub2vX2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825234B41C
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070765; cv=none; b=dfLWSoytDyqPHflPSkuWX8vmu+clRBxVRRnYwMpOV9SqaovcUBoVhOyPUiASY521xNCYsTeI4sGFYekUcvSyTga3H8p44APdZ6dR29WKJ4ThJwU7gyd6EA5lNK9cf9lzoER4BV4HjxnsTMO7962h87hFkfKgxH2m6bolmuCc2hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070765; c=relaxed/simple;
	bh=8LppfTqRL5l2SybiAnwAcKY+acsrML8ysTdBgNm1hLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s643vgjtsrAsh3qfKFsNQifB7cQcWdxWIBwRiNU73U2MppdfEQEQB9/5uMSC9QjU311jioRetLfB3GVPKlKC72DTMB2HQLvGWIjgRVWFN2m/CAfIY1DDSMR/LFwhQZ6mFR03cg/COe/IHHPdm0jeyc3Uzqi9Wt6lQNjBD51O05I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=2Ub2vX2C; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8b2f0f9e4cbso59759385a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070763; x=1766675563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=2Ub2vX2C5hh+zwL9v/hIZ5O/KDK0vFlYZc/EUa0pq/fTXksrjA4v3WO38rXE/fLr0j
         RmmOgTVBu21Q2m1AhIwVbuHGAG/cewbhqOf910WNcGaT/Y9nQiBfSB2pjWB109Z/CP7K
         jyYhUv9ibGvWoB6nmqbmU1qcy2YHJbN3tRn6TpLiETFFmBm3IjGqOvU7cqnswERPnDpC
         ioc1aVo04USvo8gVf56LB4qOrLvm76nwFa74PfVbhqe7xb3VliGQw3PFjq26oKujgtrp
         xe3Yjy+HImOjFRfDk3dkOvSC3DQ0UzLSu6XgeIhYODgKTsPVnPU60IdDWi7+5Eg0wNED
         kFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070763; x=1766675563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=I2kxo+zMFu2uVL5z6aHlltckKgahI0nFdV88w6fQUyMl3KpltVxdJTxyuD6sLrnmvZ
         UAvToxyo0iczgDBgbEJwNIUuwvjqaSFe3N4nbcR4HLYWzm1kn6pJTmMGzTysrfE78IZ9
         Dqxam0hvGtdG8+0QANsiAAemVP28U61vbZ4APD6LZJ6/LxuVt2pwx9NSVDejhS8uuizz
         rOHZDZiRlIOwxl2SmaVsI4D7WRrNey882xUqqsf+TZswcwPyWPibM/vcpGxTLAoEGjrw
         QCUc2A0Qp4rVX7jOSSRmVF2A0rMw9xw0BBuUQH7vo2WPe/mrj6yGRQprfoQWvIL59p2F
         cnfw==
X-Forwarded-Encrypted: i=1; AJvYcCVm4rWYCFhXeNBIlEB/HkWh1nMA4Y6XnKItDwN6odDMB+rTo3Nz4rtkzYQOnIRAI6DmQwPHNSMhvpTE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv164qXgVnOM5qAmTzwKDNqg54bcIhkzbc6DwGsFq+Lk20qU5L
	ijU3lRH+VbyryJRy0zJiTFoNyatpfGfqQS4HqYsU+a0649+s4hkMFewEeo4rcLmVhro=
X-Gm-Gg: AY/fxX7tlB3ce+gFOAluT7HwhlQhI3jvX9lIqnEpH9APjOSqxL3nJy32JcXiYaNH3dm
	X+W3JRht7+TR/QbgwE8dLwKtW1csP6J9glHzn1mGoe9xkgJmtZEAhw6esrOuTs64WbzXZ02gDVp
	PNVfUeh+J5zdf/Dw0JmFZVUXd/B/hRk6rWu7JRsfKnc0UIUMY4/Q8IiqVyr2rnY5LoxT5gtV84r
	H7vxs5YpzflMGZYSFki6E2ZBaiIZZBUlXvAJ1yTNE4BGZrfGBvktChsjxHyw/VLXQdV02gLkn5d
	MYMhk7F53xqclFhA3pQNcsUgL+YoPdmVDvipNLegvB8H7/UHnpunC9AerYK9PR5nlMW9OgIsSay
	3w84RUTl355OWsU7l+usR9eQ8SnqzjjgWJfVFxpuhrvOEy6Hdm26DS8TZBU+bFlgFWs90uTfTqh
	QgS9GtMP3xooa5cF67JXken/F6kub1DXrVHyxZRbml/NfQxu7fZ+O8zA==
X-Google-Smtp-Source: AGHT+IFt4skkDsPUjK60b1wetqDLMvA4QbKiBZIS/djWkmayCVcOzRtJDIo76oiNu2+mujPOEGHHUw==
X-Received: by 2002:a05:620a:1912:b0:8b2:eebc:64bc with SMTP id af79cd13be357-8bee75c3e36mr423410285a.35.1766070762753;
        Thu, 18 Dec 2025 07:12:42 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:42 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ziyao@disroot.org,
	dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/5] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Thu, 18 Dec 2025 09:12:28 -0600
Message-ID: <20251218151235.454997-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
new file mode 100644
index 0000000000000..019b28349be75
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
@@ -0,0 +1,71 @@
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
+description: >
+  Two PHYs on the SpacemiT K1 SoC used for only for PCIe.  These
+  PHYs must be configured using calibration values that are
+  determined by a third "combo PHY".  The combo PHY determines
+  these calibration values during probe so they can be used for
+  the two PCIe-only PHYs.
+
+  The PHY uses an external oscillator as a reference clock.  During
+  normal operation, the PCIe host driver is responsible for ensuring
+  all other clocks needed by a PHY are enabled, and all resets
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
+  clocks:
+    items:
+      - description: External oscillator used by the PHY PLL
+
+  clock-names:
+    const: refclk
+
+  resets:
+    items:
+      - description: PHY reset; remains deasserted after initialization
+
+  reset-names:
+    const: phy
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    phy@c0c10000 {
+        compatible = "spacemit,k1-pcie-phy";
+        reg = <0xc0c10000 0x1000>;
+        clocks = <&vctcxo_24m>;
+        clock-names = "refclk";
+        resets = <&syscon_apmu RESET_PCIE1_GLOBAL>;
+        reset-names = "phy";
+        #phy-cells = <0>;
+    };
-- 
2.48.1


