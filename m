Return-Path: <devicetree+bounces-14810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A337E6B0D
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E98AB20CAB
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A2D182A7;
	Thu,  9 Nov 2023 13:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="wkO+TP4P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB051DDC1
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:12:19 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EC811FEB;
	Thu,  9 Nov 2023 05:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1699535539; x=1731071539;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=FRHtlYt1gPiLb/xfI70NyDEluyL/eoHMZX2jKm06y+U=;
  b=wkO+TP4P16qcR+KjvXu475Z196BccZthHkao9WE+4NWtinM0f/OQBF93
   SaM0v79bt6n1XGuXdHAqjw5vKQXgQSntpOy4hIg9ws1sLMGN3VopmoOmO
   TrMWHn3EvvgVGy2RkqoAt6I00eHEnljyeDMdM85/zxmRJIJH6bh2Uf6oL
   IdGe/SL6UNYFRXLG8njU1Xj0x/uoJMzadQhqKCh9rz0/1molcLKU0P6GD
   nXzxngB6kk1B6ItBsK2yVNn38yoXxI8140tEZugVsdUFYFwoBeUaopNac
   mT3URadIEcFDebp82sbHoKKv++iIMRkg8/9M75cLVw79gyNMClKH1bJqN
   Q==;
X-CSE-ConnectionGUID: b8HNUWnxTBWR9Gotu1JdxA==
X-CSE-MsgGUID: 6oxv50lDQLicAwB3enIh1A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="11697744"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Nov 2023 06:12:18 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Nov 2023 06:12:06 -0700
Received: from virtualbox.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Thu, 9 Nov 2023 06:12:03 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <cristian.birsan@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 0/2] Add IRQ support for ethernet PHY on SAM9X60 boards
Date: Thu, 9 Nov 2023 15:11:47 +0200
Message-ID: <20231109131149.46397-1-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add IRQ support for ethernet PHY on SAM9X60-Curiosity board.
Add IRQ support for ethernet PHY on SAM9X60-EK board.

Mihai Sain (2):
  ARM: dts: at91: sam9x60_curiosity: Add IRQ support for ethernet PHY
  ARM: dts: at91: sam9x60ek: Add IRQ support for ethernet PHY

 arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts | 3 +++
 arch/arm/boot/dts/microchip/at91-sam9x60ek.dts         | 3 +++
 2 files changed, 6 insertions(+)

-- 
2.42.0


