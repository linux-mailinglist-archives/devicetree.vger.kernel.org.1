Return-Path: <devicetree+bounces-233272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6302C206A0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A91673B9D77
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86F5258EC1;
	Thu, 30 Oct 2025 13:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="SYYsYn4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay17-hz2.antispameurope.com (mx-relay17-hz2.antispameurope.com [83.246.65.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BDD259CAF
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.159
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832446; cv=pass; b=r7E7RAVmV+TJ8N+esJ8VvZ14x3FmlnAPuAInwR0smgZ2VVNx/m9YTp15am3jUe2WudMEOd+2724sgbPZ3znnrlosDWqhMDpXtFAjFUVcjOEfgPG7hD/tE2zuLyX44UG1Hj3DSZB8QJC16zD3+jAt/AvwclGvwNTMWFeBi7bNfWk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832446; c=relaxed/simple;
	bh=7TJedIY/9UFJw10oGIKYKIy0SHdFPabonZXK+kKB1VY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=puB9ALV7jBUUwDWPXw02Ox8mRAhoV/FKtkwO78im1Y3JfGsmmHhOmcEg6FMLPG0JqWdNldQWrDmw11ZeW1v8ilOgS1eetANvjL+6WKvhP2W4SUQz8voJ3m5Ltl9i5UolVINY4KIzJHVZDOL/zUtESEfTPUTDfqrmlBT6TDl7ncY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=SYYsYn4v; arc=pass smtp.client-ip=83.246.65.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate17-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ftODCMJWq6xxBVzz35BWN/b7GEhpvIJPEY0znOy+1pQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832400;
 b=XvmfNzj/2t8m8Q2+Hvb6av1DkpGYXv6B0cYbglrYe68uU7/uxMSBlK3qudfRlBkJwNYm8x/8
 8bOWX9BR/v4tMKbHRgyI9jx9+W0nrIN2ThgX3eS5BYcsB46YoNywSbQDVvCaLnJwmOvUsFiODSt
 2ottjD25w3jFw7US6dh8KyWnW0zypAqYUVlCF7Mc3+KDaRfQtG6th8auP5ad+Al9q/hNnzrhkR8
 8vVYw32eSrbRw+44Ued8Oh+Dij6I5rQ7KR1eqtWi2c9Jx30K3Ws8eV8JOUo7CdObCgUe0+hv34W
 iCO1ESlDtla+UFp/Qe3/4DymwFfU3KLPbpKwEPYukv/Qw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832400;
 b=Oqf2l0x5pv2pOMby1hhLPkKYKw11t26kl8nkKCQEyoApFTTWqyXomkNmvLV9ZbJLp9an4/vS
 QPytiN1tv9xEBOmvwn6HlLkEGmSmrABg4qKzAvxoy3U2XzSg9Bt8q3G2+R3yR6o9X9VMd2aKp0A
 g8wQko6hmkeTYqdvDyQJkP4S+UJQd/K7hopXex53A5ivWY2kfsRjT5Be5DhT13+bQZRYh1tXKzd
 Tq0WQYQFLDnyCeuiW96iNSBL1B7NUaWMvj3G6jkeyU/oiRcRL9dlwdcCmYFhily71U20V1uZaUy
 v/gv4tPtuIQpJLBU85kVEuVbX1H1w6ZSCE/tvnsGtDbhA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay17-hz2.antispameurope.com;
 Thu, 30 Oct 2025 14:53:20 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D53C65A04FC;
	Thu, 30 Oct 2025 14:53:12 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 13/19] arm64: dts: imx95-tqma9596sa: add gpio bus recovery for i2c
