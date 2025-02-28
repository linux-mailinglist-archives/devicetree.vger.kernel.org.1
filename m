Return-Path: <devicetree+bounces-152441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB55BA491AF
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 07:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88D053B80B1
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D7D1CAA6C;
	Fri, 28 Feb 2025 06:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="G8qizDsv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2271C9B6C
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740724856; cv=none; b=I6LD4uQOnDQ/EOczUMf+llHZn+dLdkadPZJSQKl24+M5MKzSr3GeHJnMakBIS7nzriBu3HoTvqqQnpZjDJc6e63wulPV962jztvmBEnzCFOPtoAGfOjMm7nvs/T4zjC3ohkQ0alyiZ/44H+NJFeEG2/hPLzYVbswP1DuMW6v4IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740724856; c=relaxed/simple;
	bh=HNXu4jenmoP0FFfIpItysicYbCmf70cTv5nbVXMJFFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ub23qaW4P7piNr4PTiXeFSHkUNcu0dKotPnnaS8xWsrH8NGb7hzHqvov7AfECLY05xHaRG7VX6blniGYGzXo4eaT98YXCQTOi1i/kd5h1/YGrHlJ0j0p9GB1japHOHYJUv8pVkktg6EDirumFT2wQtEaLErGwAXirks4cg4w5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=G8qizDsv; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740724853; bh=MPziQnWfMIzP07jynOZy4xYcx9CbwEIGxyPaX3K/THE=;
 b=G8qizDsvGd2eb6uP/VbS3PfGJjQeu8yvUDuKpfPW9qj5VbSDbaR6lc+H5Njui27B+Lf87NgCB
 TK6UjeB+RsSKFMxByjIixBRuPN6OAQGnTX1UBrU/URYElzvOV4GMJQBJFntXJoS/uB2iCZR6vG0
 xxyPoQbkVoPJgvTKSFT7qTjj7uH6r8OaOUPqR+o/1RChhgdQyFwyxDnh+JcKGZm955IC4x1DkAw
 yWBUeOjTdPfc7cE3QW8P0hrBrakG+CfnqBfFwqufs4n4ftxAf+buC/qK57vaUJSroeiYA8b+3+w
 0ACBhIzpl8YurrJK1CmNHshwlE+dAud26//xmH7EoCdg==
X-Forward-Email-ID: 67c15a72bcf1d1bd23db01ed
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 4/7] arm64: dts: rockchip: Add pinctrl and gpio nodes for RK3528
Date: Fri, 28 Feb 2025 06:40:10 +0000
Message-ID: <20250228064024.3200000-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinctrl and gpio nodes for RK3528 and import rk3528-pinctrl.dtsi
from vendor linux-6.1-stan-rkr5 kernel with the hdmi-pins-idle node
removed due to missing label reference to pcfg_output_low_pull_down.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
This was mostly imported from vendor kernel, however the main commit [1]
list 28 signed-off-by tags, unclear who I should use as author and what
signed-off-by tags to include.

[1] https://github.com/rockchip-linux/kernel/commit/c17d6325959f0ec1af901e8a17919163454190a2
---
 .../boot/dts/rockchip/rk3528-pinctrl.dtsi     | 1397 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |   82 +
 2 files changed, 1479 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-pinctrl.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3528-pinctrl.dtsi
