Return-Path: <devicetree+bounces-152229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0AAA4863F
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A8F216A530
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540EF1AB6DE;
	Thu, 27 Feb 2025 17:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="QUM6ZqO5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E0C1DC98C
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 17:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740675665; cv=none; b=oMpCyPbjI+j/SuNKdJUZ066nDQEWkxL8WraMSqlxvpJMTjLnBfWNL2EPcXJnKaA+m9cOLEvDVRiYGmrVZC0wAgrISyKeX6Ntn1qhajbhJbz04UeXoMEXviN3qhrDeVcYXhyAQ5leMgHmFVsJUP+sh6UkVcZxoqjOfx0BIl+Hnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740675665; c=relaxed/simple;
	bh=Tpj2kAyKeMlsVqLzWxWNh4wDresVNbiRTFb9TM6WUzk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XFF0RcBgjA5Wc5R98toJZfn3zyeEZVgukiuvczEmROgTdZYcYSMrNUMZYvdq3QYAJuMtT3DLkpDvtE+B+9aVvrOr5cSXAd7YIPUzdoaP6Jm/W8uskIKRgCnM2o9MVfYBv+3zNhVf0/681Q6jg5V9/UxjB4kwEM/2T0iYfcmNAjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=QUM6ZqO5; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 011E1103718C9;
	Thu, 27 Feb 2025 18:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1740675660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=80ISeY7DDf1yy5uWTMBnUjkKTvDUwesh5b01Bc/k5X0=;
	b=QUM6ZqO5tHSNtzDnhtd4p5ZL4LiWkQdSQZexHRrS83MopTiyTlhNNjjMzIy/oLeixVlZdd
	uUpx49bGRzb0kHs52yiVWMd6PCsO5w3eQhTmv7cyQy4NscTCyKuoVeA1dN4iWxF+NOqpcJ
	VWl48Xg6FSruutDN5v8q8ulOwqHfPXaHY3ozDlHvVpDGQEUsxAItjObsVqmvKMgDA1nMPh
	qbXJlxAj9tyEXl4kjcojBauMrvSprBvYnXpuxcUoRqOuwx+zyzKb+bwox5ems5+N2iFb9b
	v/Weo9c+N5xzhiHYInpXtZNhpF5w4RjtseNW4eOv97nRt57f00Y626VC7h0X1w==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev
Subject: [PATCH 9/9] arm64: dts: imx95: Describe Mali G310 GPU
Date: Thu, 27 Feb 2025 17:58:09 +0100
Message-ID: <20250227170012.124768-10-marex@denx.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250227170012.124768-1-marex@denx.de>
References: <20250227170012.124768-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The instance of the GPU populated in i.MX95 is the G310,
describe this GPU in the DT. Include description of the
GPUMIX block controller, which can be operated as a simple
reset. Include dummy GPU voltage regulator and OPP tables.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx95.dtsi | 62 ++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 3af13173de4bd..36bad211e5558 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -249,6 +249,37 @@ dummy: clock-dummy {
 		clock-output-names = "dummy";
 	};
 
+	gpu_fixed_reg: fixed-gpu-reg {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <920000>;
+		regulator-max-microvolt = <920000>;
+		regulator-name = "vdd_gpu";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	gpu_opp_table: opp_table {
+		compatible = "operating-points-v2";
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-hz-real = /bits/ 64 <500000000>;
+			opp-microvolt = <920000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-hz-real = /bits/ 64 <800000000>;
+			opp-microvolt = <920000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-hz-real = /bits/ 64 <1000000000>;
+			opp-microvolt = <920000>;
+		};
+	};
+
 	clk_ext1: clock-ext1 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -1846,6 +1877,37 @@ netc_emdio: mdio@0,0 {
 			};
 		};
 
+		gpu_blk_ctrl: reset-controller@4d810000 {
+			compatible = "fsl,imx95-gpu-blk-ctrl";
+			reg = <0x0 0x4d810000 0x0 0xc>;
+			#reset-cells = <1>;
+			clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
+			assigned-clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
+			assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
+			assigned-clock-rates = <133333333>;
+			power-domains = <&scmi_devpd IMX95_PD_GPU>;
+			status = "disabled";
+		};
+
+		gpu: gpu@4d900000 {
+			compatible = "fsl,imx95-mali", "arm,mali-valhall-csf";
+			reg = <0 0x4d900000 0 0x480000>;
+			clocks = <&scmi_clk IMX95_CLK_GPU>;
+			clock-names = "core";
+			interrupts = <GIC_SPI 288 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "gpu", "job", "mmu";
+			mali-supply = <&gpu_fixed_reg>;
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&scmi_devpd IMX95_PD_GPU>, <&scmi_perf IMX95_PERF_GPU>;
+			power-domain-names = "mix", "perf";
+			resets = <&gpu_blk_ctrl 0>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <1013>;
+			status = "disabled";
+		};
+
 		ddr-pmu@4e090dc0 {
 			compatible = "fsl,imx95-ddr-pmu", "fsl,imx93-ddr-pmu";
 			reg = <0x0 0x4e090dc0 0x0 0x200>;
-- 
2.47.2


