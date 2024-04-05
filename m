Return-Path: <devicetree+bounces-56778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F8889A672
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8517F283764
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2A3179662;
	Fri,  5 Apr 2024 21:47:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139D0178CC8
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353633; cv=none; b=A3RFYtk1iQpZ5cDJuCntMcAyQyiD5CDkwjsKizKe0bdvxRW0sC0yfEsx/IH0/59wmqERHs2In3NptGmntL2iR5AMH1UDuuRVaVW9GXDfo7jun5Sr4jrqhaWmyBL8Wd637AAPaVeoq3Tc2MUvzo4OibQaag88dac+ZytuRpB5XOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353633; c=relaxed/simple;
	bh=PKs0TWh/nCG0Y/HsFJTzq2v2doFjVohgVuSuzqRSQOk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eOprnlHdBuAYU1wi0QadK2Ja5mCLuZCQWxCPFvGJpOeN23nJoLiyAzzHYLJxEYuJNOVdS1cI+9iWCJBYKuLzT7RdG+cG4kkf/8o8yZZzQXMk5H1f4WyVsM5Hve/sx+97EUaJ5ODEBsIIrYXVGbGTPPAwm+KtiCVmIQ7Ph23gKH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOZ-0003Ei-Oa; Fri, 05 Apr 2024 23:46:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOZ-00Ad4M-59; Fri, 05 Apr 2024 23:46:47 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOZ-00FZpW-0F;
	Fri, 05 Apr 2024 23:46:47 +0200
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
Subject: [PATCH v1 17/49] ARM: dts: imx6qdl-gw54xx: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:04 +0200
Message-ID:  <e6b9fb107140b77d493be4a0eca45d6f71115560.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1291; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=PKs0TWh/nCG0Y/HsFJTzq2v2doFjVohgVuSuzqRSQOk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHBXdLpWcJJRi8fh6lNKNJTrUhWZvHlV9qyZv 08rNXV3K4WJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwVwAKCRCPgPtYfRL+ TvYVB/0Vsu+qq2MAOVsk+2coo9Ng67TZQJUnwDJ8huOgNUs654qBHsplgxShu/f50KPByKDjlCf EpoLLt7891iJYzx98JeaT3JzhHs88IGUPpsGyrh5RMhxg1ZGnKlPEG7ACUvbILPO0N2HS7eXb7i qfpe0ShV+UeehJoxmfvzC/ZpR92I/w6b8SqB9yhBpeuWC3wxqv1ZQ7sFoU6DajsSFHigmX4WPAC rS2D+LjhmOm/r2/Y5WKHuk8xPQcWqud/Zbsucg8RoEv/1KMNXGdWqVH8YTJ+HhXHUAhbGgcXjGo sinwsehU6ykoZqJ73n9aedMwhSOL5wkj5AkTNIXKEc08CXH8
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-gw54xx.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-gw54xx.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
index 0ffa0357a6fa..c2ec8572c8a5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
@@ -26,7 +26,7 @@ chosen {
 
 	backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm4 0 5000000>;
+		pwms = <&pwm4 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 	};
@@ -570,7 +570,6 @@ &pwm3 {
 };
 
 &pwm4 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default", "state_dio";
 	pinctrl-0 = <&pinctrl_pwm4_backlight>;
 	pinctrl-1 = <&pinctrl_pwm4_dio>;
-- 
2.43.0


