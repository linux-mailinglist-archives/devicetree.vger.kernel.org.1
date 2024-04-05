Return-Path: <devicetree+bounces-56791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825989A684
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08AA228166C
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF67B17921A;
	Fri,  5 Apr 2024 21:47:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FBB179940
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353637; cv=none; b=Tec6a2TZw7vN69osHwLXqHUzGyEbJdqlXDjs5+WzKe4Fjg4cmtWfGgSRcg0thDq4WnHzgzsSkUqr6HGfUL/xG9KjKTAHigKkFdhCa/fuiEzraD4k1vdiWR/1zbxCgtTAjrC13pWxQzVwIXb5Ymy2xKDChPD0IC/FVX3kNOGOVLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353637; c=relaxed/simple;
	bh=ldLC1iIMHcgBNmvUSXQuQfYEQNQn79OqYKy2TjZvs/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kQDRLnqmLBkmjWLd4Fx74jY3ZkDWmD2HkQ88ENw4VYjGE6IsapB5XYcxzUmpfkvk7qfsWYtlrFVc0ZVjTQI8SOR1Isvl/UH3YWEhY/oes1zDNVJqfK/eP7EInzVZkEd/kELugCJJ/TCfL/wI6ClL23wyHO5xVnRh4xdC1YkNACk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-0003T1-Ji; Fri, 05 Apr 2024 23:46:49 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-00Ad56-6i; Fri, 05 Apr 2024 23:46:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOb-00FZqE-0O;
	Fri, 05 Apr 2024 23:46:49 +0200
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
Subject: [PATCH v1 28/49] ARM: dts: imx6qdl-sabrelite: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:15 +0200
Message-ID:  <3f8efd3b904a272b0a5b6df5d4314df2bcd43e7b.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2779; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=ldLC1iIMHcgBNmvUSXQuQfYEQNQn79OqYKy2TjZvs/0=; b=owGbwMvMwMXY3/A7olbonx/jabUkhjSBgtoVVxIEuer5llX86Lcpm5de78g+UbK2tm0W28spL 3fLy+7pZDRmYWDkYpAVU2Sxb1yTaVUlF9m59t9lmEGsTCBTGLg4BWAiU45xMKwUD7m+VostdaXG i90/Ot+WWm/f6ZTNWl43N79CsGgt20Sn9Y9Z2tncTPp8ol3it5U27Fw+Y8/2xFq+oM3r/FrvaAl Vc6bxFfv6um64brTPQDBPSfP9s5lLIiIcf/8KDTuplOyZ3JP0lUNm3f3a4jW9LtnHPr57o+2ZPl 9UM+3hwj3pRl6/ulj/Whi98E29Jv6bceEVM63FSpo5jc29t50evjTMKd6+OHZ90JHwxeo7/iTPS nYIk3dM1fv7qmSr77VrlyY5zuG8KJgbJ9oiEHbUv3i53wVdoVJ3TYdpS0xuRlqU/rXKN7tu9lLf LGmz0jZp1oR7Wx9cuBXjvlHZ5EvKo0vC71JyJ9xT3/ABAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warnings:

	arch/arm/boot/dts/nxp/imx/imx6dl-sabrelite.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6dl-sabrelite.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6dl-sabrelite.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-sabrelite.dtb: pwm@2080000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-sabrelite.dtb: pwm@2088000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#
	arch/arm/boot/dts/nxp/imx/imx6q-sabrelite.dtb: pwm@208c000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
index 84c8a9531e18..9c502bf77d0b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
@@ -99,7 +99,7 @@ mipi_xclk: mipi_xclk {
 		#clock-cells = <0>;
 		clock-frequency = <22000000>;
 		clock-output-names = "mipi_pwm3";
-		pwms = <&pwm3 0 45>; /* 1 / 45 ns = 22 MHz */
+		pwms = <&pwm3 0 45 0>; /* 1 / 45 ns = 22 MHz */
 		status = "okay";
 	};
 
@@ -162,7 +162,7 @@ sound {
 
 	backlight_lcd: backlight-lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 		power-supply = <&reg_3p3v>;
@@ -171,7 +171,7 @@ backlight_lcd: backlight-lcd {
 
 	backlight_lvds: backlight-lvds {
 		compatible = "pwm-backlight";
-		pwms = <&pwm4 0 5000000>;
+		pwms = <&pwm4 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 		power-supply = <&reg_3p3v>;
@@ -654,21 +654,18 @@ &pcie {
 };
 
 &pwm1 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm1>;
 	status = "okay";
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
 	status = "okay";
 };
 
 &pwm4 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm4>;
 	status = "okay";
-- 
2.43.0


