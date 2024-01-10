Return-Path: <devicetree+bounces-30863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 779138294D7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 09:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2596A28809F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 08:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B36CF3C461;
	Wed, 10 Jan 2024 08:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="DnigFPi/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09008364B4
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704874263; x=1736410263;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ow/dMA7ScXEsHO2RaumZLmKsq6oEwW34f/6mRJcbth4=;
  b=DnigFPi//uA/WzBidto5BozV0BElqUiPNdNDdkEpB+xbl2IApP1ZLHpW
   R+KSB1toMiEq1TNLuTEUc7htuVm8i9C/Vegm2OWBzF21zE8Bjag0/T7XD
   4Z5tCvOvSe9jfbXGSaEwdJU8p5IpkuvxgapX59zDIK+jDceQuMbm6k7+a
   tISXa6f/pWoc8tpB1L5aWGnIq1NYmWkP5HBMWgbm0SCJ1CnWAews4mIQ6
   kU18BdftudUB+xt4XTGHIALOR88gB2Rl7ZoMgYdIzlNTxeI1vnXVoFDMM
   UALMxJvUbYMwUqw0HJGaN1iekixLh92nXr6hHZ1jDXIz4OhcLUvDLlUta
   g==;
X-IronPort-AV: E=Sophos;i="6.04,184,1695679200"; 
   d="scan'208";a="34821264"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Jan 2024 09:11:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 76A64280075;
	Wed, 10 Jan 2024 09:11:00 +0100 (CET)
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: imx6ul: Add missing #thermal-sensor-cells to tempmon
Date: Wed, 10 Jan 2024 09:10:59 +0100
Message-Id: <20240110081059.414156-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes the dtbs_check warning:
  tempmon: '#thermal-sensor-cells' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Starting with commit 98bcee251e608 ("dt-bindings: imx-thermal: Add
#thermal-sensor-cells property") this property became mandatory.

 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
index a27a7554c2e7f..c7ae708183759 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
@@ -638,6 +638,7 @@ tempmon: tempmon {
 					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
 					nvmem-cell-names = "calib", "temp_grade";
 					clocks = <&clks IMX6UL_CLK_PLL3_USB_OTG>;
+					#thermal-sensor-cells = <0>;
 				};
 			};
 
-- 
2.34.1


