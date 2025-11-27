Return-Path: <devicetree+bounces-242613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B70FC8D191
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D370F4E2ABA
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C65731DDB7;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2oreS8S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407B29ACD7;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764228644; cv=none; b=AGA+s4NJuXeHzEDA4Miv2KcXSEa4HK4XhXAZhjTtzXbFHyLVKErAP47XpMllFmFfIivATMAtEbR2v6yrAa9SAoe7/Kq/cZn3xaBf6y38kU+I05z8Hni/X+i16d3UNXYkJtyfbruret2vGsbo1CsvhZm85mCNKfUtfC8S7qLmfSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764228644; c=relaxed/simple;
	bh=rnTZ3qIjWcMsJ3cYnRysq+ukPVb+rEOjEzbD5jYVBCc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=so6NMv9hFJI2KAgCHE92Hc/vtNz0gqnJlj+Hr3XVYwtJOlcMwnDYpwdd/dteyP8dHRI2yf4bS+DwEFtC+rGje7e2Yprn2cX5K+BLKjGQPVhyMu57w686tHt5lGqe5tfnluO3XSF4vTMyrdqdZFXuzEZVZ7CjPxtIign9vYJmAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2oreS8S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 117DAC4AF0D;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764228644;
	bh=rnTZ3qIjWcMsJ3cYnRysq+ukPVb+rEOjEzbD5jYVBCc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=s2oreS8SXOcrT3/AIqdkADfy/HyiLQ4xsn4WA3M88N7cyrnU2ozKs951Zp+cky/dC
	 9s6+y9SndV8EDvHzXiWf8ehnQzMsy68YENuey9GyHWmHEzLucEY+UBUDBsHnGls0YW
	 aAawSX5HONEkTi932DXc97dPxhz8xD8QpvpoEtB4eJ3agZxQw1dMURS3rE30L4sbBQ
	 mBmNvy3TWmX5zmt/WwbNj1vgwYSJk2u60wneerAKXE5Z8aHwn1UQHSUhVbuDsZSASh
	 0pVEmUCDKuZdQNxFk38uWEqXKkGXtTbd7DYM+wxPPL0W1dYA81fO2qce4VM06/OHJq
	 iFHQfu2fyMJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 019C8D116F5;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Thu, 27 Nov 2025 15:30:33 +0800
Subject: [PATCH 3/4] arm64: dts: amlogic: Add S7 Reset Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-reset-s6-s7-s7d-v1-3-879099ad90d3@amlogic.com>
References: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
In-Reply-To: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764228641; l=4612;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=TRAbnAsG5qp7o1oyDaLD3O0/zrNkGqT68+e2GGMTN/I=;
 b=oM8lBnMRBFLykaU8vgPCBg9LAlANyvWqIdqwI340EgFW/6f5UaA1ewHsxgF9JrO+tPgI9LHhb
 UnEa60O3vD6BSZ17YapfTAGXe1eOJFfltDZOj3aLV3BPlwPL6gulcf5
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add the device node and related header file for Amlogic
S7 reset controller.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h | 124 +++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi    |   8 ++
 2 files changed, 132 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h b/arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h
new file mode 100644
index 000000000000..485c28221359
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2025 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_AMLOGIC_S7_RESET_H
+#define _DT_BINDINGS_AMLOGIC_S7_RESET_H
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
+/*					10-14	*/
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
+/*					39-47	*/
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
+#define RESET_SARADC			82
+/*					83-87	*/
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
+#define RESET_BRG_VDEC_PIPL0		160
+#define RESET_BRG_HEVCF_PIPL0		161
+/*					162-163	*/
+#define RESET_BRG_GE2D_PIPL0		164
+#define RESET_BRG_DMC_PIPL0		165
+#define RESET_BRG_A53_PIPL0		166
+#define RESET_BRG_MALI_PIPL0		167
+/*					168	*/
+#define RESET_BRG_MALI_PIPL1		169
+/*					170-171	*/
+#define RESET_BRG_HEVCF_PIPL1		172
+#define RESET_BRG_HEVCB_PIPL1		173
+/*					174-182	*/
+#define RESET_BRG_NIC_EMMC		183
+#define RESET_BRG_NIC_RAMA		184
+#define RESET_BRG_NIC_SDIOB		185
+#define RESET_BRG_NIC_SDIOA		186
+#define RESET_BRG_NIC_VAPB		187
+#define RESET_BRG_NIC_DSU		188
+#define RESET_BRG_NIC_CLK81		189
+#define RESET_BRG_NIC_MAIN		190
+#define RESET_BRG_NIC_ALL		191
+
+#endif
diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
index a3faf4d188e1..0b2ac24e8dbc 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/amlogic,pinctrl.h>
 #include <dt-bindings/power/amlogic,s7-pwrc.h>
+#include "amlogic-s7-reset.h"
 
 / {
 	cpus {
@@ -142,6 +143,13 @@ uart_b: serial@7a000 {
 				status = "disabled";
 			};
 
+			reset: reset-controller@2000 {
+				compatible = "amlogic,s7-reset",
+					     "amlogic,meson-s4-reset";
+				reg = <0x0 0x2000 0x0 0x98>;
+				#reset-cells = <1>;
+			};
+
 			periphs_pinctrl: pinctrl@4000 {
 				compatible = "amlogic,pinctrl-s7";
 				#address-cells = <2>;

-- 
2.37.1



