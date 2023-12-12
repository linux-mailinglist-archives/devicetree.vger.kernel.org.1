Return-Path: <devicetree+bounces-24175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A826D80E521
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 646A728226B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42AF1773B;
	Tue, 12 Dec 2023 07:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="yfRsNPYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74860DB
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 23:53:57 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p5/1ag4QGZlOFVXihLy+IHgakjahzXcUBXT7rx+5BHA=;
	b=yfRsNPYJVE3lzFnNXtBSN8+BZ42R5enkWawK/0JJkFgfkWoxnvDTeGIXHMAkU02jN37A6x
	atcnX5OXJiA4o2A60iDaL3Faye6wy3Eywjwe0UxqMYcRM8pozMuWmZGgaNdfyiwRvqIJ8m
	d6q+EJBvr1Di9qtf+IAp2ninirZYU5kq863PjAcYKabmGXSUG9xwjMeJ8uVLfLuwMvz5Aq
	oHmVgYZTOacH8zAL20irwIhQ7Z5ejwJiWpyBSJgZwv7+THiz83SiFmIpOIqc1ALg997nl1
	f9Q80S8PwymA259Sm5qf4VvSLQVo0ZB/5Ied4mgONpWrOuZBFC1XcyMC874Oiw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for PX30
Date: Tue, 12 Dec 2023 08:53:51 +0100
Message-Id: <0d9da8959b4f567622676c34b5feb74c49489554.1702366958.git.dsimic@manjaro.org>
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

Not all supported boards actually use the PX30's built-in (G)MAC, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 alias from the PX30 SoC dtsi file, and add the same
alias back to the appropriate board dts(i) files.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts             | 1 +
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi                | 1 -
 4 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 3429e124d95a..5b4e22385165 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc1 = &sdmmc;
 		mmc2 = &sdio;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index c1bbd555f5f5..0a90a88fc664 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "rockchip,px30-evb", "rockchip,px30";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index 7d4c5324c61b..16798eb77077 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -13,6 +13,7 @@ / {
 	compatible = "tsd,px30-ringneck-haikou", "rockchip,px30";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc2 = &sdmmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 42ce78beb413..d0905515399b 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -20,7 +20,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;

