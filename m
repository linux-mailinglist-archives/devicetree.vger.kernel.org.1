Return-Path: <devicetree+bounces-24176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B51680E523
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03255B21A65
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC4C171D5;
	Tue, 12 Dec 2023 07:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="AMOyMRqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA86D2
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 23:53:56 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+SP4plXsfIblNhwe/TWzlvhS4foBk7zGd6DNr6YG1w0=;
	b=AMOyMRqPvgnFmd3tSPnWyTpkWcvAycFeaoE7mGm4qUllgbAZPWI/EtBjM9VFWEmxuYGFSP
	j5sKfhLDQztHZmI7DhQV4cVYv0JmmVFeJeSo0LQFg30XrgqPwN9Cj7MJgtNwDYn3E1UWkL
	YsZJnW1NQ5IMQQOENXi3fdmn2ijIWmw3zwNol7vAHd6BZyWtJAhcjoguYHF3fHM3xpv+qW
	HJclzKZiH5EtfdIP1iIsbskBUDqoWLkjWUWlB+eigEAbDnFZJ0Bt5MThNCqb/w6BgQ099u
	h9W0jh9CoDxkh/aPvEhouVuT6C0MfyVstNZ82ekMmKiesJyysRH4NLvckLgsng==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for RK3328
Date: Tue, 12 Dec 2023 08:53:50 +0100
Message-Id: <0c14f2e354d32f5d45c718ce16643553ca72f6a5.1702366958.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Not all supported boards actually use the RK3328's built-in GMACs, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 and ethernet1 aliases from the RK3328 SoC dtsi file,
and add the same alias back to the appropriate board dts(i) files.

These changes also touch one RK3318-based board dts, because it actually
depends on the RK3328 SoC dtsi and enables one of the GMACs.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 ++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                 | 2 --
 9 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 1deef53a4c94..c7b1862fca6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -9,6 +9,7 @@ / {
 	compatible = "zkmagic,a95x-z2", "rockchip,rk3318";
 
 	aliases {
+		ethernet0 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 40bf808642b9..824183e515da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -9,6 +9,7 @@ / {
 	compatible = "azw,beelink-a1", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index ff6b466e0e07..1eef5504445f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "rockchip,rk3328-evb", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 1445b879ac7a..a4399da7d8b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		ethernet1 = &rtl8153;
 		mmc0 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
index dc83d74045a3..f20662929c77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
@@ -15,6 +15,7 @@ / {
 	compatible = "xunlong,orangepi-r1-plus", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		ethernet1 = &rtl8153;
 		mmc0 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 5d5d9574088c..414897a57e75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "firefly,roc-rk3328-cc", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 018a3a5075c7..07f00af19aaf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -21,6 +21,8 @@ / {
 	compatible = "radxa,rockpi-e", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
+		ethernet1 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 0a27fa5271f5..229fe9da9c2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "pine64,rock64", "rockchip,rk3328";
 
 	aliases {
+		ethernet0 = &gmac2io;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index cc8209795c3e..41433d3340ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -27,8 +27,6 @@ aliases {
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
-		ethernet0 = &gmac2io;
-		ethernet1 = &gmac2phy;
 	};
 
 	cpus {

