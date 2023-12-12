Return-Path: <devicetree+bounces-24178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 973B180E525
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 436E12822A2
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8281772F;
	Tue, 12 Dec 2023 07:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="S+tRtvGr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15190BE
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 23:53:56 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zcstK1MWc3vK8U3aVeK/bKkLl0z1SYBdJQFtqSrdQf0=;
	b=S+tRtvGrqDf98H/Q8VZvjZtiUpQp/XMsHUmQ6yUMcBpMZigQvThdS/a5KgEpcnQfliUkQS
	IL8HjVZrJ9+UKdGtUV7BJbkA1kz6GEDdY7eMgKFD0nGxD30S6AyyomtzkomHDMQFQVs+Fu
	Q6JcAbNQp3nWLaC0yeumEb6UIfJWPJxit9hT6w8QTAMXiohhI/q89XnIDafvJOWS7xr3fH
	CxUCqnhJ0QvTNUPGJ8VcCmjyJbM6Chuazg2lKNzNAuzJTBdKfkmm3xbhralMSIPNXN0pRh
	xlN8ubckR7gSGzGFAoUQk/FQujKHyhboeYYPczf0Bgxkb3I7jX8vZlM+2GsO5A==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3399
Date: Tue, 12 Dec 2023 08:53:48 +0100
Message-Id: <20879826c01fb9ead71c339866846ea794669802.1702366958.git.dsimic@manjaro.org>
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

Not all supported boards actually use the RK3399's built-in GMAC, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 alias from the RK3399 SoC dtsi file, and add the
same alias back to the appropriate board dts(i) files.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts                 | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts               | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts       | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi               | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi             | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts        | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi           | 1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi       | 1 +
 19 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 6464ef4d113d..173da81fc231 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -15,6 +15,7 @@ / {
 	compatible = "openailab,eaidk-610", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 3d1e126b553f..55eca7a50a1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "rockchip,rk3399-evb", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdhci;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 1ce85a5816e4..30e4879f322c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -13,6 +13,10 @@ / {
 	model = "96boards RK3399 Ficus";
 	compatible = "vamrs,ficus", "rockchip,rk3399";
 
+	aliases {
+		ethernet0 = &gmac;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c5db64f3e124..260415d99aeb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "firefly,firefly-rk3399", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 7af27e8216f1..4a6ab6c2e24c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "hugsun,x99", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts
index 8302e51def52..99ac4ed0f13f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts
@@ -10,6 +10,10 @@
 / {
 	model = "Khadas Edge-Captain";
 	compatible = "khadas,edge-captain", "rockchip,rk3399";
+
+	aliases {
+		ethernet0 = &gmac;
+	};
 };
 
 &gmac {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
index f5dcb99dc349..e12e7b4d64ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
@@ -10,6 +10,10 @@
 / {
 	model = "Khadas Edge-V";
 	compatible = "khadas,edge-v", "rockchip,rk3399";
+
+	aliases {
+		ethernet0 = &gmac;
+	};
 };
 
 &gmac {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 1eb287a3f8c0..9e3aec4440bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -19,6 +19,7 @@ / {
 	compatible = "kobol,helios64", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
 		spi1 = &spi1;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index a21ac319f809..cb69e2145fa9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -15,6 +15,7 @@ / {
 	compatible = "leez,p710", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 7c5f441a2219..b7f1e47978a6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -18,6 +18,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index dba4d03bfc2b..e7551449e718 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "rockchip,rk3399-orangepi", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 20e3f41efe97..574a775ca880 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -9,6 +9,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdhci;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index c32913df93c3..ca7a446b6568 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -14,6 +14,7 @@ / {
 	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 8bfd5f88d1ef..7baf9d1b22fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -15,6 +15,7 @@ / {
 	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index f2279aa6ca9e..281a12180703 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -12,6 +12,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index bca2b50e0a93..f30b82a10ca3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -11,6 +11,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &sdmmc;
 		mmc2 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index e6ac292ce645..26c41f1e9adb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -12,6 +12,7 @@ / {
 	compatible = "rockchip,rk3399-sapphire", "rockchip,rk3399";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index da0dfb237f85..cf653246d5b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -19,7 +19,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 8b8992a8e9c0..8823c924dc1d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -13,6 +13,7 @@ / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};

