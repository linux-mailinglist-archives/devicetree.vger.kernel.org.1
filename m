Return-Path: <devicetree+bounces-228300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B238EBEB598
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3758935F805
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD253126DF;
	Fri, 17 Oct 2025 19:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Je1RL/Fd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1733F8A8
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760728070; cv=none; b=X8AUPetEteRXFXEF5x6M8Bf+na1KByNXvLUOHJ7iZaUiRWFA5pccUB9L1aJbC2yYCeE5bxaRVh07BG+hoZ/gc6lYDyJ6uKfzrjDj437h/fOJkQG3BooHKBPRVmDg+ZnQRaXtEALNwRORuGJCdMHQsArayvPz4OK85PJBqhK3+Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760728070; c=relaxed/simple;
	bh=LLI/HQYDWhCmej4ouNtvXFhwrmFwQGLMws3w9xIK1/c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XrrepiN41xe/VVs4DYyp0FVfBpZmAJGLVO2caGFbSo/WOfRQqkjhadvaRsejTXv6e6A98oI+mihyAhws+/h3kbML9ReJZQHh1pp71kM9Ra5UQwHLkTNX4pBhNx6Zs+dLqcc9md8eaWUCgR+urifG3+jkc82stlZO9UiUSYp4soc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Je1RL/Fd; arc=none smtp.client-ip=209.85.166.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f194.google.com with SMTP id e9e14a558f8ab-430bf3b7608so16591985ab.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760728067; x=1761332867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H/3BQdd3vn0d3oIHDdjobMfykMV90YiIp5S1jVARxr8=;
        b=Je1RL/FdYh7jK6gjcwQZz0xPkIuPjcqjDnpaYtZ0xInXRmsJ1tYpCreoL1rBcV0qm2
         qsFj1zwFPkikT+yVGgtbyNUqV/MOcb1u4X5A+a9SZjej5vTpixKciukwLcDiWLW4YVR/
         wTS5hyppbtYDvOYKkN34Yolrm56L9CovtkHJ51FrcA7F/Vysromg9DQBdzba9GyHT17f
         EJq6WM3FTXfk+Y+63ty5ESD1O3TFgDnJzJ6jeRe4Cf0V+SAnXsv3mbjNGmrkAYndr59V
         DK279aAeAaaxP9XYaHttx26K6TmCVqzXgZJcmIplk/+CUhq4sQt+17qG+tpieZePJ8KA
         ECDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760728067; x=1761332867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/3BQdd3vn0d3oIHDdjobMfykMV90YiIp5S1jVARxr8=;
        b=jGYDJVbKO9pUhmICKml65P/p5CqkF+F3yjpfCpuVyT/cn77vK/WuKTY3Z9nWw4J0ND
         5KDz2NyvDxTBam7dcBFABjf2xiaX8tzQ9fK3lWnF4r1WkjlMPsO6TMOvT/OM8dSm38Mc
         4yqQRGFpdOxUAkO0t4G2RxI6dj3Hy+PJFnMsGlac5yG72knUdCLJ2CALoqaQS2t2IUwk
         hoEmGSXzNY5p1e2wfD2sB2MnGuspYfDvVieDNokfMBYGPfKtgjYOTF0eoML1S5o2gSPB
         N9xGUezFvDvkX3ir2lU8cF5Isg9NUKY5qS9bsUkMQd6fWaLe18QEpchqhwKhospSYLLt
         xkVg==
X-Forwarded-Encrypted: i=1; AJvYcCXpOv2AIndzxbHryXEdOMn4jXCUFizLMgzFaHooAJqy8we6KPk2mtxAIoI4W+c28V5sFfe/gOc4Z+Xr@vger.kernel.org
X-Gm-Message-State: AOJu0YznPUOlm1sF75/5c1LfsvhW8CUe+YS7X1rfzNDCDIwj8aHmJqVr
	tuzATqCdapXBeqEBXm7DJUwZZkUCwOrOtFf2FOC39z5tilRHLTJzL0FeUspfYM7ktohl8WM75Rx
	EJyOg/Y7VUQ==
X-Gm-Gg: ASbGncvVB+HbpXykSF9Fuic3uESQvGEx4nrsU/IDjr9tUGxmXS8fWek7t/VykIx9/R4
	XW4JP+eyY8QYnzbbm/8gdNqtgfYjaQE4ObxRVCJGgRd4Isn3R2/vZAMjcBcaqZnMgzovYeUHGE0
	3sS876dYJywxRO2M0OdENJJ2q/vGBpwJC0X+jSrjXLeO6xWNFYum3d6ozVNX9u+VaqUmXaWZ9xx
	rXDsVOGWm6SpqVnmGwIQo7nBRV20wcMDH7R2MC1xGDUyLttH5bnrURQzprvdL3AtsQAjR7FowR0
	vDzlusxGO2Rr31wDENmAb4nbqF9bZHrHcGpAOtoprL4E/baElN6EVqtUocvOZfq3GbThlwkymDF
	2A5cpw8nzuvvUkC7QGAmQ3x1E3SnNjsMq55Zbh0mVhJsMpKC0u+PeeFVqIYo3zWv0y9LSFU8cHa
	H+I7uVvlqfTY0TomT0wlJJhiRnYF/FsofBLLZENbC7orW9EIVFIelq7g==
X-Google-Smtp-Source: AGHT+IHRtsRSfhWCT9BQG3DcVkrpn6NA7ODycaChUBpFYwB1ZdnsTh8SKsqwMx76IAkXTipom5mlHA==
X-Received: by 2002:a05:6e02:148d:b0:430:b167:3604 with SMTP id e9e14a558f8ab-430c5209bafmr76757915ab.4.1760728067217;
        Fri, 17 Oct 2025 12:07:47 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9768b98sm153462173.46.2025.10.17.12.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:07:46 -0700 (PDT)
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
Subject: [PATCH v3 2/7] dt-bindings: phy: spacemit: introduce PCIe PHY
Date: Fri, 17 Oct 2025 14:07:34 -0500
Message-ID: <20251017190740.306780-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251017190740.306780-1-elder@riscstar.com>
References: <20251017190740.306780-1-elder@riscstar.com>
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
v3: - Added Reviewed-by from Rob Herring
    - A "phy" reset is now required

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