new file mode 100644
index 000000000000..ea051362fb26
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3528-pinctrl.dtsi
@@ -0,0 +1,1397 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
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
+	arm {
+		/omit-if-no-ref/
+		arm_pins: arm-pins {
+			rockchip,pins =
+				/* arm_avs */
+				<4 RK_PC4 3 &pcfg_pull_none>;
+		};
+	};
+
+	clk {
+		/omit-if-no-ref/
+		clkm0_32k_out: clkm0-32k-out {
+			rockchip,pins =
+				/* clkm0_32k_out */
+				<3 RK_PC3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		clkm1_32k_out: clkm1-32k-out {
+			rockchip,pins =
+				/* clkm1_32k_out */
+				<1 RK_PC3 1 &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		/omit-if-no-ref/
+		emmc_rstnout: emmc-rstnout {
+			rockchip,pins =
+				/* emmc_rstn */
+				<1 RK_PD6 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		emmc_bus8: emmc-bus8 {
+			rockchip,pins =
+				/* emmc_d0 */
+				<1 RK_PC4 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<1 RK_PC5 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<1 RK_PC6 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<1 RK_PC7 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d4 */
+				<1 RK_PD0 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d5 */
+				<1 RK_PD1 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d6 */
+				<1 RK_PD2 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d7 */
+				<1 RK_PD3 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clk */
+				<1 RK_PD5 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<1 RK_PD4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_strb: emmc-strb {
+			rockchip,pins =
+				/* emmc_strb */
+				<1 RK_PD7 1 &pcfg_pull_none>;
+		};
+	};
+
+	eth {
+		/omit-if-no-ref/
+		eth_pins: eth-pins {
+			rockchip,pins =
+				/* eth_clk_25m_out */
+				<3 RK_PB5 2 &pcfg_pull_none_drv_level_2>;
+		};
+	};
+
+	fephy {
+		/omit-if-no-ref/
+		fephym0_led_dpx: fephym0-led_dpx {
+			rockchip,pins =
+				/* fephy_led_dpx_m0 */
+				<4 RK_PB5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fephym0_led_link: fephym0-led_link {
+			rockchip,pins =
+				/* fephy_led_link_m0 */
+				<4 RK_PC0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fephym0_led_spd: fephym0-led_spd {
+			rockchip,pins =
+				/* fephy_led_spd_m0 */
+				<4 RK_PB7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fephym1_led_dpx: fephym1-led_dpx {
+			rockchip,pins =
+				/* fephy_led_dpx_m1 */
+				<2 RK_PA4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fephym1_led_link: fephym1-led_link {
+			rockchip,pins =
+				/* fephy_led_link_m1 */
+				<2 RK_PA6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fephym1_led_spd: fephym1-led_spd {
+			rockchip,pins =
+				/* fephy_led_spd_m1 */
+				<2 RK_PA5 5 &pcfg_pull_none>;
+		};
+	};
+
+	fspi {
+		/omit-if-no-ref/
+		fspi_pins: fspi-pins {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PD5 2 &pcfg_pull_none>,
+				/* fspi_d0 */
+				<1 RK_PC4 2 &pcfg_pull_none>,
+				/* fspi_d1 */
+				<1 RK_PC5 2 &pcfg_pull_none>,
+				/* fspi_d2 */
+				<1 RK_PC6 2 &pcfg_pull_none>,
+				/* fspi_d3 */
+				<1 RK_PC7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi_csn0: fspi-csn0 {
+			rockchip,pins =
+				/* fspi_csn0 */
+				<1 RK_PD0 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		fspi_csn1: fspi-csn1 {
+			rockchip,pins =
+				/* fspi_csn1 */
+				<1 RK_PD1 2 &pcfg_pull_none>;
+		};
+	};
+
+	gpu {
+		/omit-if-no-ref/
+		gpu_pins: gpu-pins {
+			rockchip,pins =
+				/* gpu_avs */
+				<4 RK_PC3 3 &pcfg_pull_none>;
+		};
+	};
+
+	hdmi {
+		/omit-if-no-ref/
+		hdmi_pins: hdmi-pins {
+			rockchip,pins =
+				/* hdmi_tx_cec */
+				<0 RK_PA3 1 &pcfg_pull_none>,
+				/* hdmi_tx_hpd */
+				<0 RK_PA2 1 &pcfg_pull_none>,
+				/* hdmi_tx_scl */
+				<0 RK_PA4 1 &pcfg_pull_none>,
+				/* hdmi_tx_sda */
+				<0 RK_PA5 1 &pcfg_pull_none>;
+		};
+	};
+
+	hsm {
+		/omit-if-no-ref/
+		hsmm0_pins: hsmm0-pins {
+			rockchip,pins =
+				/* hsm_clk_out_m0 */
+				<2 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hsmm1_pins: hsmm1-pins {
+			rockchip,pins =
+				/* hsm_clk_out_m1 */
+				<1 RK_PA4 3 &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0m0_xfer: i2c0m0-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m0 */
+				<4 RK_PC4 2 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m0 */
+				<4 RK_PC3 2 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m1_xfer: i2c0m1-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m1 */
+				<4 RK_PA1 2 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m1 */
+				<4 RK_PA0 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c1 {
+		/omit-if-no-ref/
+		i2c1m0_xfer: i2c1m0-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m0 */
+				<4 RK_PA3 2 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m0 */
+				<4 RK_PA2 2 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c1m1_xfer: i2c1m1-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m1 */
+				<4 RK_PC5 4 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m1 */
+				<4 RK_PC6 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2m0_xfer: i2c2m0-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m0 */
+				<0 RK_PA4 2 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m0 */
+				<0 RK_PA5 2 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m1_xfer: i2c2m1-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m1 */
+				<1 RK_PA5 3 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m1 */
+				<1 RK_PA6 3 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<1 RK_PA0 2 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m0 */
+				<1 RK_PA1 2 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<3 RK_PC1 5 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m1 */
+				<3 RK_PC3 5 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c4 {
+		/omit-if-no-ref/
+		i2c4_xfer: i2c4-xfer {
+			rockchip,pins =
+				/* i2c4_scl */
+				<2 RK_PA0 4 &pcfg_pull_none_smt>,
+				/* i2c4_sda */
+				<2 RK_PA1 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c5 {
+		/omit-if-no-ref/
+		i2c5m0_xfer: i2c5m0-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m0 */
+				<1 RK_PB2 3 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m0 */
+				<1 RK_PB3 3 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c5m1_xfer: i2c5m1-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m1 */
+				<1 RK_PD2 3 &pcfg_pull_none_smt>,
+				/* i2c5_sda_m1 */
+				<1 RK_PD3 3 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c6 {
+		/omit-if-no-ref/
+		i2c6m0_xfer: i2c6m0-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m0 */
+				<3 RK_PB2 5 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m0 */
+				<3 RK_PB3 5 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c6m1_xfer: i2c6m1-xfer {
+			rockchip,pins =
+				/* i2c6_scl_m1 */
+				<1 RK_PD4 3 &pcfg_pull_none_smt>,
+				/* i2c6_sda_m1 */
+				<1 RK_PD7 3 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c7 {
+		/omit-if-no-ref/
+		i2c7_xfer: i2c7-xfer {
+			rockchip,pins =
+				/* i2c7_scl */
+				<2 RK_PA5 4 &pcfg_pull_none_smt>,
+				/* i2c7_sda */
+				<2 RK_PA6 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2s0 {
+		/omit-if-no-ref/
+		i2s0m0_lrck: i2s0m0-lrck {
+			rockchip,pins =
+				/* i2s0_lrck_m0 */
+				<3 RK_PB6 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m0_mclk: i2s0m0-mclk {
+			rockchip,pins =
+				/* i2s0_mclk_m0 */
+				<3 RK_PB4 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m0_sclk: i2s0m0-sclk {
+			rockchip,pins =
+				/* i2s0_sclk_m0 */
+				<3 RK_PB5 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m0_sdi: i2s0m0-sdi {
+			rockchip,pins =
+				/* i2s0m0_sdi */
+				<3 RK_PB7 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2s0m0_sdo: i2s0m0-sdo {
+			rockchip,pins =
+				/* i2s0m0_sdo */
+				<3 RK_PC0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m1_lrck: i2s0m1-lrck {
+			rockchip,pins =
+				/* i2s0_lrck_m1 */
+				<1 RK_PB6 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m1_mclk: i2s0m1-mclk {
+			rockchip,pins =
+				/* i2s0_mclk_m1 */
+				<1 RK_PB4 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m1_sclk: i2s0m1-sclk {
+			rockchip,pins =
+				/* i2s0_sclk_m1 */
+				<1 RK_PB5 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s0m1_sdi: i2s0m1-sdi {
+			rockchip,pins =
+				/* i2s0m1_sdi */
+				<1 RK_PB7 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2s0m1_sdo: i2s0m1-sdo {
+			rockchip,pins =
+				/* i2s0m1_sdo */
+				<1 RK_PC0 1 &pcfg_pull_none>;
+		};
+	};
+
+	i2s1 {
+		/omit-if-no-ref/
+		i2s1_lrck: i2s1-lrck {
+			rockchip,pins =
+				/* i2s1_lrck */
+				<4 RK_PA6 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_mclk: i2s1-mclk {
+			rockchip,pins =
+				/* i2s1_mclk */
+				<4 RK_PA4 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sclk: i2s1-sclk {
+			rockchip,pins =
+				/* i2s1_sclk */
+				<4 RK_PA5 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdi0: i2s1-sdi0 {
+			rockchip,pins =
+				/* i2s1_sdi0 */
+				<4 RK_PB4 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdi1: i2s1-sdi1 {
+			rockchip,pins =
+				/* i2s1_sdi1 */
+				<4 RK_PB3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdi2: i2s1-sdi2 {
+			rockchip,pins =
+				/* i2s1_sdi2 */
+				<4 RK_PA3 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdi3: i2s1-sdi3 {
+			rockchip,pins =
+				/* i2s1_sdi3 */
+				<4 RK_PA2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdo0: i2s1-sdo0 {
+			rockchip,pins =
+				/* i2s1_sdo0 */
+				<4 RK_PA7 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdo1: i2s1-sdo1 {
+			rockchip,pins =
+				/* i2s1_sdo1 */
+				<4 RK_PB0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdo2: i2s1-sdo2 {
+			rockchip,pins =
+				/* i2s1_sdo2 */
+				<4 RK_PB1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s1_sdo3: i2s1-sdo3 {
+			rockchip,pins =
+				/* i2s1_sdo3 */
+				<4 RK_PB2 1 &pcfg_pull_none>;
+		};
+	};
+
+	jtag {
+		/omit-if-no-ref/
+		jtagm0_pins: jtagm0-pins {
+			rockchip,pins =
+				/* jtag_cpu_tck_m0 */
+				<2 RK_PA2 2 &pcfg_pull_none>,
+				/* jtag_cpu_tms_m0 */
+				<2 RK_PA3 2 &pcfg_pull_none>,
+				/* jtag_mcu_tck_m0 */
+				<2 RK_PA4 2 &pcfg_pull_none>,
+				/* jtag_mcu_tms_m0 */
+				<2 RK_PA5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm1_pins: jtagm1-pins {
+			rockchip,pins =
+				/* jtag_cpu_tck_m1 */
+				<4 RK_PD0 2 &pcfg_pull_none>,
+				/* jtag_cpu_tms_m1 */
+				<4 RK_PC7 2 &pcfg_pull_none>,
+				/* jtag_mcu_tck_m1 */
+				<4 RK_PD0 3 &pcfg_pull_none>,
+				/* jtag_mcu_tms_m1 */
+				<4 RK_PC7 3 &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		/omit-if-no-ref/
+		pciem0_pins: pciem0-pins {
+			rockchip,pins =
+				/* pcie_clkreqn_m0 */
+				<3 RK_PA6 5 &pcfg_pull_none>,
+				/* pcie_perstn_m0 */
+				<3 RK_PB0 5 &pcfg_pull_none>,
+				/* pcie_waken_m0 */
+				<3 RK_PA7 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pciem1_pins: pciem1-pins {
+			rockchip,pins =
+				/* pcie_clkreqn_m1 */
+				<1 RK_PA0 4 &pcfg_pull_none>,
+				/* pcie_perstn_m1 */
+				<1 RK_PA2 4 &pcfg_pull_none>,
+				/* pcie_waken_m1 */
+				<1 RK_PA1 4 &pcfg_pull_none>;
+		};
+	};
+
+	pdm {
+		/omit-if-no-ref/
+		pdm_clk0: pdm-clk0 {
+			rockchip,pins =
+				/* pdm_clk0 */
+				<4 RK_PB5 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm_clk1: pdm-clk1 {
+			rockchip,pins =
+				/* pdm_clk1 */
+				<4 RK_PA4 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm_sdi0: pdm-sdi0 {
+			rockchip,pins =
+				/* pdm_sdi0 */
+				<4 RK_PB2 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm_sdi1: pdm-sdi1 {
+			rockchip,pins =
+				/* pdm_sdi1 */
+				<4 RK_PB1 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm_sdi2: pdm-sdi2 {
+			rockchip,pins =
+				/* pdm_sdi2 */
+				<4 RK_PB3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		pdm_sdi3: pdm-sdi3 {
+			rockchip,pins =
+				/* pdm_sdi3 */
+				<4 RK_PC1 3 &pcfg_pull_none>;
+		};
+	};
+
+	pmu {
+		/omit-if-no-ref/
+		pmu_pins: pmu-pins {
+			rockchip,pins =
+				/* pmu_debug */
+				<4 RK_PA0 4 &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		/omit-if-no-ref/
+		pwm0m0_pins: pwm0m0-pins {
+			rockchip,pins =
+				/* pwm0_m0 */
+				<4 RK_PC3 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m1_pins: pwm0m1-pins {
+			rockchip,pins =
+				/* pwm0_m1 */
+				<1 RK_PA2 5 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm1 {
+		/omit-if-no-ref/
+		pwm1m0_pins: pwm1m0-pins {
+			rockchip,pins =
+				/* pwm1_m0 */
+				<4 RK_PC4 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_pins: pwm1m1-pins {
+			rockchip,pins =
+				/* pwm1_m1 */
+				<1 RK_PA3 4 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_pins: pwm2m0-pins {
+			rockchip,pins =
+				/* pwm2_m0 */
+				<4 RK_PC5 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_pins: pwm2m1-pins {
+			rockchip,pins =
+				/* pwm2_m1 */
+				<1 RK_PA7 2 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm3 {
+		/omit-if-no-ref/
+		pwm3m0_pins: pwm3m0-pins {
+			rockchip,pins =
+				/* pwm3_m0 */
+				<4 RK_PC6 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm3m1_pins: pwm3m1-pins {
+			rockchip,pins =
+				/* pwm3_m1 */
+				<2 RK_PA4 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm4 {
+		/omit-if-no-ref/
+		pwm4m0_pins: pwm4m0-pins {
+			rockchip,pins =
+				/* pwm4_m0 */
+				<4 RK_PB7 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm4m1_pins: pwm4m1-pins {
+			rockchip,pins =
+				/* pwm4_m1 */
+				<1 RK_PA4 2 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm5 {
+		/omit-if-no-ref/
+		pwm5m0_pins: pwm5m0-pins {
+			rockchip,pins =
+				/* pwm5_m0 */
+				<4 RK_PC0 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm5m1_pins: pwm5m1-pins {
+			rockchip,pins =
+				/* pwm5_m1 */
+				<3 RK_PC3 1 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm6 {
+		/omit-if-no-ref/
+		pwm6m0_pins: pwm6m0-pins {
+			rockchip,pins =
+				/* pwm6_m0 */
+				<4 RK_PC1 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm6m1_pins: pwm6m1-pins {
+			rockchip,pins =
+				/* pwm6_m1 */
+				<1 RK_PC3 3 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm6m2_pins: pwm6m2-pins {
+			rockchip,pins =
+				/* pwm6_m2 */
+				<3 RK_PC1 1 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm7 {
+		/omit-if-no-ref/
+		pwm7m0_pins: pwm7m0-pins {
+			rockchip,pins =
+				/* pwm7_m0 */
+				<4 RK_PC2 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm7m1_pins: pwm7m1-pins {
+			rockchip,pins =
+				/* pwm7_m1 */
+				<1 RK_PC2 2 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwr {
+		/omit-if-no-ref/
+		pwr_pins: pwr-pins {
+			rockchip,pins =
+				/* pwr_ctrl0 */
+				<4 RK_PC2 2 &pcfg_pull_none>,
+				/* pwr_ctrl1 */
+				<4 RK_PB6 1 &pcfg_pull_none>;
+		};
+	};
+
+	ref {
+		/omit-if-no-ref/
+		refm0_pins: refm0-pins {
+			rockchip,pins =
+				/* ref_clk_out_m0 */
+				<0 RK_PA1 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		refm1_pins: refm1-pins {
+			rockchip,pins =
+				/* ref_clk_out_m1 */
+				<3 RK_PC3 6 &pcfg_pull_none>;
+		};
+	};
+
+	rgmii {
+		/omit-if-no-ref/
+		rgmii_miim: rgmii-miim {
+			rockchip,pins =
+				/* rgmii_mdc */
+				<3 RK_PB6 2 &pcfg_pull_none_drv_level_2>,
+				/* rgmii_mdio */
+				<3 RK_PB7 2 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		rgmii_rx_bus2: rgmii-rx_bus2 {
+			rockchip,pins =
+				/* rgmii_rxd0 */
+				<3 RK_PA3 2 &pcfg_pull_none>,
+				/* rgmii_rxd1 */
+				<3 RK_PA2 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_crs */
+				<3 RK_PC2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgmii_tx_bus2: rgmii-tx_bus2 {
+			rockchip,pins =
+				/* rgmii_txd0 */
+				<3 RK_PA1 2 &pcfg_pull_none_drv_level_2>,
+				/* rgmii_txd1 */
+				<3 RK_PA0 2 &pcfg_pull_none_drv_level_2>,
+				/* rgmii_txen */
+				<3 RK_PC0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		rgmii_rgmii_clk: rgmii-rgmii_clk {
+			rockchip,pins =
+				/* rgmii_rxclk */
+				<3 RK_PA5 2 &pcfg_pull_none>,
+				/* rgmii_txclk */
+				<3 RK_PA4 2 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		rgmii_rgmii_bus: rgmii-rgmii_bus {
+			rockchip,pins =
+				/* rgmii_rxd2 */
+				<3 RK_PA7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3 */
+				<3 RK_PA6 2 &pcfg_pull_none>,
+				/* rgmii_txd2 */
+				<3 RK_PB1 2 &pcfg_pull_none_drv_level_2>,
+				/* rgmii_txd3 */
+				<3 RK_PB0 2 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		rgmii_clk: rgmii-clk {
+			rockchip,pins =
+				/* rgmii_clk */
+				<3 RK_PB4 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		rgmii_txer: rgmii-txer {
+			rockchip,pins =
+				/* rgmii_txer */
+				<3 RK_PC1 2 &pcfg_pull_none>;
+		};
+	};
+
+	scr {
+		/omit-if-no-ref/
+		scrm0_pins: scrm0-pins {
+			rockchip,pins =
+				/* scr_clk_m0 */
+				<1 RK_PA2 3 &pcfg_pull_none>,
+				/* scr_data_m0 */
+				<1 RK_PA1 3 &pcfg_pull_none>,
+				/* scr_detn_m0 */
+				<1 RK_PA0 3 &pcfg_pull_none>,
+				/* scr_rstn_m0 */
+				<1 RK_PA3 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		scrm1_pins: scrm1-pins {
+			rockchip,pins =
+				/* scr_clk_m1 */
+				<2 RK_PA5 3 &pcfg_pull_none>,
+				/* scr_data_m1 */
+				<2 RK_PA3 4 &pcfg_pull_none>,
+				/* scr_detn_m1 */
+				<2 RK_PA6 3 &pcfg_pull_none>,
+				/* scr_rstn_m1 */
+				<2 RK_PA4 4 &pcfg_pull_none>;
+		};
+	};
+
+	sdio0 {
+		/omit-if-no-ref/
+		sdio0_bus4: sdio0-bus4 {
+			rockchip,pins =
+				/* sdio0_d0 */
+				<1 RK_PA0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio0_d1 */
+				<1 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio0_d2 */
+				<1 RK_PA2 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio0_d3 */
+				<1 RK_PA3 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio0_clk: sdio0-clk {
+			rockchip,pins =
+				/* sdio0_clk */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio0_cmd: sdio0-cmd {
+			rockchip,pins =
+				/* sdio0_cmd */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio0_det: sdio0-det {
+			rockchip,pins =
+				/* sdio0_det */
+				<1 RK_PA6 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdio0_pwren: sdio0-pwren {
+			rockchip,pins =
+				/* sdio0_pwren */
+				<1 RK_PA7 1 &pcfg_pull_none>;
+		};
+	};
+
+	sdio1 {
+		/omit-if-no-ref/
+		sdio1_bus4: sdio1-bus4 {
+			rockchip,pins =
+				/* sdio1_d0 */
+				<3 RK_PA6 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio1_d1 */
+				<3 RK_PA7 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio1_d2 */
+				<3 RK_PB0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdio1_d3 */
+				<3 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio1_clk: sdio1-clk {
+			rockchip,pins =
+				/* sdio1_clk */
+				<3 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio1_cmd: sdio1-cmd {
+			rockchip,pins =
+				/* sdio1_cmd */
+				<3 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdio1_det: sdio1-det {
+			rockchip,pins =
+				/* sdio1_det */
+				<3 RK_PB3 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdio1_pwren: sdio1-pwren {
+			rockchip,pins =
+				/* sdio1_pwren */
+				<3 RK_PB2 1 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc {
+		/omit-if-no-ref/
+		sdmmc_bus4: sdmmc-bus4 {
+			rockchip,pins =
+				/* sdmmc_d0 */
+				<2 RK_PA0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc_d1 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc_d2 */
+				<2 RK_PA2 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc_d3 */
+				<2 RK_PA3 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_clk: sdmmc-clk {
+			rockchip,pins =
+				/* sdmmc_clk */
+				<2 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_cmd: sdmmc-cmd {
+			rockchip,pins =
+				/* sdmmc_cmd */
+				<2 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_det: sdmmc-det {
+			rockchip,pins =
+				/* sdmmc_detn */
+				<2 RK_PA6 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins =
+				/* sdmmc_pwren */
+				<4 RK_PA1 1 &pcfg_pull_none>;
+		};
+	};
+
+	spdif {
+		/omit-if-no-ref/
+		spdifm0_pins: spdifm0-pins {
+			rockchip,pins =
+				/* spdif_tx_m0 */
+				<4 RK_PA0 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm1_pins: spdifm1-pins {
+			rockchip,pins =
+				/* spdif_tx_m1 */
+				<1 RK_PC3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spdifm2_pins: spdifm2-pins {
+			rockchip,pins =
+				/* spdif_tx_m2 */
+				<3 RK_PC3 2 &pcfg_pull_none>;
+		};
+	};
+
+	spi0 {
+		/omit-if-no-ref/
+		spi0_pins: spi0-pins {
+			rockchip,pins =
+				/* spi0_clk */
+				<4 RK_PB4 2 &pcfg_pull_none_drv_level_2>,
+				/* spi0_miso */
+				<4 RK_PB3 2 &pcfg_pull_none_drv_level_2>,
+				/* spi0_mosi */
+				<4 RK_PB2 2 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		spi0_csn0: spi0-csn0 {
+			rockchip,pins =
+				/* spi0_csn0 */
+				<4 RK_PB6 2 &pcfg_pull_none_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		spi0_csn1: spi0-csn1 {
+			rockchip,pins =
+				/* spi0_csn1 */
+				<4 RK_PC1 2 &pcfg_pull_none_drv_level_2>;
+		};
+	};
+
+	spi1 {
+		/omit-if-no-ref/
+		spi1_pins: spi1-pins {
+			rockchip,pins =
+				/* spi1_clk */
+				<1 RK_PB6 2 &pcfg_pull_none_drv_level_2>,
+				/* spi1_miso */
+				<1 RK_PC0 2 &pcfg_pull_none_drv_level_2>,
+				/* spi1_mosi */
+				<1 RK_PB7 2 &pcfg_pull_none_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		spi1_csn0: spi1-csn0 {
+			rockchip,pins =
+				/* spi1_csn0 */
+				<1 RK_PC1 1 &pcfg_pull_none_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		spi1_csn1: spi1-csn1 {
+			rockchip,pins =
+				/* spi1_csn1 */
+				<1 RK_PC2 1 &pcfg_pull_none_drv_level_2>;
+		};
+	};
+
+	tsi0 {
+		/omit-if-no-ref/
+		tsi0_pins: tsi0-pins {
+			rockchip,pins =
+				/* tsi0_clkin */
+				<3 RK_PB2 3 &pcfg_pull_none>,
+				/* tsi0_d0 */
+				<3 RK_PB1 3 &pcfg_pull_none>,
+				/* tsi0_d1 */
+				<3 RK_PB5 3 &pcfg_pull_none>,
+				/* tsi0_d2 */
+				<3 RK_PB6 3 &pcfg_pull_none>,
+				/* tsi0_d3 */
+				<3 RK_PB7 3 &pcfg_pull_none>,
+				/* tsi0_d4 */
+				<3 RK_PA3 3 &pcfg_pull_none>,
+				/* tsi0_d5 */
+				<3 RK_PA2 3 &pcfg_pull_none>,
+				/* tsi0_d6 */
+				<3 RK_PA1 3 &pcfg_pull_none>,
+				/* tsi0_d7 */
+				<3 RK_PA0 3 &pcfg_pull_none>,
+				/* tsi0_fail */
+				<3 RK_PC0 3 &pcfg_pull_none>,
+				/* tsi0_sync */
+				<3 RK_PB4 3 &pcfg_pull_none>,
+				/* tsi0_valid */
+				<3 RK_PB3 3 &pcfg_pull_none>;
+		};
+	};
+
+	tsi1 {
+		/omit-if-no-ref/
+		tsi1_pins: tsi1-pins {
+			rockchip,pins =
+				/* tsi1_clkin */
+				<3 RK_PA5 3 &pcfg_pull_none>,
+				/* tsi1_d0 */
+				<3 RK_PA4 3 &pcfg_pull_none>,
+				/* tsi1_sync */
+				<3 RK_PA7 3 &pcfg_pull_none>,
+				/* tsi1_valid */
+				<3 RK_PA6 3 &pcfg_pull_none>;
+		};
+	};
+
+	uart0 {
+		/omit-if-no-ref/
+		uart0m0_xfer: uart0m0-xfer {
+			rockchip,pins =
+				/* uart0_rx_m0 */
+				<4 RK_PC7 1 &pcfg_pull_up>,
+				/* uart0_tx_m0 */
+				<4 RK_PD0 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m1_xfer: uart0m1-xfer {
+			rockchip,pins =
+				/* uart0_rx_m1 */
+				<2 RK_PA0 2 &pcfg_pull_up>,
+				/* uart0_tx_m1 */
+				<2 RK_PA1 2 &pcfg_pull_up>;
+		};
+	};
+
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<4 RK_PA7 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<4 RK_PA6 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_xfer: uart1m1-xfer {
+			rockchip,pins =
+				/* uart1_rx_m1 */
+				<4 RK_PC6 2 &pcfg_pull_up>,
+				/* uart1_tx_m1 */
+				<4 RK_PC5 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1_ctsn: uart1-ctsn {
+			rockchip,pins =
+				/* uart1_ctsn */
+				<4 RK_PA4 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1_rtsn: uart1-rtsn {
+			rockchip,pins =
+				/* uart1_rtsn */
+				<4 RK_PA5 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart2 {
+		/omit-if-no-ref/
+		uart2m0_xfer: uart2m0-xfer {
+			rockchip,pins =
+				/* uart2_rx_m0 */
+				<3 RK_PA0 1 &pcfg_pull_up>,
+				/* uart2_tx_m0 */
+				<3 RK_PA1 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m0_ctsn: uart2m0-ctsn {
+			rockchip,pins =
+				/* uart2m0_ctsn */
+				<3 RK_PA3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m0_rtsn: uart2m0-rtsn {
+			rockchip,pins =
+				/* uart2m0_rtsn */
+				<3 RK_PA2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<1 RK_PB0 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<1 RK_PB1 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_ctsn: uart2m1-ctsn {
+			rockchip,pins =
+				/* uart2m1_ctsn */
+				<1 RK_PB3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m1_rtsn: uart2m1-rtsn {
+			rockchip,pins =
+				/* uart2m1_rtsn */
+				<1 RK_PB2 1 &pcfg_pull_none>;
+		};
+	};
+
+	uart3 {
+		/omit-if-no-ref/
+		uart3m0_xfer: uart3m0-xfer {
+			rockchip,pins =
+				/* uart3_rx_m0 */
+				<4 RK_PB0 2 &pcfg_pull_up>,
+				/* uart3_tx_m0 */
+				<4 RK_PB1 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart3m1_xfer: uart3m1-xfer {
+			rockchip,pins =
+				/* uart3_rx_m1 */
+				<4 RK_PB7 3 &pcfg_pull_up>,
+				/* uart3_tx_m1 */
+				<4 RK_PC0 3 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart3_ctsn: uart3-ctsn {
+			rockchip,pins =
+				/* uart3_ctsn */
+				<4 RK_PA3 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart3_rtsn: uart3-rtsn {
+			rockchip,pins =
+				/* uart3_rtsn */
+				<4 RK_PA2 3 &pcfg_pull_none>;
+		};
+	};
+
+	uart4 {
+		/omit-if-no-ref/
+		uart4_xfer: uart4-xfer {
+			rockchip,pins =
+				/* uart4_rx */
+				<2 RK_PA2 3 &pcfg_pull_up>,
+				/* uart4_tx */
+				<2 RK_PA3 3 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart4_ctsn: uart4-ctsn {
+			rockchip,pins =
+				/* uart4_ctsn */
+				<2 RK_PA1 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart4_rtsn: uart4-rtsn {
+			rockchip,pins =
+				/* uart4_rtsn */
+				<2 RK_PA0 3 &pcfg_pull_none>;
+		};
+	};
+
+	uart5 {
+		/omit-if-no-ref/
+		uart5m0_xfer: uart5m0-xfer {
+			rockchip,pins =
+				/* uart5_rx_m0 */
+				<1 RK_PA2 2 &pcfg_pull_up>,
+				/* uart5_tx_m0 */
+				<1 RK_PA3 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart5m0_ctsn: uart5m0-ctsn {
+			rockchip,pins =
+				/* uart5m0_ctsn */
+				<1 RK_PA6 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart5m0_rtsn: uart5m0-rtsn {
+			rockchip,pins =
+				/* uart5m0_rtsn */
+				<1 RK_PA5 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart5m1_xfer: uart5m1-xfer {
+			rockchip,pins =
+				/* uart5_rx_m1 */
+				<1 RK_PD4 2 &pcfg_pull_up>,
+				/* uart5_tx_m1 */
+				<1 RK_PD7 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart5m1_ctsn: uart5m1-ctsn {
+			rockchip,pins =
+				/* uart5m1_ctsn */
+				<1 RK_PD3 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart5m1_rtsn: uart5m1-rtsn {
+			rockchip,pins =
+				/* uart5m1_rtsn */
+				<1 RK_PD2 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart6 {
+		/omit-if-no-ref/
+		uart6m0_xfer: uart6m0-xfer {
+			rockchip,pins =
+				/* uart6_rx_m0 */
+				<3 RK_PA7 4 &pcfg_pull_up>,
+				/* uart6_tx_m0 */
+				<3 RK_PA6 4 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart6m1_xfer: uart6m1-xfer {
+			rockchip,pins =
+				/* uart6_rx_m1 */
+				<3 RK_PC3 4 &pcfg_pull_up>,
+				/* uart6_tx_m1 */
+				<3 RK_PC1 4 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart6_ctsn: uart6-ctsn {
+			rockchip,pins =
+				/* uart6_ctsn */
+				<3 RK_PA4 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart6_rtsn: uart6-rtsn {
+			rockchip,pins =
+				/* uart6_rtsn */
+				<3 RK_PA5 4 &pcfg_pull_none>;
+		};
+	};
+
+	uart7 {
+		/omit-if-no-ref/
+		uart7m0_xfer: uart7m0-xfer {
+			rockchip,pins =
+				/* uart7_rx_m0 */
+				<3 RK_PB3 4 &pcfg_pull_up>,
+				/* uart7_tx_m0 */
+				<3 RK_PB2 4 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart7m0_ctsn: uart7m0-ctsn {
+			rockchip,pins =
+				/* uart7m0_ctsn */
+				<3 RK_PB0 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart7m0_rtsn: uart7m0-rtsn {
+			rockchip,pins =
+				/* uart7m0_rtsn */
+				<3 RK_PB1 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart7m1_xfer: uart7m1-xfer {
+			rockchip,pins =
+				/* uart7_rx_m1 */
+				<1 RK_PB3 4 &pcfg_pull_up>,
+				/* uart7_tx_m1 */
+				<1 RK_PB2 4 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart7m1_ctsn: uart7m1-ctsn {
+			rockchip,pins =
+				/* uart7m1_ctsn */
+				<1 RK_PB0 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart7m1_rtsn: uart7m1-rtsn {
+			rockchip,pins =
+				/* uart7m1_rtsn */
+				<1 RK_PB1 4 &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 0fb90f5c291c..d3e2a64ff2d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -4,8 +4,10 @@
  * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
  */
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rockchip,rk3528-cru.h>
 #include <dt-bindings/reset/rockchip,rk3528-cru.h>
 
@@ -17,6 +19,11 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -166,6 +173,11 @@ cru: clock-controller@ff4a0000 {
 			#reset-cells = <1>;
 		};
 
+		ioc_grf: syscon@ff540000 {
+			compatible = "rockchip,rk3528-ioc-grf", "syscon";
+			reg = <0x0 0xff540000 0x0 0x40000>;
+		};
+
 		uart0: serial@ff9f0000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f0000 0x0 0x100>;
@@ -264,5 +276,75 @@ saradc: adc@ffae0000 {
 			#io-channel-cells = <1>;
 			status = "disabled";
 		};
+
+		pinctrl: pinctrl {
+			compatible = "rockchip,rk3528-pinctrl";
+			rockchip,grf = <&ioc_grf>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gpio0: gpio@ff610000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0xff610000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO0>, <&cru DBCLK_GPIO0>;
+				interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&pinctrl 0 0 32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio1: gpio@ffaf0000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0xffaf0000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+				interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&pinctrl 0 32 32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio2: gpio@ffb00000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0xffb00000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+				interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&pinctrl 0 64 32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio3: gpio@ffb10000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0xffb10000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
+				interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&pinctrl 0 96 32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio4: gpio@ffb20000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x0 0xffb20000 0x0 0x200>;
+				clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
+				interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				gpio-ranges = <&pinctrl 0 128 32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+		};
 	};
 };
+
+#include "rk3528-pinctrl.dtsi"
-- 
2.48.1


