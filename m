Return-Path: <devicetree+bounces-56790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CE689A683
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB90B2817F2
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD65F1791F6;
	Fri,  5 Apr 2024 21:47:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE5176FA5
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353637; cv=none; b=JqOgD/7ECKt6P+UDBAJvg9TPcc4mZew0HnBijzkwgnuCIPrzDb92Hi+suO7AoFALWi3pSIZXMI2fOeY+uIjAZIg/Rjj9pJ1Y/67XTVdSJoEQP1VZG6gD8U6oMH3eRxf7rJkLN+CCuQswejuRIcNPKLMfMK9+ACnlW5nr62lPmcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353637; c=relaxed/simple;
	bh=JssY4o+PFLko3+wBLMquBgwkqPXCoVztrMRHGM+WL7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fVByLSuAUaVZXlNq6dyRQiEdF+4hka0nVTZa3WRbMehgs0sFBFyM8Amf5+4WNuN1dDhBXmwq/JS6jBX2Ua52+q4xCNLhzDsnuggwtQj4wDrsruH1vB/l84KxN6hIdyi4MnOCbK/4YfrT4F7xdKjbA8tj8kp2YYKggGIDG2TtHn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOg-0003rZ-KN; Fri, 05 Apr 2024 23:46:54 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00Ad62-Tl; Fri, 05 Apr 2024 23:46:52 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00FZrC-2h;
	Fri, 05 Apr 2024 23:46:52 +0200
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
Subject: [PATCH v1 43/49] ARM: dts: imx6ul-ccimx6ulsbcpro: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:30 +0200
Message-ID:  <0d8bccdf9d39289a6ae384016a0aeafe8382be8f.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1155; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=JssY4o+PFLko3+wBLMquBgwkqPXCoVztrMRHGM+WL7c=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHC3ZH0nHIN8CbYK60L1BBjWsnNPkS6sXRTa9 ic2oEtrtaWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwtwAKCRCPgPtYfRL+ TuKiCACz5ryWoQu5xKxDk4bfO2bAcGQIHQB0ixgLW7AwyogU7tNihQFSczpfZp3JGbxTfq9EI+m CupO7dv0S7Y0ted2WinBF10RQa1UQzKHniEAAXTCklgGftfIpuJzrq/RXZTCXEgm52e3/5nYTjB J87bSMxy1e10xKbAzXNROBJgQYlGVo6Z/D34DO9lUTQOaNPpPE2PPQyhmsTZOrt3ljDU2lJ84bK GAS5RMULSag/7h7zgCjcBM7JnNtJ/cNxPvDaQAVns0K9mnGoXf8fsTxuUa+oRqKJ7lCslqZPg8l mWHz4gID2baajBFezAPmILogT+4xqTW4Dcfbi8ph7rjygzpR
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dtb: pwm@20f0000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts
index 1762bc47e18d..ed61ae8524fa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts
@@ -18,7 +18,7 @@ / {
 
 	lcd_backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm5 0 50000>;
+		pwms = <&pwm5 0 50000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		status = "okay";
@@ -168,7 +168,6 @@ &pwm4 {
 };
 
 &pwm5 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm5>;
 	status = "okay";
-- 
2.43.0


