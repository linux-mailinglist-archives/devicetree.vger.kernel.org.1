Return-Path: <devicetree+bounces-14044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8347E1D7F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 253711C20A7D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F22171B4;
	Mon,  6 Nov 2023 09:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="lVi0AHWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86BD168A6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:52:12 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9464E100;
	Mon,  6 Nov 2023 01:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699264331; x=1730800331;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=n3w1++R+tKubh/JShRcdfaY4sdWM0Thnc5B85fY3mYw=;
  b=lVi0AHWJvA1wu74TGEGuW5+MhF/ePP0fynh73Q6m962DlihOMV0pVVGc
   W5C3ziw+b+bwnGjxxxqRHirrrzWmVOjW7wB7CTr2xb617BE7qcSjxXMzv
   MPvOThwfzng5jNqPnStKFjYup1EY4PVjItNsTBWrVZ8F0LMtnMRFE3F0s
   dRQgFOe2xnf8RC/UkBgg4pRm0GHPlGJRP1uPwbUIQVTP+l1uZcdFzX6wZ
   xkNa2+lAJPxF4WVr+uCCqgAieFfqukJ0nAfMU/V8pYBRXi8hXnBZvmzrI
   c0r1VzqcKzqaKqTqM4PGQyJYFW5BhpM+rqPR0bmr2auv5sQcZzx/TuMpq
   g==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33823102"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 10:52:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B1F0928007F;
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
Subject: [PATCH 3/3] arm64: dts: freescale: imx8-ss-dma: Fix #pwm-cells
Date: Mon,  6 Nov 2023 10:52:05 +0100
Message-Id: <20231106095205.231210-4-alexander.stein@ew.tq-group.com>
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

i.MX8QXP supports inverted PWM output, thus #pwm-cells needs to be set
to 3.

Fixes: f1d6a6b991ef9 ("arm64: dts: imx8qxp: add adma_pwm in adma")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index ce66d30a4839b..b0bb77150adcc 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -149,7 +149,7 @@ adma_pwm: pwm@5a190000 {
 		clock-names = "ipg", "per";
 		assigned-clocks = <&clk IMX_SC_R_LCD_0_PWM_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		power-domains = <&pd IMX_SC_R_LCD_0_PWM_0>;
 	};
 
-- 
2.34.1


