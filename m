Return-Path: <devicetree+bounces-248985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A18CCD8304
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D57AE3020696
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 05:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 118472F546D;
	Tue, 23 Dec 2025 05:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3eKRBQG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC85B2F3C3D;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766468233; cv=none; b=bxkEw154xBtPRjNVtZwqRu0adghcdFnt7KKbzqiD4h71zlwFe7NVnczzhmjVDA6w5hLJSS+JTdaI9mTmb5X/Cvt6ion6+bkc0SVc6XKbZcuoinUOunvu0YJfWh/gkCNfh2Gsz6h3Xsp9O9zITACX97IYY3d5euzt6afHEP7CQUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766468233; c=relaxed/simple;
	bh=3FcJ2Rscs1H5P0gYjlvTTOCZ2mgtYn4iiRY0FuAWTW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vf0lL1OSuQaUmmRgdgi5UrZKKqxuJ/pRQ7OEzyyqgG/mDiMNn+/2GwB5FKxOfcFrz9O8iu7Y56SzOztI2El0sy+d9LjCf7GKH4Z7xpVdDw0gS48tTDrkIWzPvE9oJr04ApN2gnMFAsNj2nBdHFr3yYE+QpWJhhoLTFga5Kvyk7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3eKRBQG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D3CAC2BC9E;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766468232;
	bh=3FcJ2Rscs1H5P0gYjlvTTOCZ2mgtYn4iiRY0FuAWTW0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=g3eKRBQGbqB0GqfawCD9u1wcL2X9cn/oRsTLnyEH2Gkl+2iSdIAc9Z8xtJlq10XMk
	 5pPHQPdEcLe0LRknK8Sy8yHKLEOCxaY6E0J8ztCsMS5vFGwW/BMXsCCT0Gq9C7HM2/
	 JCJ2HXeUeN7lWZYRgVl/wutEP96biPAxjRLjCToZY6sMuD9wA7sBHx1YFubXB7Gde5
	 TZKHh3FFDZK41LpW4CXAarcxoFsAD3JlmeOh0MTZZOiDtkX6MstsoTc99ZIA2JMZVP
	 U3OLjLgOJKfZ0Hs6kaogPjwKsV+ZWe1UJaRJ/8T9NddaCxpCvcNu65OqbhkHXfJRlc
	 Ti5Z86OTXtx5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 845F0E6ADF9;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Tue, 23 Dec 2025 05:37:12 +0000
Subject: [PATCH v2 4/4] arm64: dts: amlogic: Add S7D Reset Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-reset-s6-s7-s7d-v2-4-958f341449f1@amlogic.com>
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766468230; l=4875;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=SQ/+RhX7ekhuQKEJO7YT/ofDufbjSCzRv3EgEaoCzC4=;
 b=Ub3MBC5YyaIU+himfpkVOP5Q8bDpKlARcP8tml9B/2y66FDhQ80E6CczaFlAgXLC9+6ak0Ilp
 +KlBqAvRtcwDlaYT5TcrUe1/uwexbGu9v5qz0gzP7dCCGYd8ZRApO2o
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add the device node and related header file for Amlogic
S7D reset controller.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h | 134 ++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi    |   8 ++
 2 files changed, 142 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h b/arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h
