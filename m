Return-Path: <devicetree+bounces-56767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7112B89A664
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E137283618
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA86E175557;
	Fri,  5 Apr 2024 21:47:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8403D176FBD
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353628; cv=none; b=tYUXVdE9nEaiK4g/wo68SI+5KkhcfcO5o1ES8WRrl1ySbgIZj9x32QDkfG4tr2cURD0rZtUfvYClkgpy/bsd+j30mu/Lz3HZB4wFFAnQNt5WwTIY2WSenGiu/AXy8srd0RaCL79y2kSpMgQfbadZQadVQDJM16Pt7Im95KxEEtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353628; c=relaxed/simple;
	bh=30psb+S4V7FjJS25DROKIz+ZZYeAqHR+oUO9+pEdl+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VaKvwUvbEyV0PW2xPPBDEXO7mSftQpbcoKcoeQKmYf83hhjhXRLCqewF66QTvqsgXYvc1MAbzOoUSK5npehyBFtRwfCYkZb3YLyKhZYS2PEwipALdTEgv8ggIUAsaK6JkjN/KavYY5DMcFdzHYeP5RPxpgmTOz0U4pOPea9jd+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOZ-0003D5-M9; Fri, 05 Apr 2024 23:46:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOY-00Ad4J-SU; Fri, 05 Apr 2024 23:46:46 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOY-00FZpS-2a;
	Fri, 05 Apr 2024 23:46:46 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v1 16/49] ARM: dts: imx6qdl-gw53xx: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:03 +0200
Message-ID:  <db33caf04ee349d1f38920ce44a3782aeceb9c69.1712352665.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1712352665.git.u.kleine-koenig@pengutronix.de>
References: <cover.1712352665.git.u.kleine-koenig@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1252; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=30psb+S4V7FjJS25DROKIz+ZZYeAqHR+oUO9+pEdl+Y=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHBR4d/AuceaRZbLcbdWUs7RtbF70EKk3/PW/ 1e8Q7P2qFCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwUQAKCRCPgPtYfRL+ Tt08CACWekyxId93006OIB8wRAWK8X244pUSLalAEc5XZ/eaOekrkQYOJr2sz9uw+Q1uQEaOyC6 DSS2oth15b4kjCeZbroG17N7uGbbX4+mvSGOPm5hrJtESlHI8/JhPsEm6gghwf6lxMMk+ciREot lJbHG42b1vZUAwUXqIwrPVOhOf8zVjrPk6VSNVbSuYtA1VPl2qZghWRV/O99mV20h6BEdRnesti frz1BN5YmIKtCa1rO5u46TUxIlYJXjNG7KbOmbwDEJkAazSXc+eGwzMnBaVpcRZAUgiZOHbI3By AL+y5eHsw5FmGsW17F7G8nyRz9Za0L9Fs0CmAQkPsDCQ2iV0
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-gw53xx.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-gw53xx.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
index 3e1c572af582..1eae438fbdae 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
@@ -25,7 +25,7 @@ chosen {
 
 	backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm4 0 5000000>;
+		pwms = <&pwm4 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 	};
@@ -517,7 +517,6 @@ &pwm3 {
 };
 
 &pwm4 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm4>;
 	status = "okay";
-- 
2.43.0


