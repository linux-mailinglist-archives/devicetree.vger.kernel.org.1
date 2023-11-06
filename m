Return-Path: <devicetree+bounces-14043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FEB7E1D80
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C2D4B20D10
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFB4171A4;
	Mon,  6 Nov 2023 09:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="YKvRaxcy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B547316420
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:52:11 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113B7FA;
	Mon,  6 Nov 2023 01:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699264330; x=1730800330;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EGTF9v07Bby5eR466771r5R+MLgJZA5MIcBkAOpXjrg=;
  b=YKvRaxcyz0FFrCcJVsWCQQfi4PGTF5CXFawYbI9XGkIToW2PvfIO1nA7
   O4wwOspf2TZo9fnP49RjOMTB2cza0y3+UBdOZOBR0Ig0G+ZDGPPZFzFOH
   6s+f1yEmc6LWHuQTfyniiElF16FzCGdZ+yFrFnp2E7zXrerjgodyoQmYW
   bNMUTJdUxX+exAVCzB/DFhAqIbs/ieCvmzXVMsg3TSShfAbZ5nc8qAy8R
   ni9f0SJefyErD0gAVWXodcmsgQOcQgf3OaPUQqt4SBcPWs6Vo/oB13xPw
   JcsLu7nrWlMyadUFigI/eVn6DTC4jJJnxKe8C2PA1FDWBlFU+spAMUGp1
   g==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33823101"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 10:52:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 73FB7280085;
	Mon,  6 Nov 2023 10:52:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: freescale: imx8-ss-lsio: Fix #pwm-cells
Date: Mon,  6 Nov 2023 10:52:04 +0100
Message-Id: <20231106095205.231210-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
References: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

i.MX8QM/QXP supports inverted PWM output, thus #pwm-cells needs to be set
to 3.

Fixes: a05c329644d81 ("arm64: dts: freescale: imx8-ss-lsio: add support for lsio_pwm0-3")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index 49ad3413db948..7e510b21bbac5 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -29,7 +29,7 @@ lsio_pwm0: pwm@5d000000 {
 			 <&pwm0_lpcg 1>;
 		assigned-clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
@@ -42,7 +42,7 @@ lsio_pwm1: pwm@5d010000 {
 			 <&pwm1_lpcg 1>;
 		assigned-clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
@@ -55,7 +55,7 @@ lsio_pwm2: pwm@5d020000 {
 			 <&pwm2_lpcg 1>;
 		assigned-clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
@@ -68,7 +68,7 @@ lsio_pwm3: pwm@5d030000 {
 			 <&pwm3_lpcg 1>;
 		assigned-clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
-- 
2.34.1


