Return-Path: <devicetree+bounces-23709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A3480C1A2
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:04:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15FA0280D57
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDE81F95D;
	Mon, 11 Dec 2023 07:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ykEPcfdC"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11973B4;
	Sun, 10 Dec 2023 23:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1702278288; x=1733814288;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=eycrN+2SMQbQvqjnQ9FUFJl13AO8/O4TTKQpb5ZVjfg=;
  b=ykEPcfdCEP9YN0gqv90tqBm7ITmkevbjsNk0BPufOjfcRi66XljDZ4eH
   shKAxkwvNhtLVzgOfqIMW6yxOQgAIFmj3vpPFbVPtFZ94RcFL7dfk+8nA
   M1og7xqik46eI7G5LGrZkv0T1LTFysUJe8tN3q1MmW7lgioUVgXSWjmyb
   YyWEdt75Ig8EKzOptjnFiJnoErfpUmH7Btd+MLJM+ilVxxZRmF+QYjTS5
   QBS+9lrGMMkNj6t83N0kWIMamC3WnQtGvtF2q0lBM9tiyvYwxnnyCNuqO
   kLJEjkcyQUuzOE/DdHSrtOKV1bXyGgBymNAH0pDB8IwWli01gxtwbV4g6
   A==;
X-CSE-ConnectionGUID: ETLlBqw4QxiQeqDLsFgGxg==
X-CSE-MsgGUID: aMSB84vDQVKtY0ROW3NjzA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="scan'208";a="13045706"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Dec 2023 00:04:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 00:04:12 -0700
Received: from virtualbox.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 00:04:10 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <cristian.birsan@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH] ARM: dts: microchip: sama5d27_som1_ek: Remove mmc-ddr-3_3v property from sdmmc0 node
Date: Mon, 11 Dec 2023 09:03:45 +0200
Message-ID: <20231211070345.2792-1-mihai.sain@microchip.com>
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
 arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
index d0a6dbd377df..f3ffb8f01d8a 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
@@ -54,7 +54,6 @@ usb2: ehci@500000 {
 
 		sdmmc0: sdio-host@a0000000 {
 			bus-width = <8>;
-			mmc-ddr-3_3v;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_sdmmc0_default>;
 			status = "okay";
-- 
2.43.0


