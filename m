Return-Path: <devicetree+bounces-53191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A597688B487
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 23:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D73BB1C3D310
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D613780036;
	Mon, 25 Mar 2024 22:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="lcCLsn8/"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9297FBDB
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 22:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711407059; cv=none; b=NHOE9xs00qBZb3aK8okyZpYkyuuRsgfsqHURVFTSXQR/9dBx/iCMyhVdDWRApwY2+6OSIKRC4RvL5s3oHkETtUe275gsE6sKWQAvQPT/0foOnSb/lclQ8pBjH5R1yUo1pfoYGibSyr6dX5kj9L2etrMMJpObaELv0MqAp4jhUf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711407059; c=relaxed/simple;
	bh=0f9qpwXXxWgPJBcoJIpLXonLngQHZiXwSMlsWPCu1vc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o+1kJhI/EVLwyP31FDkMvXiNvl1OwhbjQ54qfYzIW4zijKf53wXcBTCVEZWFM3p/aakgRNykoN8SRrNvfCX9rzMSlqhKj78nrNesA5HHWJIVTCKzrNMDUnaxfy6HXCOfeWxIWxTgKiHzK+pc8NvuGzsgTAMmQ+DXRQF/EKMDwzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=lcCLsn8/; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 209BE7E4;
	Mon, 25 Mar 2024 23:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711407025;
	bh=0f9qpwXXxWgPJBcoJIpLXonLngQHZiXwSMlsWPCu1vc=;
	h=From:To:Cc:Subject:Date:From;
	b=lcCLsn8/QtQQ5SRufgSvn+D8lNYyO1oU1tR8ZN8k2Yh6EzpMCsRy11cddBqjmN46i
	 wk5VYPEnlbQFzFmPDGKt+X7CpozFaQutJAMBtnCLjKMdm8xuW9cfK5AriZ2laD1xNl
	 0qGtRYoL+nnc/dsaqLz3G0sTLaFZTJx0oNvp0RR8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Jacopo Mondi <jacopo@jmondi.org>
Subject: [PATCH] arm64: dts: debix-a: Remove i2c2 from base .dts
Date: Tue, 26 Mar 2024 00:50:48 +0200
Message-ID: <20240325225048.1159-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jacopo Mondi <jacopo@jmondi.org>

The I2C2 bus is used for the CSI and DSI connectors only, no devices are
connected to it on neither the Debix Model A nor its IO board. Remove
the bus from the board's .dts and rely on display panel or camera sensor
overlsy to enable it when necessary.

Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../boot/dts/freescale/imx8mp-debix-model-a.dts    | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
index 5ac77eaf23d5..26c303b7c7fa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
@@ -210,13 +210,6 @@ ldo5: LDO5 {
 	};
 };
 
-&i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-};
-
 &i2c3 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -392,13 +385,6 @@ MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
 		>;
 	};
 
-	pinctrl_i2c2: i2c2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL					0x400001c2
-			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA					0x400001c2
-		>;
-	};
-
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL					0x400001c2
-- 
Regards,

Laurent Pinchart


