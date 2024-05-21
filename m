Return-Path: <devicetree+bounces-68074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7343A8CAC31
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:26:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F133283D52
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215A173165;
	Tue, 21 May 2024 10:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="mHTaWBQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA371B32
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716287114; cv=none; b=Pr0zUei2Q1y3QaMHZS4jd7N/84NU1QBxd9E9h5Jkl0+rhUCzjlfjhnMiE4JAC2IlDArNFg5+WpaqhjlYkqYJWQPTSY/3S48klBt83Owzymz2bH8Z2Tg6weFP9LD6EASfXBxBj/9OKVpKA4FALl+sI5UVI9fcjxk/mnmmKpLTQdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716287114; c=relaxed/simple;
	bh=nkgw3fz0976Jdp0+eh7COGB+2J+giEdd8+R69SR1/4k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LCNHy6F9gjhXzUmKvube7XnVwpc8Mee8Dy9xW3gyIp7tyXTb5rUdGPiUmedLznbhIHgJmXv+rS0Xpnaia92SxEIK2MIfJNwy4N0dzHZLDAPlUzn38BvjCad/EsPWd4TRY1F8210dhxSe0EJyN+wTwI+LchHM5eRyRSur+V1LaLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=mHTaWBQJ; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 516E188096;
	Tue, 21 May 2024 12:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1716287103;
	bh=XVQ8F6XCYJt4od6PuSFr/kuUABm5Sfd++dN0J2y+sO4=;
	h=From:To:Cc:Subject:Date:From;
	b=mHTaWBQJWn+qVOhcvYk2+Yq5MBU8+LPrsSBwwf0MQAO8kex9pGrv8czpQpUu8eEwt
	 xwW8HsniSrvJIf6BkS5UjpHs/+eGjftfNLlwpqzOD1ncEzEULV8W5YUoYC6VfMyE9C
	 Voziv51QQKUtNEcrA4wy0pI5HAvXwRdGKp7RB1Vn3SiE50RW3o74VyELiyMZJyC5Lh
	 4ydIsDRcfQ8KYSXnwMgOESLTFFcM8451x60X7S0qXHh8NvHwbWI2i07xMM8UccemlC
	 t1W4UWt0U8X/RtkK+NQcLrtgOS9RPMHQ2UNk20OTeE1LiRIg0Y4vj5ou5di5mcKHKD
	 cVxmv3F3LIUPw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: [PATCH 1/3] arm64: dts: imx8mm: Describe carrier board 20 MHz Xtal on i.MX8MM Menlo board
Date: Tue, 21 May 2024 12:23:11 +0200
Message-ID: <20240521102435.10019-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The i.MX8MM Menlo carrier board uses dedicated 20 MHz Xtal to supply
clock to second SPI CAN controller on the carrier board as well as
CPLD on the same board. Fix incorrect reuse of SoM 20 MHz Xtal for
that purpose, describe the separate Xtal and use it.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
index 0b123a84018b2..4c38979f7333f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
@@ -14,6 +14,13 @@ / {
 		     "toradex,verdin-imx8mm",
 		     "fsl,imx8mm";
 
+	/* Carrier board Xtal for SPI CAN controller and CPLD */
+	clk20mcb: clk-20m-cb {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <20000000>;
+	};
+
 	/delete-node/ gpio-keys;
 
 	leds {
@@ -60,7 +67,7 @@ &ecspi1 {
 	/* CAN controller on the baseboard */
 	canfd: can@0 {
 		compatible = "microchip,mcp2518fd";
-		clocks = <&clk_xtal20>;
+		clocks = <&clk20mcb>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
 		reg = <0>;
-- 
2.43.0


