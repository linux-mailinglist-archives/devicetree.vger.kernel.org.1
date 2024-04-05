Return-Path: <devicetree+bounces-56761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0889A65E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 370221F22E84
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F42F175574;
	Fri,  5 Apr 2024 21:47:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B82617557B
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353627; cv=none; b=c2BDaP2J2oPuRC7gaX6m7FMVKofyPTiaqg183wlaWNPNLKXI+SPPWS6ss9NEBgpoJCKFsCGqrD7PGOHXhzUmAnna96wJF9Xfphs420iHfKE2H+XHqvUEl/QyOJyextgG0Ygx31GoQt9a9TwwFeIG95m7Al6IXfR9A+QCKm7u5OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353627; c=relaxed/simple;
	bh=QCnp8/vcTEF5DWmKmqdD8OEXRdntgjrsEClGAbtgngU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VK+6oafj5ExIjY2XronFmOUfVunQYR92YWQD7SC+4ndgK8pSNOs9kZ1bWCJMyPD4ZDQu8bMOMgBZTEVgmvqALlebWr+a9GhECGCiF/4kTXnBSB6Rnqyqhux3t6a9no7MCS9/EYUubs67Je9Y7DLyW2ulKkvFF8a4xrpEDBZFmfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-0003VH-R9; Fri, 05 Apr 2024 23:46:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00Ad5Q-CL; Fri, 05 Apr 2024 23:46:50 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00FZqY-0y;
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
Subject: [PATCH v1 33/49] ARM: dts: imx6q-novena: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:20 +0200
Message-ID:  <229236fb30b2dc8c02cb29dfe47104f64763535e.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1059; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=QCnp8/vcTEF5DWmKmqdD8OEXRdntgjrsEClGAbtgngU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHCS8cFap7V2+i85mzaKgxZ+YmyTjh6vdQ9CG TBhR896IMuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwkgAKCRCPgPtYfRL+ Tu28CACoWpj35l2psQpjRFpAqDPyoXcXWStOePCbm8dGJU8Su88pF4bohnF1ojHupaXLUVrgIRt D6Wah7hR74R3DRV/LfwD4+5a/e9B4LCzb+5J3kZr9QAFZpR2L4qlyUM+zlEM8whflPBOKdsZxwx RKQYICtsA6PkTTPZGXR/u3/DhXIm1ntkTfcO38siQh4LraVBLmY62VXt/CEpaedS2itTMjq2XnF 5SEK/9vfHSOXZJAd7PVHG1sRKZvtx/lPSPbfTMU8eGD3TSVkG6EFGQf6SWD813q/gunA0qOXr9m RzH65qUxFSp+W4acnPlejhdkJ6t5QiOkqzLhI7WhGKOE1SUg
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6q-novena.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6q-novena.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
index a7d5a68110fc..d392b5bd2eea 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
@@ -67,7 +67,7 @@ chosen {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 10000000>;
+		pwms = <&pwm1 0 10000000 0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_backlight_novena>;
 		power-supply = <&reg_lvds_lcd>;
@@ -465,7 +465,6 @@ &pcie {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	status = "okay";
 };
 
-- 
2.43.0


