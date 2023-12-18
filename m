Return-Path: <devicetree+bounces-26582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2A1816F9A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED0461F26C22
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E29A3D574;
	Mon, 18 Dec 2023 12:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="fJ+9d87K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B603D559
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904114; x=1734440114;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=zZLxebhKDoF7Mtmyr1WyKgqpg+hKbNNrYSM+oVkQs5M=;
  b=fJ+9d87KrVqktUZNKJIfpDcROKYPVPKtP/d8oHcSuGiihNT37iv/mZdq
   vWET46QeMWBaf2tDbPuYYtpwhQnVU29SEDQKxwMoVTqdX0kkbYJrKgOmf
   Z4/vKniAXkgXtyCcc/XlZXfOTf7iz3RfB5KyEwtrC4fesc3gVfSQtZVWl
   TOUzm6QS+H/KoqL/7KhtOFnLe/HeesNpkYg7kMVqaPsH4V0xvh2eMcPDl
   Q/qK2JIGeDM4XzHfFidsDcWbgOLQ5Qq0jfLxMhvazAGmMHjq8bQnQoEbr
   VmPdb73mN2ivYvzf4p1HPKu7qmuBGCS5fSJy1nfXP1xyhqLvbuD57mdIS
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562706"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:02 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 41CE0280099;
	Mon, 18 Dec 2023 13:55:02 +0100 (CET)
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
Subject: [PATCH 14/23] ARM: dts: imx7-tqma7: Fix iomuxc node names
Date: Mon, 18 Dec 2023 13:54:50 +0100
Message-Id: <20231218125459.2769733-15-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The node name must end with 'grp'

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index c67f73b0ed5e..53c84393200c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -214,7 +214,7 @@ pinctrl_usdhc3: usdhc3grp {
 			<MX7D_PAD_SD3_STROBE__SD3_STROBE	0x19>;
 	};
 
-	pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
+	pinctrl_usdhc3_100mhz: usdhc3_100mhzgrp {
 		fsl,pins =
 			<MX7D_PAD_SD3_CMD__SD3_CMD               0x5a>,
 			<MX7D_PAD_SD3_CLK__SD3_CLK               0x51>,
@@ -229,7 +229,7 @@ pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
 			<MX7D_PAD_SD3_STROBE__SD3_STROBE         0x1a>;
 	};
 
-	pinctrl_usdhc3_200mhz: usdhc3grp_200mhz {
+	pinctrl_usdhc3_200mhz: usdhc3_200mhzgrp {
 		fsl,pins =
 			<MX7D_PAD_SD3_CMD__SD3_CMD               0x5b>,
 			<MX7D_PAD_SD3_CLK__SD3_CLK               0x51>,
-- 
2.34.1


