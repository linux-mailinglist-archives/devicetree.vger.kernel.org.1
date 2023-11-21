Return-Path: <devicetree+bounces-17699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E94C7F384E
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 22:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B87021C20D90
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 21:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D221D584D8;
	Tue, 21 Nov 2023 21:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPe6obDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB11ACB;
	Tue, 21 Nov 2023 13:30:06 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1cc4f777ab9so48321805ad.0;
        Tue, 21 Nov 2023 13:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700602206; x=1701207006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7MBM4ZA5oNd9/yj6ChXURBgLtdL7sP8s8g23+U8L60Y=;
        b=TPe6obDvbP5LmXICJR5rxbEo9SCsHShmvKTJU8iyZloRWLthuNHW+GIqLoIQ/BjW56
         2RcsjfIx5abg4aFJIakiT1zXWEu/D/GLqnRh0zNCHndWSZ1ffM2qKlL+qxFkH5MU5mbG
         QoScVIzMEPtCJGGZVTnXnFKkAWwz7r0PchepTTLdBZHXWlb/xEjB6SJ/OhmagSFPIbZS
         OmuvFSgz7IVdcSm72/284tgHOziX3GED2bSwgdAtaLkAVJixL8TvyIa1z5d3V6AomurT
         k0f11eXRvr2vGHgR8Wzt1cnGrd+mTx4pxoo33fm+3KIvZHxkJOtno0I5ZDo6/QW8IFy2
         zUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700602206; x=1701207006;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MBM4ZA5oNd9/yj6ChXURBgLtdL7sP8s8g23+U8L60Y=;
        b=hRjhLkmAygo/QfGgowYQzSdLYD4Uxpe4wwDoGgp4nBIHxFbySH+1WUSLOBYUue7sp7
         7T78RXVWaPLc1UM5cGQ9+OAh4X9DSJ/QvPGikNzHw/8OMwR4EFmUM3NwG3d+HQ5cWVhV
         gYO6S6WZOab72LnldtSy12n4sn3aM1o7ulVWMk7dDHUYKhbL8S9EuGo7NZZYs1kf031U
         VsffZb46X//XW4Azlw7eTtr4+dmc4DrgIF9ZpxB6+ovoSfYanncVxPQP4eSmTD5iHqY5
         uJvirovlOdt522g4sXkU2EmfA/kZ7LQDZ/dQlWXvfSISn7SqtNeYApsl30A+mz1MGW28
         mj4A==
X-Gm-Message-State: AOJu0YzA2/e2qVJ042qVIXSM2DZug9OEGVAtNWt6B1P2UonzibMhAvup
	Xsq0hXAYvO7fIaC++IXsoTM=
X-Google-Smtp-Source: AGHT+IEeEB8Cae2ly1OL6CYd69YfTn71DZRBkbD9vE8en8a5eqhB+BWYerPWxhCx3cFL2g67Hr3GAg==
X-Received: by 2002:a17:902:dac8:b0:1ce:89a7:443d with SMTP id q8-20020a170902dac800b001ce89a7443dmr599891plx.5.1700602206023;
        Tue, 21 Nov 2023 13:30:06 -0800 (PST)
Received: from localhost.localdomain (static-198-54-134-172.cust.tzulo.com. [198.54.134.172])
        by smtp.gmail.com with ESMTPSA id w20-20020a170902d71400b001c726147a45sm8355317ply.190.2023.11.21.13.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 13:30:05 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Date: Tue, 21 Nov 2023 13:29:40 -0800
Message-ID: <20231121212941.53873-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RK3588 PCIe 3.0 controller seems to have unpredictable behavior when
no CLKREQ/PERST/WAKE pins are configured in the pinmux. In particular, it
will sometimes (varying between specific RK3588 chips, not over time) shut
off the DBI block, and reads to this range will instead stall
indefinitely.

When this happens, it will prevent Linux from booting altogether. The
PCIe driver will stall the CPU core once it attempts to read the version
information from the DBI range.

Fix this boot hang by adding the correct pinctrl configuration to the
PCIe 3.0 device node, which is the proper thing to do anyway. While
we're at it, also add the necessary configuration to the PCIe 2.0 node,
which may or may not fix the equivalent problem over there -- but is the
proper thing to do anyway. :)

Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 9570b34aca2e..129f14dbd42f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -214,7 +214,7 @@ rgmii_phy: ethernet-phy@1 {
 &pcie2x1l1 {
 	linux,pci-domain = <1>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_reset>;
+	pinctrl-0 = <&pcie30x1m1_pins>;
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
@@ -226,7 +226,7 @@ &pcie30phy {
 &pcie3x4 {
 	linux,pci-domain = <0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_reset>;
+	pinctrl-0 = <&pcie30x4m1_pins>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -245,17 +245,7 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	pcie2 {
-		pcie2_reset: pcie2-reset {
-			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie3 {
-		pcie3_reset: pcie3-reset {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		vcc3v3_pcie30_en: pcie3-reg {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.41.0


