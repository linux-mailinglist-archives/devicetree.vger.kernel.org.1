Return-Path: <devicetree+bounces-56757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F389A658
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60AAB1F21233
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF184176FD0;
	Fri,  5 Apr 2024 21:47:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D4C175579
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353626; cv=none; b=L0bggzAul3WrN+8tPpq/y8JG8osOnKisT1xlXDW2DvrcFMW2PAojY9E9FqB7Ph4aKH1nxXMykWs4PP4htY3cRe4Dj//XJokjcMWmLAbKy8TXlHJPmsamzkKJ2ne1qVpvvqvWjfSgECMHvAkcZhm05BhPW5MldJJhEESPGDFA7/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353626; c=relaxed/simple;
	bh=oUwq1y556z0MRvdH8lAKP9CHoVog8+lz6yxpoavu2xc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mlLv9w/0SIRZ/Cds3p6xqtotzT0fGfEmM+xwi9Taj740wfpzXZ8AvAwwf/fkdNFTfC6iRsfyYHbp6sNYHLScg+iUdvZ3wK9fqvwhaPpgdzSicwG+VmQvGXzSOYKDwdEYe8S1J3FniFAjyvsNQ4MKDIuV0JJEb+jCuYY/dJsCQI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-0003Tt-1H; Fri, 05 Apr 2024 23:46:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-00Ad5E-Kx; Fri, 05 Apr 2024 23:46:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-00FZqM-1p;
	Fri, 05 Apr 2024 23:46:49 +0200
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
Subject: [PATCH v1 30/49] ARM: dts: imx6qdl-savageboard: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:17 +0200
Message-ID:  <fe260c8018423f258bc040f67bd78498e615830a.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=oUwq1y556z0MRvdH8lAKP9CHoVog8+lz6yxpoavu2xc=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHB/4dBtJ7RUCvP8g3BlcYaR/ZjS/v2hzWX9q n/S2xRduvyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwfwAKCRCPgPtYfRL+ TieEB/491ZEm8HVZeOD3xmaS6wygoZJ1R8+DrWTByaEFwrQYFP+WEWLeqlonL5N2+aHsBHYea1I piRKsKdgp75sEVJ5kxWOohK6E2QGZH8hq97Mja+sUhuF6l9IAqCUsvtkpS364EpeJHb6knQwNzt +luKoSVY9QwdhbSTUXjOLzUGfwQyAS9DtEAB10/bkI4eP9IkVnXQGJ+vHf71SiCmGNvrQctMXmP T7Z72xN4JsAfNOzjFy47MAbcknN+/PmVw4JbgrvlcGuXJSIfSwiEnk2kw92M7X5D39KpJum8TKW xN02+fWqOP2U3LPeVwb8K2mYRFT49QdYGMKcKqJ2cbF3IYDs
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-savageboard.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-savageboard.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-savageboard.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-savageboard.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-savageboard.dtsi
index 02e6d36e85fa..6823a639ed2f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-savageboard.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-savageboard.dtsi
@@ -83,7 +83,7 @@ panel_bl: backlight {
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <4>;
 		power-supply = <&reg_3p3v>;
-		pwms = <&pwm1 0 10000>;
+		pwms = <&pwm1 0 10000 0>;
 	};
 
 	reg_3p3v: regulator-3p3v {
@@ -140,7 +140,6 @@ lvds0_out: endpoint {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
 	status = "okay";
-- 
2.43.0


