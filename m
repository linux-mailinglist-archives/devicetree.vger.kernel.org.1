Return-Path: <devicetree+bounces-56776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB56589A66F
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6113B1F21957
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67790179652;
	Fri,  5 Apr 2024 21:47:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4581779A4
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353632; cv=none; b=chk5EEaE+YymyH6eHrR+9pa6mjx577XfiBiCdy85gAUpavmCqU+hPCVfWWGccy9I1glpbWzj5upJgMTW34JKFCnUwc92h3BgGLT+CSNkavOfAPhdy9W8C8GUc9pz3pgR6p983Jd2X7ZfkSTT4191RfyoqvqdH8ztZf6HpEu62JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353632; c=relaxed/simple;
	bh=13BAPCXVbkLz2Va39iEUUCkxXjsyp5n63H6RQTEGuKo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F4id2eRpZ/3HqGNgdUoVUMGPLMHgU1V5eFMmAMmYoFnogT1EYbm4kaCOMLAF/+GWylRvQJCW84U2TTcSiBjb/Yym/afpWiWHHqIhGcdrZdILnhuvikAotJKBxlIT3+l0EaP86KuRcwqnFXfxOwoVvPU8hD2QK775Ugnuw4TodL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-0003Sm-Dg; Fri, 05 Apr 2024 23:46:49 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-00Ad52-0u; Fri, 05 Apr 2024 23:46:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOa-00FZqA-31;
	Fri, 05 Apr 2024 23:46:48 +0200
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
Subject: [PATCH v1 27/49] ARM: dts: imx6qdl-sabreauto: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:14 +0200
Message-ID:  <1be8a339d582fc3a7630b11d13241a562156d224.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1468; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=13BAPCXVbkLz2Va39iEUUCkxXjsyp5n63H6RQTEGuKo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHB8+XJRvgYvBwS+suWxFdasSjT3IvWPYILor sYP7U0I6pOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwfAAKCRCPgPtYfRL+ TuybCAChZLhooWH1lrzz/btTpv+DHn8jKVdM+aRf5PY7isnijPD/9AqIV10P+Y5zR4NQVuoJwHj NujRRBijeyNK3amqX/0jrKb8Bt9kAGtl9tnVQYgo6mSUgFGJK22VG5PBq/FvHs4wC+W7jmsmWQB hs7JYBSFCjEpjXWtZfexJz8/rCyNDoez7zuoSgptvg/oDZ9mKi1XmPuejs+TOGP6PWfhpzUQmhM OLpZDbYhf4y7Z8PkVCV4hQgRECpxl4wOc9Iyz3eOOiDEJ3IbwK4ClMQr9K8w7jxiJwaNmyTJd9F BhHgEeHjlitqG7+MdbUR1O+Xu6FoD1DcSxgsk/oyYRvSDkFY
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-sabreauto.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-sabreauto.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
index 68e97180d33e..69b9d7a4bcef 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
@@ -153,7 +153,7 @@ sound-spdif {
 
 	backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm3 0 5000000>;
+		pwms = <&pwm3 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 		status = "okay";
@@ -802,7 +802,6 @@ timing0: hsd100pxn1 {
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
 	status = "okay";
-- 
2.43.0


