Return-Path: <devicetree+bounces-56775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8926089A66E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA2FB1C20777
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2147F1791E7;
	Fri,  5 Apr 2024 21:47:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAB5175579
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353631; cv=none; b=FVSNV2o/1ERqKbuVJZMTBbCcxyDtE6Rgk9rkWcoEGiRCs6Cnk0s3sGV690lrVZs/biZ9ualXRNNXwzh8u7cGeI/BN94pMHdR1k3GJYAzrYJuyQywAMRHm1nWdPv8EmQELgKjyxrvpweMLhvLjUMBJCj1YQDQ4em70IXDemvL0vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353631; c=relaxed/simple;
	bh=sML4yTkaHvLtKgoITIAUmIwRs5N5w/UFVDgdAATlPnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MwIo43EU8NBna7DPBL27Izes+B4Q1e9eHzi1ZY3L9xi/jHPHWmEFlhWc81DpNi7SDNa3rdVr83h9yCTzsRptu6ghEeT3Eo5lz7ttUNYSNfAk134JTwzY+GkTnyIdAZ8LjHLZ5MGBPbgsjyP2swiOaqSxnC3duAuQ6grkZAKbUDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOY-00035H-BO; Fri, 05 Apr 2024 23:46:46 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOX-00Ad40-Tp; Fri, 05 Apr 2024 23:46:45 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOX-00FZp8-2i;
	Fri, 05 Apr 2024 23:46:45 +0200
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
Subject: [PATCH v1 11/49] ARM: dts: imx6qdl-apf6dev: Use #pwm-cells = <3> for imx27-pwm devices
Date: Fri,  5 Apr 2024 23:41:58 +0200
Message-ID:  <dba52fb96d46b38a4b17d7096275a1ae6f2a3706.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=sML4yTkaHvLtKgoITIAUmIwRs5N5w/UFVDgdAATlPnQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHA4MFvgDjOzeByaZUbQ4OfSClS6FWkvup0ms tdqViPtd5eJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwOAAKCRCPgPtYfRL+ Tm5eB/9V4g4Z1XPufI1V4xPBL0wDLOgq6+8dIQWHRq+jJWqgyPMq7Y2z1LzwDntTGcZREoOHXlS AR16L6f0qH3tLni86zGrhABxkJuHIt7Kb3yhgFFvxIafTGlGFtOa5hG02HE9gi4c2iID0WpqPk/ KWSQLK5hf/fWtWTxXA3KVhMBYWakmUJQ5BIKGF9kwmVFq3QNXQBKKS4b479WThwsKg67FNY/y37 FOrg8RH6x3Ns+vDf3WTGSuYb1YsJ6mB1Mo30RI1N9PSE+in3uxEnVi2uUO97dirLvKLBZBCbFPz uouwTj+1WfAETpVHrJ1QZohnbzP1chkoGEy5pJDweLzHggt4
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-apf6dev.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-apf6dev.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
index 338d292553ad..3a46ade3b6bd 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
@@ -13,7 +13,7 @@ chosen {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm3 0 191000>;
+		pwms = <&pwm3 0 191000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <0>;
 		power-supply = <&reg_5v>;
@@ -212,7 +212,6 @@ &pcie {
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
 	status = "okay";
-- 
2.43.0


