Return-Path: <devicetree+bounces-96193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813095D189
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 17:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AED48B2482E
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 15:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0515E188CA7;
	Fri, 23 Aug 2024 15:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="k70Ai4kV"
X-Original-To: devicetree@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83065188A2D
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 15:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724427360; cv=none; b=W1C/IYOjme7szjWF+EoktxcmSsEdo4jai1n/SgVcCtL6fXu3NXXK5TQVBSGACkLueEDATabWaOMFBqvW7FEPElYfgRCOrrNj+3n151xsYwY3qTAT0FWLuzzsz+IBbcYHc9OsqzJ3F8ZnlK1DfdstTGqw/0BFGWl3NQV3821JByc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724427360; c=relaxed/simple;
	bh=WYrsJ9l1T2QO1pB8ewNoGKkl88qY3DP2MUtmVJySsvM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I93zKPIOGXpHoNW7EWw37dS2s0hmFZ6V0iS6CRmha6gAUEnut67jLEjPvMwF1rY+6MZuhI5k/Ks9XAOLlz+MKyqx9fTmTIr83Tn5mCbDdoQWKZpLfX7BH0O5lhKF/eVo+l/14MlliBeeMWuZOrdXkrlwxj9d17VT6dzdHUU2lyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=k70Ai4kV; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id hHOist0mavH7lhWKPsSFIf; Fri, 23 Aug 2024 15:35:53 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKMswj8pML7zhWKNspH9d; Fri, 23 Aug 2024 15:35:52 +0000
X-Authority-Analysis: v=2.4 cv=asm0CzZV c=1 sm=1 tr=0 ts=66c8ac58
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=IUsOfeiScPouXSuZ-WoA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=lGv/wy08x/B7bLYOWqbVbMhnaUihX+YE7qSWjC5RYsw=; b=k70Ai4kVIEJb6oHR6G6An729wJ
	g26+STN0j9O8wB/eAMURdF7H7FY5idtC20iPFBq9ZSIDNwG64oolqrzElmHuvUklK11ER1bwel0Cu
	GpKQdW4D+ABvJvHFNUioL4Yx5wmSOwpKKtWL/6OOR89Sromr+M8AuOZryp6L38mtcQrCFR0QuHfwU
	5DmsNmFI7oKTnbDpqk5uUVVMCuLWRw+IPIWkQfg+jpj6dOSzKjZfAVtukeZzedKcjhdpWxZsK16yS
	J4XjrnThYJisgxr8UHfVumBHwZd6HaC1gCWrs4dJVRIPmgJh4671msMX9tPhe8yQPdosQ0vewLeuF
	xrE4yuvw==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKK-000GB4-1i;
	Fri, 23 Aug 2024 21:05:48 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH 1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
Date: Fri, 23 Aug 2024 21:05:21 +0530
Message-Id: <20240823153528.3863993-2-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKK-000GB4-1i
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 15
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJsJU6JREgqaly4O9lwB4LrffDVxgJGMmNo2v+dNf1KUIHM1r7a/Y11XpGBP2mxS0lgkAgONVqq+d17/7Sv7np3gu6YKsMvVQqdsrsSQZveukgnYvOGj
 fJ8+jDc55Vxsth2fkAzFnCtqB5ibCpGXvd7S6qmqNAz3POmqk6FLj6NplpMw+884d89Ojgv/sR8IjO6Ba+mONashWwYO91jBB7s=

Add i2c3 node and possible pinctrl for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 26 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 15 +++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 06b1d7f2d858..be666b25b830 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -97,6 +97,32 @@ i2c2_xfer: i2c2-xfer {
 				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<3 RK_PA4 5 &pcfg_pull_none>,
+				/* i2c3_sda_m0 */
+				<3 RK_PA5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PD4 7 &pcfg_pull_none>,
+				/* i2c3_sda_m1 */
+				<2 RK_PD5 7 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2c3m2_xfer: i2c3m2-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m2 */
+				<1 RK_PD6 3 &pcfg_pull_none>,
+				/* i2c3_sda_m2 */
+				<1 RK_PD7 3 &pcfg_pull_none>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index bb603cae13df..59de848c9a83 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -22,6 +22,7 @@ / {
 	aliases {
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
+		i2c3 = &i2c3;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -308,6 +309,20 @@ dmac: dma-controller@ff4e0000 {
 		clock-names = "apb_pclk";
 	};
 
+	i2c3: i2c@ff520000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff520000 0x1000>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C3>, <&cru PCLK_I2C3>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c3m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+		rockchip,grf = <&pmugrf>;
+	};
+
 	pwm11: pwm@ff550030 {
 		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
 		reg = <0xff550030 0x10>;
-- 
2.39.2


