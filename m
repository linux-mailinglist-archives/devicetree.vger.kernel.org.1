Return-Path: <devicetree+bounces-22771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 87950808B1A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:54:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E734B20ACE
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CC241C88;
	Thu,  7 Dec 2023 14:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="RiCon1ze"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8008BC3
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701960846; x=1733496846;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wTQrTKs9wXY1+dXqWaXNtaGtOAsoE2h+0UMf7GJODcY=;
  b=RiCon1zeg/2ZBPYPWnrQHaYDVAs7eTmW0xx1xq5xd+IsXaoTs5uUidj8
   HWO4oay0Yc7XJJ57xLTfoLCHbsiWMprhHgqAt3h7jYPNEvAgsj7RNJWVV
   eFdedknyStZNIeOxpo1ghOks1j7UYpFwrWeMYeOIZ7ReBmiDUGXLtzk5g
   TJS4dGDx4OOPgPAH1b/HaQrUbFGRfERmtzGw0HHlAC5uBnKzf4zL5gMP0
   WP+9j9yp+lyieQzLW9kOL8xIkiHLSarzhjz2WwfH/2orJzNPEyo+GwC1N
   2MYC1gUOaid5xiiyyUl7B+dOQpXZ3h2WMtOOHbg/nNaOcJ7WmHHzeKV0P
   A==;
X-IronPort-AV: E=Sophos;i="6.04,256,1695679200"; 
   d="scan'208";a="34386677"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2023 15:54:04 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8502F280075;
	Thu,  7 Dec 2023 15:54:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8m*-tqma8m*: Add chassis-type
Date: Thu,  7 Dec 2023 15:54:01 +0100
Message-Id: <20231207145401.2102898-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device tree specification 0.4 defines an optional, but recommended
'chassis-type' property. Add it to TQMa8M* based board files.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts   | 1 +
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts   | 1 +
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 1 +
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts     | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index 8c6dbcd4c83c..8aa268d4f571 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -13,6 +13,7 @@
 / {
 	model = "TQ-Systems GmbH i.MX8MM TQMa8MxML on MBa8Mx";
 	compatible = "tq,imx8mm-tqma8mqml-mba8mx", "tq,imx8mm-tqma8mqml", "fsl,imx8mm";
+	chassis-type = "embedded";
 
 	aliases {
 		eeprom0 = &eeprom3;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
index 061b8eea89f8..7180f3342298 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
@@ -11,6 +11,7 @@
 / {
 	model = "TQ-Systems GmbH i.MX8MN TQMa8MxNL on MBa8Mx";
 	compatible = "tq,imx8mn-tqma8mqnl-mba8mx", "tq,imx8mn-tqma8mqnl", "fsl,imx8mn";
+	chassis-type = "embedded";
 
 	aliases {
 		eeprom0 = &eeprom3;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 99fcf0ff639d..8234c92b55df 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -15,6 +15,7 @@
 / {
 	model = "TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL";
 	compatible = "tq,imx8mp-tqma8mpql-mba8mpxl", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
+	chassis-type = "embedded";
 
 	chosen {
 		stdout-path = &uart4;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index aa0dfdcec7a4..87fde6510734 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -11,6 +11,7 @@
 / {
 	model = "TQ-Systems GmbH i.MX8MQ TQMa8MQ on MBa8Mx";
 	compatible = "tq,imx8mq-tqma8mq-mba8mx", "tq,imx8mq-tqma8mq", "fsl,imx8mq";
+	chassis-type = "embedded";
 
 	aliases {
 		eeprom0 = &eeprom3;
-- 
2.34.1