Date: Thu, 30 Oct 2025 14:52:55 +0100
Message-ID: <20251030135306.1421154-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
 <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay17-hz2.antispameurope.com with 4cy5D94wS6zdbpV
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4ebec40930e540c73b0a44225c3aa667
X-cloud-security:scantime:1.733
DKIM-Signature: a=rsa-sha256;
 bh=ftODCMJWq6xxBVzz35BWN/b7GEhpvIJPEY0znOy+1pQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832399; v=1;
 b=SYYsYn4vz0/UoZTGrUs/ikebzR4WyKU6cgA9nY3jbJneDfPOSdevKHoHvakqph/AR3dUQRp/
 o7lOp1Um8wrIGuN/6dm/jrNfe3bDM6u/2NNE5Z1KaOmb10yS9knRtiwFkeXj+aSExy+DO7n2LiV
 ZnHEir/F6yk/mtBU3bRSwENLAdZ8CqX8uCD+8+YaQa1bTCAi/qIVFm/ZWNMroaYSqUlHwbtQdmn
 +/SLwkP1aIJneHIp5r7SIdSiLV/tQs2xNNvsEyl4BVLX+apA4M1dznYSR2xQc1PpsQq5n3VnxtU
 HEIcMZV1ZzTe98Th1Tlg1+g6zCM2ZaK5e5NudhiE8XBoA==

Add pinctrl group for GPIO based bus recovery.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx95-tqma9596sa.dtsi  | 30 +++++++++++++++++--
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index cc251505f6280..9c892cd8ff215 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -263,8 +263,11 @@ expander1: gpio@75 {
 /* I2C_CAM0 */
 &lpi2c3 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_lpi2c3>;
+	pinctrl-1 = <&pinctrl_lpi2c3_gpio>;
+	sda-gpios = <&gpio2 28 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio2 29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
 	dp_bridge: dp-bridge@f {
@@ -299,16 +302,22 @@ dp_dsi_in: endpoint {
 /* I2C_CAM1 */
 &lpi2c4 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_lpi2c4>;
+	pinctrl-1 = <&pinctrl_lpi2c4_gpio>;
+	sda-gpios = <&gpio2 30 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio2 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 };
 
 /* I2C_LCD */
 &lpi2c6 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_lpi2c6>;
+	pinctrl-1 = <&pinctrl_lpi2c6_gpio>;
+	sda-gpios = <&gpio2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio2 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 };
 
@@ -606,16 +615,31 @@ pinctrl_lpi2c3: lpi2c3grp {
 			   <IMX95_PAD_GPIO_IO29__LPI2C3_SCL			0x4000191e>;
 	};
 
+	pinctrl_lpi2c3_gpio: lpi2c3-gpiogrp {
+		fsl,pins = <IMX95_PAD_GPIO_IO28__GPIO2_IO_BIT28		0x4000191e>,
+			   <IMX95_PAD_GPIO_IO29__GPIO2_IO_BIT29		0x4000191e>;
+	};
+
 	pinctrl_lpi2c4: lpi2c4grp {
 		fsl,pins = <IMX95_PAD_GPIO_IO30__LPI2C4_SDA             0x4000191e>,
 			   <IMX95_PAD_GPIO_IO31__LPI2C4_SCL             0x4000191e>;
 	};
 
+	pinctrl_lpi2c4_gpio: lpi2c4-gpiogrp {
+		fsl,pins = <IMX95_PAD_GPIO_IO30__GPIO2_IO_BIT30		0x4000191e>,
+			   <IMX95_PAD_GPIO_IO31__GPIO2_IO_BIT31		0x4000191e>;
+	};
+
 	pinctrl_lpi2c6: lpi2c6grp {
 		fsl,pins = <IMX95_PAD_GPIO_IO02__LPI2C6_SDA             0x4000191e>,
 			   <IMX95_PAD_GPIO_IO03__LPI2C6_SCL             0x4000191e>;
 	};
 
+	pinctrl_lpi2c6_gpio: lpi2c6-gpiogrp {
+		fsl,pins = <IMX95_PAD_GPIO_IO02__GPIO2_IO_BIT2		0x4000191e>,
+			   <IMX95_PAD_GPIO_IO03__GPIO2_IO_BIT3		0x4000191e>;
+	};
+
 	pinctrl_lpspi3: lpspi3grp {
 		fsl,pins = <IMX95_PAD_GPIO_IO07__GPIO2_IO_BIT7		0x51e>,
 			   <IMX95_PAD_GPIO_IO08__GPIO2_IO_BIT8		0x51e>,
-- 
2.43.0


