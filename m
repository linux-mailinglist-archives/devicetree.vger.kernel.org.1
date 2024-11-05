Return-Path: <devicetree+bounces-119021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4189BCA26
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 11:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21043284124
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D54E71CF2B6;
	Tue,  5 Nov 2024 10:17:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313351D1747
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 10:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730801827; cv=none; b=ta6W1otXfPqpj7zrsEMpoB4Moiyq8ZfoWe9SZeK+zRhRvLD8OZ/CfcWoFJimcR2Hhkd3sjhkfa56g5FwqgryK5fCMzYiMXUqcZronm3OLOvJHBVvLs3hngFkKJ5i8uP6UeY2WtRE6e9uljTu0q7vdxkDJXNk4V3BPuNzXrdO1XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730801827; c=relaxed/simple;
	bh=uYFu5hk9RPg1nhk2wUqnvBIEwCZTXT9exQ8u7c3OuBA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Z1JFM9EDDy8KY78RHdb2veXFNrB/YMXtaYqLzz1ynwXj9NqdbNkEmMyCterEQTJadfEEteM2a7W142SOcyE/XpRrR+sTPl59GDDjZeejRhlJLvKFtgF/n7g7HsiX9CSZi1K0eZ1V+0fO/VJsW1mtfhTXN5SA1EBIRsgnVJa4+zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1t8GcS-0002D7-FX; Tue, 05 Nov 2024 11:17:04 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: "robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, Sascha Hauer" <s.hauer@pengutronix.de>
Cc: kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: add interconnect for lcdif-hdmi
Date: Tue,  5 Nov 2024 11:16:44 +0100
Message-Id: <20241105101645.231608-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add the missing interconnect for the lcdif-hdmi.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index f3531cfb0d79..09b0b63a7b88 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -2023,6 +2023,10 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "pai", "pvi", "trng",
 						     "hdmi-tx", "hdmi-tx-phy",
 						     "hdcp", "hrv";
+				interconnects = <&noc IMX8MP_ICM_LCDIF_HDMI &noc IMX8MP_ICN_HDMI>,
+						<&noc IMX8MP_ICM_HRV &noc IMX8MP_ICN_HDMI>,
+						<&noc IMX8MP_ICM_HDCP &noc IMX8MP_ICN_HDMI>;
+				interconnect-names = "lcdif-hdmi", "hrv", "hdcp";
 				#power-domain-cells = <1>;
 			};
 
-- 
2.39.5


