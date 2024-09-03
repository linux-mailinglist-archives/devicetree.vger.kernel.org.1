Return-Path: <devicetree+bounces-99554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A427D96A28A
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 17:29:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 832A71F2883E
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 15:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 834F619CC39;
	Tue,  3 Sep 2024 15:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kzqJpQFN"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE95A19C574;
	Tue,  3 Sep 2024 15:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725377049; cv=none; b=p+ormO7Bcs/nUt6K2dGeJgKveTWRbPvK7vRB6tzrjemS5qP1NIWBgKg2lRHqzf11tyGMxFdSX/6VxkRLS6pm3S8MwJA9yLLFIlLbFY0/jndGobfvb7AlPiWnvOqkfIIBbd055ZapjmYMWwnTLfEVKHPHotaJBBxhsHesjmya78o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725377049; c=relaxed/simple;
	bh=8hPLfj4XzIRCEMLOEwCF0z2pBF7aGHPMrZkN1o4NIhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p9rlBPp0/wPT7eLONKfdfPbuBWtWRJKioIP68G3xDN2URi5VWGF+fjOQvbavWUEiKzVgDVdERw1guJhmMJpfJfQ4KK7Zr/ZJPyUH5qzqtz9rSQImR6x3NySiNXdBEIOxfarAcWEN082NDyRPGvJ6iM89WbulpLUfP/+XWzWjWHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=kzqJpQFN; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725377040;
	bh=8hPLfj4XzIRCEMLOEwCF0z2pBF7aGHPMrZkN1o4NIhE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kzqJpQFNhuHrRxvxGwTTfuIZfDW9gLFp8T8N/ZOKlvBbaLLWEbw4VRAFKLmmBaLa1
	 ftdPLeHkBYUw8f1hccElwYTuYV4mAsC0+FjQpqyFrLPn8ohXEYdKl6JitWnUr6bWSw
	 wxNz6iC3TZg8Goge/2ftIgYrPo41kaFcb4vJoJVU1Koscsk0VALMZad4ZJnk8bFBk8
	 v8qaWvCL3ZibeIjx5nzrsYMDxts88d75mV+8BiJmQmt2sCHIRIteHJewyuyFR/0YXV
	 VKspd7xw6aHrGLgZbTN1n97BkJeWU0Dp8QBXTBjrvS2ASJrb2n/vIxK2GbzoVKdKAc
	 Yee6tm3330mUA==
Received: from bootstrap.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0F90817E10E0;
	Tue,  3 Sep 2024 17:23:54 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Jamie Iles <jamie@jamieiles.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v4 8/9] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Tue,  3 Sep 2024 11:22:38 -0400
Message-ID: <20240903152308.13565-9-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This device tree contains all devices necessary for booting from network
or SD Card.

It supports CPU, CRU, PM domains, dma, interrupts, timers, UART, I2C
and SDHCI (everything necessary to boot Linux on this system on chip)
as well as Ethernet, SPI, GPU and RTC.

Signed-off-by: Liang Chen <cl@rock-chips.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Tested-by: Liang Chen <cl@rock-chips.com>
---
 .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1644 +++++
 2 files changed, 7419 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