new file mode 100644
index 000000000000..fb15a93d901e
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h
@@ -0,0 +1,134 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2025 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_AMLOGIC_S7D_RESET_H
+#define _DT_BINDINGS_AMLOGIC_S7D_RESET_H
+
+/* RESET0 */
+#define RESET_USB_DDR0			0
+#define RESET_USB_DDR1			1
+#define RESET_USB_DDR2			2
+#define RESET_USB_DDR3			3
+#define RESET_USB1			4
+#define RESET_USB0			5
+#define RESET_USB1_COMB			6
+#define RESET_USB0_COMB			7
+#define RESET_USBPHY20			8
+#define RESET_USBPHY21			9
+#define RESET_USBCC			10
+#define RESET_BC			11
+#define RESET_AMFC_APB			12
+/*					13-14	*/
+#define RESET_HDMI20_AES		15
+#define RESET_HDMITX_CAPB3		16
+#define RESET_BRG_VCBUS_DEC		17
+#define RESET_VCBUS			18
+#define RESET_VID_PLL_DIV		19
+#define RESET_VIDEO6			20
+#define RESET_GE2D			21
+#define RESET_HDMITXPHY			22
+#define RESET_VID_LOCK			23
+#define RESET_VENCL			24
+#define RESET_VDAC			25
+#define RESET_VENCP			26
+#define RESET_VENCI			27
+#define RESET_RDMA			28
+#define RESET_HDMI_TX			29
+#define RESET_VIU			30
+#define RESET_VENC			31
+
+/* RESET1 */
+#define RESET_AUDIO			32
+#define RESET_MALI_CAPB3		33
+#define RESET_MALI			34
+#define RESET_DDR_APB			35
+#define RESET_DDR			36
+#define RESET_DOS_CAPB3			37
+#define RESET_DOS			38
+#define RESET_GPU_TS			39
+#define RESET_PLCK_DBG			40
+/*					41-47	*/
+#define RESET_ETH			48
+/*					49-63	*/
+
+/* RESET2 */
+#define RESET_AM2AXI			64
+#define RESET_IR_CTRL			65
+/*					66	*/
+#define RESET_TEMPSENSOR_PLL		67
+/*					68-71	*/
+#define RESET_SMART_CARD		72
+#define RESET_SPICC0			73
+/*					74-79	*/
+#define RESET_MSR_CLK			80
+/*					81	*/
+#define RESET_SAR_DIG			82
+#define RESET_SAR_ANA			83
+/*					84-85	*/
+#define RESET_AMFC			86
+/*					87	*/
+#define RESET_ACODEC			88
+#define RESET_CEC			89
+/*					90	*/
+#define RESET_WATCHDOG			91
+/*					92-95	*/
+
+/* RESET3 */
+/* 96 ~ 127 */
+
+/* RESET4 */
+/*					128-131	*/
+#define RESET_PWM_A			128
+#define RESET_PWM_B			129
+#define RESET_PWM_C			130
+#define RESET_PWM_D			131
+#define RESET_PWM_E			132
+#define RESET_PWM_F			133
+#define RESET_PWM_G			134
+#define RESET_PWM_H			135
+#define RESET_PWM_I			136
+#define RESET_PWM_J			137
+#define RESET_UART_A			138
+#define RESET_UART_B			139
+#define RESET_UART_C			140
+#define RESET_UART_D			141
+#define RESET_UART_E			142
+/*					140-143	*/
+#define RESET_I2C_S_A			144
+#define RESET_I2C_M_A			145
+#define RESET_I2C_M_B			146
+#define RESET_I2C_M_C			147
+#define RESET_I2C_M_D			148
+#define RESET_I2C_M_E			149
+/*					150-151	*/
+#define RESET_SD_EMMC_A			152
+#define RESET_SD_EMMC_B			153
+#define RESET_SD_EMMC_C			154
+/*					155-159	*/
+
+/* RESET5 */
+#define RESET_BRG_VDEC_PIPE0		160
+/*					161-163	*/
+#define RESET_BRG_GE2D_PIPE0		164
+#define RESET_BRG_DMC_PIPE0		165
+#define RESET_BRG_A55_PIPE0		166
+#define RESET_BRG_MALI_PIPE0		167
+/*					168	*/
+#define RESET_BRG_MALI_PIPE1		169
+/*					170-171	*/
+#define RESET_BRG_HEVCF_PIPE1		172
+#define RESET_BRG_HEVCB_PIPE1		173
+/*					174-182	*/
+#define RESET_BRG_NIC_EMMC		183
+/*					164	*/
+#define RESET_BRG_NIC_SDIOB		185
+#define RESET_BRG_NIC_SDIOA		186
+#define RESET_BRG_NIC_VAPB		187
+#define RESET_BRG_NIC_DSU		188
+#define RESET_BRG_NIC_CLK81		189
+#define RESET_BRG_NIC_MAIN		190
+#define RESET_BRG_NIC_ALL		191
+
+#endif
diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
index 0c4417bcd682..bae89ca6c448 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/amlogic,pinctrl.h>
 #include <dt-bindings/power/amlogic,s7d-pwrc.h>
+#include "amlogic-s7d-reset.h"
 
 / {
 	cpus {
@@ -106,6 +107,13 @@ uart_b: serial@7a000 {
 				status = "disabled";
 			};
 
+			reset: reset-controller@2000 {
+				compatible = "amlogic,s7d-reset",
+					     "amlogic,meson-s4-reset";
+				reg = <0x0 0x2000 0x0 0x98>;
+				#reset-cells = <1>;
+			};
+
 			periphs_pinctrl: pinctrl@4000 {
 				compatible = "amlogic,pinctrl-s7d",
 					     "amlogic,pinctrl-s7";

-- 
2.52.0



