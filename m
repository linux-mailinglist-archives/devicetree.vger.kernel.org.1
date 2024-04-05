Return-Path: <devicetree+bounces-56785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8F589A677
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF078283725
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9F0179950;
	Fri,  5 Apr 2024 21:47:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F141791E9
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353635; cv=none; b=aYJQJq+VUodcAjhvlfXVOTmSTJJg1WZb0E+6KRMOl6xOIIzl3gz61lY0TN7W+IamNjHKaocQd4Tu19H2M57EpOj2/MK2GObB1bGS8OZs+tXpuYqIruQwMdgqnNfJgAQ0wAAT+ARjhxn0l11kz670ze80xqnhtayLwcuL0mMkMoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353635; c=relaxed/simple;
	bh=Kqd243GyUTduLX/W7h4QzRsNdBvL5rd9rAK4JCl0gqA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cx1CDfsmSkROFPKERFeBWTXYZr3RTg6s3gQSkNS2CrtwZ2X9jLLkT9DbJd5pT+Yjag8AApFWCI53A425Skmhe9BTSg6trFy/xYtp0UqN9dTgAfKHqt3odEDTHpEjNsnHzHTCwDogIbC/cjTuaMqHOs2oJhL/mJ4lG6mM/KUEgOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOf-0003mT-Vp; Fri, 05 Apr 2024 23:46:53 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00Ad5q-7C; Fri, 05 Apr 2024 23:46:52 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00FZr0-0R;
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
Subject: [PATCH v1 40/49] ARM: dts: imx6sx-sdb: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:27 +0200
Message-ID:  <29bc6a51cd97332841aa0b9440a9f5a9d0f9e192.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1766; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=Kqd243GyUTduLX/W7h4QzRsNdBvL5rd9rAK4JCl0gqA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHCzeMGMW7AB3hDtN20qqOUnVBQTm59cc6IZV x2j7Ss7fkWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwswAKCRCPgPtYfRL+ Trm4B/sE4cwxSe4CZQsAHm7U8j/dSVWdROqQIIYh6mG0XjgFHQhX36TApmkXqPO6lmRPXCY8dFP j0D8TJWnyhTadM79lK6Frb4Kxp1AR4vLUTfXK3faB7rwWRFZ5LSh/53gvK4HaJg7mVqWNHptnjX hxZyVpBzqdlqcmgd2PjXyFu6AMFFiD4jvl0FhFbeeOSfChTp3uuHUJDPonsYS4ABDrDJvnxrDao q+chRbiSmWUy4uhCCuMTBP2pxgy0G5X4a19LDeaID6NGZzvXTiLoxyS7tB+qOC3iA+I83jRlIrJ lDZsGakfITKbIO1lxeNQU71B+zH3bAA/QtWTnvfft8O4pt0g
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6sx-sdb-reva.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6sx-sdb-sai.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6sx-sdb-mqs.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

There is no need for an explicit status = "okay" in the pwm node as
the soc dtsi doesn't disable this device. Drop this property, too.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
index c6e85e4a0883..0c6ed5f988c2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -23,7 +23,7 @@ memory@80000000 {
 
 	backlight_display: backlight-display {
 		compatible = "pwm-backlight";
-		pwms = <&pwm3 0 5000000>;
+		pwms = <&pwm3 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 	};
@@ -295,10 +295,8 @@ display_out: endpoint {
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
-	status = "okay";
 };
 
 &snvs_poweroff {
-- 
2.43.0


