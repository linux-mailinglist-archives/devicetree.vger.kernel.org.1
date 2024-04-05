Return-Path: <devicetree+bounces-56744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4889A64A
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48841282D29
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7A5175565;
	Fri,  5 Apr 2024 21:47:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A535417554D
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353620; cv=none; b=JKdw8bSQRQ/cJNKbnlaXKPIa5tX82BtMUIF/FfIVm8luZpT2Xa9IUgDrESBP9MRiKsOzlyVfkDmFqxAoqZ2JE2uQtQYy1hQPp1i+5wlNRpkLkndVFfUpEp2aLChPk9rNPFpeVxq6O4cX9NYWX2rCtFvbKuORHR8aTCI1iyImVTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353620; c=relaxed/simple;
	bh=a6D2cDo8eD1xMPrb39ce0nzsrSEAcJUs1DRjc54sFX4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cpS2u3u2/fZGEGcYbPotaeRxjW1L4rPyJxeBujHPOx++/h4z5GcetgafQ0buEdnazF6Sy4/8gkGV2TyEoY2p0qBw4MwWYLjOFcB3HLKX6LonNUNGH1Cj0a/aEQNIN7ynHhoQ8e26SidKX7NfQby7UAw1GfKK07Zxngb882muH6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOW-0002ys-D8; Fri, 05 Apr 2024 23:46:44 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOV-00Ad3Q-Ot; Fri, 05 Apr 2024 23:46:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOV-00FZoY-2C;
	Fri, 05 Apr 2024 23:46:43 +0200
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
Subject: [PATCH v1 02/49] ARM: dts: imx53-m53evk: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:41:49 +0200
Message-ID:  <b46daf7f40cb947eb664ad82f4adbec2515c5e61.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1130; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=a6D2cDo8eD1xMPrb39ce0nzsrSEAcJUs1DRjc54sFX4=; b=owGbwMvMwMXY3/A7olbonx/jabUkhjSBAuWIrZWrUlxuPfRoO26WXn528zeddeuXrtxk67GwY rrSLeX5nYzGLAyMXAyyYoos9o1rMq2q5CI71/67DDOIlQlkCgMXpwBMxOEWB8O0Ff0cp5v6FiZ7 soQ3HfF+1XlWdE3PVgNrKe7U67rqNSERH37M/9By6vmWApkofWXWvMlGz5skuNJMV+zrKbx1k2t LQjVj91TTNve+mIcbK1uuu0u92bTPPPGrh9LkSc6m6sYXiu30zdel7HRSXi9laWOqXvcsz9/Xw3 f/EsfKorcuJ70nXWDPKmATrJ/Avu/gzA3Xih6r53faZcaWxYVrmtuuqpbQdv34fEJ7deRrM8ugs rdXIuU3+qsY+4qJKhxm/NPVYGrZpcu8/IUrR/jRMEONTZvnHlKPtF3qf2Oz4rzSreVMjEfqq1zd A7weuhr1zg/M0YnsYhfLnipUF/Ntjx3X48y1euGM2gA=
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx53-m53evk.dtb: pwm@53fb4000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts b/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
index c323b4dbe9f0..1353d985969c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-m53evk.dts
@@ -41,7 +41,7 @@ display1_in: endpoint {
 
 	backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 3000>;
+		pwms = <&pwm1 0 3000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		power-supply = <&reg_backlight>;
@@ -313,7 +313,6 @@ &ipu_di1_disp1 {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
 	status = "okay";
-- 
2.43.0


