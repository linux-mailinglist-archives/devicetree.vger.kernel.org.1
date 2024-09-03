Return-Path: <devicetree+bounces-99408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EB9969ADF
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEAA5B2251F
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7A5A1D0940;
	Tue,  3 Sep 2024 10:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="EiUcFSm2"
X-Original-To: devicetree@vger.kernel.org
Received: from omta040.useast.a.cloudfilter.net (omta040.useast.a.cloudfilter.net [44.202.169.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8D91CDFC5
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 10:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725360787; cv=none; b=XOKGZgk38aMmx0Fc2sN5vlAkvNDeQOK3LXnm0I7oJLKsfB9dknENcVJ2xjnosHEy6BSEFb/atDh64qM0AL3GJ3sP4BMQ0aQlXL0Pt1xlB5gWXugb5SYMrWgZxSpCFJg9CGv2V8wYUTPu9CIugMBY6BI6/6XYsuomFph/0nrtY0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725360787; c=relaxed/simple;
	bh=rQT8ju2EYl+ggnYBWZWGtukvbLYkXbzUYX2xT51wQnE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i9Gvht1MIK43uFJQOrYUSPi6i1f2tvoi2sm+CkJ9r7GF7SC0ohFThNaCsCfiPMSC3rb4J40FOPulS4fz6yToIzV8Sr9PN7W/s840JLXTwT4Yf6/onhtjYt2gWpXCJI2Wwb9opkGbmMwJKWhHLOI1gr92qTaXF6mqSAarp4eXPe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=EiUcFSm2; arc=none smtp.client-ip=44.202.169.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id l6JQszfrNnNFGlR9ksUNiP; Tue, 03 Sep 2024 10:53:04 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9hsXFMyJxsOlR9isaEHX; Tue, 03 Sep 2024 10:53:03 +0000
X-Authority-Analysis: v=2.4 cv=LsmUyGdc c=1 sm=1 tr=0 ts=66d6ea8f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=IUsOfeiScPouXSuZ-WoA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RDY88ra94JBb+IuiAIyKiYCW1DH2SA5E50yh/vMkXuw=; b=EiUcFSm2grXFwHQyuGWeu/Ntmy
	Pci/WR+to7JAHf38OpkLoY9kHBkuT3PMLqhcr0ewOi/zZDBNl1urlDqsnbUEU5WhQ3XfTtqukp55H
	o6NOCXT/rD6NyqkbWU5Yodf5iHHZrsaL5h/o0zB4vdSdHI5SKr9ObL/djqxh5q0F1VkiHT76tYIUn
	GWSlDT+uV0RoaLhqCmXp8CP1wI5RpCIfyhcbDPQe6P1r9Dg1JrA1zBVf75jwGKqpg1sBkDxYGpt/w
	/T5uQlQTDWpMWHvLG+pgp9qGt8uXUhs/IrgmqZdhFSEuy4AjISFyB/kAtcKdncLnXKgFjH+dYYXMn
	y1RFBmBg==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9e-000Elu-1q;
	Tue, 03 Sep 2024 16:22:58 +0530
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
Subject: [PATCH v2 1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
Date: Tue,  3 Sep 2024 16:22:38 +0530
Message-Id: <20240903105245.715899-2-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
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
X-Exim-ID: 1slR9e-000Elu-1q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 17
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCNT33lMy2W7lmDGIz1ONFUx2tGbVXofey2eeUFzMEgj9oojUcJqCIxgVTB8kEBcJWNZ54/nzL0fz0bsjf57XENXphqXHw0257O3dTW3NwIjBxl6qMtr
 Uy1JHBNeOlDd8xnAX4XAK1+CbuSydLZebfuW7XGosOd092M94D3+32bL+HTRrX+iFaKqx2ijLu947SZgaVYqqjSXbzzh1AuvI/c=

Add i2c3 node and possible pinctrl for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - No change

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


