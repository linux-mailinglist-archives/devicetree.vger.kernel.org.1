Return-Path: <devicetree+bounces-56780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AF389A673
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 414E92835EA
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F045517966B;
	Fri,  5 Apr 2024 21:47:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B82B178CED
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353634; cv=none; b=ZSexqdaCOL7XUnND/aanoQwhE9VuVN3FDE+pfBgSzfGqctmBz4EfsIrtArafAps8coChHgJU8pZFOA5Qa67JywmD1V/xwE3NnjS0rKulP8vUCWQDPLAsE9wlHaneiRNMfoxi/n18zVEZ7qaj5X1Q1AN0wUsDt8RyMmFWX1LCuUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353634; c=relaxed/simple;
	bh=IgGnx0U5jXERscrzFX9q1Tjj/+pa8Pq80jJJZOrH4Qc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h9XgJBPZWZ1QZgiuKDFQLvB+4hTh+j26JJGmpMi8zsVnoR5AbTCz/v5tPCqjEG0JOq9w/VpZFMSNdmSBue/76LuhWyr6QgSKFPV3oWI8SgpK0moD/cg6QdedVrSvH5dze3jwDPSjq4mFxXHCITmvt7LxDYXmyp6+kDr6EroXu7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-0003US-Hw; Fri, 05 Apr 2024 23:46:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00Ad5M-4I; Fri, 05 Apr 2024 23:46:50 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00FZqU-09;
	Fri, 05 Apr 2024 23:46:50 +0200
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
Subject: [PATCH v1 32/49] ARM: dts: imx6q-kp: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:19 +0200
Message-ID:  <1cd7b694e61c5dc0e3723ba3c8123126204fe4d4.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1599; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=IgGnx0U5jXERscrzFX9q1Tjj/+pa8Pq80jJJZOrH4Qc=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHCMCu6Bdv0csWFfLjC2tcU3lx/fvIyCHxa/f tfYjJI3y5mJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwjAAKCRCPgPtYfRL+ TjqHCACtcui0vPKypqpXzhnR/zQ6jPB246m0zbDLX1OxOYMU9wdmmmTHbcHw9IatqIE5mJkWkvw WDYiCV6s29tur5YSkk85xr8UCQ5boUWsenYoeU5iznbncP21CCb8z/Xnkxip4jxGxB293vWpB5+ j2NVyOIkvKH8AiKUOvDeYGWKkhgMrWoKcBAtE7Bv5IzvEFrQwgqf/34cEruqdEjXZT2MLPl7sVm duv/E5l/kaM15nJp4Jkm80uYmr7mu7x4whwNHAG/2ZjotdgIC9cqzlOYJg+7WsUKOvmgfbCkRh3 OnCL7Iuro6n1e2AkNnOfPkpzVlBL4WUJmh5hZWvfJe946HGY
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6q-kp-tpc.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-kp-tpc.dtb: pwm@2084000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6q-kp.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-kp.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-kp.dtsi
index 091903f53a56..c425d427663d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-kp.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-kp.dtsi
@@ -15,7 +15,7 @@
 / {
 	backlight_lcd: backlight-lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 255>;
 		num-interpolated-steps = <255>;
 		default-brightness-level = <250>;
@@ -23,7 +23,7 @@ backlight_lcd: backlight-lcd {
 
 	beeper {
 		compatible = "pwm-beeper";
-		pwms = <&pwm2 0 500000>;
+		pwms = <&pwm2 0 500000 0>;
 	};
 
 	lcd_display: display {
@@ -378,14 +378,12 @@ MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
 	status = "okay";
 };
 
 &pwm2 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm2>;
 	status = "okay";
-- 
2.43.0


