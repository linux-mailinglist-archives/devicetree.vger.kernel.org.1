Return-Path: <devicetree+bounces-36859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E61D842E0E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:41:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A91981C23952
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73541762C3;
	Tue, 30 Jan 2024 20:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b="Fk+cn2h5"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DF25B1F6
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706647273; cv=none; b=EKoko2Uw3LzfPsxgDBOybIqw0FBMyONpRg0FmrFEQ/4b3WWThrf0M87hgOjBqX2jcqSSbfR+Yapg9p2SFvfsARmRhUjIK+2b0OBVS/O/g0hyupbU8JxWV8+DY5L5hliRmv+g97jjAxJbpU+5bJSRbZK2dHNituGK/hQs//6umZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706647273; c=relaxed/simple;
	bh=DekZO0aq9lhra3tRrH0719xH/gp0/UNZvHm7ULmUiGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RCkbZLEDR44Dcqyr2s89FMozw5TJV8ov4txvVI4a9gTAanNTWWaoTMmCtpnnzNBodMVsmt2HAJZRpbt1RJh91HJPvO/+F0lnmX/ogHIaqcP6/+SOBMYTaaAmW34WqHG33ZEnJf3sN/KHoyf1JBpwt9AhZMbkEoPkJg4rM1+SZKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se; spf=pass smtp.mailfrom=grimler.se; dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b=Fk+cn2h5; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=grimler.se
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=grimler.se; s=key1;
	t=1706647268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DG7tf3ZanPe0jMuzI6Bk8fkwCRX7z/OicBYBzmzPw1s=;
	b=Fk+cn2h5CmKdF/qu38riedRwlSYujz/5llH+xmJxnsEDcgmNS47b9PEqdDCZhtcpj6004P
	GE0Akg7c018Kgt4yQZv//EdMQadw4R/QhV0KbO7EkVNT8k+popqri+266nWCbu9IgEn/SI
	9a5LvrhejqreyjpBv6sjSWMekoWbxLQ=
From: Henrik Grimler <henrik@grimler.se>
Date: Tue, 30 Jan 2024 21:40:39 +0100
Subject: [PATCH 1/3] ARM: dts: samsung: exynos5420-galaxy-tab-common: sort
 node properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240130-galaxy-tab-s-cleanup-v1-1-d4e17857241d@grimler.se>
References: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
In-Reply-To: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht
X-Developer-Signature: v=1; a=openpgp-sha256; l=2728; i=henrik@grimler.se;
 h=from:subject:message-id; bh=DekZO0aq9lhra3tRrH0719xH/gp0/UNZvHm7ULmUiGI=;
 b=owEBbQGS/pANAwAKAbAHbkkLcWFrAcsmYgBluV7adNmpL0JxNeL0p04b/DnyOK6UU6hBN48Sd
 osGQ9v6Oc2JATMEAAEKAB0WIQQsfymul4kfZBmp4s2wB25JC3FhawUCZble2gAKCRCwB25JC3Fh
 a6SbB/9GyZCxy38ia8XCTbbUIC7Zhq+QX+yYPzOynkJjx4ujULXY4n7Qud22b4uGUzKUD6N7Htc
 2oKtBJzqSPk7Gt7B7jYGAfZBpjqb5d9cjIWPkLPmfwzQNgF7aJCILH7au65kBlPrc2d+AvlnUex
 q4qh5xGwRgjb+mN6o7O/FSkVtVQEZhr6BZ1P7mBcSrdVVe/3bb3tiw8xmwfNu1IFi9RDFhYFfTn
 gg3Rg3NQU+Dz4OYU10J4i0Z1ZQxNmzMdr1B42G4cP8rYVUMdEB3e0zkxLnZNbdWgiM+FiqgDRWk
 Tw9bS3doVlsi3dOHWPhsfBqNxHDyaWCBf4G8PaAxbNZn+t8A
X-Developer-Key: i=henrik@grimler.se; a=openpgp;
 fpr=2C7F29AE97891F6419A9E2CDB0076E490B71616B
X-Migadu-Flow: FLOW_OUT

Sort all node properties according to dts coding style guidelines, to
make dtsi easier to follow.

Signed-off-by: Henrik Grimler <henrik@grimler.se>
---
 .../dts/samsung/exynos5420-galaxy-tab-common.dtsi  | 23 +++++++++++-----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
index f525b2f5e4e0..0c1aeafc025b 100644
--- a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
@@ -103,8 +103,8 @@ &cpu4 {
 };
 
 &gpu {
-	status = "okay";
 	mali-supply = <&buck4_reg>;
+	status = "okay";
 };
 
 &hsi2c_7 {
@@ -113,11 +113,10 @@ &hsi2c_7 {
 	pmic@66 {
 		compatible = "samsung,s2mps11-pmic";
 		reg = <0x66>;
-
 		interrupt-parent = <&gpx3>;
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
 		pinctrl-0 = <&s2mps11_irq>;
+		pinctrl-names = "default";
 
 		s2mps11_osc: clocks {
 			compatible = "samsung,s2mps11-clk";
@@ -605,7 +604,6 @@ &mixer {
 
 /* Internal storage */
 &mmc_0 {
-	status = "okay";
 	bus-width = <8>;
 	cap-mmc-highspeed;
 	card-detect-delay = <200>;
@@ -614,27 +612,28 @@ &mmc_0 {
 	non-removable;
 	pinctrl-0 = <&sd0_clk &sd0_cmd &sd0_bus1 &sd0_bus4 &sd0_bus8>;
 	pinctrl-names = "default";
+	vqmmc-supply = <&ldo3_reg>;
 	samsung,dw-mshc-ciu-div = <3>;
 	samsung,dw-mshc-ddr-timing = <0 2>;
 	samsung,dw-mshc-sdr-timing = <0 4>;
-	vqmmc-supply = <&ldo3_reg>;
+	status = "okay";
 };
 
 /* External sdcard */
 &mmc_2 {
-	status = "okay";
 	bus-width = <4>;
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	cd-gpios = <&gpx2 4 GPIO_ACTIVE_LOW>;
 	pinctrl-0 = <&sd2_clk &sd2_cmd &mmc2_cd &sd2_bus1 &sd2_bus4>;
 	pinctrl-names = "default";
-	samsung,dw-mshc-ciu-div = <3>;
-	samsung,dw-mshc-ddr-timing = <0 2>;
-	samsung,dw-mshc-sdr-timing = <0 4>;
 	sd-uhs-sdr50;
 	vmmc-supply = <&ldo19_reg>;
 	vqmmc-supply = <&ldo13_reg>;
+	samsung,dw-mshc-ciu-div = <3>;
+	samsung,dw-mshc-ddr-timing = <0 2>;
+	samsung,dw-mshc-sdr-timing = <0 4>;
+	status = "okay";
 };
 
 &pinctrl_0 {
@@ -652,9 +651,9 @@ s2mps11_irq: s2mps11-irq-pins {
 };
 
 &rtc {
-	status = "okay";
 	clocks = <&clock CLK_RTC>, <&s2mps11_osc S2MPS11_CLK_AP>;
 	clock-names = "rtc", "rtc_src";
+	status = "okay";
 };
 
 &tmu_cpu0 {
@@ -686,11 +685,11 @@ &usbdrd_dwc3_1 {
 };
 
 &usbdrd3_0 {
-	vdd33-supply = <&ldo9_reg>;
 	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
 };
 
 &usbdrd3_1 {
-	vdd33-supply = <&ldo9_reg>;
 	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
 };

-- 
2.30.2