new file mode 100644
index 000000000000..0b0851a7e4ea
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
@@ -0,0 +1,5775 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rockchip-pinconf.dtsi"
+
+/*
+ * This file is auto generated by pin2dts tool, please keep these code
+ * by adding changes at end of this file.
+ */
+&pinctrl {
+	aupll_clk {
+		/omit-if-no-ref/
+		aupll_clkm0_pins: aupll_clkm0-pins {
+			rockchip,pins =
+				/* aupll_clk_in_m0 */
+				<0 RK_PA0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		aupll_clkm1_pins: aupll_clkm1-pins {
+			rockchip,pins =
+				/* aupll_clk_in_m1 */
+				<0 RK_PB0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		aupll_clkm2_pins: aupll_clkm2-pins {
+			rockchip,pins =
+				/* aupll_clk_in_m2 */
+				<4 RK_PA2 3 &pcfg_pull_none>;
+		};
+	};
+
+	cam_clk0 {
+		/omit-if-no-ref/
+		cam_clk0m0_clk0: cam_clk0m0-clk0 {
+			rockchip,pins =
+				/* cam_clk0_out_m0 */
+				<3 RK_PD7 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		cam_clk0m1_clk0: cam_clk0m1-clk0 {
+			rockchip,pins =
+				/* cam_clk0_out_m1 */
+				<2 RK_PD2 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_clk1 {
+		/omit-if-no-ref/
+		cam_clk1m0_clk1: cam_clk1m0-clk1 {
+			rockchip,pins =
+				/* cam_clk1_out_m0 */
+				<4 RK_PA0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		cam_clk1m1_clk1: cam_clk1m1-clk1 {
+			rockchip,pins =
+				/* cam_clk1_out_m1 */
+				<2 RK_PD6 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam_clk2 {
+		/omit-if-no-ref/
+		cam_clk2m0_clk2: cam_clk2m0-clk2 {
+			rockchip,pins =
+				/* cam_clk2_out_m0 */
+				<4 RK_PA1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		cam_clk2m1_clk2: cam_clk2m1-clk2 {
+			rockchip,pins =
+				/* cam_clk2_out_m1 */
+				<2 RK_PD7 1 &pcfg_pull_none>;
+		};
+	};
+
+	can0 {
+		/omit-if-no-ref/
+		can0m0_pins: can0m0-pins {
+			rockchip,pins =
+				/* can0_rx_m0 */
+				<2 RK_PA0 13 &pcfg_pull_none>,
+				/* can0_tx_m0 */
+				<2 RK_PA1 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can0m1_pins: can0m1-pins {
+			rockchip,pins =
+				/* can0_rx_m1 */
+				<4 RK_PC3 12 &pcfg_pull_none>,
+				/* can0_tx_m1 */
+				<4 RK_PC2 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can0m2_pins: can0m2-pins {
+			rockchip,pins =
+				/* can0_rx_m2 */
+				<4 RK_PA6 13 &pcfg_pull_none>,
+				/* can0_tx_m2 */
+				<4 RK_PA4 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can0m3_pins: can0m3-pins {
+			rockchip,pins =
+				/* can0_rx_m3 */
+				<3 RK_PC1 12 &pcfg_pull_none>,
+				/* can0_tx_m3 */
+				<3 RK_PC4 12 &pcfg_pull_none>;
+		};
+	};
+
+	can1 {
+		/omit-if-no-ref/
+		can1m0_pins: can1m0-pins {
+			rockchip,pins =
+				/* can1_rx_m0 */
+				<2 RK_PA2 13 &pcfg_pull_none>,
+				/* can1_tx_m0 */
+				<2 RK_PA3 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can1m1_pins: can1m1-pins {
+			rockchip,pins =
+				/* can1_rx_m1 */
+				<4 RK_PC7 13 &pcfg_pull_none>,
+				/* can1_tx_m1 */
+				<4 RK_PC6 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can1m2_pins: can1m2-pins {
+			rockchip,pins =
+				/* can1_rx_m2 */
+				<4 RK_PB4 13 &pcfg_pull_none>,
+				/* can1_tx_m2 */
+				<4 RK_PB5 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		can1m3_pins: can1m3-pins {
+			rockchip,pins =
+				/* can1_rx_m3 */
+				<3 RK_PA3 11 &pcfg_pull_none>,
+				/* can1_tx_m3 */
+				<3 RK_PA2 11 &pcfg_pull_none>;
+		};
+	};
+
+	clk0_32k {
+		/omit-if-no-ref/
+		clk0_32k_pins: clk0_32k-pins {
+			rockchip,pins =
+				/* clk0_32k_out */
+				<0 RK_PA2 10 &pcfg_pull_none>;
+		};
+	};
+
+	clk1_32k {
+		/omit-if-no-ref/
+		clk1_32k_pins: clk1_32k-pins {
+			rockchip,pins =
+				/* clk1_32k_out */
+				<1 RK_PD5 13 &pcfg_pull_none>;
+		};
+	};
+
+	clk_32k {
+		/omit-if-no-ref/
+		clk_32k_pins: clk_32k-pins {
+			rockchip,pins =
+				/* clk_32k_in */
+				<0 RK_PA2 9 &pcfg_pull_none>;
+		};
+	};
+
+	cpubig {
+		/omit-if-no-ref/
+		cpubig_pins: cpubig-pins {
+			rockchip,pins =
+				/* cpubig_avs */
+				<0 RK_PD2 11 &pcfg_pull_none>;
+		};
+	};
+
+	cpulit {
+		/omit-if-no-ref/
+		cpulit_pins: cpulit-pins {
+			rockchip,pins =
+				/* cpulit_avs */
+				<0 RK_PC0 11 &pcfg_pull_none>;
+		};
+	};
+
+	debug0_test {
+		/omit-if-no-ref/
+		debug0_test_pins: debug0_test-pins {
+			rockchip,pins =
+				/* debug0_test_out */
+				<1 RK_PC4 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug1_test {
+		/omit-if-no-ref/
+		debug1_test_pins: debug1_test-pins {
+			rockchip,pins =
+				/* debug1_test_out */
+				<1 RK_PC5 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug2_test {
+		/omit-if-no-ref/
+		debug2_test_pins: debug2_test-pins {
+			rockchip,pins =
+				/* debug2_test_out */
+				<1 RK_PC6 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug3_test {
+		/omit-if-no-ref/
+		debug3_test_pins: debug3_test-pins {
+			rockchip,pins =
+				/* debug3_test_out */
+				<1 RK_PC7 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug4_test {
+		/omit-if-no-ref/
+		debug4_test_pins: debug4_test-pins {
+			rockchip,pins =
+				/* debug4_test_out */
+				<1 RK_PD0 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug5_test {
+		/omit-if-no-ref/
+		debug5_test_pins: debug5_test-pins {
+			rockchip,pins =
+				/* debug5_test_out */
+				<1 RK_PD1 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug6_test {
+		/omit-if-no-ref/
+		debug6_test_pins: debug6_test-pins {
+			rockchip,pins =
+				/* debug6_test_out */
+				<1 RK_PD2 7 &pcfg_pull_none>;
+		};
+	};
+
+	debug7_test {
+		/omit-if-no-ref/
+		debug7_test_pins: debug7_test-pins {
+			rockchip,pins =
+				/* debug7_test_out */
+				<1 RK_PD3 7 &pcfg_pull_none>;
+		};
+	};
+
+	dp {
+		/omit-if-no-ref/
+		dpm0_pins: dpm0-pins {
+			rockchip,pins =
+				/* dp_hpdin_m0 */
+				<4 RK_PC4 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dpm1_pins: dpm1-pins {
+			rockchip,pins =
+				/* dp_hpdin_m1 */
+				<0 RK_PC5 9 &pcfg_pull_none>;
+		};
+	};
+
+	dsm_aud {
+		/omit-if-no-ref/
+		dsm_audm0_ln: dsm_audm0-ln {
+			rockchip,pins =
+				/* dsm_aud_ln_m0 */
+				<2 RK_PA1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm0_lp: dsm_audm0-lp {
+			rockchip,pins =
+				/* dsm_aud_lp_m0 */
+				<2 RK_PA0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm0_rn: dsm_audm0-rn {
+			rockchip,pins =
+				/* dsm_aud_rn_m0 */
+				<2 RK_PA3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm0_rp: dsm_audm0-rp {
+			rockchip,pins =
+				/* dsm_aud_rp_m0 */
+				<2 RK_PA2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm1_ln: dsm_audm1-ln {
+			rockchip,pins =
+				/* dsm_aud_ln_m1 */
+				<4 RK_PC1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm1_lp: dsm_audm1-lp {
+			rockchip,pins =
+				/* dsm_aud_lp_m1 */
+				<4 RK_PC0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm1_rn: dsm_audm1-rn {
+			rockchip,pins =
+				/* dsm_aud_rn_m1 */
+				<4 RK_PC3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		dsm_audm1_rp: dsm_audm1-rp {
+			rockchip,pins =
+				/* dsm_aud_rp_m1 */
+				<4 RK_PC2 1 &pcfg_pull_none>;
+		};
+	};
+
+	dsmc {
+		/omit-if-no-ref/
+		dsmc_clkn: dsmc-clkn {
+			rockchip,pins =
+				/* dsmc_clkn */
+				<3 RK_PD6 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_clkp: dsmc-clkp {
+			rockchip,pins =
+				/* dsmc_clkp */
+				<3 RK_PD5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_csn0: dsmc-csn0 {
+			rockchip,pins =
+				/* dsmc_csn0 */
+				<3 RK_PD3 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_csn1: dsmc-csn1 {
+			rockchip,pins =
+				/* dsmc_csn1 */
+				<3 RK_PB0 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_csn2: dsmc-csn2 {
+			rockchip,pins =
+				/* dsmc_csn2 */
+				<3 RK_PD1 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_csn3: dsmc-csn3 {
+			rockchip,pins =
+				/* dsmc_csn3 */
+				<3 RK_PD2 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data0: dsmc-data0 {
+			rockchip,pins =
+				/* dsmc_data0 */
+				<3 RK_PD4 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data1: dsmc-data1 {
+			rockchip,pins =
+				/* dsmc_data1 */
+				<3 RK_PD0 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data2: dsmc-data2 {
+			rockchip,pins =
+				/* dsmc_data2 */
+				<3 RK_PC7 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data3: dsmc-data3 {
+			rockchip,pins =
+				/* dsmc_data3 */
+				<3 RK_PC6 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data4: dsmc-data4 {
+			rockchip,pins =
+				/* dsmc_data4 */
+				<3 RK_PC5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data5: dsmc-data5 {
+			rockchip,pins =
+				/* dsmc_data5 */
+				<3 RK_PC4 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data6: dsmc-data6 {
+			rockchip,pins =
+				/* dsmc_data6 */
+				<3 RK_PC1 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data7: dsmc-data7 {
+			rockchip,pins =
+				/* dsmc_data7 */
+				<3 RK_PC0 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data8: dsmc-data8 {
+			rockchip,pins =
+				/* dsmc_data8 */
+				<3 RK_PB5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data9: dsmc-data9 {
+			rockchip,pins =
+				/* dsmc_data9 */
+				<3 RK_PB4 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data10: dsmc-data10 {
+			rockchip,pins =
+				/* dsmc_data10 */
+				<3 RK_PB3 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data11: dsmc-data11 {
+			rockchip,pins =
+				/* dsmc_data11 */
+				<3 RK_PB2 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data12: dsmc-data12 {
+			rockchip,pins =
+				/* dsmc_data12 */
+				<3 RK_PB1 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data13: dsmc-data13 {
+			rockchip,pins =
+				/* dsmc_data13 */
+				<3 RK_PA7 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data14: dsmc-data14 {
+			rockchip,pins =
+				/* dsmc_data14 */
+				<3 RK_PA6 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_data15: dsmc-data15 {
+			rockchip,pins =
+				/* dsmc_data15 */
+				<3 RK_PA5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_dqs0: dsmc-dqs0 {
+			rockchip,pins =
+				/* dsmc_dqs0 */
+				<3 RK_PB7 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_dqs1: dsmc-dqs1 {
+			rockchip,pins =
+				/* dsmc_dqs1 */
+				<3 RK_PB6 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_int0: dsmc-int0 {
+			rockchip,pins =
+				/* dsmc_int0 */
+				<4 RK_PA0 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_int1: dsmc-int1 {
+			rockchip,pins =
+				/* dsmc_int1 */
+				<3 RK_PC2 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_int2: dsmc-int2 {
+			rockchip,pins =
+				/* dsmc_int2 */
+				<4 RK_PA1 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_int3: dsmc-int3 {
+			rockchip,pins =
+				/* dsmc_int3 */
+				<3 RK_PC3 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_rdyn: dsmc-rdyn {
+			rockchip,pins =
+				/* dsmc_rdyn */
+				<3 RK_PA4 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		dsmc_resetn: dsmc-resetn {
+			rockchip,pins =
+				/* dsmc_resetn */
+				<3 RK_PD7 5 &pcfg_pull_none>;
+		};
+	};
+
+	dsmc_testclk {
+		/omit-if-no-ref/
+		dsmc_testclk_out: dsmc-testclk-out {
+			rockchip,pins =
+				/* dsmc_testclk_out */
+				<3 RK_PC2 7 &pcfg_pull_none>;
+		};
+	};
+
+	dsmc_testdata {
+		/omit-if-no-ref/
+		dsmc_testdata_out: dsmc-testdata-out {
+			rockchip,pins =
+				/* dsmc_testdata_out */
+				<3 RK_PC3 7 &pcfg_pull_none>;
+		};
+	};
+
+	edp_tx {
+		/omit-if-no-ref/
+		edp_txm0_pins: edp_txm0-pins {
+			rockchip,pins =
+				/* edp_tx_hpdin_m0 */
+				<4 RK_PC1 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		edp_txm1_pins: edp_txm1-pins {
+			rockchip,pins =
+				/* edp_tx_hpdin_m1 */
+				<0 RK_PB6 10 &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		/omit-if-no-ref/
+		emmc_rstnout: emmc-rstnout {
+			rockchip,pins =
+				/* emmc_rstn */
+				<1 RK_PB3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		emmc_bus8: emmc-bus8 {
+			rockchip,pins =
+				/* emmc_d0 */
+				<1 RK_PA0 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<1 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<1 RK_PA2 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<1 RK_PA3 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d4 */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d5 */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d6 */
+				<1 RK_PA6 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d7 */
+				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clk */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_strb: emmc-strb {
+			rockchip,pins =
+				/* emmc_strb */
+				<1 RK_PB2 1 &pcfg_pull_none>;
+		};
+	};
+
+	emmc_testclk {
+		/omit-if-no-ref/
+		emmc_testclk_test: emmc_testclk-test {
+			rockchip,pins =
+				/* emmc_testclk_out */
+				<1 RK_PB3 6 &pcfg_pull_none>;
+		};
+	};
+
+	emmc_testdata {
+		/omit-if-no-ref/
+		emmc_testdata_test: emmc_testdata-test {
+			rockchip,pins =
+				/* emmc_testdata_out */
+				<1 RK_PB7 5 &pcfg_pull_none>;
+		};
+	};
+
+	eth0 {
+		/omit-if-no-ref/
+		eth0m0_miim: eth0m0-miim {
+			rockchip,pins =
+				/* eth0_mdc_m0 */
+				<3 RK_PA6 3 &pcfg_pull_none>,
+				/* eth0_mdio_m0 */
+				<3 RK_PA5 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m0_rx_bus2: eth0m0-rx_bus2 {
+			rockchip,pins =
+				/* eth0_rxctl_m0 */
+				<3 RK_PA7 3 &pcfg_pull_none>,
+				/* eth0_rxd0_m0 */
+				<3 RK_PB2 3 &pcfg_pull_none>,
+				/* eth0_rxd1_m0 */
+				<3 RK_PB1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m0_tx_bus2: eth0m0-tx_bus2 {
+			rockchip,pins =
+				/* eth0_txctl_m0 */
+				<3 RK_PB3 3 &pcfg_pull_none>,
+				/* eth0_txd0_m0 */
+				<3 RK_PB5 3 &pcfg_pull_none>,
+				/* eth0_txd1_m0 */
+				<3 RK_PB4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m0_rgmii_clk: eth0m0-rgmii_clk {
+			rockchip,pins =
+				/* eth0_rxclk_m0 */
+				<3 RK_PD1 3 &pcfg_pull_none>,
+				/* eth0_txclk_m0 */
+				<3 RK_PB6 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m0_rgmii_bus: eth0m0-rgmii_bus {
+			rockchip,pins =
+				/* eth0_rxd2_m0 */
+				<3 RK_PD3 3 &pcfg_pull_none>,
+				/* eth0_rxd3_m0 */
+				<3 RK_PD2 3 &pcfg_pull_none>,
+				/* eth0_txd2_m0 */
+				<3 RK_PC3 3 &pcfg_pull_none>,
+				/* eth0_txd3_m0 */
+				<3 RK_PC2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m0_mclk: eth0m0-mclk {
+			rockchip,pins =
+				/* eth0m0_mclk */
+				<3 RK_PB0 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth0m0_ppsclk: eth0m0-ppsclk {
+			rockchip,pins =
+				/* eth0m0_ppsclk */
+				<3 RK_PC0 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth0m0_ppstrig: eth0m0-ppstrig {
+			rockchip,pins =
+				/* eth0m0_ppstrig */
+				<3 RK_PB7 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_miim: eth0m1-miim {
+			rockchip,pins =
+				/* eth0_mdc_m1 */
+				<3 RK_PA1 3 &pcfg_pull_none>,
+				/* eth0_mdio_m1 */
+				<3 RK_PA0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_rx_bus2: eth0m1-rx_bus2 {
+			rockchip,pins =
+				/* eth0_rxctl_m1 */
+				<3 RK_PA2 3 &pcfg_pull_none>,
+				/* eth0_rxd0_m1 */
+				<2 RK_PA6 3 &pcfg_pull_none>,
+				/* eth0_rxd1_m1 */
+				<3 RK_PA3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_tx_bus2: eth0m1-tx_bus2 {
+			rockchip,pins =
+				/* eth0_txctl_m1 */
+				<2 RK_PA7 3 &pcfg_pull_none>,
+				/* eth0_txd0_m1 */
+				<2 RK_PB1 3 &pcfg_pull_none>,
+				/* eth0_txd1_m1 */
+				<2 RK_PB0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_rgmii_clk: eth0m1-rgmii_clk {
+			rockchip,pins =
+				/* eth0_rxclk_m1 */
+				<2 RK_PB5 3 &pcfg_pull_none>,
+				/* eth0_txclk_m1 */
+				<2 RK_PB3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_rgmii_bus: eth0m1-rgmii_bus {
+			rockchip,pins =
+				/* eth0_rxd2_m1 */
+				<2 RK_PB7 3 &pcfg_pull_none>,
+				/* eth0_rxd3_m1 */
+				<2 RK_PB6 3 &pcfg_pull_none>,
+				/* eth0_txd2_m1 */
+				<2 RK_PB4 3 &pcfg_pull_none>,
+				/* eth0_txd3_m1 */
+				<2 RK_PB2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_mclk: eth0m1-mclk {
+			rockchip,pins =
+				/* eth0m1_mclk */
+				<2 RK_PD6 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth0m1_ppsclk: eth0m1-ppsclk {
+			rockchip,pins =
+				/* eth0m1_ppsclk */
+				<2 RK_PC1 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth0m1_ppstrig: eth0m1-ppstrig {
+			rockchip,pins =
+				/* eth0m1_ppstrig */
+				<2 RK_PC2 3 &pcfg_pull_none>;
+		};
+	};
+
+	eth1 {
+		/omit-if-no-ref/
+		eth1m0_miim: eth1m0-miim {
+			rockchip,pins =
+				/* eth1_mdc_m0 */
+				<2 RK_PD4 2 &pcfg_pull_none>,
+				/* eth1_mdio_m0 */
+				<2 RK_PD5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m0_rx_bus2: eth1m0-rx_bus2 {
+			rockchip,pins =
+				/* eth1_rxctl_m0 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* eth1_rxd0_m0 */
+				<2 RK_PD1 2 &pcfg_pull_none>,
+				/* eth1_rxd1_m0 */
+				<2 RK_PD2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m0_tx_bus2: eth1m0-tx_bus2 {
+			rockchip,pins =
+				/* eth1_txctl_m0 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* eth1_txd0_m0 */
+				<2 RK_PC6 2 &pcfg_pull_none>,
+				/* eth1_txd1_m0 */
+				<2 RK_PC7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m0_rgmii_clk: eth1m0-rgmii_clk {
+			rockchip,pins =
+				/* eth1_rxclk_m0 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* eth1_txclk_m0 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m0_rgmii_bus: eth1m0-rgmii_bus {
+			rockchip,pins =
+				/* eth1_rxd2_m0 */
+				<2 RK_PC0 2 &pcfg_pull_none>,
+				/* eth1_rxd3_m0 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* eth1_txd2_m0 */
+				<2 RK_PC3 2 &pcfg_pull_none>,
+				/* eth1_txd3_m0 */
+				<2 RK_PC4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m0_mclk: eth1m0-mclk {
+			rockchip,pins =
+				/* eth1m0_mclk */
+				<2 RK_PD7 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth1m0_ppsclk: eth1m0-ppsclk {
+			rockchip,pins =
+				/* eth1m0_ppsclk */
+				<3 RK_PA2 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth1m0_ppstrig: eth1m0-ppstrig {
+			rockchip,pins =
+				/* eth1m0_ppstrig */
+				<3 RK_PA1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_miim: eth1m1-miim {
+			rockchip,pins =
+				/* eth1_mdc_m1 */
+				<1 RK_PD2 1 &pcfg_pull_none>,
+				/* eth1_mdio_m1 */
+				<1 RK_PD3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_rx_bus2: eth1m1-rx_bus2 {
+			rockchip,pins =
+				/* eth1_rxctl_m1 */
+				<1 RK_PD1 1 &pcfg_pull_none>,
+				/* eth1_rxd0_m1 */
+				<1 RK_PC7 1 &pcfg_pull_none>,
+				/* eth1_rxd1_m1 */
+				<1 RK_PD0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_tx_bus2: eth1m1-tx_bus2 {
+			rockchip,pins =
+				/* eth1_txctl_m1 */
+				<1 RK_PC6 1 &pcfg_pull_none>,
+				/* eth1_txd0_m1 */
+				<1 RK_PC4 1 &pcfg_pull_none>,
+				/* eth1_txd1_m1 */
+				<1 RK_PC5 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_rgmii_clk: eth1m1-rgmii_clk {
+			rockchip,pins =
+				/* eth1_rxclk_m1 */
+				<1 RK_PB6 1 &pcfg_pull_none>,
+				/* eth1_txclk_m1 */
+				<1 RK_PC1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_rgmii_bus: eth1m1-rgmii_bus {
+			rockchip,pins =
+				/* eth1_rxd2_m1 */
+				<1 RK_PB4 1 &pcfg_pull_none>,
+				/* eth1_rxd3_m1 */
+				<1 RK_PB5 1 &pcfg_pull_none>,
+				/* eth1_txd2_m1 */
+				<1 RK_PB7 1 &pcfg_pull_none>,
+				/* eth1_txd3_m1 */
+				<1 RK_PC0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_mclk: eth1m1-mclk {
+			rockchip,pins =
+				/* eth1m1_mclk */
+				<1 RK_PD4 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth1m1_ppsclk: eth1m1-ppsclk {
+			rockchip,pins =
+				/* eth1m1_ppsclk */
+				<1 RK_PC2 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		eth1m1_ppstrig: eth1m1-ppstrig {
+			rockchip,pins =
+				/* eth1m1_ppstrig */
+				<1 RK_PC3 1 &pcfg_pull_none>;
+		};
+	};
+
+	eth0_ptp {
+		/omit-if-no-ref/
+		eth0m0_ptp_refclk: eth0m0-ptp-refclk {
+			rockchip,pins =
+				/* eth0m0_ptp_refclk */
+				<3 RK_PC1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0m1_ptp_refclk: eth0m1-ptp-refclk {
+			rockchip,pins =
+				/* eth0m1_ptp_refclk */
+				<2 RK_PC0 3 &pcfg_pull_none>;
+		};
+	};
+
+	eth0_testrxclk {
+		/omit-if-no-ref/
+		eth0_testrxclkm0_test: eth0_testrxclkm0-test {
+			rockchip,pins =
+				/* eth0_testrxclk_out_m0 */
+				<3 RK_PC7 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0_testrxclkm1_test: eth0_testrxclkm1-test {
+			rockchip,pins =
+				/* eth0_testrxclk_out_m1 */
+				<2 RK_PC5 6 &pcfg_pull_none>;
+		};
+	};
+
+	eth0_testrxd {
+		/omit-if-no-ref/
+		eth0_testrxdm0_test: eth0_testrxdm0-test {
+			rockchip,pins =
+				/* eth0_testrxd_out_m0 */
+				<3 RK_PD0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth0_testrxdm1_test: eth0_testrxdm1-test {
+			rockchip,pins =
+				/* eth0_testrxd_out_m1 */
+				<2 RK_PC4 6 &pcfg_pull_none>;
+		};
+	};
+
+	eth1_ptp {
+		/omit-if-no-ref/
+		eth1m0_ptp_refclk: eth1m0-ptp-refclk {
+			rockchip,pins =
+				/* eth1m0_ptp_refclk */
+				<3 RK_PA3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1m1_ptp_refclk: eth1m1-ptp-refclk {
+			rockchip,pins =
+				/* eth1m1_ptp_refclk */
+				<2 RK_PB6 2 &pcfg_pull_none>;
+		};
+	};
+
+	eth1_testrxclk {
+		/omit-if-no-ref/
+		eth1_testrxclkm0_test: eth1_testrxclkm0-test {
+			rockchip,pins =
+				/* eth1_testrxclk_out_m0 */
+				<3 RK_PA1 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1_testrxclkm1_test: eth1_testrxclkm1-test {
+			rockchip,pins =
+				/* eth1_testrxclk_out_m1 */
+				<1 RK_PC3 6 &pcfg_pull_none>;
+		};
+	};
+
+	eth1_testrxd {
+		/omit-if-no-ref/
+		eth1_testrxdm0_test: eth1_testrxdm0-test {
+			rockchip,pins =
+				/* eth1_testrxd_out_m0 */
+				<3 RK_PA0 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		eth1_testrxdm1_test: eth1_testrxdm1-test {
+			rockchip,pins =
+				/* eth1_testrxd_out_m1 */
+				<1 RK_PC2 6 &pcfg_pull_none>;
+		};
+	};
+
+	eth_clk0_25m {
+		/omit-if-no-ref/
+		ethm0_clk0_25m_out: ethm0-clk0-25m-out {
+			rockchip,pins =
+				/* ethm0_clk0_25m_out */
+				<3 RK_PA4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		ethm1_clk0_25m_out: ethm1-clk0-25m-out {
+			rockchip,pins =
+				/* ethm1_clk0_25m_out */
+				<2 RK_PD7 3 &pcfg_pull_none>;
+		};
+	};
+
+	eth_clk1_25m {
+		/omit-if-no-ref/
+		ethm0_clk1_25m_out: ethm0-clk1-25m-out {
+			rockchip,pins =
+				/* ethm0_clk1_25m_out */
+				<2 RK_PD6 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		ethm1_clk1_25m_out: ethm1-clk1-25m-out {
+			rockchip,pins =
+				/* ethm1_clk1_25m_out */
+				<1 RK_PD5 1 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus0 {
+		/omit-if-no-ref/
+		flexbus0m0_csn: flexbus0m0-csn {
+			rockchip,pins =
+				/* flexbus0_csn_m0 */
+				<3 RK_PA4 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m0_d13: flexbus0m0-d13 {
+			rockchip,pins =
+				/* flexbus0_d13_m0 */
+				<4 RK_PA0 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m0_d14: flexbus0m0-d14 {
+			rockchip,pins =
+				/* flexbus0_d14_m0 */
+				<4 RK_PA1 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m0_d15: flexbus0m0-d15 {
+			rockchip,pins =
+				/* flexbus0_d15_m0 */
+				<3 RK_PD7 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m1_csn: flexbus0m1-csn {
+			rockchip,pins =
+				/* flexbus0_csn_m1 */
+				<4 RK_PA1 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m1_d13: flexbus0m1-d13 {
+			rockchip,pins =
+				/* flexbus0_d13_m1 */
+				<4 RK_PA4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m1_d14: flexbus0m1-d14 {
+			rockchip,pins =
+				/* flexbus0_d14_m1 */
+				<4 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m1_d15: flexbus0m1-d15 {
+			rockchip,pins =
+				/* flexbus0_d15_m1 */
+				<4 RK_PB5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m2_csn: flexbus0m2-csn {
+			rockchip,pins =
+				/* flexbus0_csn_m2 */
+				<3 RK_PC3 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m3_csn: flexbus0m3-csn {
+			rockchip,pins =
+				/* flexbus0_csn_m3 */
+				<3 RK_PD2 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0m4_csn: flexbus0m4-csn {
+			rockchip,pins =
+				/* flexbus0_csn_m4 */
+				<4 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_clk: flexbus0-clk {
+			rockchip,pins =
+				/* flexbus0_clk */
+				<3 RK_PB6 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d10: flexbus0-d10 {
+			rockchip,pins =
+				/* flexbus0_d10 */
+				<3 RK_PC3 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d11: flexbus0-d11 {
+			rockchip,pins =
+				/* flexbus0_d11 */
+				<3 RK_PD1 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d12: flexbus0-d12 {
+			rockchip,pins =
+				/* flexbus0_d12 */
+				<3 RK_PD2 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d0: flexbus0-d0 {
+			rockchip,pins =
+				/* flexbus0_d0 */
+				<3 RK_PB5 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d1: flexbus0-d1 {
+			rockchip,pins =
+				/* flexbus0_d1 */
+				<3 RK_PB4 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d2: flexbus0-d2 {
+			rockchip,pins =
+				/* flexbus0_d2 */
+				<3 RK_PB3 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d3: flexbus0-d3 {
+			rockchip,pins =
+				/* flexbus0_d3 */
+				<3 RK_PB2 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d4: flexbus0-d4 {
+			rockchip,pins =
+				/* flexbus0_d4 */
+				<3 RK_PB1 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d5: flexbus0-d5 {
+			rockchip,pins =
+				/* flexbus0_d5 */
+				<3 RK_PA7 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d6: flexbus0-d6 {
+			rockchip,pins =
+				/* flexbus0_d6 */
+				<3 RK_PA6 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d7: flexbus0-d7 {
+			rockchip,pins =
+				/* flexbus0_d7 */
+				<3 RK_PA5 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d8: flexbus0-d8 {
+			rockchip,pins =
+				/* flexbus0_d8 */
+				<3 RK_PB0 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus0_d9: flexbus0-d9 {
+			rockchip,pins =
+				/* flexbus0_d9 */
+				<3 RK_PC2 6 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus1 {
+		/omit-if-no-ref/
+		flexbus1m0_csn: flexbus1m0-csn {
+			rockchip,pins =
+				/* flexbus1_csn_m0 */
+				<3 RK_PB7 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m0_d12: flexbus1m0-d12 {
+			rockchip,pins =
+				/* flexbus1_d12_m0 */
+				<3 RK_PD7 7 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m0_d13: flexbus1m0-d13 {
+			rockchip,pins =
+				/* flexbus1_d13_m0 */
+				<4 RK_PA1 7 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m0_d14: flexbus1m0-d14 {
+			rockchip,pins =
+				/* flexbus1_d14_m0 */
+				<4 RK_PA0 7 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m0_d15: flexbus1m0-d15 {
+			rockchip,pins =
+				/* flexbus1_d15_m0 */
+				<3 RK_PD2 7 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m1_csn: flexbus1m1-csn {
+			rockchip,pins =
+				/* flexbus1_csn_m1 */
+				<3 RK_PD7 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m1_d12: flexbus1m1-d12 {
+			rockchip,pins =
+				/* flexbus1_d12_m1 */
+				<4 RK_PA5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m1_d13: flexbus1m1-d13 {
+			rockchip,pins =
+				/* flexbus1_d13_m1 */
+				<4 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m1_d14: flexbus1m1-d14 {
+			rockchip,pins =
+				/* flexbus1_d14_m1 */
+				<4 RK_PB1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m1_d15: flexbus1m1-d15 {
+			rockchip,pins =
+				/* flexbus1_d15_m1 */
+				<4 RK_PB2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m2_csn: flexbus1m2-csn {
+			rockchip,pins =
+				/* flexbus1_csn_m2 */
+				<3 RK_PD1 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m3_csn: flexbus1m3-csn {
+			rockchip,pins =
+				/* flexbus1_csn_m3 */
+				<4 RK_PA0 8 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1m4_csn: flexbus1m4-csn {
+			rockchip,pins =
+				/* flexbus1_csn_m4 */
+				<4 RK_PA3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_clk: flexbus1-clk {
+			rockchip,pins =
+				/* flexbus1_clk */
+				<3 RK_PD6 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d10: flexbus1-d10 {
+			rockchip,pins =
+				/* flexbus1_d10 */
+				<3 RK_PB7 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d11: flexbus1-d11 {
+			rockchip,pins =
+				/* flexbus1_d11 */
+				<3 RK_PA4 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d0: flexbus1-d0 {
+			rockchip,pins =
+				/* flexbus1_d0 */
+				<3 RK_PD5 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d1: flexbus1-d1 {
+			rockchip,pins =
+				/* flexbus1_d1 */
+				<3 RK_PD4 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d2: flexbus1-d2 {
+			rockchip,pins =
+				/* flexbus1_d2 */
+				<3 RK_PD3 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d3: flexbus1-d3 {
+			rockchip,pins =
+				/* flexbus1_d3 */
+				<3 RK_PD0 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d4: flexbus1-d4 {
+			rockchip,pins =
+				/* flexbus1_d4 */
+				<3 RK_PC7 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d5: flexbus1-d5 {
+			rockchip,pins =
+				/* flexbus1_d5 */
+				<3 RK_PC6 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d6: flexbus1-d6 {
+			rockchip,pins =
+				/* flexbus1_d6 */
+				<3 RK_PC5 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d7: flexbus1-d7 {
+			rockchip,pins =
+				/* flexbus1_d7 */
+				<3 RK_PC4 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d8: flexbus1-d8 {
+			rockchip,pins =
+				/* flexbus1_d8 */
+				<3 RK_PC1 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		flexbus1_d9: flexbus1-d9 {
+			rockchip,pins =
+				/* flexbus1_d9 */
+				<3 RK_PC0 6 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus0_testclk {
+		/omit-if-no-ref/
+		flexbus0_testclk_testclk: flexbus0_testclk-testclk {
+			rockchip,pins =
+				/* flexbus0_testclk_out */
+				<2 RK_PA3 6 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus0_testdata {
+		/omit-if-no-ref/
+		flexbus0_testdata_testdata: flexbus0_testdata-testdata {
+			rockchip,pins =
+				/* flexbus0_testdata_out */
+				<2 RK_PA2 6 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus1_testclk {
+		/omit-if-no-ref/
+		flexbus1_testclk_testclk: flexbus1_testclk-testclk {
+			rockchip,pins =
+				/* flexbus1_testclk_out */
+				<2 RK_PA5 6 &pcfg_pull_none>;
+		};
+	};
+
+	flexbus1_testdata {
+		/omit-if-no-ref/
+		flexbus1_testdata_testdata: flexbus1_testdata-testdata {
+			rockchip,pins =
+				/* flexbus1_testdata_out */
+				<2 RK_PA4 6 &pcfg_pull_none>;
+		};
+	};
+
+	fspi0 {
+		/omit-if-no-ref/
+		fspi0_pins: fspi0-pins {
+			rockchip,pins =
+				/* fspi0_clk */
+				<1 RK_PB1 2 &pcfg_pull_none>,
+				/* fspi0_d0 */
+				<1 RK_PA0 2 &pcfg_pull_none>,
+				/* fspi0_d1 */
+				<1 RK_PA1 2 &pcfg_pull_none>,
+				/* fspi0_d2 */
+				<1 RK_PA2 2 &pcfg_pull_none>,
+				/* fspi0_d3 */
+				<1 RK_PA3 2 &pcfg_pull_none>,
+				/* fspi0_d4 */
+				<1 RK_PA4 2 &pcfg_pull_none>,
+				/* fspi0_d5 */
+				<1 RK_PA5 2 &pcfg_pull_none>,
+				/* fspi0_d6 */
+				<1 RK_PA6 2 &pcfg_pull_none>,
+				/* fspi0_d7 */
+				<1 RK_PA7 2 &pcfg_pull_none>,
+				/* fspi0_dqs */
+				<1 RK_PB2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi0_csn0: fspi0-csn0 {
+			rockchip,pins =
+				/* fspi0_csn0 */
+				<1 RK_PB3 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		fspi0_csn1: fspi0-csn1 {
+			rockchip,pins =
+				/* fspi0_csn1 */
+				<1 RK_PB0 2 &pcfg_pull_none>;
+		};
+	};
+
+	fspi1 {
+		/omit-if-no-ref/
+		fspi1m0_pins: fspi1m0-pins {
+			rockchip,pins =
+				/* fspi1_clk_m0 */
+				<2 RK_PA5 2 &pcfg_pull_none>,
+				/* fspi1_d0_m0 */
+				<2 RK_PA0 2 &pcfg_pull_none>,
+				/* fspi1_d1_m0 */
+				<2 RK_PA1 2 &pcfg_pull_none>,
+				/* fspi1_d2_m0 */
+				<2 RK_PA2 2 &pcfg_pull_none>,
+				/* fspi1_d3_m0 */
+				<2 RK_PA3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi1m0_csn0: fspi1m0-csn0 {
+			rockchip,pins =
+				/* fspi1m0_csn0 */
+				<2 RK_PA4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi1m1_pins: fspi1m1-pins {
+			rockchip,pins =
+				/* fspi1_clk_m1 */
+				<1 RK_PD5 3 &pcfg_pull_none>,
+				/* fspi1_d0_m1 */
+				<1 RK_PC4 3 &pcfg_pull_none>,
+				/* fspi1_d1_m1 */
+				<1 RK_PC5 3 &pcfg_pull_none>,
+				/* fspi1_d2_m1 */
+				<1 RK_PC6 3 &pcfg_pull_none>,
+				/* fspi1_d3_m1 */
+				<1 RK_PC7 3 &pcfg_pull_none>,
+				/* fspi1_d4_m1 */
+				<1 RK_PD0 3 &pcfg_pull_none>,
+				/* fspi1_d5_m1 */
+				<1 RK_PD1 3 &pcfg_pull_none>,
+				/* fspi1_d6_m1 */
+				<1 RK_PD2 3 &pcfg_pull_none>,
+				/* fspi1_d7_m1 */
+				<1 RK_PD3 3 &pcfg_pull_none>,
+				/* fspi1_dqs_m1 */
+				<1 RK_PD4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi1m1_csn0: fspi1m1-csn0 {
+			rockchip,pins =
+				/* fspi1m1_csn0 */
+				<1 RK_PC3 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		fspi1m1_csn1: fspi1m1-csn1 {
+			rockchip,pins =
+				/* fspi1m1_csn1 */
+				<1 RK_PC2 3 &pcfg_pull_none>;
+		};
+	};
+
+	fspi0_testclk {
+		/omit-if-no-ref/
+		fspi0_testclk_test: fspi0_testclk-test {
+			rockchip,pins =
+				/* fspi0_testclk_out */
+				<1 RK_PB0 6 &pcfg_pull_none>;
+		};
+	};
+
+	fspi0_testdata {
+		/omit-if-no-ref/
+		fspi0_testdata_test: fspi0_testdata-test {
+			rockchip,pins =
+				/* fspi0_testdata_out */
+				<1 RK_PB7 6 &pcfg_pull_none>;
+		};
+	};
+
+	fspi1_testclk {
+		/omit-if-no-ref/
+		fspi1_testclkm1_test: fspi1_testclkm1-test {
+			rockchip,pins =
+				/* fspi1_testclk_out_m1 */
+				<1 RK_PC1 7 &pcfg_pull_none>;
+		};
+	};
+
+	fspi1_testdata {
+		/omit-if-no-ref/
+		fspi1_testdatam1_test: fspi1_testdatam1-test {
+			rockchip,pins =
+				/* fspi1_testdata_out_m1 */
+				<1 RK_PB7 7 &pcfg_pull_none>;
+		};
+	};
+
+	gpu {
+		/omit-if-no-ref/
+		gpu_pins: gpu-pins {
+			rockchip,pins =
+				/* gpu_avs */
+				<0 RK_PD3 11 &pcfg_pull_none>;
+		};
+	};
+
+	hdmi_tx {
+		/omit-if-no-ref/
+		hdmi_txm0_pins: hdmi_txm0-pins {
+			rockchip,pins =
+				/* hdmi_tx_cec_m0 */
+				<4 RK_PC0 9 &pcfg_pull_none>,
+				/* hdmi_tx_hpdin_m0 */
+				<4 RK_PC1 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmi_txm1_pins: hdmi_txm1-pins {
+			rockchip,pins =
+				/* hdmi_tx_cec_m1 */
+				<0 RK_PC3 9 &pcfg_pull_none>,
+				/* hdmi_tx_hpdin_m1 */
+				<0 RK_PB6 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmi_tx_scl: hdmi-tx-scl {
+			rockchip,pins =
+				/* hdmi_tx_scl */
+				<4 RK_PC2 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		hdmi_tx_sda: hdmi-tx-sda {
+			rockchip,pins =
+				/* hdmi_tx_sda */
+				<4 RK_PC3 9 &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0m0_xfer: i2c0m0-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m0 */
+				<0 RK_PB0 11 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m0 */
+				<0 RK_PB1 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m1_xfer: i2c0m1-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m1 */
+				<0 RK_PC1 9 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m1 */
+				<0 RK_PC2 9 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c1 {
+		/omit-if-no-ref/
+		i2c1m0_xfer: i2c1m0-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m0 */
+				<0 RK_PB2 11 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m0 */
+				<0 RK_PB3 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c1m1_xfer: i2c1m1-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m1 */
+				<0 RK_PB4 9 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m1 */
+				<0 RK_PB5 9 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2m0_xfer: i2c2m0-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m0 */
+				<0 RK_PB7 9 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m0 */
+				<0 RK_PC0 9 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m1_xfer: i2c2m1-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m1 */
+				<1 RK_PA0 10 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m1 */
+				<1 RK_PA1 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m2_xfer: i2c2m2-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m2 */
+				<4 RK_PA3 11 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m2 */
+				<4 RK_PA5 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m3_xfer: i2c2m3-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m3 */
+				<4 RK_PC2 11 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m3 */
+				<4 RK_PC3 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<4 RK_PB5 11 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m0 */
+				<4 RK_PB4 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<0 RK_PC6 9 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m1 */
+				<0 RK_PC7 9 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m2_xfer: i2c3m2-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m2 */
+				<3 RK_PD4 11 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m2 */
+				<3 RK_PD5 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m3_xfer: i2c3m3-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m3 */
+				<4 RK_PC4 11 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m3 */
+				<4 RK_PC5 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c4 {
+		/omit-if-no-ref/
+		i2c4m0_xfer: i2c4m0-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m0 */
+				<0 RK_PD2 9 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m0 */
+				<0 RK_PD3 9 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c4m1_xfer: i2c4m1-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m1 */
+				<4 RK_PA4 11 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m1 */
+				<4 RK_PA6 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c4m2_xfer: i2c4m2-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m2 */
+				<2 RK_PA6 11 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m2 */
+				<2 RK_PA7 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c4m3_xfer: i2c4m3-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m3 */
+				<3 RK_PC0 11 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m3 */
+				<3 RK_PB7 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c5 {
+		/omit-if-no-ref/
+		i2c5m0_xfer: i2c5m0-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m0 */
+				<2 RK_PA5 11 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m0 */
+				<2 RK_PA4 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c5m1_xfer: i2c5m1-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m1 */
+				<1 RK_PD4 10 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m1 */
+				<1 RK_PD5 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c5m2_xfer: i2c5m2-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m2 */
+				<2 RK_PC6 11 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m2 */
+				<2 RK_PC7 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c5m3_xfer: i2c5m3-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m3 */
+				<3 RK_PC4 11 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m3 */
+				<3 RK_PC1 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c6 {
+		/omit-if-no-ref/
+		i2c6m0_xfer: i2c6m0-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m0 */
+				<0 RK_PA2 11 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m0 */
+				<0 RK_PA5 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c6m1_xfer: i2c6m1-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m1 */
+				<1 RK_PC2 10 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m1 */
+				<1 RK_PC3 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c6m2_xfer: i2c6m2-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m2 */
+				<2 RK_PD0 11 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m2 */
+				<2 RK_PD1 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c6m3_xfer: i2c6m3-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m3 */
+				<4 RK_PC6 11 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m3 */
+				<4 RK_PC7 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c7 {
+		/omit-if-no-ref/
+		i2c7m0_xfer: i2c7m0-xfer {
+			rockchip,pins =
+				/* i2c7_scl_m0 */
+				<1 RK_PB0 10 &pcfg_pull_none_smt>,
+				/* i2c7_sda_m0 */
+				<1 RK_PB3 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c7m1_xfer: i2c7m1-xfer {
+			rockchip,pins =
+				/* i2c7_scl_m1 */
+				<3 RK_PA0 11 &pcfg_pull_none_smt>,
+				/* i2c7_sda_m1 */
+				<3 RK_PA1 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c7m2_xfer: i2c7m2-xfer {
+			rockchip,pins =
+				/* i2c7_scl_m2 */
+				<4 RK_PA0 11 &pcfg_pull_none_smt>,
+				/* i2c7_sda_m2 */
+				<4 RK_PA1 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c7m3_xfer: i2c7m3-xfer {
+			rockchip,pins =
+				/* i2c7_scl_m3 */
+				<4 RK_PC0 11 &pcfg_pull_none_smt>,
+				/* i2c7_sda_m3 */
+				<4 RK_PC1 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c8 {
+		/omit-if-no-ref/
+		i2c8m0_xfer: i2c8m0-xfer {
+			rockchip,pins =
+				/* i2c8_scl_m0 */
+				<2 RK_PA0 11 &pcfg_pull_none_smt>,
+				/* i2c8_sda_m0 */
+				<2 RK_PA1 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c8m1_xfer: i2c8m1-xfer {
+			rockchip,pins =
+				/* i2c8_scl_m1 */
+				<1 RK_PC6 10 &pcfg_pull_none_smt>,
+				/* i2c8_sda_m1 */
+				<1 RK_PC7 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c8m2_xfer: i2c8m2-xfer {
+			rockchip,pins =
+				/* i2c8_scl_m2 */
+				<2 RK_PB6 11 &pcfg_pull_none_smt>,
+				/* i2c8_sda_m2 */
+				<2 RK_PB7 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c8m3_xfer: i2c8m3-xfer {
+			rockchip,pins =
+				/* i2c8_scl_m3 */
+				<3 RK_PB3 11 &pcfg_pull_none_smt>,
+				/* i2c8_sda_m3 */
+				<3 RK_PB2 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c9 {
+		/omit-if-no-ref/
+		i2c9m0_xfer: i2c9m0-xfer {
+			rockchip,pins =
+				/* i2c9_scl_m0 */
+				<1 RK_PA5 10 &pcfg_pull_none_smt>,
+				/* i2c9_sda_m0 */
+				<1 RK_PA6 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c9m1_xfer: i2c9m1-xfer {
+			rockchip,pins =
+				/* i2c9_scl_m1 */
+				<1 RK_PB5 10 &pcfg_pull_none_smt>,
+				/* i2c9_sda_m1 */
+				<1 RK_PB4 10 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c9m2_xfer: i2c9m2-xfer {
+			rockchip,pins =
+				/* i2c9_scl_m2 */
+				<2 RK_PD5 11 &pcfg_pull_none_smt>,
+				/* i2c9_sda_m2 */
+				<2 RK_PD4 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c9m3_xfer: i2c9m3-xfer {
+			rockchip,pins =
+				/* i2c9_scl_m3 */
+				<3 RK_PC2 11 &pcfg_pull_none_smt>,
+				/* i2c9_sda_m3 */
+				<3 RK_PC3 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i3c0 {
+		/omit-if-no-ref/
+		i3c0m0_xfer: i3c0m0-xfer {
+			rockchip,pins =
+				/* i3c0_scl_m0 */
+				<0 RK_PC1 11 &pcfg_pull_none_smt>,
+				/* i3c0_sda_m0 */
+				<0 RK_PC2 11 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i3c0m1_xfer: i3c0m1-xfer {
+			rockchip,pins =
+				/* i3c0_scl_m1 */
+				<1 RK_PD2 10 &pcfg_pull_none_smt>,
+				/* i3c0_sda_m1 */
+				<1 RK_PD3 10 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i3c1 {
+		/omit-if-no-ref/
+		i3c1m0_xfer: i3c1m0-xfer {
+			rockchip,pins =
+				/* i3c1_scl_m0 */
+				<2 RK_PD2 12 &pcfg_pull_none_smt>,
+				/* i3c1_sda_m0 */
+				<2 RK_PD3 12 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i3c1m1_xfer: i3c1m1-xfer {
+			rockchip,pins =
+				/* i3c1_scl_m1 */
+				<2 RK_PA2 14 &pcfg_pull_none_smt>,
+				/* i3c1_sda_m1 */
+				<2 RK_PA3 14 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i3c1m2_xfer: i3c1m2-xfer {
+			rockchip,pins =
+				/* i3c1_scl_m2 */
+				<3 RK_PD3 11 &pcfg_pull_none_smt>,
+				/* i3c1_sda_m2 */
+				<3 RK_PD2 11 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i3c0_sda {
+		/omit-if-no-ref/
+		i3c0_sdam0_pu: i3c0_sdam0-pu {
+			rockchip,pins =
+				/* i3c0_sda_pu_m0 */
+				<0 RK_PC5 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i3c0_sdam1_pu: i3c0_sdam1-pu {
+			rockchip,pins =
+				/* i3c0_sda_pu_m1 */
+				<1 RK_PD1 10 &pcfg_pull_none>;
+		};
+	};
+
+	i3c1_sda {
+		/omit-if-no-ref/
+		i3c1_sdam0_pu: i3c1_sdam0-pu {
+			rockchip,pins =
+				/* i3c1_sda_pu_m0 */
+				<2 RK_PD6 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i3c1_sdam1_pu: i3c1_sdam1-pu {
+			rockchip,pins =
+				/* i3c1_sda_pu_m1 */
+				<2 RK_PA5 14 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i3c1_sdam2_pu: i3c1_sdam2-pu {
+			rockchip,pins =
+				/* i3c1_sda_pu_m2 */
+				<3 RK_PD1 11 &pcfg_pull_none>;
+		};
+	};
+
+	isp_flash {
+		/omit-if-no-ref/
+		isp_flashm0_pins: isp_flashm0-pins {
+			rockchip,pins =
+				/* isp_flash_trigout_m0 */
+				<2 RK_PD5 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		isp_flashm1_pins: isp_flashm1-pins {
+			rockchip,pins =
+				/* isp_flash_trigout_m1 */
+				<4 RK_PC5 1 &pcfg_pull_none>;
+		};
+	};
+
+	isp_prelight {
+		/omit-if-no-ref/
+		isp_prelightm0_pins: isp_prelightm0-pins {
+			rockchip,pins =
+				/* isp_prelight_trig_m0 */
+				<2 RK_PD4 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		isp_prelightm1_pins: isp_prelightm1-pins {
+			rockchip,pins =
+				/* isp_prelight_trig_m1 */
+				<4 RK_PC4 1 &pcfg_pull_none>;
+		};
+	};
+
+	jtag {
+		/omit-if-no-ref/
+		jtagm0_pins: jtagm0-pins {
+			rockchip,pins =
+				/* jtag_tck_m0 */
+				<2 RK_PA2 9 &pcfg_pull_none>,
+				/* jtag_tms_m0 */
+				<2 RK_PA3 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm1_pins: jtagm1-pins {
+			rockchip,pins =
+				/* jtag_tck_m1 */
+				<0 RK_PD4 10 &pcfg_pull_none>,
+				/* jtag_tms_m1 */
+				<0 RK_PD5 10 &pcfg_pull_none>;
+		};
+	};
+
+	mipi {
+		/omit-if-no-ref/
+		mipim0_pins: mipim0-pins {
+			rockchip,pins =
+				/* mipi_te_m0 */
+				<4 RK_PB2 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		mipim1_pins: mipim1-pins {
+			rockchip,pins =
+				/* mipi_te_m1 */
+				<3 RK_PA2 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		mipim2_pins: mipim2-pins {
+			rockchip,pins =
+				/* mipi_te_m2 */
+				<4 RK_PA0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		mipim3_pins: mipim3-pins {
+			rockchip,pins =
+				/* mipi_te_m3 */
+				<1 RK_PB3 11 &pcfg_pull_none>;
+		};
+	};
+
+	npu {
+		/omit-if-no-ref/
+		npu_pins: npu-pins {
+			rockchip,pins =
+				/* npu_avs */
+				<0 RK_PB7 11 &pcfg_pull_none>;
+		};
+	};
+
+	pcie0 {
+		/omit-if-no-ref/
+		pcie0m0_pins: pcie0m0-pins {
+			rockchip,pins =
+				/* pcie21_port0_clkreq_m0 */
+				<2 RK_PB2 11 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie0m1_pins: pcie0m1-pins {
+			rockchip,pins =
+				/* pcie0_clkreq_m1 */
+				<1 RK_PB6 12 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie0m2_pins: pcie0m2-pins {
+			rockchip,pins =
+				/* pcie0_clkreq_m2 */
+				<4 RK_PB5 12 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie0m3_pins: pcie0m3-pins {
+			rockchip,pins =
+				/* pcie0_clkreq_m3 */
+				<4 RK_PC6 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie0_buttonrst: pcie21-port0-buttonrst {
+			rockchip,pins =
+				/* pcie0_buttonrst */
+				<1 RK_PC4 12 &pcfg_pull_none>;
+		};
+	};
+
+	pcie1 {
+		/omit-if-no-ref/
+		pcie1m0_pins: pcie1m0-pins {
+			rockchip,pins =
+				/* pcie1_clkreq_m0 */
+				<2 RK_PB3 11 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie1m1_pins: pcie1m1-pins {
+			rockchip,pins =
+				/* pcie1_clkreq_m1 */
+				<1 RK_PB4 12 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie1m2_pins: pcie1m2-pins {
+			rockchip,pins =
+				/* pcie1_clkreq_m2 */
+				<4 RK_PA5 12 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie1m3_pins: pcie1m3-pins {
+			rockchip,pins =
+				/* pcie1_clkreq_m3 */
+				<4 RK_PC1 10 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		pcie1_buttonrst: pcie21-port1-buttonrst {
+			rockchip,pins =
+				/* pcie1_buttonrst */
+				<1 RK_PC5 12 &pcfg_pull_none>;
+		};
+	};
+
+	pdm0 {
+		/omit-if-no-ref/
+		pdm0m0_clk0: pdm0m0-clk0 {
+			rockchip,pins =
+				/* pdm0_clk0_m0 */
+				<0 RK_PC4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m0_clk1: pdm0m0-clk1 {
+			rockchip,pins =
+				/* pdm0_clk1_m0 */
+				<0 RK_PC3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m0_sdi0: pdm0m0-sdi0 {
+			rockchip,pins =
+				/* pdm0_sdi0_m0 */
+				<0 RK_PD0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m0_sdi1: pdm0m0-sdi1 {
+			rockchip,pins =
+				/* pdm0_sdi1_m0 */
+				<0 RK_PD1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m0_sdi2: pdm0m0-sdi2 {
+			rockchip,pins =
+				/* pdm0_sdi2_m0 */
+				<0 RK_PD2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m0_sdi3: pdm0m0-sdi3 {
+			rockchip,pins =
+				/* pdm0_sdi3_m0 */
+				<0 RK_PD3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_clk0: pdm0m1-clk0 {
+			rockchip,pins =
+				/* pdm0_clk0_m1 */
+				<1 RK_PB1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_clk1: pdm0m1-clk1 {
+			rockchip,pins =
+				/* pdm0_clk1_m1 */
+				<1 RK_PA6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_sdi0: pdm0m1-sdi0 {
+			rockchip,pins =
+				/* pdm0_sdi0_m1 */
+				<1 RK_PB2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_sdi1: pdm0m1-sdi1 {
+			rockchip,pins =
+				/* pdm0_sdi1_m1 */
+				<1 RK_PA3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_sdi2: pdm0m1-sdi2 {
+			rockchip,pins =
+				/* pdm0_sdi2_m1 */
+				<1 RK_PA5 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m1_sdi3: pdm0m1-sdi3 {
+			rockchip,pins =
+				/* pdm0_sdi3_m1 */
+				<1 RK_PA2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_clk0: pdm0m2-clk0 {
+			rockchip,pins =
+				/* pdm0_clk0_m2 */
+				<1 RK_PC1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_clk1: pdm0m2-clk1 {
+			rockchip,pins =
+				/* pdm0_clk1_m2 */
+				<1 RK_PD5 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_sdi0: pdm0m2-sdi0 {
+			rockchip,pins =
+				/* pdm0_sdi0_m2 */
+				<1 RK_PC6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_sdi1: pdm0m2-sdi1 {
+			rockchip,pins =
+				/* pdm0_sdi1_m2 */
+				<1 RK_PC7 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_sdi2: pdm0m2-sdi2 {
+			rockchip,pins =
+				/* pdm0_sdi2_m2 */
+				<1 RK_PC0 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m2_sdi3: pdm0m2-sdi3 {
+			rockchip,pins =
+				/* pdm0_sdi3_m2 */
+				<1 RK_PD4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_clk0: pdm0m3-clk0 {
+			rockchip,pins =
+				/* pdm0_clk0_m3 */
+				<2 RK_PB5 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_clk1: pdm0m3-clk1 {
+			rockchip,pins =
+				/* pdm0_clk1_m3 */
+				<2 RK_PB3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_sdi0: pdm0m3-sdi0 {
+			rockchip,pins =
+				/* pdm0_sdi0_m3 */
+				<2 RK_PB4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_sdi1: pdm0m3-sdi1 {
+			rockchip,pins =
+				/* pdm0_sdi1_m3 */
+				<2 RK_PB2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_sdi2: pdm0m3-sdi2 {
+			rockchip,pins =
+				/* pdm0_sdi2_m3 */
+				<2 RK_PB1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm0m3_sdi3: pdm0m3-sdi3 {
+			rockchip,pins =
+				/* pdm0_sdi3_m3 */
+				<2 RK_PB0 5 &pcfg_pull_none>;
+		};
+	};
+
+	pdm1 {
+		/omit-if-no-ref/
+		pdm1m0_clk0: pdm1m0-clk0 {
+			rockchip,pins =
+				/* pdm1_clk0_m0 */
+				<2 RK_PC5 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m0_clk1: pdm1m0-clk1 {
+			rockchip,pins =
+				/* pdm1_clk1_m0 */
+				<2 RK_PC1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m0_sdi0: pdm1m0-sdi0 {
+			rockchip,pins =
+				/* pdm1_sdi0_m0 */
+				<2 RK_PC4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m0_sdi1: pdm1m0-sdi1 {
+			rockchip,pins =
+				/* pdm1_sdi1_m0 */
+				<2 RK_PC0 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m0_sdi2: pdm1m0-sdi2 {
+			rockchip,pins =
+				/* pdm1_sdi2_m0 */
+				<2 RK_PC2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m0_sdi3: pdm1m0-sdi3 {
+			rockchip,pins =
+				/* pdm1_sdi3_m0 */
+				<2 RK_PC3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_clk0: pdm1m1-clk0 {
+			rockchip,pins =
+				/* pdm1_clk0_m1 */
+				<4 RK_PA6 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_clk1: pdm1m1-clk1 {
+			rockchip,pins =
+				/* pdm1_clk1_m1 */
+				<4 RK_PB0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_sdi0: pdm1m1-sdi0 {
+			rockchip,pins =
+				/* pdm1_sdi0_m1 */
+				<4 RK_PB3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_sdi1: pdm1m1-sdi1 {
+			rockchip,pins =
+				/* pdm1_sdi1_m1 */
+				<4 RK_PB2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_sdi2: pdm1m1-sdi2 {
+			rockchip,pins =
+				/* pdm1_sdi2_m1 */
+				<4 RK_PB1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m1_sdi3: pdm1m1-sdi3 {
+			rockchip,pins =
+				/* pdm1_sdi3_m1 */
+				<4 RK_PA4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_clk0: pdm1m2-clk0 {
+			rockchip,pins =
+				/* pdm1_clk0_m2 */
+				<3 RK_PB1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_clk1: pdm1m2-clk1 {
+			rockchip,pins =
+				/* pdm1_clk1_m2 */
+				<3 RK_PA7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_sdi0: pdm1m2-sdi0 {
+			rockchip,pins =
+				/* pdm1_sdi0_m2 */
+				<3 RK_PB3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_sdi1: pdm1m2-sdi1 {
+			rockchip,pins =
+				/* pdm1_sdi1_m2 */
+				<3 RK_PB2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_sdi2: pdm1m2-sdi2 {
+			rockchip,pins =
+				/* pdm1_sdi2_m2 */
+				<3 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm1m2_sdi3: pdm1m2-sdi3 {
+			rockchip,pins =
+				/* pdm1_sdi3_m2 */
+				<3 RK_PA5 4 &pcfg_pull_none>;
+		};
+	};
+
+	pmu_debug_test {
+		/omit-if-no-ref/
+		pmu_debug_test_pins: pmu_debug_test-pins {
+			rockchip,pins =
+				/* pmu_debug_test_out */
+				<0 RK_PB0 2 &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		/omit-if-no-ref/
+		pwm0m0_ch0: pwm0m0-ch0 {
+			rockchip,pins =
+				/* pwm0_ch0_m0 */
+				<0 RK_PC4 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m0_ch1: pwm0m0-ch1 {
+			rockchip,pins =
+				/* pwm0_ch1_m0 */
+				<0 RK_PC3 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m1_ch0: pwm0m1-ch0 {
+			rockchip,pins =
+				/* pwm0_ch0_m1 */
+				<1 RK_PC0 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m1_ch1: pwm0m1-ch1 {
+			rockchip,pins =
+				/* pwm0_ch1_m1 */
+				<4 RK_PC1 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m2_ch0: pwm0m2-ch0 {
+			rockchip,pins =
+				/* pwm0_ch0_m2 */
+				<2 RK_PC3 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m2_ch1: pwm0m2-ch1 {
+			rockchip,pins =
+				/* pwm0_ch1_m2 */
+				<2 RK_PC7 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m3_ch0: pwm0m3-ch0 {
+			rockchip,pins =
+				/* pwm0_ch0_m3 */
+				<3 RK_PB0 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m3_ch1: pwm0m3-ch1 {
+			rockchip,pins =
+				/* pwm0_ch1_m3 */
+				<3 RK_PB6 12 &pcfg_pull_none_drv_level_2>;
+		};
+	};
+
+	pwm1 {
+		/omit-if-no-ref/
+		pwm1m0_ch0: pwm1m0-ch0 {
+			rockchip,pins =
+				/* pwm1_ch0_m0 */
+				<0 RK_PB4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m0_ch1: pwm1m0-ch1 {
+			rockchip,pins =
+				/* pwm1_ch1_m0 */
+				<0 RK_PB5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m0_ch2: pwm1m0-ch2 {
+			rockchip,pins =
+				/* pwm1_ch2_m0 */
+				<0 RK_PB6 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m0_ch3: pwm1m0-ch3 {
+			rockchip,pins =
+				/* pwm1_ch3_m0 */
+				<0 RK_PC0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m0_ch4: pwm1m0-ch4 {
+			rockchip,pins =
+				/* pwm1_ch4_m0 */
+				<0 RK_PB7 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m0_ch5: pwm1m0-ch5 {
+			rockchip,pins =
+				/* pwm1_ch5_m0 */
+				<0 RK_PD2 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch0: pwm1m1-ch0 {
+			rockchip,pins =
+				/* pwm1_ch0_m1 */
+				<1 RK_PB4 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch1: pwm1m1-ch1 {
+			rockchip,pins =
+				/* pwm1_ch1_m1 */
+				<1 RK_PB5 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch2: pwm1m1-ch2 {
+			rockchip,pins =
+				/* pwm1_ch2_m1 */
+				<1 RK_PC2 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch3: pwm1m1-ch3 {
+			rockchip,pins =
+				/* pwm1_ch3_m1 */
+				<1 RK_PD2 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch4: pwm1m1-ch4 {
+			rockchip,pins =
+				/* pwm1_ch4_m1 */
+				<1 RK_PD3 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch5: pwm1m1-ch5 {
+			rockchip,pins =
+				/* pwm1_ch5_m1 */
+				<4 RK_PC0 14 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch0: pwm1m2-ch0 {
+			rockchip,pins =
+				/* pwm1_ch0_m2 */
+				<2 RK_PC0 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch1: pwm1m2-ch1 {
+			rockchip,pins =
+				/* pwm1_ch1_m2 */
+				<2 RK_PC1 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch2: pwm1m2-ch2 {
+			rockchip,pins =
+				/* pwm1_ch2_m2 */
+				<2 RK_PC2 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch3: pwm1m2-ch3 {
+			rockchip,pins =
+				/* pwm1_ch3_m2 */
+				<2 RK_PC4 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch4: pwm1m2-ch4 {
+			rockchip,pins =
+				/* pwm1_ch4_m2 */
+				<2 RK_PC5 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m2_ch5: pwm1m2-ch5 {
+			rockchip,pins =
+				/* pwm1_ch5_m2 */
+				<2 RK_PC6 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch0: pwm1m3-ch0 {
+			rockchip,pins =
+				/* pwm1_ch0_m3 */
+				<3 RK_PA4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch1: pwm1m3-ch1 {
+			rockchip,pins =
+				/* pwm1_ch1_m3 */
+				<3 RK_PA5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch2: pwm1m3-ch2 {
+			rockchip,pins =
+				/* pwm1_ch2_m3 */
+				<3 RK_PA6 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch3: pwm1m3-ch3 {
+			rockchip,pins =
+				/* pwm1_ch3_m3 */
+				<3 RK_PB1 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch4: pwm1m3-ch4 {
+			rockchip,pins =
+				/* pwm1_ch4_m3 */
+				<3 RK_PB4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m3_ch5: pwm1m3-ch5 {
+			rockchip,pins =
+				/* pwm1_ch5_m3 */
+				<3 RK_PB5 12 &pcfg_pull_none>;
+		};
+	};
+
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_ch0: pwm2m0-ch0 {
+			rockchip,pins =
+				/* pwm2_ch0_m0 */
+				<0 RK_PD3 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch1: pwm2m0-ch1 {
+			rockchip,pins =
+				/* pwm2_ch1_m0 */
+				<1 RK_PB3 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch2: pwm2m0-ch2 {
+			rockchip,pins =
+				/* pwm2_ch2_m0 */
+				<2 RK_PA0 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch3: pwm2m0-ch3 {
+			rockchip,pins =
+				/* pwm2_ch3_m0 */
+				<2 RK_PA1 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch4: pwm2m0-ch4 {
+			rockchip,pins =
+				/* pwm2_ch4_m0 */
+				<2 RK_PA4 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch5: pwm2m0-ch5 {
+			rockchip,pins =
+				/* pwm2_ch5_m0 */
+				<4 RK_PA2 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch6: pwm2m0-ch6 {
+			rockchip,pins =
+				/* pwm2_ch6_m0 */
+				<4 RK_PA7 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m0_ch7: pwm2m0-ch7 {
+			rockchip,pins =
+				/* pwm2_ch7_m0 */
+				<4 RK_PB3 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch0: pwm2m1-ch0 {
+			rockchip,pins =
+				/* pwm2_ch0_m1 */
+				<4 RK_PC2 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch1: pwm2m1-ch1 {
+			rockchip,pins =
+				/* pwm2_ch1_m1 */
+				<4 RK_PC3 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch2: pwm2m1-ch2 {
+			rockchip,pins =
+				/* pwm2_ch2_m1 */
+				<4 RK_PC6 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch3: pwm2m1-ch3 {
+			rockchip,pins =
+				/* pwm2_ch3_m1 */
+				<4 RK_PC7 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch4: pwm2m1-ch4 {
+			rockchip,pins =
+				/* pwm2_ch4_m1 */
+				<4 RK_PA3 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch5: pwm2m1-ch5 {
+			rockchip,pins =
+				/* pwm2_ch5_m1 */
+				<4 RK_PC5 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch6: pwm2m1-ch6 {
+			rockchip,pins =
+				/* pwm2_ch6_m1 */
+				<4 RK_PC4 14 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch7: pwm2m1-ch7 {
+			rockchip,pins =
+				/* pwm2_ch7_m1 */
+				<1 RK_PB1 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch0: pwm2m2-ch0 {
+			rockchip,pins =
+				/* pwm2_ch0_m2 */
+				<2 RK_PD0 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch1: pwm2m2-ch1 {
+			rockchip,pins =
+				/* pwm2_ch1_m2 */
+				<2 RK_PD1 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch2: pwm2m2-ch2 {
+			rockchip,pins =
+				/* pwm2_ch2_m2 */
+				<2 RK_PD2 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch3: pwm2m2-ch3 {
+			rockchip,pins =
+				/* pwm2_ch3_m2 */
+				<2 RK_PD3 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch4: pwm2m2-ch4 {
+			rockchip,pins =
+				/* pwm2_ch4_m2 */
+				<2 RK_PD4 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch5: pwm2m2-ch5 {
+			rockchip,pins =
+				/* pwm2_ch5_m2 */
+				<2 RK_PD5 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch6: pwm2m2-ch6 {
+			rockchip,pins =
+				/* pwm2_ch6_m2 */
+				<2 RK_PD6 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m2_ch7: pwm2m2-ch7 {
+			rockchip,pins =
+				/* pwm2_ch7_m2 */
+				<2 RK_PD7 13 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch0: pwm2m3-ch0 {
+			rockchip,pins =
+				/* pwm2_ch0_m3 */
+				<3 RK_PC2 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch1: pwm2m3-ch1 {
+			rockchip,pins =
+				/* pwm2_ch1_m3 */
+				<3 RK_PC3 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch2: pwm2m3-ch2 {
+			rockchip,pins =
+				/* pwm2_ch2_m3 */
+				<3 RK_PC5 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch3: pwm2m3-ch3 {
+			rockchip,pins =
+				/* pwm2_ch3_m3 */
+				<3 RK_PD0 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch4: pwm2m3-ch4 {
+			rockchip,pins =
+				/* pwm2_ch4_m3 */
+				<3 RK_PD2 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch5: pwm2m3-ch5 {
+			rockchip,pins =
+				/* pwm2_ch5_m3 */
+				<3 RK_PD3 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch6: pwm2m3-ch6 {
+			rockchip,pins =
+				/* pwm2_ch6_m3 */
+				<3 RK_PD6 12 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m3_ch7: pwm2m3-ch7 {
+			rockchip,pins =
+				/* pwm2_ch7_m3 */
+				<3 RK_PD7 12 &pcfg_pull_none_drv_level_2>;
+		};
+	};
+
+	ref_clk0 {
+		/omit-if-no-ref/
+		ref_clk0_clk0: ref_clk0-clk0 {
+			rockchip,pins =
+				/* ref_clk0_out */
+				<0 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
+	ref_clk1 {
+		/omit-if-no-ref/
+		ref_clk1_clk1: ref_clk1-clk1 {
+			rockchip,pins =
+				/* ref_clk1_out */
+				<0 RK_PB4 1 &pcfg_pull_none>;
+		};
+	};
+
+	ref_clk2 {
+		/omit-if-no-ref/
+		ref_clk2_clk2: ref_clk2-clk2 {
+			rockchip,pins =
+				/* ref_clk2_out */
+				<0 RK_PB5 1 &pcfg_pull_none>;
+		};
+	};
+
+	sai0 {
+		/omit-if-no-ref/
+		sai0m0_lrck: sai0m0-lrck {
+			rockchip,pins =
+				/* sai0_lrck_m0 */
+				<2 RK_PB7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_mclk: sai0m0-mclk {
+			rockchip,pins =
+				/* sai0_mclk_m0 */
+				<2 RK_PB5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sclk: sai0m0-sclk {
+			rockchip,pins =
+				/* sai0_sclk_m0 */
+				<2 RK_PB6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdi0: sai0m0-sdi0 {
+			rockchip,pins =
+				/* sai0_sdi0_m0 */
+				<2 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdi1: sai0m0-sdi1 {
+			rockchip,pins =
+				/* sai0_sdi1_m0 */
+				<2 RK_PB1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdi2: sai0m0-sdi2 {
+			rockchip,pins =
+				/* sai0_sdi2_m0 */
+				<2 RK_PB2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdi3: sai0m0-sdi3 {
+			rockchip,pins =
+				/* sai0_sdi3_m0 */
+				<2 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdo0: sai0m0-sdo0 {
+			rockchip,pins =
+				/* sai0_sdo0_m0 */
+				<2 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdo1: sai0m0-sdo1 {
+			rockchip,pins =
+				/* sai0_sdo1_m0 */
+				<2 RK_PA7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdo2: sai0m0-sdo2 {
+			rockchip,pins =
+				/* sai0_sdo2_m0 */
+				<2 RK_PB3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m0_sdo3: sai0m0-sdo3 {
+			rockchip,pins =
+				/* sai0_sdo3_m0 */
+				<2 RK_PD7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_lrck: sai0m1-lrck {
+			rockchip,pins =
+				/* sai0_lrck_m1 */
+				<0 RK_PC7 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_mclk: sai0m1-mclk {
+			rockchip,pins =
+				/* sai0_mclk_m1 */
+				<0 RK_PC4 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sclk: sai0m1-sclk {
+			rockchip,pins =
+				/* sai0_sclk_m1 */
+				<0 RK_PC6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdi0: sai0m1-sdi0 {
+			rockchip,pins =
+				/* sai0_sdi0_m1 */
+				<0 RK_PD0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdi1: sai0m1-sdi1 {
+			rockchip,pins =
+				/* sai0_sdi1_m1 */
+				<0 RK_PD1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdi2: sai0m1-sdi2 {
+			rockchip,pins =
+				/* sai0_sdi2_m1 */
+				<0 RK_PD2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdi3: sai0m1-sdi3 {
+			rockchip,pins =
+				/* sai0_sdi3_m1 */
+				<0 RK_PD3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdo0: sai0m1-sdo0 {
+			rockchip,pins =
+				/* sai0_sdo0_m1 */
+				<0 RK_PC5 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdo1: sai0m1-sdo1 {
+			rockchip,pins =
+				/* sai0_sdo1_m1 */
+				<0 RK_PD3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdo2: sai0m1-sdo2 {
+			rockchip,pins =
+				/* sai0_sdo2_m1 */
+				<0 RK_PD2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m1_sdo3: sai0m1-sdo3 {
+			rockchip,pins =
+				/* sai0_sdo3_m1 */
+				<0 RK_PD1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_lrck: sai0m2-lrck {
+			rockchip,pins =
+				/* sai0_lrck_m2 */
+				<1 RK_PA1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_mclk: sai0m2-mclk {
+			rockchip,pins =
+				/* sai0_mclk_m2 */
+				<1 RK_PA4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sclk: sai0m2-sclk {
+			rockchip,pins =
+				/* sai0_sclk_m2 */
+				<1 RK_PA0 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdi0: sai0m2-sdi0 {
+			rockchip,pins =
+				/* sai0_sdi0_m2 */
+				<1 RK_PB2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdi1: sai0m2-sdi1 {
+			rockchip,pins =
+				/* sai0_sdi1_m2 */
+				<1 RK_PB1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdi2: sai0m2-sdi2 {
+			rockchip,pins =
+				/* sai0_sdi2_m2 */
+				<1 RK_PA3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdi3: sai0m2-sdi3 {
+			rockchip,pins =
+				/* sai0_sdi3_m2 */
+				<1 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdo0: sai0m2-sdo0 {
+			rockchip,pins =
+				/* sai0_sdo0_m2 */
+				<1 RK_PA7 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdo1: sai0m2-sdo1 {
+			rockchip,pins =
+				/* sai0_sdo1_m2 */
+				<1 RK_PA2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdo2: sai0m2-sdo2 {
+			rockchip,pins =
+				/* sai0_sdo2_m2 */
+				<1 RK_PA3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai0m2_sdo3: sai0m2-sdo3 {
+			rockchip,pins =
+				/* sai0_sdo3_m2 */
+				<1 RK_PB1 3 &pcfg_pull_none>;
+		};
+	};
+
+	sai1 {
+		/omit-if-no-ref/
+		sai1m0_lrck: sai1m0-lrck {
+			rockchip,pins =
+				/* sai1_lrck_m0 */
+				<4 RK_PA5 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_mclk: sai1m0-mclk {
+			rockchip,pins =
+				/* sai1_mclk_m0 */
+				<4 RK_PA2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sclk: sai1m0-sclk {
+			rockchip,pins =
+				/* sai1_sclk_m0 */
+				<4 RK_PA3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdi0: sai1m0-sdi0 {
+			rockchip,pins =
+				/* sai1_sdi0_m0 */
+				<4 RK_PB3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdi1: sai1m0-sdi1 {
+			rockchip,pins =
+				/* sai1_sdi1_m0 */
+				<4 RK_PB2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdi2: sai1m0-sdi2 {
+			rockchip,pins =
+				/* sai1_sdi2_m0 */
+				<4 RK_PB1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdi3: sai1m0-sdi3 {
+			rockchip,pins =
+				/* sai1_sdi3_m0 */
+				<4 RK_PB0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdo0: sai1m0-sdo0 {
+			rockchip,pins =
+				/* sai1_sdo0_m0 */
+				<4 RK_PA7 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdo1: sai1m0-sdo1 {
+			rockchip,pins =
+				/* sai1_sdo1_m0 */
+				<4 RK_PB0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdo2: sai1m0-sdo2 {
+			rockchip,pins =
+				/* sai1_sdo2_m0 */
+				<4 RK_PB1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m0_sdo3: sai1m0-sdo3 {
+			rockchip,pins =
+				/* sai1_sdo3_m0 */
+				<4 RK_PB2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_lrck: sai1m1-lrck {
+			rockchip,pins =
+				/* sai1_lrck_m1 */
+				<3 RK_PC6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_mclk: sai1m1-mclk {
+			rockchip,pins =
+				/* sai1_mclk_m1 */
+				<3 RK_PD0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sclk: sai1m1-sclk {
+			rockchip,pins =
+				/* sai1_sclk_m1 */
+				<3 RK_PC7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdi0: sai1m1-sdi0 {
+			rockchip,pins =
+				/* sai1_sdi0_m1 */
+				<3 RK_PB7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdi1: sai1m1-sdi1 {
+			rockchip,pins =
+				/* sai1_sdi1_m1 */
+				<3 RK_PD4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdi2: sai1m1-sdi2 {
+			rockchip,pins =
+				/* sai1_sdi2_m1 */
+				<3 RK_PD5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdi3: sai1m1-sdi3 {
+			rockchip,pins =
+				/* sai1_sdi3_m1 */
+				<3 RK_PD6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdo0: sai1m1-sdo0 {
+			rockchip,pins =
+				/* sai1_sdo0_m1 */
+				<3 RK_PC5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdo1: sai1m1-sdo1 {
+			rockchip,pins =
+				/* sai1_sdo1_m1 */
+				<3 RK_PC4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdo2: sai1m1-sdo2 {
+			rockchip,pins =
+				/* sai1_sdo2_m1 */
+				<3 RK_PC1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai1m1_sdo3: sai1m1-sdo3 {
+			rockchip,pins =
+				/* sai1_sdo3_m1 */
+				<3 RK_PC0 4 &pcfg_pull_none>;
+		};
+	};
+
+	sai2 {
+		/omit-if-no-ref/
+		sai2m0_lrck: sai2m0-lrck {
+			rockchip,pins =
+				/* sai2_lrck_m0 */
+				<1 RK_PD2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m0_mclk: sai2m0-mclk {
+			rockchip,pins =
+				/* sai2_mclk_m0 */
+				<1 RK_PD4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m0_sclk: sai2m0-sclk {
+			rockchip,pins =
+				/* sai2_sclk_m0 */
+				<1 RK_PD1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m0_sdi: sai2m0-sdi {
+			rockchip,pins =
+				/* sai2m0_sdi */
+				<1 RK_PD3 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai2m0_sdo: sai2m0-sdo {
+			rockchip,pins =
+				/* sai2m0_sdo */
+				<1 RK_PD0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m1_lrck: sai2m1-lrck {
+			rockchip,pins =
+				/* sai2_lrck_m1 */
+				<2 RK_PC3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m1_mclk: sai2m1-mclk {
+			rockchip,pins =
+				/* sai2_mclk_m1 */
+				<2 RK_PC1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m1_sclk: sai2m1-sclk {
+			rockchip,pins =
+				/* sai2_sclk_m1 */
+				<2 RK_PC2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m1_sdi: sai2m1-sdi {
+			rockchip,pins =
+				/* sai2m1_sdi */
+				<2 RK_PC5 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai2m1_sdo: sai2m1-sdo {
+			rockchip,pins =
+				/* sai2m1_sdo */
+				<2 RK_PC4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m2_lrck: sai2m2-lrck {
+			rockchip,pins =
+				/* sai2_lrck_m2 */
+				<3 RK_PC3 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m2_mclk: sai2m2-mclk {
+			rockchip,pins =
+				/* sai2_mclk_m2 */
+				<3 RK_PD1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m2_sclk: sai2m2-sclk {
+			rockchip,pins =
+				/* sai2_sclk_m2 */
+				<3 RK_PC2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai2m2_sdi: sai2m2-sdi {
+			rockchip,pins =
+				/* sai2m2_sdi */
+				<3 RK_PD2 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai2m2_sdo: sai2m2-sdo {
+			rockchip,pins =
+				/* sai2m2_sdo */
+				<3 RK_PD3 4 &pcfg_pull_none>;
+		};
+	};
+
+	sai3 {
+		/omit-if-no-ref/
+		sai3m0_lrck: sai3m0-lrck {
+			rockchip,pins =
+				/* sai3_lrck_m0 */
+				<1 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m0_mclk: sai3m0-mclk {
+			rockchip,pins =
+				/* sai3_mclk_m0 */
+				<1 RK_PA4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m0_sclk: sai3m0-sclk {
+			rockchip,pins =
+				/* sai3_sclk_m0 */
+				<1 RK_PA5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m0_sdi: sai3m0-sdi {
+			rockchip,pins =
+				/* sai3m0_sdi */
+				<1 RK_PA7 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai3m0_sdo: sai3m0-sdo {
+			rockchip,pins =
+				/* sai3m0_sdo */
+				<1 RK_PB2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m1_lrck: sai3m1-lrck {
+			rockchip,pins =
+				/* sai3_lrck_m1 */
+				<1 RK_PB5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m1_mclk: sai3m1-mclk {
+			rockchip,pins =
+				/* sai3_mclk_m1 */
+				<1 RK_PC1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m1_sclk: sai3m1-sclk {
+			rockchip,pins =
+				/* sai3_sclk_m1 */
+				<1 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m1_sdi: sai3m1-sdi {
+			rockchip,pins =
+				/* sai3m1_sdi */
+				<1 RK_PB7 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai3m1_sdo: sai3m1-sdo {
+			rockchip,pins =
+				/* sai3m1_sdo */
+				<1 RK_PB6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m2_lrck: sai3m2-lrck {
+			rockchip,pins =
+				/* sai3_lrck_m2 */
+				<3 RK_PA1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m2_mclk: sai3m2-mclk {
+			rockchip,pins =
+				/* sai3_mclk_m2 */
+				<2 RK_PD6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m2_sclk: sai3m2-sclk {
+			rockchip,pins =
+				/* sai3_sclk_m2 */
+				<3 RK_PA0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m2_sdi: sai3m2-sdi {
+			rockchip,pins =
+				/* sai3m2_sdi */
+				<3 RK_PA3 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai3m2_sdo: sai3m2-sdo {
+			rockchip,pins =
+				/* sai3m2_sdo */
+				<3 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m3_lrck: sai3m3-lrck {
+			rockchip,pins =
+				/* sai3_lrck_m3 */
+				<2 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m3_mclk: sai3m3-mclk {
+			rockchip,pins =
+				/* sai3_mclk_m3 */
+				<2 RK_PA1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m3_sclk: sai3m3-sclk {
+			rockchip,pins =
+				/* sai3_sclk_m3 */
+				<2 RK_PA5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai3m3_sdi: sai3m3-sdi {
+			rockchip,pins =
+				/* sai3m3_sdi */
+				<2 RK_PA3 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai3m3_sdo: sai3m3-sdo {
+			rockchip,pins =
+				/* sai3m3_sdo */
+				<2 RK_PA4 4 &pcfg_pull_none>;
+		};
+	};
+
+	sai4 {
+		/omit-if-no-ref/
+		sai4m0_lrck: sai4m0-lrck {
+			rockchip,pins =
+				/* sai4_lrck_m0 */
+				<4 RK_PA6 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m0_mclk: sai4m0-mclk {
+			rockchip,pins =
+				/* sai4_mclk_m0 */
+				<4 RK_PA2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m0_sclk: sai4m0-sclk {
+			rockchip,pins =
+				/* sai4_sclk_m0 */
+				<4 RK_PA4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m0_sdi: sai4m0-sdi {
+			rockchip,pins =
+				/* sai4m0_sdi */
+				<4 RK_PA7 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai4m0_sdo: sai4m0-sdo {
+			rockchip,pins =
+				/* sai4m0_sdo */
+				<4 RK_PB3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m1_lrck: sai4m1-lrck {
+			rockchip,pins =
+				/* sai4_lrck_m1 */
+				<4 RK_PA0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m1_mclk: sai4m1-mclk {
+			rockchip,pins =
+				/* sai4_mclk_m1 */
+				<3 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m1_sclk: sai4m1-sclk {
+			rockchip,pins =
+				/* sai4_sclk_m1 */
+				<3 RK_PD7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m1_sdi: sai4m1-sdi {
+			rockchip,pins =
+				/* sai4m1_sdi */
+				<3 RK_PA4 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai4m1_sdo: sai4m1-sdo {
+			rockchip,pins =
+				/* sai4m1_sdo */
+				<4 RK_PA1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m2_lrck: sai4m2-lrck {
+			rockchip,pins =
+				/* sai4_lrck_m2 */
+				<4 RK_PC4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m2_mclk: sai4m2-mclk {
+			rockchip,pins =
+				/* sai4_mclk_m2 */
+				<4 RK_PC0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m2_sclk: sai4m2-sclk {
+			rockchip,pins =
+				/* sai4_sclk_m2 */
+				<4 RK_PC7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m2_sdi: sai4m2-sdi {
+			rockchip,pins =
+				/* sai4m2_sdi */
+				<4 RK_PC6 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai4m2_sdo: sai4m2-sdo {
+			rockchip,pins =
+				/* sai4m2_sdo */
+				<4 RK_PC5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m3_lrck: sai4m3-lrck {
+			rockchip,pins =
+				/* sai4_lrck_m3 */
+				<2 RK_PC7 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m3_mclk: sai4m3-mclk {
+			rockchip,pins =
+				/* sai4_mclk_m3 */
+				<2 RK_PD2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m3_sclk: sai4m3-sclk {
+			rockchip,pins =
+				/* sai4_sclk_m3 */
+				<2 RK_PC6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sai4m3_sdi: sai4m3-sdi {
+			rockchip,pins =
+				/* sai4m3_sdi */
+				<2 RK_PD0 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sai4m3_sdo: sai4m3-sdo {
+			rockchip,pins =
+				/* sai4m3_sdo */
+				<2 RK_PD1 4 &pcfg_pull_none>;
+		};
+	};
+
+	sata30 {
+		/omit-if-no-ref/
+		sata30_sata: sata30-sata {
+			rockchip,pins =
+				/* sata30_cpdet */
+				<1 RK_PC7 12 &pcfg_pull_none>,
+				/* sata30_cppod */
+				<1 RK_PC6 12 &pcfg_pull_none>,
+				/* sata30_mpswit */
+				<1 RK_PD5 12 &pcfg_pull_none>;
+		};
+	};
+
+	sata30_port0 {
+		/omit-if-no-ref/
+		sata30_port0m0_port0: sata30_port0m0-port0 {
+			rockchip,pins =
+				/* sata30_port0_actled_m0 */
+				<2 RK_PB4 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sata30_port0m1_port0: sata30_port0m1-port0 {
+			rockchip,pins =
+				/* sata30_port0_actled_m1 */
+				<4 RK_PC6 10 &pcfg_pull_none>;
+		};
+	};
+
+	sata30_port1 {
+		/omit-if-no-ref/
+		sata30_port1m0_port1: sata30_port1m0-port1 {
+			rockchip,pins =
+				/* sata30_port1_actled_m0 */
+				<2 RK_PB5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sata30_port1m1_port1: sata30_port1m1-port1 {
+			rockchip,pins =
+				/* sata30_port1_actled_m1 */
+				<4 RK_PC5 10 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc0 {
+		/omit-if-no-ref/
+		sdmmc0_bus4: sdmmc0-bus4 {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<2 RK_PA0 1 &pcfg_pull_up_drv_level_3>,
+				/* sdmmc0_d1 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_3>,
+				/* sdmmc0_d2 */
+				<2 RK_PA2 1 &pcfg_pull_up_drv_level_3>,
+				/* sdmmc0_d3 */
+				<2 RK_PA3 1 &pcfg_pull_up_drv_level_3>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_clk: sdmmc0-clk {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<2 RK_PA5 1 &pcfg_pull_up_drv_level_3>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_cmd: sdmmc0-cmd {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<2 RK_PA4 1 &pcfg_pull_up_drv_level_3>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_det: sdmmc0-det {
+			rockchip,pins =
+				/* sdmmc0_detn */
+				<0 RK_PA7 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_pwren: sdmmc0-pwren {
+			rockchip,pins =
+				/* sdmmc0_pwren */
+				<0 RK_PB6 1 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1 {
+		/omit-if-no-ref/
+		sdmmc1m0_bus4: sdmmc1m0-bus4 {
+			rockchip,pins =
+				/* sdmmc1_d0_m0 */
+				<1 RK_PB4 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1_m0 */
+				<1 RK_PB5 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2_m0 */
+				<1 RK_PB6 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3_m0 */
+				<1 RK_PB7 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m0_clk: sdmmc1m0-clk {
+			rockchip,pins =
+				/* sdmmc1_clk_m0 */
+				<1 RK_PC1 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m0_cmd: sdmmc1m0-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd_m0 */
+				<1 RK_PC0 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m0_det: sdmmc1m0-det {
+			rockchip,pins =
+				/* sdmmc1_detn_m0 */
+				<1 RK_PC3 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m0_pwren: sdmmc1m0-pwren {
+			rockchip,pins =
+				/* sdmmc1m0_pwren */
+				<1 RK_PC2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m1_bus4: sdmmc1m1-bus4 {
+			rockchip,pins =
+				/* sdmmc1_d0_m1 */
+				<2 RK_PA6 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1_m1 */
+				<2 RK_PA7 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2_m1 */
+				<2 RK_PB0 2 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3_m1 */
+				<2 RK_PB1 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m1_clk: sdmmc1m1-clk {
+			rockchip,pins =
+				/* sdmmc1_clk_m1 */
+				<2 RK_PB3 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m1_cmd: sdmmc1m1-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd_m1 */
+				<2 RK_PB2 2 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m1_det: sdmmc1m1-det {
+			rockchip,pins =
+				/* sdmmc1_detn_m1 */
+				<2 RK_PB5 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m1_pwren: sdmmc1m1-pwren {
+			rockchip,pins =
+				/* sdmmc1m1_pwren */
+				<2 RK_PB4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1m2_det: sdmmc1m2-det {
+			rockchip,pins =
+				/* sdmmc1_detn_m2 */
+				<0 RK_PB6 2 &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc0_testclk {
+		/omit-if-no-ref/
+		sdmmc0_testclk_test: sdmmc0_testclk-test {
+			rockchip,pins =
+				/* sdmmc0_testclk_out */
+				<1 RK_PC4 6 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc0_testdata {
+		/omit-if-no-ref/
+		sdmmc0_testdata_test: sdmmc0_testdata-test {
+			rockchip,pins =
+				/* sdmmc0_testdata_out */
+				<1 RK_PC5 6 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1_testclk {
+		/omit-if-no-ref/
+		sdmmc1_testclkm0_test: sdmmc1_testclkm0-test {
+			rockchip,pins =
+				/* sdmmc1_testclk_out_m0 */
+				<1 RK_PC4 5 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc1_testdata {
+		/omit-if-no-ref/
+		sdmmc1_testdatam0_test: sdmmc1_testdatam0-test {
+			rockchip,pins =
+				/* sdmmc1_testdata_out_m0 */
+				<1 RK_PC5 5 &pcfg_pull_none>;
+		};
+	};
+
+	spdif {
+		/omit-if-no-ref/
+		spdifm0_rx0: spdifm0-rx0 {
+			rockchip,pins =
+				/* spdif_rx0_m0 */
+				<4 RK_PB4 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm0_rx1: spdifm0-rx1 {
+			rockchip,pins =
+				/* spdif_rx1_m0 */
+				<3 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm0_tx0: spdifm0-tx0 {
+			rockchip,pins =
+				/* spdif_tx0_m0 */
+				<4 RK_PB5 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm0_tx1: spdifm0-tx1 {
+			rockchip,pins =
+				/* spdif_tx1_m0 */
+				<3 RK_PB5 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm1_rx0: spdifm1-rx0 {
+			rockchip,pins =
+				/* spdif_rx0_m1 */
+				<4 RK_PA0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm1_rx1: spdifm1-rx1 {
+			rockchip,pins =
+				/* spdif_rx1_m1 */
+				<3 RK_PA2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm1_tx0: spdifm1-tx0 {
+			rockchip,pins =
+				/* spdif_tx0_m1 */
+				<4 RK_PA1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm1_tx1: spdifm1-tx1 {
+			rockchip,pins =
+				/* spdif_tx1_m1 */
+				<3 RK_PA3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm2_rx0: spdifm2-rx0 {
+			rockchip,pins =
+				/* spdif_rx0_m2 */
+				<2 RK_PD6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm2_rx1: spdifm2-rx1 {
+			rockchip,pins =
+				/* spdif_rx1_m2 */
+				<1 RK_PD4 6 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm2_tx0: spdifm2-tx0 {
+			rockchip,pins =
+				/* spdif_tx0_m2 */
+				<2 RK_PD7 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm2_tx1: spdifm2-tx1 {
+			rockchip,pins =
+				/* spdif_tx1_m2 */
+				<1 RK_PD5 6 &pcfg_pull_none>;
+		};
+	};
+
+	spi0 {
+		/omit-if-no-ref/
+		spi0m0_pins: spi0m0-pins {
+			rockchip,pins =
+				/* spi0_clk_m0 */
+				<0 RK_PC7 11 &pcfg_pull_none>,
+				/* spi0_miso_m0 */
+				<0 RK_PD1 11 &pcfg_pull_none>,
+				/* spi0_mosi_m0 */
+				<0 RK_PD0 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m0_csn0: spi0m0-csn0 {
+			rockchip,pins =
+				/* spi0m0_csn0 */
+				<0 RK_PC6 11 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi0m0_csn1: spi0m0-csn1 {
+			rockchip,pins =
+				/* spi0m0_csn1 */
+				<0 RK_PC3 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_pins: spi0m1-pins {
+			rockchip,pins =
+				/* spi0_clk_m1 */
+				<2 RK_PA5 12 &pcfg_pull_none>,
+				/* spi0_miso_m1 */
+				<2 RK_PA1 12 &pcfg_pull_none>,
+				/* spi0_mosi_m1 */
+				<2 RK_PA0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_csn0: spi0m1-csn0 {
+			rockchip,pins =
+				/* spi0m1_csn0 */
+				<2 RK_PA4 12 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi0m1_csn1: spi0m1-csn1 {
+			rockchip,pins =
+				/* spi0m1_csn1 */
+				<2 RK_PA2 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m2_pins: spi0m2-pins {
+			rockchip,pins =
+				/* spi0_clk_m2 */
+				<1 RK_PA7 9 &pcfg_pull_none>,
+				/* spi0_miso_m2 */
+				<1 RK_PA6 9 &pcfg_pull_none>,
+				/* spi0_mosi_m2 */
+				<1 RK_PA5 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m2_csn0: spi0m2-csn0 {
+			rockchip,pins =
+				/* spi0m2_csn0 */
+				<1 RK_PA4 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi0m2_csn1: spi0m2-csn1 {
+			rockchip,pins =
+				/* spi0m2_csn1 */
+				<1 RK_PB2 9 &pcfg_pull_none>;
+		};
+	};
+
+	spi1 {
+		/omit-if-no-ref/
+		spi1m0_pins: spi1m0-pins {
+			rockchip,pins =
+				/* spi1_clk_m0 */
+				<1 RK_PB4 11 &pcfg_pull_none>,
+				/* spi1_miso_m0 */
+				<1 RK_PB6 11 &pcfg_pull_none>,
+				/* spi1_mosi_m0 */
+				<1 RK_PB5 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi1m0_csn0: spi1m0-csn0 {
+			rockchip,pins =
+				/* spi1m0_csn0 */
+				<1 RK_PB7 11 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi1m0_csn1: spi1m0-csn1 {
+			rockchip,pins =
+				/* spi1m0_csn1 */
+				<1 RK_PC0 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi1m1_pins: spi1m1-pins {
+			rockchip,pins =
+				/* spi1_clk_m1 */
+				<2 RK_PC5 10 &pcfg_pull_none>,
+				/* spi1_miso_m1 */
+				<2 RK_PC3 10 &pcfg_pull_none>,
+				/* spi1_mosi_m1 */
+				<2 RK_PC2 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi1m1_csn0: spi1m1-csn0 {
+			rockchip,pins =
+				/* spi1m1_csn0 */
+				<2 RK_PC4 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi1m1_csn1: spi1m1-csn1 {
+			rockchip,pins =
+				/* spi1m1_csn1 */
+				<2 RK_PC1 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi1m2_pins: spi1m2-pins {
+			rockchip,pins =
+				/* spi1_clk_m2 */
+				<3 RK_PC7 10 &pcfg_pull_none>,
+				/* spi1_miso_m2 */
+				<3 RK_PC5 10 &pcfg_pull_none>,
+				/* spi1_mosi_m2 */
+				<3 RK_PC6 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi1m2_csn0: spi1m2-csn0 {
+			rockchip,pins =
+				/* spi1m2_csn0 */
+				<3 RK_PD0 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi1m2_csn1: spi1m2-csn1 {
+			rockchip,pins =
+				/* spi1m2_csn1 */
+				<4 RK_PA0 10 &pcfg_pull_none>;
+		};
+	};
+
+	spi2 {
+		/omit-if-no-ref/
+		spi2m0_pins: spi2m0-pins {
+			rockchip,pins =
+				/* spi2_clk_m0 */
+				<0 RK_PB2 9 &pcfg_pull_none>,
+				/* spi2_miso_m0 */
+				<0 RK_PB1 9 &pcfg_pull_none>,
+				/* spi2_mosi_m0 */
+				<0 RK_PB3 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi2m0_csn0: spi2m0-csn0 {
+			rockchip,pins =
+				/* spi2m0_csn0 */
+				<0 RK_PB0 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi2m0_csn1: spi2m0-csn1 {
+			rockchip,pins =
+				/* spi2m0_csn1 */
+				<0 RK_PA7 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi2m1_pins: spi2m1-pins {
+			rockchip,pins =
+				/* spi2_clk_m1 */
+				<1 RK_PD5 11 &pcfg_pull_none>,
+				/* spi2_miso_m1 */
+				<1 RK_PC5 11 &pcfg_pull_none>,
+				/* spi2_mosi_m1 */
+				<1 RK_PC4 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi2m1_csn0: spi2m1-csn0 {
+			rockchip,pins =
+				/* spi2m1_csn0 */
+				<1 RK_PC3 11 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi2m1_csn1: spi2m1-csn1 {
+			rockchip,pins =
+				/* spi2m1_csn1 */
+				<1 RK_PC2 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi2m2_pins: spi2m2-pins {
+			rockchip,pins =
+				/* spi2_clk_m2 */
+				<3 RK_PA4 10 &pcfg_pull_none>,
+				/* spi2_miso_m2 */
+				<3 RK_PC1 10 &pcfg_pull_none>,
+				/* spi2_mosi_m2 */
+				<3 RK_PB0 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi2m2_csn0: spi2m2-csn0 {
+			rockchip,pins =
+				/* spi2m2_csn0 */
+				<3 RK_PC4 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi2m2_csn1: spi2m2-csn1 {
+			rockchip,pins =
+				/* spi2m2_csn1 */
+				<3 RK_PA5 10 &pcfg_pull_none>;
+		};
+	};
+
+	spi3 {
+		/omit-if-no-ref/
+		spi3m0_pins: spi3m0-pins {
+			rockchip,pins =
+				/* spi3_clk_m0 */
+				<3 RK_PA0 10 &pcfg_pull_none>,
+				/* spi3_miso_m0 */
+				<3 RK_PA2 10 &pcfg_pull_none>,
+				/* spi3_mosi_m0 */
+				<3 RK_PA1 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi3m0_csn0: spi3m0-csn0 {
+			rockchip,pins =
+				/* spi3m0_csn0 */
+				<3 RK_PA3 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi3m0_csn1: spi3m0-csn1 {
+			rockchip,pins =
+				/* spi3m0_csn1 */
+				<2 RK_PD7 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi3m1_pins: spi3m1-pins {
+			rockchip,pins =
+				/* spi3_clk_m1 */
+				<3 RK_PD4 10 &pcfg_pull_none>,
+				/* spi3_miso_m1 */
+				<3 RK_PD5 10 &pcfg_pull_none>,
+				/* spi3_mosi_m1 */
+				<3 RK_PD6 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi3m1_csn0: spi3m1-csn0 {
+			rockchip,pins =
+				/* spi3m1_csn0 */
+				<3 RK_PB6 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi3m1_csn1: spi3m1-csn1 {
+			rockchip,pins =
+				/* spi3m1_csn1 */
+				<3 RK_PD7 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi3m2_pins: spi3m2-pins {
+			rockchip,pins =
+				/* spi3_clk_m2 */
+				<4 RK_PA7 9 &pcfg_pull_none>,
+				/* spi3_miso_m2 */
+				<4 RK_PA6 9 &pcfg_pull_none>,
+				/* spi3_mosi_m2 */
+				<4 RK_PA4 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi3m2_csn0: spi3m2-csn0 {
+			rockchip,pins =
+				/* spi3m2_csn0 */
+				<4 RK_PA3 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi3m2_csn1: spi3m2-csn1 {
+			rockchip,pins =
+				/* spi3m2_csn1 */
+				<4 RK_PB3 10 &pcfg_pull_none>;
+		};
+	};
+
+	spi4 {
+		/omit-if-no-ref/
+		spi4m0_pins: spi4m0-pins {
+			rockchip,pins =
+				/* spi4_clk_m0 */
+				<4 RK_PC7 12 &pcfg_pull_none>,
+				/* spi4_miso_m0 */
+				<4 RK_PC6 12 &pcfg_pull_none>,
+				/* spi4_mosi_m0 */
+				<4 RK_PC5 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m0_csn0: spi4m0-csn0 {
+			rockchip,pins =
+				/* spi4m0_csn0 */
+				<4 RK_PC4 12 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi4m0_csn1: spi4m0-csn1 {
+			rockchip,pins =
+				/* spi4m0_csn1 */
+				<4 RK_PC0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m1_pins: spi4m1-pins {
+			rockchip,pins =
+				/* spi4_clk_m1 */
+				<3 RK_PD1 10 &pcfg_pull_none>,
+				/* spi4_miso_m1 */
+				<3 RK_PC2 10 &pcfg_pull_none>,
+				/* spi4_mosi_m1 */
+				<3 RK_PC3 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m1_csn0: spi4m1-csn0 {
+			rockchip,pins =
+				/* spi4m1_csn0 */
+				<3 RK_PB1 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi4m1_csn1: spi4m1-csn1 {
+			rockchip,pins =
+				/* spi4m1_csn1 */
+				<3 RK_PD2 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m2_pins: spi4m2-pins {
+			rockchip,pins =
+				/* spi4_clk_m2 */
+				<4 RK_PB0 9 &pcfg_pull_none>,
+				/* spi4_miso_m2 */
+				<4 RK_PB2 9 &pcfg_pull_none>,
+				/* spi4_mosi_m2 */
+				<4 RK_PB1 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m2_csn0: spi4m2-csn0 {
+			rockchip,pins =
+				/* spi4m2_csn0 */
+				<4 RK_PB3 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi4m2_csn1: spi4m2-csn1 {
+			rockchip,pins =
+				/* spi4m2_csn1 */
+				<4 RK_PA5 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m3_pins: spi4m3-pins {
+			rockchip,pins =
+				/* spi4_clk_m3 */
+				<2 RK_PB3 10 &pcfg_pull_none>,
+				/* spi4_miso_m3 */
+				<2 RK_PB5 10 &pcfg_pull_none>,
+				/* spi4_mosi_m3 */
+				<2 RK_PB4 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi4m3_csn0: spi4m3-csn0 {
+			rockchip,pins =
+				/* spi4m3_csn0 */
+				<2 RK_PB2 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		spi4m3_csn1: spi4m3-csn1 {
+			rockchip,pins =
+				/* spi4m3_csn1 */
+				<2 RK_PA6 10 &pcfg_pull_none>;
+		};
+	};
+
+	test_clk {
+		/omit-if-no-ref/
+		test_clk_pins: test_clk-pins {
+			rockchip,pins =
+				/* test_clk_out */
+				<2 RK_PA5 5 &pcfg_pull_none>;
+		};
+	};
+
+	tsadc {
+		/omit-if-no-ref/
+		tsadcm0_pins: tsadcm0-pins {
+			rockchip,pins =
+				/* tsadc_ctrl_m0 */
+				<0 RK_PA1 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		tsadcm1_pins: tsadcm1-pins {
+			rockchip,pins =
+				/* tsadc_ctrl_m1 */
+				<0 RK_PA3 10 &pcfg_pull_none>;
+		};
+	};
+
+	tsadc_ctrl {
+		/omit-if-no-ref/
+		tsadc_ctrl_pins: tsadc_ctrl-pins {
+			rockchip,pins =
+				/* tsadc_ctrl_org */
+				<0 RK_PA1 10 &pcfg_pull_none>;
+		};
+	};
+
+	uart0 {
+		/omit-if-no-ref/
+		uart0m0_xfer: uart0m0-xfer {
+			rockchip,pins =
+				/* uart0_rx_m0 */
+				<0 RK_PD5 9 &pcfg_pull_up>,
+				/* uart0_tx_m0 */
+				<0 RK_PD4 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m1_xfer: uart0m1-xfer {
+			rockchip,pins =
+				/* uart0_rx_m1 */
+				<2 RK_PA0 9 &pcfg_pull_up>,
+				/* uart0_tx_m1 */
+				<2 RK_PA1 9 &pcfg_pull_up>;
+		};
+	};
+
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PC0 10 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB7 10 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m0_ctsn: uart1m0-ctsn {
+			rockchip,pins =
+				/* uart1m0_ctsn */
+				<0 RK_PD2 13 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m0_rtsn: uart1m0-rtsn {
+			rockchip,pins =
+				/* uart1m0_rtsn */
+				<0 RK_PD3 13 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_xfer: uart1m1-xfer {
+			rockchip,pins =
+				/* uart1_rx_m1 */
+				<2 RK_PB1 9 &pcfg_pull_up>,
+				/* uart1_tx_m1 */
+				<2 RK_PB0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_ctsn: uart1m1-ctsn {
+			rockchip,pins =
+				/* uart1m1_ctsn */
+				<2 RK_PB2 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m1_rtsn: uart1m1-rtsn {
+			rockchip,pins =
+				/* uart1m1_rtsn */
+				<2 RK_PB3 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_xfer: uart1m2-xfer {
+			rockchip,pins =
+				/* uart1_rx_m2 */
+				<3 RK_PA6 9 &pcfg_pull_up>,
+				/* uart1_tx_m2 */
+				<3 RK_PA7 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_ctsn: uart1m2-ctsn {
+			rockchip,pins =
+				/* uart1m2_ctsn */
+				<3 RK_PA4 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m2_rtsn: uart1m2-rtsn {
+			rockchip,pins =
+				/* uart1m2_rtsn */
+				<3 RK_PA5 9 &pcfg_pull_none>;
+		};
+	};
+
+	uart2 {
+		/omit-if-no-ref/
+		uart2m0_xfer: uart2m0-xfer {
+			rockchip,pins =
+				/* uart2_rx_m0 */
+				<1 RK_PC7 9 &pcfg_pull_up>,
+				/* uart2_tx_m0 */
+				<1 RK_PC6 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m0_ctsn: uart2m0-ctsn {
+			rockchip,pins =
+				/* uart2m0_ctsn */
+				<1 RK_PC5 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m0_rtsn: uart2m0-rtsn {
+			rockchip,pins =
+				/* uart2m0_rtsn */
+				<1 RK_PC4 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<4 RK_PB4 10 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<4 RK_PB5 10 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_ctsn: uart2m1-ctsn {
+			rockchip,pins =
+				/* uart2m1_ctsn */
+				<4 RK_PB1 12 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m1_rtsn: uart2m1-rtsn {
+			rockchip,pins =
+				/* uart2m1_rtsn */
+				<4 RK_PB0 12 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_xfer: uart2m2-xfer {
+			rockchip,pins =
+				/* uart2_rx_m2 */
+				<3 RK_PB7 9 &pcfg_pull_up>,
+				/* uart2_tx_m2 */
+				<3 RK_PC0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_ctsn: uart2m2-ctsn {
+			rockchip,pins =
+				/* uart2m2_ctsn */
+				<3 RK_PD3 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m2_rtsn: uart2m2-rtsn {
+			rockchip,pins =
+				/* uart2m2_rtsn */
+				<3 RK_PD2 9 &pcfg_pull_none>;
+		};
+	};
+
+	uart3 {
+		/omit-if-no-ref/
+		uart3m0_xfer: uart3m0-xfer {
+			rockchip,pins =
+				/* uart3_rx_m0 */
+				<3 RK_PA1 9 &pcfg_pull_up>,
+				/* uart3_tx_m0 */
+				<3 RK_PA0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart3m0_ctsn: uart3m0-ctsn {
+			rockchip,pins =
+				/* uart3m0_ctsn */
+				<3 RK_PA2 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart3m0_rtsn: uart3m0-rtsn {
+			rockchip,pins =
+				/* uart3m0_rtsn */
+				<3 RK_PA3 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart3m1_xfer: uart3m1-xfer {
+			rockchip,pins =
+				/* uart3_rx_m1 */
+				<4 RK_PA1 9 &pcfg_pull_up>,
+				/* uart3_tx_m1 */
+				<4 RK_PA0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart3m1_ctsn: uart3m1-ctsn {
+			rockchip,pins =
+				/* uart3m1_ctsn */
+				<3 RK_PB7 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart3m1_rtsn: uart3m1-rtsn {
+			rockchip,pins =
+				/* uart3m1_rtsn */
+				<3 RK_PC0 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart3m2_xfer: uart3m2-xfer {
+			rockchip,pins =
+				/* uart3_rx_m2 */
+				<1 RK_PC1 9 &pcfg_pull_up>,
+				/* uart3_tx_m2 */
+				<1 RK_PC0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart3m2_ctsn: uart3m2-ctsn {
+			rockchip,pins =
+				/* uart3m2_ctsn */
+				<1 RK_PB6 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart3m2_rtsn: uart3m2-rtsn {
+			rockchip,pins =
+				/* uart3m2_rtsn */
+				<1 RK_PB7 9 &pcfg_pull_none>;
+		};
+	};
+
+	uart4 {
+		/omit-if-no-ref/
+		uart4m0_xfer: uart4m0-xfer {
+			rockchip,pins =
+				/* uart4_rx_m0 */
+				<2 RK_PD1 9 &pcfg_pull_up>,
+				/* uart4_tx_m0 */
+				<2 RK_PD0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart4m0_ctsn: uart4m0-ctsn {
+			rockchip,pins =
+				/* uart4m0_ctsn */
+				<2 RK_PC6 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart4m0_rtsn: uart4m0-rtsn {
+			rockchip,pins =
+				/* uart4m0_rtsn */
+				<2 RK_PC7 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart4m1_xfer: uart4m1-xfer {
+			rockchip,pins =
+				/* uart4_rx_m1 */
+				<1 RK_PC5 9 &pcfg_pull_up>,
+				/* uart4_tx_m1 */
+				<1 RK_PC4 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart4m1_ctsn: uart4m1-ctsn {
+			rockchip,pins =
+				/* uart4m1_ctsn */
+				<1 RK_PC3 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart4m1_rtsn: uart4m1-rtsn {
+			rockchip,pins =
+				/* uart4m1_rtsn */
+				<1 RK_PC2 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart4m2_xfer: uart4m2-xfer {
+			rockchip,pins =
+				/* uart4_rx_m2 */
+				<0 RK_PB5 10 &pcfg_pull_up>,
+				/* uart4_tx_m2 */
+				<0 RK_PB4 10 &pcfg_pull_up>;
+		};
+	};
+
+	uart5 {
+		/omit-if-no-ref/
+		uart5m0_xfer: uart5m0-xfer {
+			rockchip,pins =
+				/* uart5_rx_m0 */
+				<3 RK_PD4 9 &pcfg_pull_up>,
+				/* uart5_tx_m0 */
+				<3 RK_PD5 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart5m0_ctsn: uart5m0-ctsn {
+			rockchip,pins =
+				/* uart5m0_ctsn */
+				<3 RK_PD6 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart5m0_rtsn: uart5m0-rtsn {
+			rockchip,pins =
+				/* uart5m0_rtsn */
+				<3 RK_PD7 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart5m1_xfer: uart5m1-xfer {
+			rockchip,pins =
+				/* uart5_rx_m1 */
+				<4 RK_PB1 10 &pcfg_pull_up>,
+				/* uart5_tx_m1 */
+				<4 RK_PB0 10 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart5m1_ctsn: uart5m1-ctsn {
+			rockchip,pins =
+				/* uart5m1_ctsn */
+				<4 RK_PA5 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart5m1_rtsn: uart5m1-rtsn {
+			rockchip,pins =
+				/* uart5m1_rtsn */
+				<4 RK_PA3 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart5m2_xfer: uart5m2-xfer {
+			rockchip,pins =
+				/* uart5_rx_m2 */
+				<2 RK_PA4 9 &pcfg_pull_up>,
+				/* uart5_tx_m2 */
+				<2 RK_PA5 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart5m2_ctsn: uart5m2-ctsn {
+			rockchip,pins =
+				/* uart5m2_ctsn */
+				<2 RK_PA3 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart5m2_rtsn: uart5m2-rtsn {
+			rockchip,pins =
+				/* uart5m2_rtsn */
+				<2 RK_PA2 10 &pcfg_pull_none>;
+		};
+	};
+
+	uart6 {
+		/omit-if-no-ref/
+		uart6m0_xfer: uart6m0-xfer {
+			rockchip,pins =
+				/* uart6_rx_m0 */
+				<4 RK_PA6 10 &pcfg_pull_up>,
+				/* uart6_tx_m0 */
+				<4 RK_PA4 10 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart6m0_ctsn: uart6m0-ctsn {
+			rockchip,pins =
+				/* uart6m0_ctsn */
+				<4 RK_PB1 11 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart6m0_rtsn: uart6m0-rtsn {
+			rockchip,pins =
+				/* uart6m0_rtsn */
+				<4 RK_PB0 11 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart6m1_xfer: uart6m1-xfer {
+			rockchip,pins =
+				/* uart6_rx_m1 */
+				<2 RK_PD3 9 &pcfg_pull_up>,
+				/* uart6_tx_m1 */
+				<2 RK_PD2 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart6m1_ctsn: uart6m1-ctsn {
+			rockchip,pins =
+				/* uart6m1_ctsn */
+				<2 RK_PD5 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart6m1_rtsn: uart6m1-rtsn {
+			rockchip,pins =
+				/* uart6m1_rtsn */
+				<2 RK_PD4 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart6m2_xfer: uart6m2-xfer {
+			rockchip,pins =
+				/* uart6_rx_m2 */
+				<1 RK_PB3 9 &pcfg_pull_up>,
+				/* uart6_tx_m2 */
+				<1 RK_PB0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart6m2_ctsn: uart6m2-ctsn {
+			rockchip,pins =
+				/* uart6m2_ctsn */
+				<1 RK_PA3 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart6m2_rtsn: uart6m2-rtsn {
+			rockchip,pins =
+				/* uart6m2_rtsn */
+				<1 RK_PA2 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart6m3_xfer: uart6m3-xfer {
+			rockchip,pins =
+				/* uart6_rx_m3 */
+				<4 RK_PC5 13 &pcfg_pull_up>,
+				/* uart6_tx_m3 */
+				<4 RK_PC4 13 &pcfg_pull_up>;
+		};
+	};
+
+	uart7 {
+		/omit-if-no-ref/
+		uart7m0_xfer: uart7m0-xfer {
+			rockchip,pins =
+				/* uart7_rx_m0 */
+				<2 RK_PB7 9 &pcfg_pull_up>,
+				/* uart7_tx_m0 */
+				<2 RK_PB6 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart7m0_ctsn: uart7m0-ctsn {
+			rockchip,pins =
+				/* uart7m0_ctsn */
+				<2 RK_PB4 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart7m0_rtsn: uart7m0-rtsn {
+			rockchip,pins =
+				/* uart7m0_rtsn */
+				<2 RK_PB5 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart7m1_xfer: uart7m1-xfer {
+			rockchip,pins =
+				/* uart7_rx_m1 */
+				<1 RK_PA3 9 &pcfg_pull_up>,
+				/* uart7_tx_m1 */
+				<1 RK_PA2 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart7m1_ctsn: uart7m1-ctsn {
+			rockchip,pins =
+				/* uart7m1_ctsn */
+				<1 RK_PA1 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart7m1_rtsn: uart7m1-rtsn {
+			rockchip,pins =
+				/* uart7m1_rtsn */
+				<1 RK_PA0 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart7m2_xfer: uart7m2-xfer {
+			rockchip,pins =
+				/* uart7_rx_m2 */
+				<2 RK_PA0 10 &pcfg_pull_up>,
+				/* uart7_tx_m2 */
+				<2 RK_PA1 10 &pcfg_pull_up>;
+		};
+	};
+
+	uart8 {
+		/omit-if-no-ref/
+		uart8m0_xfer: uart8m0-xfer {
+			rockchip,pins =
+				/* uart8_rx_m0 */
+				<3 RK_PC5 9 &pcfg_pull_up>,
+				/* uart8_tx_m0 */
+				<3 RK_PC6 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart8m0_ctsn: uart8m0-ctsn {
+			rockchip,pins =
+				/* uart8m0_ctsn */
+				<3 RK_PD0 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart8m0_rtsn: uart8m0-rtsn {
+			rockchip,pins =
+				/* uart8m0_rtsn */
+				<3 RK_PC7 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart8m1_xfer: uart8m1-xfer {
+			rockchip,pins =
+				/* uart8_rx_m1 */
+				<2 RK_PA7 9 &pcfg_pull_up>,
+				/* uart8_tx_m1 */
+				<2 RK_PA6 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart8m1_ctsn: uart8m1-ctsn {
+			rockchip,pins =
+				/* uart8m1_ctsn */
+				<2 RK_PB7 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart8m1_rtsn: uart8m1-rtsn {
+			rockchip,pins =
+				/* uart8m1_rtsn */
+				<2 RK_PB6 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart8m2_xfer: uart8m2-xfer {
+			rockchip,pins =
+				/* uart8_rx_m2 */
+				<0 RK_PC2 10 &pcfg_pull_up>,
+				/* uart8_tx_m2 */
+				<0 RK_PC1 10 &pcfg_pull_up>;
+		};
+	};
+
+	uart9 {
+		/omit-if-no-ref/
+		uart9m0_xfer: uart9m0-xfer {
+			rockchip,pins =
+				/* uart9_rx_m0 */
+				<2 RK_PC0 9 &pcfg_pull_up>,
+				/* uart9_tx_m0 */
+				<2 RK_PC1 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart9m0_ctsn: uart9m0-ctsn {
+			rockchip,pins =
+				/* uart9m0_ctsn */
+				<2 RK_PD7 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart9m0_rtsn: uart9m0-rtsn {
+			rockchip,pins =
+				/* uart9m0_rtsn */
+				<2 RK_PD6 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart9m1_xfer: uart9m1-xfer {
+			rockchip,pins =
+				/* uart9_rx_m1 */
+				<3 RK_PB2 9 &pcfg_pull_up>,
+				/* uart9_tx_m1 */
+				<3 RK_PB3 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart9m1_ctsn: uart9m1-ctsn {
+			rockchip,pins =
+				/* uart9m1_ctsn */
+				<3 RK_PB5 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart9m1_rtsn: uart9m1-rtsn {
+			rockchip,pins =
+				/* uart9m1_rtsn */
+				<3 RK_PB4 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart9m2_xfer: uart9m2-xfer {
+			rockchip,pins =
+				/* uart9_rx_m2 */
+				<4 RK_PC3 13 &pcfg_pull_up>,
+				/* uart9_tx_m2 */
+				<4 RK_PC2 13 &pcfg_pull_up>;
+		};
+	};
+
+	uart10 {
+		/omit-if-no-ref/
+		uart10m0_xfer: uart10m0-xfer {
+			rockchip,pins =
+				/* uart10_rx_m0 */
+				<3 RK_PB0 9 &pcfg_pull_up>,
+				/* uart10_tx_m0 */
+				<3 RK_PB1 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart10m0_ctsn: uart10m0-ctsn {
+			rockchip,pins =
+				/* uart10m0_ctsn */
+				<3 RK_PA6 10 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart10m0_rtsn: uart10m0-rtsn {
+			rockchip,pins =
+				/* uart10m0_rtsn */
+				<3 RK_PA7 10 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart10m1_xfer: uart10m1-xfer {
+			rockchip,pins =
+				/* uart10_rx_m1 */
+				<1 RK_PD1 9 &pcfg_pull_up>,
+				/* uart10_tx_m1 */
+				<1 RK_PD0 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart10m1_ctsn: uart10m1-ctsn {
+			rockchip,pins =
+				/* uart10m1_ctsn */
+				<1 RK_PD5 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart10m1_rtsn: uart10m1-rtsn {
+			rockchip,pins =
+				/* uart10m1_rtsn */
+				<1 RK_PD4 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart10m2_xfer: uart10m2-xfer {
+			rockchip,pins =
+				/* uart10_rx_m2 */
+				<0 RK_PC5 10 &pcfg_pull_up>,
+				/* uart10_tx_m2 */
+				<0 RK_PC4 10 &pcfg_pull_up>;
+		};
+	};
+
+	uart11 {
+		/omit-if-no-ref/
+		uart11m0_xfer: uart11m0-xfer {
+			rockchip,pins =
+				/* uart11_rx_m0 */
+				<3 RK_PC1 9 &pcfg_pull_up>,
+				/* uart11_tx_m0 */
+				<3 RK_PC4 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart11m0_ctsn: uart11m0-ctsn {
+			rockchip,pins =
+				/* uart11m0_ctsn */
+				<3 RK_PC3 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart11m0_rtsn: uart11m0-rtsn {
+			rockchip,pins =
+				/* uart11m0_rtsn */
+				<3 RK_PC2 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart11m1_xfer: uart11m1-xfer {
+			rockchip,pins =
+				/* uart11_rx_m1 */
+				<2 RK_PC5 9 &pcfg_pull_up>,
+				/* uart11_tx_m1 */
+				<2 RK_PC4 9 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart11m1_ctsn: uart11m1-ctsn {
+			rockchip,pins =
+				/* uart11m1_ctsn */
+				<2 RK_PC2 9 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart11m1_rtsn: uart11m1-rtsn {
+			rockchip,pins =
+				/* uart11m1_rtsn */
+				<2 RK_PC3 9 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart11m2_xfer: uart11m2-xfer {
+			rockchip,pins =
+				/* uart11_rx_m2 */
+				<4 RK_PC1 13 &pcfg_pull_up>,
+				/* uart11_tx_m2 */
+				<4 RK_PC0 13 &pcfg_pull_up>;
+		};
+	};
+
+	ufs {
+		/omit-if-no-ref/
+		ufs_refclk: ufs-refclk {
+			rockchip,pins =
+				/* ufs_refclk */
+				<4 RK_PD1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		ufs_rst: ufs-rst {
+			rockchip,pins =
+				/* ufs_rstn */
+				<4 RK_PD0 1 &pcfg_pull_none>;
+		};
+	};
+
+	ufs_testdata0 {
+		/omit-if-no-ref/
+		ufs_testdata0_test: ufs_testdata0-test {
+			rockchip,pins =
+				/* ufs_testdata0_out */
+				<4 RK_PC4 4 &pcfg_pull_none>;
+		};
+	};
+
+	ufs_testdata1 {
+		/omit-if-no-ref/
+		ufs_testdata1_test: ufs_testdata1-test {
+			rockchip,pins =
+				/* ufs_testdata1_out */
+				<4 RK_PC5 4 &pcfg_pull_none>;
+		};
+	};
+
+	ufs_testdata2 {
+		/omit-if-no-ref/
+		ufs_testdata2_test: ufs_testdata2-test {
+			rockchip,pins =
+				/* ufs_testdata2_out */
+				<4 RK_PC6 4 &pcfg_pull_none>;
+		};
+	};
+
+	ufs_testdata3 {
+		/omit-if-no-ref/
+		ufs_testdata3_test: ufs_testdata3-test {
+			rockchip,pins =
+				/* ufs_testdata3_out */
+				<4 RK_PC7 4 &pcfg_pull_none>;
+		};
+	};
+
+	vi_cif {
+		/omit-if-no-ref/
+		vi_cif_pins: vi_cif-pins {
+			rockchip,pins =
+				/* vi_cif_clki */
+				<3 RK_PA3 1 &pcfg_pull_none>,
+				/* vi_cif_clko */
+				<3 RK_PA2 1 &pcfg_pull_none>,
+				/* vi_cif_d0 */
+				<2 RK_PC5 1 &pcfg_pull_none>,
+				/* vi_cif_d1 */
+				<2 RK_PC4 1 &pcfg_pull_none>,
+				/* vi_cif_d2 */
+				<2 RK_PC3 1 &pcfg_pull_none>,
+				/* vi_cif_d3 */
+				<2 RK_PC2 1 &pcfg_pull_none>,
+				/* vi_cif_d4 */
+				<2 RK_PC1 1 &pcfg_pull_none>,
+				/* vi_cif_d5 */
+				<2 RK_PC0 1 &pcfg_pull_none>,
+				/* vi_cif_d6 */
+				<2 RK_PB7 1 &pcfg_pull_none>,
+				/* vi_cif_d7 */
+				<2 RK_PB6 1 &pcfg_pull_none>,
+				/* vi_cif_d8 */
+				<2 RK_PB5 1 &pcfg_pull_none>,
+				/* vi_cif_d9 */
+				<2 RK_PB4 1 &pcfg_pull_none>,
+				/* vi_cif_d10 */
+				<2 RK_PB3 1 &pcfg_pull_none>,
+				/* vi_cif_d11 */
+				<2 RK_PB2 1 &pcfg_pull_none>,
+				/* vi_cif_d12 */
+				<2 RK_PB1 1 &pcfg_pull_none>,
+				/* vi_cif_d13 */
+				<2 RK_PB0 1 &pcfg_pull_none>,
+				/* vi_cif_d14 */
+				<2 RK_PA7 1 &pcfg_pull_none>,
+				/* vi_cif_d15 */
+				<2 RK_PA6 1 &pcfg_pull_none>,
+				/* vi_cif_href */
+				<3 RK_PA0 1 &pcfg_pull_none>,
+				/* vi_cif_vsync */
+				<3 RK_PA1 1 &pcfg_pull_none>;
+		};
+	};
+
+	vo_lcdc {
+		/omit-if-no-ref/
+		vo_lcdc_pins: vo_lcdc-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d0 */
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d1 */
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d2 */
+				<3 RK_PD1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d8 */
+				<3 RK_PC3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d9 */
+				<3 RK_PC2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d16 */
+				<3 RK_PB3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d17 */
+				<3 RK_PB2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d18 */
+				<3 RK_PB1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+	};
+
+	vo_post {
+		/omit-if-no-ref/
+		vo_post_pins: vo_post-pins {
+			rockchip,pins =
+				/* vo_post_empty */
+				<4 RK_PA1 1 &pcfg_pull_none>;
+		};
+	};
+
+	vp0_sync {
+		/omit-if-no-ref/
+		vp0_sync_pins: vp0_sync-pins {
+			rockchip,pins =
+				/* vp0_sync_out */
+				<4 RK_PC5 3 &pcfg_pull_none>;
+		};
+	};
+
+	vp1_sync {
+		/omit-if-no-ref/
+		vp1_sync_pins: vp1_sync-pins {
+			rockchip,pins =
+				/* vp1_sync_out */
+				<4 RK_PC6 3 &pcfg_pull_none>;
+		};
+	};
+
+	vp2_sync {
+		/omit-if-no-ref/
+		vp2_sync_pins: vp2_sync-pins {
+			rockchip,pins =
+				/* vp2_sync_out */
+				<4 RK_PC7 3 &pcfg_pull_none>;
+		};
+	};
+};
+
+/*
+ * This part is edited handly.
+ */
+&pinctrl {
+	pmic {
+		/omit-if-no-ref/
+		pmic_pins: pmic-pins {
+			rockchip,pins =
+				/* pmic_int */
+				<0 RK_PA6 9 &pcfg_pull_up>,
+				/* pmic_sleep */
+				<0 RK_PA4 9 &pcfg_pull_none>;
+		};
+	};
+
+	vo {
+		/omit-if-no-ref/
+		bt1120_pins: bt1120-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		bt656_pins: bt656-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgb3x8_pins_m0: rgb3x8-pins-m0 {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgb3x8_pins_m1: rgb3x8-pins-m1 {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgb565_pins: rgb565-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgb666_pins: rgb666-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d2 */
+				<3 RK_PD1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d18 */
+				<3 RK_PB1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgb888_pins: rgb888-pins {
+			rockchip,pins =
+				/* vo_lcdc_clk */
+				<3 RK_PD7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d0 */
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d1 */
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d2 */
+				<3 RK_PD1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d3 */
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d4 */
+				<3 RK_PC7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d5 */
+				<3 RK_PC6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d6 */
+				<3 RK_PC5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d7 */
+				<3 RK_PC4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d8 */
+				<3 RK_PC3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d9 */
+				<3 RK_PC2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d10 */
+				<3 RK_PC1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d11 */
+				<3 RK_PC0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d12 */
+				<3 RK_PB7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d13 */
+				<3 RK_PB6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d14 */
+				<3 RK_PB5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d15 */
+				<3 RK_PB4 1 &pcfg_pull_none>,
+				/* vo_lcdc_d16 */
+				<3 RK_PB3 1 &pcfg_pull_none>,
+				/* vo_lcdc_d17 */
+				<3 RK_PB2 1 &pcfg_pull_none>,
+				/* vo_lcdc_d18 */
+				<3 RK_PB1 1 &pcfg_pull_none>,
+				/* vo_lcdc_d19 */
+				<3 RK_PB0 1 &pcfg_pull_none>,
+				/* vo_lcdc_d20 */
+				<3 RK_PA7 1 &pcfg_pull_none>,
+				/* vo_lcdc_d21 */
+				<3 RK_PA6 1 &pcfg_pull_none>,
+				/* vo_lcdc_d22 */
+				<3 RK_PA5 1 &pcfg_pull_none>,
+				/* vo_lcdc_d23 */
+				<3 RK_PA4 1 &pcfg_pull_none>,
+				/* vo_lcdc_den */
+				<3 RK_PD4 1 &pcfg_pull_none>,
+				/* vo_lcdc_hsync */
+				<3 RK_PD5 1 &pcfg_pull_none>,
+				/* vo_lcdc_vsync */
+				<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+	};
+
+	vo_ebc {
+		/omit-if-no-ref/
+		vo_ebc_pins: vo_ebc-pins {
+			rockchip,pins =
+				/* vo_ebc_gdclk */
+				<3 RK_PD5 2 &pcfg_pull_none>,
+				/* vo_ebc_gdoe */
+				<3 RK_PA6 2 &pcfg_pull_none>,
+				/* vo_ebc_gdsp */
+				<3 RK_PA5 2 &pcfg_pull_none>,
+				/* vo_ebc_sdce0 */
+				<3 RK_PB3 2 &pcfg_pull_none>,
+				/* vo_ebc_sdclk */
+				<3 RK_PD6 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo0 */
+				<3 RK_PD3 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo1 */
+				<3 RK_PD2 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo2 */
+				<3 RK_PD1 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo3 */
+				<3 RK_PD0 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo4 */
+				<3 RK_PC7 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo5 */
+				<3 RK_PC6 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo6 */
+				<3 RK_PC5 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo7 */
+				<3 RK_PC4 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo8 */
+				<3 RK_PC3 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo9 */
+				<3 RK_PC2 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo10 */
+				<3 RK_PC1 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo11 */
+				<3 RK_PC0 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo12 */
+				<3 RK_PB7 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo13 */
+				<3 RK_PB6 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo14 */
+				<3 RK_PB5 2 &pcfg_pull_none>,
+				/* vo_ebc_sddo15 */
+				<3 RK_PB4 2 &pcfg_pull_none>,
+				/* vo_ebc_sdle */
+				<3 RK_PD4 2 &pcfg_pull_none>,
+				/* vo_ebc_sdoe */
+				<3 RK_PD7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		vo_ebc_extern: vo_ebc-extern {
+			rockchip,pins =
+				/* vo_ebc_sdce1 */
+				<3 RK_PB2 2 &pcfg_pull_none>,
+				/* vo_ebc_sdce2 */
+				<3 RK_PB1 2 &pcfg_pull_none>,
+				/* vo_ebc_sdce3 */
+				<3 RK_PB0 2 &pcfg_pull_none>,
+				/* vo_ebc_sdshr */
+				<3 RK_PA4 2 &pcfg_pull_none>,
+				/* vo_ebc_vcom */
+				<3 RK_PA7 2 &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
new file mode 100644
index 000000000000..51711e2f20a2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -0,0 +1,1644 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/clock/rockchip,rk3576-cru.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rockchip,rk3576-power.h>
+#include <dt-bindings/reset/rockchip,rk3576-cru.h>
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+
+/ {
+	compatible = "rockchip,rk3576";
+
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		i2c7 = &i2c7;
+		i2c8 = &i2c8;
+		i2c9 = &i2c9;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+		serial6 = &uart6;
+		serial7 = &uart7;
+		serial8 = &uart8;
+		serial9 = &uart9;
+		serial10 = &uart10;
+		serial11 = &uart11;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		spi4 = &spi4;
+	};
+
+	xin32k: clock-xin32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
+	};
+
+	xin24m: clock-xin24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+	};
+
+	spll: clock-spll {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <702000000>;
+		clock-output-names = "spll";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu_l0>;
+				};
+				core1 {
+					cpu = <&cpu_l1>;
+				};
+				core2 {
+					cpu = <&cpu_l2>;
+				};
+				core3 {
+					cpu = <&cpu_l3>;
+				};
+			};
+			cluster1 {
+				core0 {
+					cpu = <&cpu_b0>;
+				};
+				core1 {
+					cpu = <&cpu_b1>;
+				};
+				core2 {
+					cpu = <&cpu_b2>;
+				};
+				core3 {
+					cpu = <&cpu_b3>;
+				};
+			};
+		};
+
+		cpu_l0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
+			clocks = <&scmi_clk ARMCLK_L>;
+			operating-points-v2 = <&cluster0_opp_table>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <120>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_l1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x1>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
+			clocks = <&scmi_clk ARMCLK_L>;
+			operating-points-v2 = <&cluster0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_l2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x2>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
+			clocks = <&scmi_clk ARMCLK_L>;
+			operating-points-v2 = <&cluster0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_l3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x3>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <485>;
+			clocks = <&scmi_clk ARMCLK_L>;
+			operating-points-v2 = <&cluster0_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_b0: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x100>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
+			clocks = <&scmi_clk ARMCLK_B>;
+			operating-points-v2 = <&cluster1_opp_table>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <320>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_b1: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x101>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
+			clocks = <&scmi_clk ARMCLK_B>;
+			operating-points-v2 = <&cluster1_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_b2: cpu@102 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x102>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
+			clocks = <&scmi_clk ARMCLK_B>;
+			operating-points-v2 = <&cluster1_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		cpu_b3: cpu@103 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x103>;
+			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
+			clocks = <&scmi_clk ARMCLK_B>;
+			operating-points-v2 = <&cluster1_opp_table>;
+			cpu-idle-states = <&CPU_SLEEP>;
+		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CPU_SLEEP: cpu-sleep {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				entry-latency-us = <120>;
+				exit-latency-us = <250>;
+				min-residency-us = <900>;
+				local-timer-stop;
+			};
+		};
+	};
+
+	cluster0_opp_table: opp-table-cluster0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <725000 725000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <750000 750000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <825000 825000 950000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <900000 900000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <950000 950000 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster1_opp_table: opp-table-cluster1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <700000 700000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <712500 712500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <737500 737500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <800000 800000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <862500 862500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <925000 925000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2304000000 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-microvolt = <950000 950000 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	gpu_opp_table: opp-table-gpu {
+		compatible = "operating-points-v2";
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <700000 700000 850000>;
+		};
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <725000 725000 850000>;
+		};
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <775000 775000 850000>;
+		};
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <825000 825000 850000>;
+		};
+		opp-950000000 {
+			opp-hz = /bits/ 64 <950000000>;
+			opp-microvolt = <850000 850000 850000>;
+		};
+	};
+
+	firmware {
+		scmi: scmi {
+			compatible = "arm,scmi-smc";
+			arm,smc-id = <0x82000010>;
+			shmem = <&scmi_shmem>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+			};
+		};
+	};
+
+	pmu_a53: pmu-a53 {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu_l0>, <&cpu_l1>, <&cpu_l2>, <&cpu_l3>;
+	};
+
+	pmu_a72: pmu-a72 {
+		compatible = "arm,cortex-a72-pmu";
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu_b0>, <&cpu_b1>, <&cpu_b2>, <&cpu_b3>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		sys_grf: syscon@2600a000 {
+			compatible = "rockchip,rk3576-sys-grf", "syscon";
+			reg = <0x0 0x2600a000 0x0 0x2000>;
+		};
+
+		bigcore_grf: syscon@2600c000 {
+			compatible = "rockchip,rk3576-bigcore-grf", "syscon";
+			reg = <0x0 0x2600c000 0x0 0x2000>;
+		};
+
+		litcore_grf: syscon@2600e000 {
+			compatible = "rockchip,rk3576-litcore-grf", "syscon";
+			reg = <0x0 0x2600e000 0x0 0x2000>;
+		};
+
+		cci_grf: syscon@26010000 {
+			compatible = "rockchip,rk3576-cci-grf", "syscon";
+			reg = <0x0 0x26010000 0x0 0x2000>;
+		};
+
+		gpu_grf: syscon@26016000 {
+			compatible = "rockchip,rk3576-gpu-grf", "syscon";
+			reg = <0x0 0x26016000 0x0 0x2000>;
+		};
+
+		npu_grf: syscon@26018000 {
+			compatible = "rockchip,rk3576-npu-grf", "syscon";
+			reg = <0x0 0x26018000 0x0 0x2000>;
+		};
+
+		vo0_grf: syscon@2601a000 {
+			compatible = "rockchip,rk3576-vo0-grf", "syscon";
+			reg = <0x0 0x2601a000 0x0 0x2000>;
+		};
+
+		usb_grf: syscon@2601e000 {
+			compatible = "rockchip,rk3576-usb-grf", "syscon";
+			reg = <0x0 0x2601e000 0x0 0x1000>;
+		};
+
+		php_grf: syscon@26020000 {
+			compatible = "rockchip,rk3576-php-grf", "syscon";
+			reg = <0x0 0x26020000 0x0 0x2000>;
+		};
+
+		pmu0_grf: syscon@26024000 {
+			compatible = "rockchip,rk3576-pmu0-grf", "syscon", "simple-mfd";
+			reg = <0x0 0x26024000 0x0 0x1000>;
+		};
+
+		pmu1_grf: syscon@26026000 {
+			compatible = "rockchip,rk3576-pmu1-grf", "syscon";
+			reg = <0x0 0x26026000 0x0 0x1000>;
+		};
+
+		pipe_phy0_grf: syscon@26028000 {
+			compatible = "rockchip,rk3576-pipe-phy-grf", "syscon";
+			reg = <0x0 0x26028000 0x0 0x2000>;
+		};
+
+		pipe_phy1_grf: syscon@2602a000 {
+			compatible = "rockchip,rk3576-pipe-phy-grf", "syscon";
+			reg = <0x0 0x2602a000 0x0 0x2000>;
+		};
+
+		usbdpphy_grf: syscon@2602c000 {
+			compatible = "rockchip,rk3576-usbdpphy-grf", "syscon";
+			reg = <0x0 0x2602c000 0x0 0x2000>;
+		};
+
+		sdgmac_grf: syscon@26038000 {
+			compatible = "rockchip,rk3576-sdgmac-grf", "syscon";
+			reg = <0x0 0x26038000 0x0 0x1000>;
+		};
+
+		ioc_grf: syscon@26040000 {
+			compatible = "rockchip,rk3576-ioc-grf", "syscon", "simple-mfd";
+			reg = <0x0 0x26040000 0x0 0xc000>;
+		};
+
+		cru: clock-controller@27200000 {
+			compatible = "rockchip,rk3576-cru";
+			reg = <0x0 0x27200000 0x0 0x50000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+
+			assigned-clocks =
+				<&cru CLK_AUDIO_FRAC_1_SRC>,
+				<&cru PLL_GPLL>, <&cru PLL_CPLL>,
+				<&cru PLL_AUPLL>, <&cru CLK_UART_FRAC_0>,
+				<&cru CLK_UART_FRAC_1>, <&cru CLK_UART_FRAC_2>,
+				<&cru CLK_AUDIO_FRAC_0>, <&cru CLK_AUDIO_FRAC_1>,
+				<&cru CLK_CPLL_DIV2>, <&cru CLK_CPLL_DIV4>,
+				<&cru CLK_CPLL_DIV10>, <&cru FCLK_DDR_CM0_CORE>,
+				<&cru ACLK_PHP_ROOT>;
+			assigned-clock-parents = <&cru PLL_AUPLL>;
+			assigned-clock-rates =
+				<0>,
+				<1188000000>, <1000000000>,
+				<786432000>, <18432000>,
+				<96000000>, <128000000>,
+				<45158400>, <49152000>,
+				<500000000>, <250000000>,
+				<100000000>, <500000000>,
+				<250000000>;
+			rockchip,grf = <&pmu0_grf>;
+		};
+
+		i2c0: i2c@27300000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x27300000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C0>, <&cru PCLK_I2C0>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c0m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		uart1: serial@27310000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x27310000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac0 8>, <&dmac0 9>;
+			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart1m0_xfer>;
+			status = "disabled";
+		};
+
+		pmu: power-management@27380000 {
+			compatible = "rockchip,rk3576-pmu", "syscon", "simple-mfd";
+			reg = <0x0 0x27380000 0x0 0x800>;
+
+			power: power-controller {
+				compatible = "rockchip,rk3576-power-controller";
+				#power-domain-cells = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				power-domain@RK3576_PD_NPU {
+					reg = <RK3576_PD_NPU>;
+					#power-domain-cells = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@RK3576_PD_NPUTOP {
+						reg = <RK3576_PD_NPUTOP>;
+						clocks = <&cru ACLK_RKNN0>,
+							 <&cru ACLK_RKNN1>,
+							 <&cru ACLK_RKNN_CBUF>,
+							 <&cru CLK_RKNN_DSU0>,
+							 <&cru HCLK_RKNN_CBUF>,
+							 <&cru HCLK_RKNN_ROOT>,
+							 <&cru HCLK_NPU_CM0_ROOT>,
+							 <&cru PCLK_NPUTOP_ROOT>;
+						pm_qos = <&qos_npu_mcu>,
+							 <&qos_npu_nsp0>,
+							 <&qos_npu_nsp1>,
+							 <&qos_npu_m0ro>,
+							 <&qos_npu_m1ro>;
+						#power-domain-cells = <1>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						power-domain@RK3576_PD_NPU0 {
+							reg = <RK3576_PD_NPU0>;
+							clocks = <&cru HCLK_RKNN_ROOT>,
+								 <&cru ACLK_RKNN0>;
+							pm_qos = <&qos_npu_m0>;
+							#power-domain-cells = <0>;
+						};
+						power-domain@RK3576_PD_NPU1 {
+							reg = <RK3576_PD_NPU1>;
+							clocks = <&cru HCLK_RKNN_ROOT>,
+								 <&cru ACLK_RKNN1>;
+							pm_qos = <&qos_npu_m1>;
+							#power-domain-cells = <0>;
+						};
+					};
+				};
+
+				power-domain@RK3576_PD_GPU {
+					reg = <RK3576_PD_GPU>;
+					clocks = <&cru CLK_GPU>, <&cru PCLK_GPU_ROOT>;
+					pm_qos = <&qos_gpu>;
+					#power-domain-cells = <0>;
+				};
+
+				power-domain@RK3576_PD_NVM {
+					reg = <RK3576_PD_NVM>;
+					clocks = <&cru ACLK_EMMC>, <&cru HCLK_EMMC>;
+					pm_qos = <&qos_emmc>,
+						 <&qos_fspi0>;
+					#power-domain-cells = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@RK3576_PD_SDGMAC {
+						reg = <RK3576_PD_SDGMAC>;
+						clocks = <&cru ACLK_HSGPIO>,
+							 <&cru ACLK_GMAC0>,
+							 <&cru ACLK_GMAC1>,
+							 <&cru CCLK_SRC_SDIO>,
+							 <&cru CCLK_SRC_SDMMC0>,
+							 <&cru HCLK_HSGPIO>,
+							 <&cru HCLK_SDIO>,
+							 <&cru HCLK_SDMMC0>,
+							 <&cru PCLK_SDGMAC_ROOT>;
+						pm_qos = <&qos_fspi1>,
+							 <&qos_gmac0>,
+							 <&qos_gmac1>,
+							 <&qos_sdio>,
+							 <&qos_sdmmc>,
+							 <&qos_flexbus>;
+						#power-domain-cells = <0>;
+					};
+				};
+				power-domain@RK3576_PD_PHP {
+					reg = <RK3576_PD_PHP>;
+					clocks = <&cru ACLK_PHP_ROOT>,
+						 <&cru PCLK_PHP_ROOT>,
+						 <&cru ACLK_MMU0>,
+						 <&cru ACLK_MMU1>;
+					pm_qos = <&qos_mmu0>,
+						 <&qos_mmu1>;
+					#power-domain-cells = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@RK3576_PD_SUBPHP {
+						reg = <RK3576_PD_SUBPHP>;
+						#power-domain-cells = <0>;
+					};
+				};
+				power-domain@RK3576_PD_AUDIO {
+					reg = <RK3576_PD_AUDIO>;
+					#power-domain-cells = <0>;
+				};
+				power-domain@RK3576_PD_VEPU1 {
+					reg = <RK3576_PD_VEPU1>;
+					clocks = <&cru ACLK_VEPU1>,
+						 <&cru HCLK_VEPU1>;
+					pm_qos = <&qos_vepu1>;
+					#power-domain-cells = <0>;
+				};
+				power-domain@RK3576_PD_VPU {
+					reg = <RK3576_PD_VPU>;
+					clocks = <&cru ACLK_EBC>,
+						 <&cru HCLK_EBC>,
+						 <&cru ACLK_JPEG>,
+						 <&cru HCLK_JPEG>,
+						 <&cru ACLK_RGA2E_0>,
+						 <&cru HCLK_RGA2E_0>,
+						 <&cru ACLK_RGA2E_1>,
+						 <&cru HCLK_RGA2E_1>,
+						 <&cru ACLK_VDPP>,
+						 <&cru HCLK_VDPP>;
+					pm_qos = <&qos_ebc>,
+						 <&qos_jpeg>,
+						 <&qos_rga0>,
+						 <&qos_rga1>,
+						 <&qos_vdpp>;
+					#power-domain-cells = <0>;
+				};
+				power-domain@RK3576_PD_VDEC {
+					reg = <RK3576_PD_VDEC>;
+					clocks = <&cru ACLK_RKVDEC_ROOT>,
+						 <&cru HCLK_RKVDEC>;
+					pm_qos = <&qos_rkvdec>;
+					#power-domain-cells = <0>;
+				};
+				power-domain@RK3576_PD_VI {
+					reg = <RK3576_PD_VI>;
+					clocks = <&cru ACLK_VICAP>,
+						 <&cru HCLK_VICAP>,
+						 <&cru DCLK_VICAP>,
+						 <&cru ACLK_VI_ROOT>,
+						 <&cru HCLK_VI_ROOT>,
+						 <&cru PCLK_VI_ROOT>,
+						 <&cru CLK_ISP_CORE>,
+						 <&cru ACLK_ISP>,
+						 <&cru HCLK_ISP>,
+						 <&cru CLK_CORE_VPSS>,
+						 <&cru ACLK_VPSS>,
+						 <&cru HCLK_VPSS>;
+					pm_qos = <&qos_isp_mro>,
+						 <&qos_isp_mwo>,
+						 <&qos_vicap_m0>,
+						 <&qos_vpss_mro>,
+						 <&qos_vpss_mwo>;
+					#power-domain-cells = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@RK3576_PD_VEPU0 {
+						reg = <RK3576_PD_VEPU0>;
+						clocks = <&cru ACLK_VEPU0>,
+							 <&cru HCLK_VEPU0>;
+						pm_qos = <&qos_vepu0>;
+						#power-domain-cells = <0>;
+					};
+				};
+				power-domain@RK3576_PD_VOP {
+					reg = <RK3576_PD_VOP>;
+					clocks = <&cru ACLK_VOP>,
+						 <&cru HCLK_VOP>,
+						 <&cru HCLK_VOP_ROOT>,
+						 <&cru PCLK_VOP_ROOT>;
+					pm_qos = <&qos_vop_m0>,
+						 <&qos_vop_m1ro>;
+					#power-domain-cells = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					
+					power-domain@RK3576_PD_USB {
+						reg = <RK3576_PD_USB>;
+						clocks = <&cru PCLK_PHP_ROOT>,
+							 <&cru ACLK_USB_ROOT>,
+							 <&cru ACLK_MMU2>,
+							 <&cru ACLK_SLV_MMU2>,
+							 <&cru ACLK_UFS_SYS>;
+						pm_qos = <&qos_mmu2>,
+							 <&qos_ufshc>;
+						#power-domain-cells = <0>;
+					};
+					power-domain@RK3576_PD_VO0 {
+						reg = <RK3576_PD_VO0>;
+						clocks = <&cru ACLK_HDCP0>,
+							 <&cru HCLK_HDCP0>,
+							 <&cru ACLK_VO0_ROOT>,
+							 <&cru PCLK_VO0_ROOT>,
+							 <&cru HCLK_VOP_ROOT>;
+						pm_qos = <&qos_hdcp0>;
+						#power-domain-cells = <0>;
+					};
+					power-domain@RK3576_PD_VO1 {
+						reg = <RK3576_PD_VO1>;
+						clocks = <&cru ACLK_HDCP1>,
+							 <&cru HCLK_HDCP1>,
+							 <&cru ACLK_VO1_ROOT>,
+							 <&cru PCLK_VO1_ROOT>,
+							 <&cru HCLK_VOP_ROOT>;
+						pm_qos = <&qos_hdcp1>;
+						#power-domain-cells = <0>;
+					};
+				};
+			};
+		};
+
+		gpu: gpu@27800000 {
+			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
+			reg = <0x0 0x27800000 0x0 0x200000>;
+			assigned-clocks = <&scmi_clk CLK_GPU>;
+			assigned-clock-rates = <198000000>;
+			clocks = <&cru CLK_GPU>;
+			clock-names = "core";
+			dynamic-power-coefficient = <1625>;
+			interrupts = <GIC_SPI 349 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 348 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 347 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "gpu", "mmu", "job";
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&power RK3576_PD_GPU>;
+			#cooling-cells = <2>;
+			status = "disabled";
+		};
+
+		qos_hdcp1: qos@27f02000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f02000 0x0 0x20>;
+		};
+
+		qos_fspi1: qos@27f04000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04000 0x0 0x20>;
+		};
+
+		qos_gmac0: qos@27f04080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04080 0x0 0x20>;
+		};
+
+		qos_gmac1: qos@27f04100 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04100 0x0 0x20>;
+		};
+
+		qos_sdio: qos@27f04180 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04180 0x0 0x20>;
+		};
+
+		qos_sdmmc: qos@27f04200 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04200 0x0 0x20>;
+		};
+
+		qos_flexbus: qos@27f04280 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f04280 0x0 0x20>;
+		};
+
+		qos_gpu: qos@27f05000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f05000 0x0 0x20>;
+		};
+
+		qos_vepu1: qos@27f06000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f06000 0x0 0x20>;
+		};
+
+		qos_npu_mcu: qos@27f08000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f08000 0x0 0x20>;
+		};
+
+		qos_npu_nsp0: qos@27f08080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f08080 0x0 0x20>;
+		};
+
+		qos_npu_nsp1: qos@27f08100 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f08100 0x0 0x20>;
+		};
+
+		qos_emmc: qos@27f09000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f09000 0x0 0x20>;
+		};
+
+		qos_fspi0: qos@27f09080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f09080 0x0 0x20>;
+		};
+
+		qos_mmu0: qos@27f0a000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0a000 0x0 0x20>;
+		};
+
+		qos_mmu1: qos@27f0a080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0a080 0x0 0x20>;
+		};
+
+		qos_rkvdec: qos@27f0c000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0c000 0x0 0x20>;
+		};
+
+		qos_crypto: qos@27f0d000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0d000 0x0 0x20>;
+		};
+
+		qos_mmu2: qos@27f0e000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0e000 0x0 0x20>;
+		};
+
+		qos_ufshc: qos@27f0e080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0e080 0x0 0x20>;
+		};
+
+		qos_vepu0: qos@27f0f000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f0f000 0x0 0x20>;
+		};
+
+		qos_isp_mro: qos@27f10000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f10000 0x0 0x20>;
+		};
+
+		qos_isp_mwo: qos@27f10080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f10080 0x0 0x20>;
+		};
+
+		qos_vicap_m0: qos@27f10100 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f10100 0x0 0x20>;
+		};
+
+		qos_vpss_mro: qos@27f10180 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f10180 0x0 0x20>;
+		};
+
+		qos_vpss_mwo: qos@27f10200 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f10200 0x0 0x20>;
+		};
+
+		qos_hdcp0: qos@27f11000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f11000 0x0 0x20>;
+		};
+
+		qos_vop_m0: qos@27f12800 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f12800 0x0 0x20>;
+		};
+
+		qos_vop_m1ro: qos@27f12880 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f12880 0x0 0x20>;
+		};
+
+		qos_ebc: qos@27f13000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f13000 0x0 0x20>;
+		};
+
+		qos_rga0: qos@27f13080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f13080 0x0 0x20>;
+		};
+
+		qos_rga1: qos@27f13100 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f13100 0x0 0x20>;
+		};
+
+		qos_jpeg: qos@27f13180 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f13180 0x0 0x20>;
+		};
+
+		qos_vdpp: qos@27f13200 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f13200 0x0 0x20>;
+		};
+
+		qos_npu_m0: qos@27f20000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f20000 0x0 0x20>;
+		};
+
+		qos_npu_m1: qos@27f21000 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f21000 0x0 0x20>;
+		};
+
+		qos_npu_m0ro: qos@27f22080 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f22080 0x0 0x20>;
+		};
+
+		qos_npu_m1ro: qos@27f22100 {
+			compatible = "rockchip,rk3576-qos", "syscon";
+			reg = <0x0 0x27f22100 0x0 0x20>;
+		};
+
+		gmac0: ethernet@2a220000 {
+			compatible = "rockchip,rk3576-gmac", "snps,dwmac-4.20a";
+			reg = <0x0 0x2a220000 0x0 0x10000>;
+			clocks = <&cru CLK_GMAC0_125M_SRC>, <&cru CLK_GMAC0_RMII_CRU>,
+				 <&cru PCLK_GMAC0>, <&cru ACLK_GMAC0>,
+				 <&cru CLK_GMAC0_PTP_REF>;
+			clock-names = "stmmaceth", "clk_mac_ref",
+				      "pclk_mac", "aclk_mac",
+				      "ptp_ref";
+			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			power-domains = <&power RK3576_PD_SDGMAC>;
+			resets = <&cru SRST_A_GMAC0>;
+			reset-names = "stmmaceth";
+			rockchip,grf = <&sdgmac_grf>;
+			rockchip,php-grf = <&ioc_grf>;
+			snps,axi-config = <&gmac0_stmmac_axi_setup>;
+			snps,mixed-burst;
+			snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
+			snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
+			snps,tso;
+			status = "disabled";
+
+			mdio0: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+			};
+
+			gmac0_stmmac_axi_setup: stmmac-axi-config {
+				snps,blen = <0 0 0 0 16 8 4>;
+				snps,rd_osr_lmt = <8>;
+				snps,wr_osr_lmt = <4>;
+			};
+
+			gmac0_mtl_rx_setup: rx-queues-config {
+				snps,rx-queues-to-use = <1>;
+				queue0 {};
+			};
+
+			gmac0_mtl_tx_setup: tx-queues-config {
+				snps,tx-queues-to-use = <1>;
+				queue0 {};
+			};
+		};
+
+		gmac1: ethernet@2a230000 {
+			compatible = "rockchip,rk3576-gmac", "snps,dwmac-4.20a";
+			reg = <0x0 0x2a230000 0x0 0x10000>;
+			clocks = <&cru CLK_GMAC1_125M_SRC>, <&cru CLK_GMAC1_RMII_CRU>,
+				 <&cru PCLK_GMAC1>, <&cru ACLK_GMAC1>,
+				 <&cru CLK_GMAC1_PTP_REF>;
+			clock-names = "stmmaceth", "clk_mac_ref",
+				      "pclk_mac", "aclk_mac",
+				      "ptp_ref";
+			interrupts = <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			power-domains = <&power RK3576_PD_SDGMAC>;
+			resets = <&cru SRST_A_GMAC1>;
+			reset-names = "stmmaceth";
+			rockchip,grf = <&sdgmac_grf>;
+			rockchip,php-grf = <&ioc_grf>;
+			snps,axi-config = <&gmac1_stmmac_axi_setup>;
+			snps,mixed-burst;
+			snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
+			snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
+			snps,tso;
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+			};
+
+			gmac1_stmmac_axi_setup: stmmac-axi-config {
+				snps,blen = <0 0 0 0 16 8 4>;
+				snps,rd_osr_lmt = <8>;
+				snps,wr_osr_lmt = <4>;
+			};
+
+			gmac1_mtl_rx_setup: rx-queues-config {
+				snps,rx-queues-to-use = <1>;
+				queue0 {};
+			};
+
+			gmac1_mtl_tx_setup: tx-queues-config {
+				snps,tx-queues-to-use = <1>;
+				queue0 {};
+			};
+		};
+
+		sdmmc: mmc@2a310000 {
+			compatible = "rockchip,rk3576-dw-mshc", "rockchip,rk3288-dw-mshc";
+			reg = <0x0 0x2a310000 0x0 0x4000>;
+			clocks = <&cru HCLK_SDMMC0>, <&cru CCLK_SRC_SDMMC0>;
+			clock-names = "biu", "ciu";
+			fifo-depth = <0x100>;
+			interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <200000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4 &sdmmc0_pwren>;
+			power-domains = <&power RK3576_PD_SDGMAC>;
+			resets = <&cru SRST_H_SDMMC0>;
+			reset-names = "reset";
+			status = "disabled";
+		};
+
+		sdhci: mmc@2a330000 {
+			compatible = "rockchip,rk3576-dwcmshc", "rockchip,rk3588-dwcmshc";
+			reg = <0x0 0x2a330000 0x0 0x10000>;
+			assigned-clocks = <&cru BCLK_EMMC>, <&cru TCLK_EMMC>, <&cru CCLK_SRC_EMMC>;
+			assigned-clock-rates = <200000000>, <24000000>, <200000000>;
+			clocks = <&cru CCLK_SRC_EMMC>, <&cru HCLK_EMMC>,
+				 <&cru ACLK_EMMC>, <&cru BCLK_EMMC>,
+				 <&cru TCLK_EMMC>;
+			clock-names = "core", "bus", "axi", "block", "timer";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <200000000>;
+			pinctrl-0 = <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
+				    <&emmc_cmd>, <&emmc_strb>;
+			pinctrl-names = "default";
+			power-domains = <&power RK3576_PD_NVM>;
+			resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
+				 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
+				 <&cru SRST_T_EMMC>;
+			reset-names = "core", "bus", "axi", "block", "timer";
+			supports-cqe;
+			status = "disabled";
+		};
+
+		gic: interrupt-controller@2a701000 {
+			compatible = "arm,gic-400";
+			reg = <0x0 0x2a701000 0 0x10000>,
+			      <0x0 0x2a702000 0 0x10000>,
+			      <0x0 0x2a704000 0 0x10000>,
+			      <0x0 0x2a706000 0 0x10000>;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+		};
+
+		dmac0: dma-controller@2ab90000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0x2ab90000 0x0 0x4000>;
+			arm,pl330-periph-burst;
+			clocks = <&cru ACLK_DMAC0>;
+			clock-names = "apb_pclk";
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+		};
+
+		dmac1: dma-controller@2abb0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0x2abb0000 0x0 0x4000>;
+			arm,pl330-periph-burst;
+			clocks = <&cru ACLK_DMAC1>;
+			clock-names = "apb_pclk";
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+		};
+
+		dmac2: dma-controller@2abd0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0x2abd0000 0x0 0x4000>;
+			arm,pl330-periph-burst;
+			clocks = <&cru ACLK_DMAC2>;
+			clock-names = "apb_pclk";
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+		};
+
+		i2c1: i2c@2ac40000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac40000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C1>, <&cru PCLK_I2C1>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c1m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@2ac50000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac50000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C2>, <&cru PCLK_I2C2>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c2m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@2ac60000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac60000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C3>, <&cru PCLK_I2C3>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c3m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c4: i2c@2ac70000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac70000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C4>, <&cru PCLK_I2C4>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c4m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@2ac80000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac80000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C5>, <&cru PCLK_I2C5>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c5m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+
+		i2c6: i2c@2ac90000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ac90000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C6>, <&cru PCLK_I2C6>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c6m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c7: i2c@2aca0000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2aca0000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C7>, <&cru PCLK_I2C7>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c7m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c8: i2c@2acb0000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2acb0000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C8>, <&cru PCLK_I2C8>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c8m0_xfer>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		timer0: timer@2acc0000 {
+			compatible = "rockchip,rk3576-timer", "rockchip,rk3288-timer";
+			reg = <0x0 0x2acc0000 0x0 0x20>;
+			clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_TIMER0>;
+			clock-names = "pclk", "timer";
+			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		wdt: watchdog@2ace0000 {
+			compatible = "rockchip,rk3576-wdt", "snps,dw-wdt";
+			reg = <0x0 0x2ace0000 0x0 0x100>;
+			clocks = <&cru TCLK_WDT0>, <&cru PCLK_WDT0>;
+			clock-names = "tclk", "pclk";
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		spi0: spi@2acf0000 {
+			compatible = "rockchip,rk3576-spi", "rockchip,rk3066-spi";
+			reg = <0x0 0x2acf0000 0x0 0x1000>;
+			clocks = <&cru CLK_SPI0>, <&cru PCLK_SPI0>;
+			clock-names = "spiclk", "apb_pclk";
+			dmas = <&dmac0 14>, <&dmac0 15>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			num-cs = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi0m0_csn0 &spi0m0_csn1 &spi0m0_pins>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi1: spi@2ad00000 {
+			compatible = "rockchip,rk3576-spi", "rockchip,rk3066-spi";
+			reg = <0x0 0x2ad00000 0x0 0x1000>;
+			clocks = <&cru CLK_SPI1>, <&cru PCLK_SPI1>;
+			clock-names = "spiclk", "apb_pclk";
+			dmas = <&dmac0 16>, <&dmac0 17>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			num-cs = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi1m0_csn0 &spi1m0_csn1 &spi1m0_pins>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi2: spi@2ad10000 {
+			compatible = "rockchip,rk3576-spi", "rockchip,rk3066-spi";
+			reg = <0x0 0x2ad10000 0x0 0x1000>;
+			clocks = <&cru CLK_SPI2>, <&cru PCLK_SPI2>;
+			clock-names = "spiclk", "apb_pclk";
+			dmas = <&dmac1 15>, <&dmac1 16>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			num-cs = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi2m0_csn0 &spi2m0_csn1 &spi2m0_pins>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi3: spi@2ad20000 {
+			compatible = "rockchip,rk3576-spi", "rockchip,rk3066-spi";
+			reg = <0x0 0x2ad20000 0x0 0x1000>;
+			clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
+			clock-names = "spiclk", "apb_pclk";
+			dmas = <&dmac1 17>, <&dmac1 18>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			num-cs = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi3m0_csn0 &spi3m0_csn1 &spi3m0_pins>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi4: spi@2ad30000 {
+			compatible = "rockchip,rk3576-spi", "rockchip,rk3066-spi";
+			reg = <0x0 0x2ad30000 0x0 0x1000>;
+			clocks = <&cru CLK_SPI4>, <&cru PCLK_SPI4>;
+			clock-names = "spiclk", "apb_pclk";
+			dmas = <&dmac2 12>, <&dmac2 13>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			num-cs = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi4m0_csn0 &spi4m0_csn1 &spi4m0_pins>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		uart0: serial@2ad40000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad40000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac0 6>, <&dmac0 7>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart0m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart2: serial@2ad50000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad50000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac0 10>, <&dmac0 11>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart2m0_xfer>;
+			status = "disabled";
+		};
+
+		uart3: serial@2ad60000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad60000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac0 12>, <&dmac0 13>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart3m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart4: serial@2ad70000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad70000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac1 9>, <&dmac1 10>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart4m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart5: serial@2ad80000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad80000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac1 11>, <&dmac1 12>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart5m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart6: serial@2ad90000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ad90000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac1 13>, <&dmac1 14>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart6m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart7: serial@2ada0000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2ada0000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac2 6>, <&dmac2 7>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart7m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart8: serial@2adb0000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2adb0000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac2 8>, <&dmac2 9>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart8m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		uart9: serial@2adc0000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2adc0000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac2 10>, <&dmac2 11>;
+			dma-names = "tx", "rx";
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-0 = <&uart9m0_xfer>;
+			pinctrl-names = "default";
+			status = "disabled";
+		};
+
+		saradc: adc@2ae00000 {
+			compatible = "rockchip,rk3576-saradc", "rockchip,rk3588-saradc";
+			reg = <0x0 0x2ae00000 0x0 0x10000>;
+			clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+			clock-names = "saradc", "apb_pclk";
+			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&cru SRST_P_SARADC>;
+			reset-names = "saradc-apb";
+			#io-channel-cells = <1>;
+			status = "disabled";
+		};
+
+		i2c9: i2c@2ae80000 {
+			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
+			reg = <0x0 0x2ae80000 0x0 0x1000>;
+			clocks = <&cru CLK_I2C9>, <&cru PCLK_I2C9>;
+			clock-names = "i2c", "pclk";
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c9m0_xfer>;
+			resets = <&cru SRST_I2C9>, <&cru SRST_P_I2C9>;
+			reset-names = "i2c", "apb";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		uart10: serial@2afc0000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2afc0000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART10>, <&cru PCLK_UART10>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac2 21>, <&dmac2 22>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart10m0_xfer>;
+			status = "disabled";
+		};
+
+		uart11: serial@2afd0000 {
+			compatible = "rockchip,rk3576-uart", "snps,dw-apb-uart";
+			reg = <0x0 0x2afd0000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART11>, <&cru PCLK_UART11>;
+			clock-names = "baudclk", "apb_pclk";
+			dmas = <&dmac2 23>, <&dmac2 24>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart11m0_xfer>;
+			status = "disabled";
+		};
+
+		sram: sram@3ff88000 {
+			compatible = "mmio-sram";
+			reg = <0x0 0x3ff88000 0x0 0x78000>;
+			ranges = <0x0 0x0 0x3ff88000 0x78000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			/* start address and size should be 4k align */
+			rkvdec_sram: rkvdec-sram@0 {
+				reg = <0x0 0x78000>;
+			};
+		};
+
+		scmi_shmem: scmi-shmem@4010f000 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x4010f000 0x0 0x100>;
+		};
+
+		pinctrl: pinctrl {
+			compatible = "rockchip,rk3576-pinctrl";
+			rockchip,grf = <&ioc_grf>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gpio0: gpio@27320000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0x27320000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO0>, <&cru DBCLK_GPIO0>;
+				gpio-controller;
+				gpio-ranges = <&pinctrl 0 0 32>;
+				interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+			};
+
+			gpio1: gpio@2ae10000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0x2ae10000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+				gpio-controller;
+				gpio-ranges = <&pinctrl 0 32 32>;
+				interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+			};
+
+			gpio2: gpio@2ae20000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0x2ae20000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+				gpio-controller;
+				gpio-ranges = <&pinctrl 0 64 32>;
+				interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+			};
+
+			gpio3: gpio@2ae30000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0x2ae30000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
+				gpio-controller;
+				gpio-ranges = <&pinctrl 0 96 32>;
+				interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+			};
+
+			gpio4: gpio@2ae40000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0x2ae40000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
+				gpio-controller;
+				gpio-ranges = <&pinctrl 0 128 32>;
+				interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+			};
+		};
+	};
+};
+
+#include "rk3576-pinctrl.dtsi"
-- 
2.46.0


