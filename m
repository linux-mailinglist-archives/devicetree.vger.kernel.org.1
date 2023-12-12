Return-Path: <devicetree+bounces-24177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5071B80E522
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80B861C2197D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3901D1774E;
	Tue, 12 Dec 2023 07:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="VF1yy9nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6748CD0
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 23:53:56 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=if0Wn/NgDHdBsnjuuIuPaBN8jRbQmwwaCIX7E2lyzW8=;
	b=VF1yy9nbmqTMlxJvJi6FLkde0x+e+COmPS6VzdJ/aDbzFr4sdJ0WQj5Zpz3m5GTKLrC9IK
	Dk0Y0IJevgHUdzs6IuM1iJxN7UFhJkyaNSN9Aa7QFl0wOZTaf/STr8TOF54THYSsGbdCOP
	z4wFWPFhy4mjZ6MzG3HrFugkiysuYZ1xpgnxrE5s7Rv3u8gtFT3BCln9oqZ/zO8QzxHIzG
	6BSunKcllYu8okfysU631WwLD8SvwzLTq9zsb42/XH51AkEG/+wL3GjWvUsC1yJSExqiK/
	xt/dJOl4uJW1w/RHMyqJJP+S+qX7/3151gRSelTxUXkWLRPyTdEvZ87Ns/eKDg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3368
Date: Tue, 12 Dec 2023 08:53:49 +0100
Message-Id: <77115184d633190c917d868f883070e100d93dbc.1702366958.git.dsimic@manjaro.org>
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

Not all supported boards actually use the RK3368's built-in GMAC, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 alias from the RK3368 SoC dtsi file, and add the
same alias back to the appropriate board dts(i) files.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi               | 1 -
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index e47d1398aeca..b48b98c13705 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -9,6 +9,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index be06e6e64d18..029b8e22e709 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "geekbuying,geekbox", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 5753e57fd716..8ac8acf4082d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -8,6 +8,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 81d1064fdb21..dcee2e28916f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "tronsmart,orion-r68-meta", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 5589f3db6b36..b16b7ca02379 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "rockchip,r88", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a4c5aaf1f457..7b8c416aa890 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -19,7 +19,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;

