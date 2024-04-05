Return-Path: <devicetree+bounces-56784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A75D089A676
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:48:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 488F61F21BAE
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D72179945;
	Fri,  5 Apr 2024 21:47:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417D175561
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353635; cv=none; b=h31wK4XwOPCcr7icJG3aoLPEuEuk5KvBdW8jx8py/T6WXq93kk+tJU0dDrG25lCyvsmBMVyLh5oQZp01mnfOS8rrfKxdOffXtxiMwKYFUUHlBKzKjDGwSzmuxFER6/+3DXP64r07zpYESAOu5wG1c68+oTeY/IZYES4M7iA0GVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353635; c=relaxed/simple;
	bh=7IPUl4Py19lNRJHiVrtTRJ92wsL63tVxAyzSbKBH3oA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XGTUc7k2zhvLbSzDaFZolupuqEliV9KoYDdvGN/rtJcbn0FEomM68LvU3fXusKiOuAmG9UpBLCG+AeGo5VQHdagOQbHb+2zSpNXI8Z7mSp0tiohKnd1wNl7Pm5yjqt0xKi4yOytv+cANVhjv7NIJq9drmJP6ce8Oth4J7ilSQEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOh-0003zb-Cp; Fri, 05 Apr 2024 23:46:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOf-00Ad6F-UY; Fri, 05 Apr 2024 23:46:53 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rsrOf-00FZrS-2k;
	Fri, 05 Apr 2024 23:46:53 +0200
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
Subject: [PATCH v1 47/49] ARM: dts: imx6ul-kontron-bl-43: Use #pwm-cells = <3> for imx27-pwm device
Date: Fri,  5 Apr 2024 23:42:34 +0200
Message-ID:  <634499831ea9eb088e2d67c1208461a8612bd1b5.1712352665.git.u.kleine-koenig@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1137; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=7IPUl4Py19lNRJHiVrtTRJ92wsL63tVxAyzSbKBH3oA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmEHC8XoSupoJ+jEa8TWSVbHnOQ714tXFYiKjGS 2sgDm+ciP2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZhBwvAAKCRCPgPtYfRL+ TjRmCACIMe1CTz4eDPMhjEkf2S9pMfk20PSHlF6HfimDv+x55MZWlmFUb1O0v2fjVBnj8ytKb+Z v9ybQ1/68L86Go4FNYOGJ8KOv+aUT2+ULqUU1w/2EmJLyNYrisX7qEw6Q0OXCvvwUQvRkfQ2i3n KLT437aJOo7dVWtV1pxQp/d/HVFYDqE5K3kAun3PJkZUIO1DG6Nk7gvpmQ3DrRm4uawybLcP24k N5sxLEPWfugWZnfjbSPqUqvBnI7R39AeFgE9vTP4zconYpKpAUdVv7o69NBqf+4z0Jqq3dkLzNy VQhhlXJF2bmBz7sSu+OSUC5NqaiR+EgT4QVhjBis+xlpsA0O
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The binding dictates using 3 pwm-cells. Adhere to that.

This fixes the following dtbs_check warning:

	arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dtb: pwm@20f8000: #pwm-cells:0:0: 3 was expected
		from schema : http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dts b/arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dts
index 0c643706a158..4e8191a65211 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-kontron-bl-43.dts
@@ -14,7 +14,7 @@ / {
 
 	backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm7 0 5000000>;
+		pwms = <&pwm7 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		status = "okay";
@@ -41,7 +41,6 @@ &lcdif {
 };
 
 &pwm7 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm7>;
 	status = "okay";
-- 
2.43.0


