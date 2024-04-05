Return-Path: <devicetree+bounces-56766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E9B89A666
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BA251F22B9A
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AD5176FA6;
	Fri,  5 Apr 2024 21:47:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824B3176FAD
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353628; cv=none; b=HHMOq5pZ7oIW4QB2+tKqJjHsikq0Ss6GBLd46+8DeED9JsZwFQmiFm5hjChS8zBTSH+60mX5PqhBIYLFE7zctAXh7pTFK6KBQwVrphZrbZfAdNLreQikShY2XIOLSxnUexWtmbTu3lr4dFU863D/BvokmfH9qcQVpvgUbhapjJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353628; c=relaxed/simple;
	bh=FDBg1/kYWrZOpNgh5yzTpsHty7CsIasXETFXT8ZiTLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oV4NBnafhOzyClMQHG8Yotmv6hvY0o7oM3/bF0ar08dMMGIpzGXXbbFvZhsPbBK6eum0qoqMYJrkEVduq3CwY4AQnfj9YCOsAJEjx5LcoBqPl/5KXGVpisvQ1Rp/pecM1VT4fEPHqu1jOSAia/SOfb8DFly/PA+x9pBRqLladw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOX-00032r-LA; Fri, 05 Apr 2024 23:46:45 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOX-00Ad3o-7W; Fri, 05 Apr 2024 23:46:45 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOX-00FZow-0T;
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
Subject: [PATCH v1 08/49] ARM: dts: imx6dl-mamoj: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:41:55 +0200
Message-ID:  <bf65f616ac26648e3e8d03a1e663c93eb16e18b5.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1172; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=FDBg1/kYWrZOpNgh5yzTpsHty7CsIasXETFXT8ZiTLM=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHAq7MtcFDGG1PBtJKsukn6P6f1oxIKYt3//n IX5u3DvX96JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwKgAKCRCPgPtYfRL+ ToeyB/0ZFwIpRboCCSTA6rRchrdyJp1TxIpWwhyIv7yFlGKiylAqzkBLt2uM1yqoNMROjr/vpO9 kXFnextnED4dNw7Sn3djkpwqDkW5gqvWFVieTozd2j6B/ajl2oQmbJ1d+OTXk7eT3I/m9HJBPPv Y+ezE0tr5dS1MSISSQ4E5paD4DveFUp5sAsjbYmJiOQjpN7nnfSnwP6WjPNuSYuHwj1n9Puyhw4 YDyQZ3t6KuBgKZKSkXg8wZ+meI42Xs7n0rOWfSb2T52npQ2JDZjCx3toaW/cxFVIG2/HiugoY90 RV8XGNPiISGxe0axa4741LaKSsM1n2nFE4QZ/PEOc3WbG+8i
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dts
index 028951955bde..72ee236d2f5e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-mamoj.dts
@@ -21,7 +21,7 @@ memory@10000000 {
 
 	backlight_lcd: backlight-lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm3 0 25000>; /* 25000ns -> 40kHz */
+		pwms = <&pwm3 0 25000 0>; /* 25000ns -> 40kHz */
 		brightness-levels = <0 4 8 16 32 64 128 160 192 224 255>;
 		default-brightness-level = <7>;
 	};
@@ -303,7 +303,6 @@ &ipu1_di0_disp0 {
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
 	status = "okay";
-- 
2.43.0


