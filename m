Return-Path: <devicetree+bounces-245132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 908DACAC847
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 09:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D80C300E820
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 08:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BD12BE657;
	Mon,  8 Dec 2025 08:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="dgVurLbj"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05272D6E6C;
	Mon,  8 Dec 2025 08:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765183055; cv=none; b=Jy3vYdacuMhuSDdKJjlJ6lWZAWYKPyhRoBJXUOGIxfGzSqveR9Z+IhD/21rkFz7NRB9NgFzaMmBp5BoUsE9rUi/yswDLq6CcV4gPAatZMg5rC1Yg7o9kd2OTbSoaD241c82JS2Za5bOMSvfsdMLyB41MKxCZlE71IuaQ0i0CJDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765183055; c=relaxed/simple;
	bh=gcs+i1c9iJ9vBol4OAC5dihzeWSQQqGNoN4SU8Fubqs=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hZtYw4VL3RXshM77wvFkXkNkk/ulnCETYlQrxKlvImfYknX/aCtVcm1XQ0QPgTYP4NL9NcEv+Qgv7p6h57SojDf01JQqRqIJmezCDiXysAG0Mv09ZyZYg8gWOfTBEO5ZRAsqwHPzrFgAvhPNhHGG3dch5PJhpQ2sW1fXnIkPcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=dgVurLbj; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1765183054; x=1796719054;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gcs+i1c9iJ9vBol4OAC5dihzeWSQQqGNoN4SU8Fubqs=;
  b=dgVurLbjHVE3f0XHzyUSQsdYxfHm3iK3w2fkZg2xXTlOt841h66k7V+F
   +fjycpBawARc5qBlZLBloRbNwpA3SLpjIpQmUxP8z6miF4vHunXcSm207
   XDqzuHWHrOZ5oBSHdOOR16en28vzbnYks9IfkM5+WTFyCO0aB+H46UPKy
   gAAeXVBaw49q6LVgqHOS2PEtI36PWW2+As/PjPhvoISxpwMDtn/q06x5L
   QRDgUJ+PgmY90nwPJNdRoS1h6BC5wj7eU5BrOxhtwwP06jgDsaz+2UMCS
   AABOI5K+NWCkP4DPFNNXYhU415G386AEYsXXgQtriIwXOxLUnyfFCe9/H
   A==;
X-CSE-ConnectionGUID: a05ABXuWRCakQDBK+rkcGA==
X-CSE-MsgGUID: Tt0ru/ccRySn0uQ2PsLUPQ==
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; 
   d="scan'208";a="281574456"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 08 Dec 2025 01:37:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 8 Dec 2025 01:37:04 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 8 Dec 2025 01:37:02 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v5 0/2] ARM: add support for pcb8385
Date: Mon, 8 Dec 2025 09:35:43 +0100
Message-ID: <20251208083545.3642168-1-horatiu.vultur@microchip.com>
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

v4->v5:
- change the status for aes node to be "reserved"

v3->v4:
- override i2c0 using labels instead of having it under flx0
- override usart3 using labels instead of having it under flx3

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
 .../boot/dts/microchip/lan966x-pcb8385.dts    | 131 ++++++++++++++++++
 3 files changed, 137 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

-- 
2.34.1


