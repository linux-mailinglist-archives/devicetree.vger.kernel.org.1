Return-Path: <devicetree+bounces-21197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F4F802C04
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DFBB1C209A8
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 07:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36FBB8F49;
	Mon,  4 Dec 2023 07:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="DFuLY5tj"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB906109;
	Sun,  3 Dec 2023 23:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1701674768; x=1733210768;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OnA7/tb/qn6bAGUzgTDAT2ga2PQa5Pg9LbgHUXsCOok=;
  b=DFuLY5tjoDQ0JuEdIuCFTK2/OZeBFNcT7A6DCoivle5tp2l3Ao0lHisS
   F7d6N/uKwrhSxeC9tvmGZafCDCh5/pTsKh8+FrOlQ3X6mn4FC8AY7k8bs
   0a2gYUfCEi2UV2DRG6ifi8lOvBHBRTfjfIjCOntauDq1saZO5jcPIQg+B
   IDWrYgJ2PIHuauudPnyNZJmlCyRATNbnr3oA2Yg02REp/jtRTIi5hx2xo
   6r9iqn+N8G4uminpQnmHijA6eCtlY2WOgoC0v56QXfQ+Pv9CABzPjPqjC
   myQzzpl7/XASmPyOEWyMnD1dMMNdCCKwCaz9z7ATjFNVKnTcUoFN1BWZN
   A==;
X-CSE-ConnectionGUID: 0Vk3FHtMTeWoDESsJ/0r0A==
X-CSE-MsgGUID: 338xrwkrRcqrIiydXkIT0A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="scan'208";a="13528937"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 04 Dec 2023 00:26:08 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 00:25:50 -0700
Received: from virtualbox.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 00:25:48 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <cristian.birsan@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH] ARM: dts: microchip: sama5d27_wlsom1_ek: Remove mmc-ddr-3_3v property from sdmmc0 node
Date: Mon, 4 Dec 2023 09:25:37 +0200
Message-ID: <20231204072537.2991-1-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

On board the sdmmc0 interface is wired to a SD Card socket.
According with mmc-controller bindings, the mmc-ddr-3_3v property
is used for eMMC devices to enable high-speed DDR mode (3.3V I/O).
Remove the mmc-ddr-3_3v property from sdmmc0 node.

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
index e055b9e2fe34..15239834d886 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts
@@ -197,7 +197,6 @@ qspi1_flash: flash@0 {
 
 &sdmmc0 {
 	bus-width = <4>;
-	mmc-ddr-3_3v;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdmmc0_default>;
 	status = "okay";
-- 
2.43.0


