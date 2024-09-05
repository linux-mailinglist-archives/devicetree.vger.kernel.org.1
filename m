Return-Path: <devicetree+bounces-100562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFF096E20C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 717281C20BD3
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997D517625C;
	Thu,  5 Sep 2024 18:32:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0FF158D66;
	Thu,  5 Sep 2024 18:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=108.161.129.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725561156; cv=none; b=PqSDWbctqwVdzcPfReAGwuO/9RnNd3KV9WczawRHSUhbVz5crVfF+ODC7UTs38USUKMXOj9heP0m+KIaePoqeCK2BlM3MxO/G+KuX9u3tafsX1Tgu5HIHpqX6MWXhydLflUII9pZ2qu65YsU6YXECE0lyPO8/+dSUHHyhLrP4mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725561156; c=relaxed/simple;
	bh=GTVDmWxvB819jdsoUGb5a3UvxVpzRPws0zKvOkvRCdc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=prteanag7UmGr+AFSw52TnJZTKBhopEYsQnijluoGwK/LBa2w1LDWjTEW3m12UTESiv+TR/Z9fg7XzZ+aiOFDowVTW5xII9+0zCgZLdrT7J+QPkw3Huo6ILwioSW7QvYquQIISBovODfS6ipxpAddUSmWvGF7CZn30mDy8skOOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; arc=none smtp.client-ip=108.161.129.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: from syn-068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.95)
	(envelope-from <tharvey@gateworks.com>)
	id 1smHHS-00DGm7-D4;
	Thu, 05 Sep 2024 18:32:30 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH] arm64: dts: imx8mp-venice-gw74xx: add M2SKT_GPIO10 gpio configuration
Date: Thu,  5 Sep 2024 11:32:28 -0700
Message-Id: <20240905183228.517422-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The GW74xx D revision has added a M2SKT_GPIO10 GPIO which routes to the
GPIO10 pin of the M.2 socket for compatibility with certain devices.

Add the iomux and a line name for this.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index d765b7972841..9885948952b4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -299,7 +299,7 @@ &gpio2 {
 &gpio3 {
 	gpio-line-names =
 		"", "", "", "", "", "", "m2_rst", "",
-		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "m2_gpio10", "",
 		"", "", "", "", "", "", "", "",
 		"", "", "", "", "", "", "", "";
 };
@@ -816,6 +816,7 @@ MX8MP_IOMUXC_SD2_CLK__GPIO2_IO13	0x40000150 /* PCIE1_WDIS# */
 			MX8MP_IOMUXC_SD2_CMD__GPIO2_IO14	0x40000150 /* PCIE3_WDIS# */
 			MX8MP_IOMUXC_SD2_DATA3__GPIO2_IO18	0x40000150 /* PCIE2_WDIS# */
 			MX8MP_IOMUXC_NAND_DATA00__GPIO3_IO06	0x40000040 /* M2SKT_RST# */
+			MX8MP_IOMUXC_NAND_DQS__GPIO3_IO14	0x40000040 /* M2SKT_GPIO10 */
 			MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01	0x40000104 /* UART_TERM */
 			MX8MP_IOMUXC_SAI3_TXFS__GPIO4_IO31	0x40000104 /* UART_RS485 */
 			MX8MP_IOMUXC_SAI3_TXC__GPIO5_IO00	0x40000104 /* UART_HALF */
-- 
2.25.1


