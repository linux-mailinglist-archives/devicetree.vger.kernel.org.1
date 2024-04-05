Return-Path: <devicetree+bounces-56773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 710CD89A66C
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:47:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 273DF1F223CA
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5F5178CE7;
	Fri,  5 Apr 2024 21:47:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D217B177991
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353630; cv=none; b=fviG4Sal4oGWRbX2Np8oO413TyqRFAmdtVNuWR9oIcKO6KCiZAVUPZMgFTUqf4CdkG3IN/e5U4/uSe1HMuiupmwFxnAiX8EE84nud/y2hL7Fsmry1cQMfLeRDiYQpNbcW+22Ii9giodn2rGeFwOl8aOryMgYRnLFOB/fyVe2V6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353630; c=relaxed/simple;
	bh=nw193+vf566OaE/3JDS5rzzOEVEK4nyP+06hhuGjURY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FfZ1pQ/d0Ouc4XN++86CC+bsp7chssqMTlYeaiLn+wT9dA7QvIcyPlwSWlK9G/rBO+9bzVDra2wNoXyVfBjEd3lvMKDViMLDCmmSkstDuJb+ACVXBGIaKo/sf6fOQrs5p4HOdSXyxueQ73YMpqGKO2zKDsq/9wTJuqU+IsUCEk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOg-0003oY-7H; Fri, 05 Apr 2024 23:46:54 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00Ad5u-FP; Fri, 05 Apr 2024 23:46:52 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOe-00FZr4-1F;
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
Subject: [PATCH v1 41/49] ARM: dts: imx6sx-softing-vining-2000: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:28 +0200
Message-ID:  <b5ae0b476924a3f8b4e86c7044e01c2cea1d6c6d.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2128; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=nw193+vf566OaE/3JDS5rzzOEVEK4nyP+06hhuGjURY=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHC01G1Ovr0LB17uuGi7rWYMMmt54YkyFDMvb sLMydVdtjyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwtAAKCRCPgPtYfRL+ TtHyB/98XthPebADVvQLDoFDPKEhSM40AW1027VcKKztJoA78UMWu+4SdIdqeIrGBJR1sYJhR2L Jyo9RDYb6FhXomkPbAoL29UVCvpOwe58CJhUZBcVRenN/dHboS5LFGiScPOOyOOQrOwr58byjD7 TJxSJX0wPKKBbS3ib1Ras1X5EvcJtMl5oS5DLRySX8d7MFo3698vB0iKLVVEtUUeoi/peEIMJVt fTjmWw0r9hKEKqvd6Gh8OPXPlCUsCn9278LIxNxyCfo521KL3LH1SJu+PA1htw0o//sUJ2m769F c5MVJx6O4GDFk7IGo92Hssiq08Spzhtshzl/ThTc71VC/EXA
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dtb: pwm@2084000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dtb: pwm@22a8000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

There is no need for an explicit status = "okay" in the pwm nodes as
the soc dtsi doesn't disable these devices. Drop these properties, too.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts  | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
index bfcd8f7d86dd..f999eb244373 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
@@ -46,19 +46,19 @@ led-controller {
 		led-1 {
 			label = "red";
 			max-brightness = <255>;
-			pwms = <&pwm6 0 50000>;
+			pwms = <&pwm6 0 50000 0>;
 		};
 
 		led-2 {
 			label = "green";
 			max-brightness = <255>;
-			pwms = <&pwm2 0 50000>;
+			pwms = <&pwm2 0 50000 0>;
 		};
 
 		led-3 {
 			label = "blue";
 			max-brightness = <255>;
-			pwms = <&pwm1 0 50000>;
+			pwms = <&pwm1 0 50000 0>;
 		};
 	};
 };
@@ -505,24 +505,18 @@ &pcie {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
-	status = "okay";
 };
 
 &pwm2 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm2>;
-	status = "okay";
 };
 
 &pwm6 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm6>;
-	status = "okay";
 };
 
 &reg_arm {
-- 
2.43.0


