Return-Path: <devicetree+bounces-242320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 58698C892C7
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D24384ED78F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E9A2FC865;
	Wed, 26 Nov 2025 10:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="VM94maQF"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF822FB997;
	Wed, 26 Nov 2025 10:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764151358; cv=none; b=gVkE0us6uCdSFqYGDUDPippbg3pBtJquVIhnpOs7/HXAVES7nRShCT0eHjlaSbOch1ahR76POdT9VR2uV3XfEUZqoqRfWOsUsx132TCMEm3L034qtnE8oHN4gzSbR4lXKAk8zbmutHm8f8/PeIEflvKS/CnXCXtFtoNdnWPqh6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764151358; c=relaxed/simple;
	bh=MB7TFExKovkIe/FTKbZLG4AaR1UT47lwRBCzVCfas1E=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Jy+d6ebwyUJV3U4YVdlwQD8Q0r+aGH7ZBxH6Ub6LBz+pb5ycsXqDqH73PS7HM+RulglPD5d+ONgUhSeT0IplJFXJzPmKkSldLVOHVoKzOvXo2ksgigcJjZ+9qTwJuRyIdu3eXxHNZol5pdBURjSc7K9QNXuMDW1E3ykPGAUuhqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=VM94maQF; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764151357; x=1795687357;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MB7TFExKovkIe/FTKbZLG4AaR1UT47lwRBCzVCfas1E=;
  b=VM94maQFK5PbAKrOXGQkjIaXPegIv4x4o7gdiDzqEPXmlh4k3s4WxkkC
   20eIh5B/dKjt9bR9UXEok6/h9laGl4x4XUQbqu3bbVigOMiM6bGfpY+Dk
   7A9DcFHU0wm7CFHcYkKY08jHUQXes1R6CSc+v1Oeiv0StuXnA69vzeU5D
   0O4k4ehFQ8tHIdwT+Q+nCr/t0epZni3GJUvN1jL3VMT1+uKPcEmElSnLs
   BP3QiRdzcN7xu8a/JiZTADkQyRY/uxZEyTE9ASFb7SgrHo7pR8dXktT2I
   FWOhDDJ2Yx1iYflAPfUT7omh58J+72EPMGDuw5UAbEQDFvIOK5GYkwqYQ
   A==;
X-CSE-ConnectionGUID: jBrz8LRmS7CFC/Xb1gpQxw==
X-CSE-MsgGUID: OARiB2ZPQBK8RBonucGPbA==
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; 
   d="scan'208";a="56286338"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 03:02:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Wed, 26 Nov 2025 03:02:01 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 26 Nov 2025 03:01:58 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<Ryan.Wanner@microchip.com>, <romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v3 0/2] ARM: add support for pcb8385
Date: Wed, 26 Nov 2025 11:01:49 +0100
Message-ID: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add pcb8385 and the documentation for it.
This is a moduler board on which it can add different daughter cards.

v2->v3:
- remove the linux,default-trigger properties

v1->v2:
- sort nodes in alphanumerical order
- move the eeprom nodes under i2c0

Horatiu Vultur (2):
  dt-bindings: arm: at91: add lan966 pcb8385 board
  ARM: dts: Add support for pcb8385

 .../devicetree/bindings/arm/atmel-at91.yaml   |   6 +-
 arch/arm/boot/dts/microchip/Makefile          |   3 +-
 .../boot/dts/microchip/lan966x-pcb8385.dts    | 133 ++++++++++++++++++
 3 files changed, 139 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

-- 
2.34.1


