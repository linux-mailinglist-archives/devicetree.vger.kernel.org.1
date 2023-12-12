Return-Path: <devicetree+bounces-24194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8180E561
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3FE6281285
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDC21803C;
	Tue, 12 Dec 2023 08:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="jyoC8Duy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 646D9A0
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:01:44 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368103;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=prPI+o2ux/zMU+D+sJCwA6l3L5stzsv25R3y8h+D+EM=;
	b=jyoC8DuyE0Cq+yHW7FrTyWPwE0zKsee8hHSLWMtzuHmO00tgSlAt3XLr3rZPZYP0XyurdF
	CgdVYIXHCXST6zpf1So7Yf7kxCnCzUSS3KdP2YXDTlxBk44DcvFZRqi0jk45cEFsDqshd1
	kVGpu4AFHZqCDwmJ0JzT7K8reiTyp2u0gqGl/k56Et1hFelMaWixdGQRChcikKJr9oYbWt
	+L6NXGvC5wx4R4Hl/ZGJyy0J2AN8A4+/PsAIeNYWgFPngifJJGbYUzYR2ia7zXWPehkKLS
	HC9dGV4BC9Stiq24U4q5SrmM4FLyePce1crT3Pga23mZzqoZ9ruoPKRLq6fiPQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S) boards
Date: Tue, 12 Dec 2023 09:01:40 +0100
Message-Id: <9af2026bf8a5538aff627381289cb06f2fab4263.1702368023.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Add ethernet0 alias to the board dts files for a few supported RK3588 and
RK3588S boards that had it missing.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts    | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index b9d789d57862..3cd748ee84c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
 
 	aliases {
+		ethernet0 = &gmac0;
 		mmc0 = &sdhci;
 		serial2 = &uart2;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 5c59f9571dce..467622a8c008 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "pine64,quartzpro64", "rockchip,rk3588";
 
 	aliases {
+		ethernet0 = &gmac0;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		serial2 = &uart2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index e3a839a12dc6..36269100d2ee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -13,6 +13,7 @@ / {
 	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdmmc;
 		serial2 = &uart2;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd003..abd6934ab3b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "radxa,rock-5a", "rockchip,rk3588s";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		serial2 = &uart2;

