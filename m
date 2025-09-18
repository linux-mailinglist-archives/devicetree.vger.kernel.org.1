Return-Path: <devicetree+bounces-207587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 207FCB2FF87
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07CABB6210E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 16:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE58288C12;
	Thu, 21 Aug 2025 16:01:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5C127AC37
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 16:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755792113; cv=none; b=Ch+jAM+rya6gRESEtAUiMhPjmr/+ZH7Ap2FMc3Cg07mH1xV0wxsjZEX4LQz1t/Jn0WEvD8KuvsHp8O+WNEiwhtRjoDaDrMVLOjStJv6XjzGTg/xbaWAZhiLRq/Z201d7X0GxAMsFmdgm9+AyO06b9/ToU/0/W9tdLsBzwUkk0uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755792113; c=relaxed/simple;
	bh=PEi8jUH7bpdq5/xLOUrl4lY2gtTLVOSF4SM7Vr3CbMQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BdeABRQowT+hyoRh3FAwwWUqJ3Cl8+i0GdHZ+zFGzlZy5EOm2S3VfVhUzDcQHTkNv7A0oL6qD7hktxzHdqaN76FsvE5DU3//brkEUif0LMiPpGaatT8AwmRE0h1h72nTxp49PxP+OZHUDtpopZBdcnsqVgjTs57qmfdUXN8A5/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1up7jR-0000Iw-4B; Thu, 21 Aug 2025 18:01:41 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: imx8mp: add interconnect for lcdif-hdmi
Date: Thu, 21 Aug 2025 18:01:37 +0200
Message-Id: <20250821160137.108735-1-m.felsch@pengutronix.de>
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
v2:
- align the list with the dt-bindings list

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 948b88cf5e9d..ca7ec1bb4be5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -2046,6 +2046,10 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "pai", "pvi", "trng",
 						     "hdmi-tx", "hdmi-tx-phy",
 						     "hdcp", "hrv";
+				interconnects = <&noc IMX8MP_ICM_HRV &noc IMX8MP_ICN_HDMI>,
+						<&noc IMX8MP_ICM_LCDIF_HDMI &noc IMX8MP_ICN_HDMI>,
+						<&noc IMX8MP_ICM_HDCP &noc IMX8MP_ICN_HDMI>;
+				interconnect-names = "hrv", "lcdif-hdmi", "hdcp";
 				#power-domain-cells = <1>;
 			};
 
-- 
2.39.5


