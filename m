Return-Path: <devicetree+bounces-56762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 023DC89A65A
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACAEE1F224AC
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D30117798B;
	Fri,  5 Apr 2024 21:47:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4A017556D
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353627; cv=none; b=t+udDyTpvxgPYNKMZ3mXly9QPTQ4zH0rqFU1PfcDkes+RgoG4Pu6gsqwdI4FSI8KioLHJUQOH/evEgX4t2+2RxHcCcv/R2hSpOLCJCV+uGTxM1XsT+9Hu8I2gFH6H3KbP7XNK/RjuhllAuFo6f4xdHzf7jMgF5g5J0hmhfCccBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353627; c=relaxed/simple;
	bh=yTQyp79k9Cxy3P51p6QbIbBiRFavo6CkKPDMxUm+pM4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WywQZ5BOBMy/Ys1VPD6g4UEE52Q4FnkzNabrQHlMMOwmzTzhbv+7GvJIP7mSL1nbfhC/benkbnct1FmPW60hxVHMG1B+CLZdWuDPd7i749sr0ju/q7IkyMRY4ZT21UeHrf7bQTbta0/H327dPrDw0ogrqL0Q2sCh1HOklls6UOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOf-0003km-QN; Fri, 05 Apr 2024 23:46:53 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00Ad5n-0U; Fri, 05 Apr 2024 23:46:52 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOd-00FZqw-2z;
	Fri, 05 Apr 2024 23:46:51 +0200
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
Subject: [PATCH v1 39/49] ARM: dts: imx6sx-nitrogen6sx: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:26 +0200
Message-ID:  <8e5f111b623d3bcbfc8db7aee5093869ae156e8d.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1315; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=yTQyp79k9Cxy3P51p6QbIbBiRFavo6CkKPDMxUm+pM4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHCyWnhNrpxQ8gB2pIDjcwuH8iRw9K+30vvu9 iOLgQvhtVyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwsgAKCRCPgPtYfRL+ TlVoB/0eLmeRNdjqJAUEj3XCuIRwtKkRYg2Q2HCZMJAPpf6e5Ei4lUR0zgb9gp5BM0CyVDLKFKE iW2xgmEU5TZYpmWdWUWgunVf0uJYI39hZrCfQuGEp6maboOaen377nGarkmcV6jh4spDgE55kv3 MAiKgUJHDx2SEq7MzJbircFB7Hrbew9Q15a8zlBc0PZaGlk1iheZXyqsujM6qLsmOnagKE2/8Ij OGkOgTi/kPBFwMeS1upEseYDYjRaF/8QR+3LFk68YO397zvGit1+5q5wq8sp0xI4RfaMheW8aUK +EHi9UcSHHSwFa197RIxV5g0rDhmQcICMIUuWAmSpHVnzt8B
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

There is no need for an explicit status = "okay" in the pwm node as
the soc dtsi doesn't disable this device. Drop this property, too.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
index cd9cbc9ccc9e..8adc2b362ab2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
@@ -18,7 +18,7 @@ memory@80000000 {
 
 	backlight-lvds {
 		compatible = "pwm-backlight";
-		pwms = <&pwm4 0 5000000>;
+		pwms = <&pwm4 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		power-supply = <&reg_3p3v>;
@@ -229,10 +229,8 @@ &pcie {
 };
 
 &pwm4 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm4>;
-	status = "okay";
 };
 
 &ssi1 {
-- 
2.43.0


