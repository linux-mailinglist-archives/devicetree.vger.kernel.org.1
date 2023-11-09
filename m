Return-Path: <devicetree+bounces-14811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB207E6B0E
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DE04B20E1A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6D01944C;
	Thu,  9 Nov 2023 13:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="iT/z1FAe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157E01DDC3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:12:20 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7281930C1;
	Thu,  9 Nov 2023 05:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1699535539; x=1731071539;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EHI8k/5oqb4BHAwxDhenRXq4iJ/ty304Tj8Ha46zV/Q=;
  b=iT/z1FAe1jywWMmhDYcekuPandu3KcTqr9Y9RF9cmgmGAEekFJtKmGvD
   a/80iOBFL0P8+wEW328myghUWo/ua73cCCyZQm84hGvB0YSLJKm3FxB86
   nnHQZCTFMLTyc45Zk0LusV9whdIlVE03SXq9aGPWfaqasb0fdq3gCUmKw
   sO9kEzPBss23R958mjqd565Cp1x5fmF03iYrAVgy+NEnSrqpoXEXNB/5f
   Qu1gx0K8Tgazcb3XTyJQwgV+2EMXnUUSucMtExRFoX3dyxAB/bcG5HTE+
   VmCcEJu6tI4H/9gt1FLwMhBET+ycV6X6R53EuLqOuwHcGkbRiNBpN95m7
   w==;
X-CSE-ConnectionGUID: b8HNUWnxTBWR9Gotu1JdxA==
X-CSE-MsgGUID: AQqo8MgfRIeclZqLIzPIWQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="11697747"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Nov 2023 06:12:18 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Nov 2023 06:12:11 -0700
Received: from virtualbox.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Thu, 9 Nov 2023 06:12:09 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <cristian.birsan@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 2/2] ARM: dts: at91: sam9x60ek: Add IRQ support for ethernet PHY
Date: Thu, 9 Nov 2023 15:11:49 +0200
Message-ID: <20231109131149.46397-3-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231109131149.46397-1-mihai.sain@microchip.com>
References: <20231109131149.46397-1-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add interrupt support for ethernet phy subnode.
Add PB8 definition to macb0 pinctrl.

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/at91-sam9x60ek.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts b/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
index 5cd593028aff..f3cbb675cea4 100644
--- a/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
@@ -292,6 +292,8 @@ &macb0 {
 
 	ethernet-phy@0 {
 		reg = <0x0>;
+		interrupt-parent = <&pioB>;
+		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
@@ -465,6 +467,7 @@ AT91_PIOB 4 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB4 periph A */
 				 AT91_PIOB 5 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB5 periph A */
 				 AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB6 periph A */
 				 AT91_PIOB 7 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB7 periph A */
+				 AT91_PIOB 8 AT91_PERIPH_GPIO AT91_PINCTRL_NONE	/* PB8 IRQ GPIO */
 				 AT91_PIOB 9 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB9 periph A */
 				 AT91_PIOB 10 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PB10 periph A */
 		};
-- 
2.42.0


