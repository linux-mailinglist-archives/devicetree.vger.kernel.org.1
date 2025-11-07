Return-Path: <devicetree+bounces-236225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F6BC41688
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 20:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 795D34EF8C3
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 19:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5634C2FE58E;
	Fri,  7 Nov 2025 19:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="JO7SK/eO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF1B2F83BB
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 19:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762542969; cv=none; b=TFtRD4+S1PjMuYrbgSsuDcxmRcYwb3EOYQ1dwLgKnEdvbzjAMKqK2qNcvLD2GIYy9PQ4p+vDRyFbwEFEQx3Vf0yBd2XG4bk7B9bdxet4gEzuuSJsNcrlubTH66p4Mnv76WaxMecGjZDMmxkLiHFbLEIB4qjhvLQR9Py0XKgxgis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762542969; c=relaxed/simple;
	bh=w4sH8gKES/QyK5DTu18MOerFvzDp7pfH5YwAuXgh+W4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OX4le17rSjkK2Vc8F2SVLz/ABRYbdwmPoygpUJtJBxLnzHoTpGtKQ5q3bPEFmeX0nr7lJkf2D0r7ddPAI6owZIFz+7fgqedEfB2CUJ1ie4676K1LkAZD1z2/bdsaq/e7Oc/fM9Ak3uwA6SKQPtIMCXZoebSWo2C0K3OQMjNrd1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=JO7SK/eO; arc=none smtp.client-ip=209.85.166.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f65.google.com with SMTP id ca18e2360f4ac-9486354dcb2so44848339f.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542966; x=1763147766; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jj6J8lcepG5DYDhxKSNWV2cRY6QtdiZGtrhbDPkQq8E=;
        b=JO7SK/eOEhiir2AZ1/7cl+4lmy/IZeZ/o4sOHbEJ/LPzfIjNvAOyGg//Wcq7HAl7x3
         gK+10t+ayZxMLF+fX7SjmvTQx6qvQzEZnS+F1WGTKa9DGE7wEUueAM/6Hpqdn7+aGwCH
         odEyg8l47DQj0UizRcJDCxV4YdaGX7x4sL2Sms5p75uPXl1B3y6bU8JAI0U2gWV8bP0p
         NNux0s1yOTSETNwjN/psScgHQmVXftV5qhCSdk+98Mrtd5+LB5Jw3Y2LPq363sraVWV4
         ulIBMjEws2+G8xrSpgEcgAqE4k39yTyuVahsfGSOthlD9rQZGq7Ed8ApJ4T8cRWrlxVa
         Z40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542966; x=1763147766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jj6J8lcepG5DYDhxKSNWV2cRY6QtdiZGtrhbDPkQq8E=;
        b=VtcBbvs9Ly98OUQjB1gXjmKodlyEewNV3fDJFMVb8G6xRWCm5fKNY7iqGMnhSakbyK
         viF7N7nDnhrViINBbHg4GEAe17n8Y8C04TFVZmNzeUH8x5f2Dotm4FgSbGGa++1W+Lo/
         n36hkp3rVQ22D86THB+B8dAe41riPD85gk/Kwk1mmfAlb1cB++lf9YbFy0VoSQ9ktBrU
         NPX/7Ab7Ci//I33gRdNwmfNKqOzRABXxbm1YYImOc0igWVSRBePPaI1Vq2LuYNdoupGl
         VdJ7mMf4AmrwvhwCv6FRPiGMNJzetb8hUl+SPKZnIP2GhPOF7eEjli15kogHBCHE2WTH
         C3rw==
X-Forwarded-Encrypted: i=1; AJvYcCWDaeeM6qC3yzOOFyohtKQ4wtMpQ7k5azSEtOQtRUshbGaTYbFczA+/rD3v+Z7WunGS67W9L0rKiuPM@vger.kernel.org
X-Gm-Message-State: AOJu0YxjEa8cyv6QkNCv6g/qVwe3RxvJ90zuX43xbQIB87sQzCq+gPZW
	A6Af9ywL09C4tQjcu4cBhcnsMygaVZNBhaYvdJJ2QsZQZUe28ZgDhOkH/c1H6Z/bSqw=
X-Gm-Gg: ASbGncvzuw5KQuBVmwV5NZ/WOch2bHyoiKjCCbxWQLrkVSOaf1Ny6PLNaitCeFO6XLC
	hLodJUmKdgOj9XY+17uNoKEjQ2Jo+Z7ImODk5CB5qRnlsqJlIZDRyzXbtn33iqp6V0DvzTglXdc
	+EA64P0LYEdJeDlGl3MCNh+IqboRuUYt/UKtljUMVnYqR3G12Cvatkx8t1hlvmZr1UtYGnXlZl1
	BNk0MAAB1rx2xNi/Vlfa83znA9r66n1sAggaa+UCxm0Pay4WJEhD73lY8r0BNtTy8qmL0czJcEI
	GKSpaXk8a7BMUtnn4bdOa5BfLltSmoyo/yvRUSAu0Sy6/EIgxr9qIAZDTr2BXzmeN41A1f3BX8t
	kZs+rX7S4xU+w7aCw8TmBFj67FKlwC39pssqGpxgdCmBdJ4mlOBdIOvgMtIg0Dh6DgDvG9ZuAm4
	4hLCO6nrB/4bW2bsoNZAGibqWSmV4F66QjfGr81sAAEMg=
X-Google-Smtp-Source: AGHT+IG3g8x7X0Y0yy71Bz2h5XJh9oY9SaN95TpKTAIMsM9Iq0JL0TPx0mxVDPbKsKxl/ezWXxR6VQ==
X-Received: by 2002:a05:6602:3418:b0:948:3f60:a625 with SMTP id ca18e2360f4ac-94895fb109cmr59742139f.3.1762542966451;
        Fri, 07 Nov 2025 11:16:06 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:06 -0800 (PST)
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
Subject: [PATCH v5 2/7] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Fri,  7 Nov 2025 13:15:51 -0600
Message-ID: <20251107191557.1827677-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
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
v5: - Wrap lines at 80 columns

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


