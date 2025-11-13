Return-Path: <devicetree+bounces-238345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182EDC5A35C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C14D73B9DA1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2373E31D380;
	Thu, 13 Nov 2025 21:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="T20y3C1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF44322C81
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070352; cv=none; b=ngUxQCha+2eSn+QeNWExB3x3Ik4I2A7BHaOOB2zsKj3U5tRgJPaOP8+MnLISxthZgIYu0vJs/meF8Z5/TJuEAPBnrGQm8IV4xE6bcSia/X7ZS/PL5nuJR/bN0T5JWA5PpWv3bfdBzF/LMMm5lzqUQ47nc9y4rDwMjYLOfle2weY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070352; c=relaxed/simple;
	bh=8LppfTqRL5l2SybiAnwAcKY+acsrML8ysTdBgNm1hLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ar+9+RL5d6v0KVnkLMPeJNj6IDgWW3W8BicHNC1cAAj6R7T/5ohEzkOr88ET1Hx3x7lvVeMF6URj+1UyOmLVzWiqkB2ZXh7uJGC6GNeYDCrlMaKKSy4uEA8g0DYbjWqAV6/C9YzI7XqZPe/nn0+AvQJeZoyOt1eYhY4UniiMXEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=T20y3C1K; arc=none smtp.client-ip=209.85.166.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f68.google.com with SMTP id ca18e2360f4ac-948673fdc47so63286839f.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070348; x=1763675148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=T20y3C1KbWBHS0uSeL6FfB99PQGiqOJrJneymWV6QFr2y/wOKe3mUAWGq96bjhEK5c
         1XpgkAg6OYh0cDlN1jqQ7imdZ7VY0HEsaHTX7sQIdkqOvWw0nPNVuDucuz9N/d2X7ALT
         nFmmvpNovQLIOnRbr08ulJJBFAS8+Fl3hBtwrG4owXDSUrUrRZ+p1sLoHW7hCDga18er
         9s03gKdqqMJSgsf5/zB+ZnK51UK/DoH4D4RbPhLCmFKW2vk+9tF+e1MU5FxE4RMoFHs8
         gFh8xBAqqvIywAGhGox+MaN4BLkkEbOvjGwv3Ei2WEiRIjGrR/V/2ol4VHo6dDoQVcJm
         FwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070348; x=1763675148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=UIqynEFL48OgqQ77jNxpVdyzFM2Q56os6dDqBy53TQ9khi792Xrm9Di2M+j5FDxIPI
         GqDnzhyjvojOplig/hf2QhqqdZm7/v6OGydxPJiRqLgBhm0khOy41O9lOcYUJcK91vBo
         aZRI9lRnv5TlsykfNErNK6mZr4qGJY/2KiJSCwV+y5R6nJw+r+KHKZulwvmbfZ2ExRkU
         gYbYnMivwRQsyU/sWuJf8bMpSow2tU7YnOGN6pXZply/aFVuc5r1+LMH7D2mff7hbeFZ
         9fRqeAbsMRRBY1EQagRi9zR2Nnh1xv4ACMMFRRczMQG9SEmWbNgY0EQXKYwtcWxGZqkl
         x/3g==
X-Forwarded-Encrypted: i=1; AJvYcCX5g9pQrP9VUHpUy8gMCG5eulNIoHjdHJDZk7hsXfulV+kr3F7A9zw8SG/joLul3WCy8EzaRQQecaFk@vger.kernel.org
X-Gm-Message-State: AOJu0YxLbeLE29wFx4DsTK1MB4cUriRCu3aOPJ+yqE4i8OmfxU9zJ5aU
	YZClUi++lp+//fzEOwDkQltgkdBSOCVTZ6FbIDlptcDGTJCdXSr7/HnzHx6Dw89n6pY=
X-Gm-Gg: ASbGncuVMkMbO+iDNHWNCPuc2IU+QGrk4/MWxn8X7vpG2iGEcJoQF3vkc69nRMIRm+N
	BlklChmNgQ1LBI/GYX1GyJbU+ABdDvuM1ht7u3MPtXH5KQnm3oCY0XAVXBvoVgK+IxBjjb/dJrX
	XodWDnDxgdYGSqCsKg3EB43UduAEDq/0NSnUxLyRGQN1pin1zvfqy3o/zIwVPOccYa6b+00hq8s
	pX32PHmuPt77zB66wM8QznCMDwwvHKHSt4V9RzmBOFMJ2La0of5Mei5HxblCWAYqYaXI7W47XCX
	9WcGIgMnDE9UOXQi+bYwOuy/8+/slISE9dtj0MdzXJrmmjPegcs8NElUfc6p9tg47PaEzsZF6Pp
	42By1g8TgWO4r5Lj35lYEutpIa7vQQMQcbtzt2FSioDcmtnSHNJsEHE8ekHxjFQ+wPapffWKnG/
	mWkM+SoLwjrBSjDUuVB2LaGj7+aMZ0PvHVfO4cZXEW6UyC+jcX1fU1dQ==
X-Google-Smtp-Source: AGHT+IGBzq32Gwd/w1dsCQxRVXMGXyEzSrmOWSlAFvmiA2MTt5gy/g9voUkgRjr4rNHNd8IF81q02A==
X-Received: by 2002:a05:6e02:214e:b0:433:589e:294f with SMTP id e9e14a558f8ab-4348c93ed24mr16120625ab.27.1763070348557;
        Thu, 13 Nov 2025 13:45:48 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:48 -0800 (PST)
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
Subject: [PATCH v6 2/7] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Thu, 13 Nov 2025 15:45:34 -0600
Message-ID: <20251113214540.2623070-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
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


