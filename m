Return-Path: <devicetree+bounces-56747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87D89A64D
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C311F22A15
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215E217554F;
	Fri,  5 Apr 2024 21:47:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76125175557
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353621; cv=none; b=IN1Ty9muHIdCQ7mq8FIKDYTIG0xZzbjZSx7XSa8qNAChhkxDH1I1xQcHn8G0GptyNyagma9t3i6CbVJlwNxoVLLfYk+ix2vcwSxIepNqHeYVCx5ltJoCwPK7yEfxU0HSX0iyaTUjqZ6AsLGfApLbnKDToaYMSmIlBy+5QXf8H/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353621; c=relaxed/simple;
	bh=oSEa2gyMcGIfhQwmaPV347eueIBz6gl9/RjTI336w9c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Bi872lfzFCvtKmHCjcAFdcynnFei1qpVJLyIHst1OvSaTK7mF6HGmMv0boKKQr/qopNqLjJxHZzINTNBJFZmggpdfCGo5qsEWxOh3jou1LFXBmoJ/mMlwydROu54Dn/+EU6QbDTB4o4z1cN2dpsiR0S+53jQdX+ps9G/s0m65JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOd-0003Xx-B0; Fri, 05 Apr 2024 23:46:51 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00Ad5U-Ko; Fri, 05 Apr 2024 23:46:50 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOc-00FZqc-1l;
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
Subject: [PATCH v1 34/49] ARM: dts: imx6q-pistachio: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:21 +0200
Message-ID:  <a424befaebf49475f8ce5893d688fefb267b6313.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1137; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=oSEa2gyMcGIfhQwmaPV347eueIBz6gl9/RjTI336w9c=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHCYHojXZwL3pxLiEyWyfajKznlUe/hWL7DxZ Tvw4XI0PZeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwmAAKCRCPgPtYfRL+ TlfCB/9oMJZCZJLaeRFIc2hdhidMhFFoZGge/qwrAbqejvsYiywWcf8rJxtmOSghFdwhcILCdoV B1tu8UqnH915aKKe29GrzmkNnFjC00cEqHS4JowK2Z4+9N+z7RkDh4WQdcMkZAb6BvEm20j1zt+ bL0rxe9be5T9osBPsG8Zd9lyvjyqqiytRAnEnaIEaZtNiLw0Dar0r7CWQI2sK+lYGnIGylbRYNM 4D3Ex5iTl+RqgBiM8yiwZUuaq1fJziKI4SJDRD+4zRStGbemMLpX9kBx96AA9ymxnSQ0owuj+qa isgBhvNd6JxUe4Wu2ASRXveI9wanBqX9u9ybbQxfgFa9Ncma
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dts b/arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dts
index 46c6b96d8073..56b77cc0af2b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-pistachio.dts
@@ -124,7 +124,7 @@ sound {
 
 	backlight_lvds: backlight-lvds {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 50000>;
+		pwms = <&pwm1 0 50000 0>;
 		brightness-levels = <
 			0  /*1  2  3  4  5  6*/  7  8  9
 			10 11 12 13 14 15 16 17 18 19
@@ -571,7 +571,6 @@ lvds0_out: endpoint {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
 	status = "okay";
-- 
2.43.0


