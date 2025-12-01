Return-Path: <devicetree+bounces-243265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8077EC96220
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 825A74E0637
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F7932E54DE;
	Mon,  1 Dec 2025 08:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="e0lXtTlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B332D1907;
	Mon,  1 Dec 2025 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577773; cv=none; b=YdTNxpDdd4cng5P8x67+6lHv6U/S6PAa6djIU3BL4Dhre/TFAKeNEcPzdf9rIflEb0xIuySvnaVREqetsbAKglbUYfQVx4BzJc/WJKqQ39yVFQjBa3rWKeIOS/We+uRJyEszmO3MQxH15gcAOX/2hCkA+/5c44V72bE6R5hHnUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577773; c=relaxed/simple;
	bh=nnOflrQf9c+yPiN7JaFu2F8hdPCaEh5dnJ4Ub1sQvQE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cQAcZ84hqikEiBT3MQgRO8QQTI8y2Z7cbS7qr8G9wPdaCiWY5IBqxhBSwBBOgRy63f8i/r866wkty3oBEJ2tsHf4UQRRzv9p++vc9gwQN3C7APLn+r2qT7F9U9rTPfPj8zSCAh/RqWFppDSWJJvJXJQ7ltiU/kTOLvMn52p6Ezo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=e0lXtTlQ; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764577771; x=1796113771;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nnOflrQf9c+yPiN7JaFu2F8hdPCaEh5dnJ4Ub1sQvQE=;
  b=e0lXtTlQ0LmdSddVvfBRHw1LMP1x8EBsE5fmaLqHDYm3wZVmJ7J32i+8
   30Oqqig4rTZ5jgooOEqqOozDz3TU17F8geuveBf1WBWYGOFowdDPxkraY
   CR785iqYZkVrkjke94gCaRFHf7CRHF3gEjhRIx07g3bmrM5RCoOUb4rr9
   6YcmRm+s+3Xx7obgbsHr4UcgPZCT+jNTjl2LQbk7UlHvTDyextYZQso4X
   RaIRnnEHmPlphfjI3z6UOJP0/gJxpf1MXa146SsFIU49RD7xMkrQv5K29
   7Hw5ztcuFDYzqmfv8RtkC+hr43sGD/y7SsOCyzZZbwHgq4MPFQc/Z4amn
   A==;
X-CSE-ConnectionGUID: Jt19qymKQxqm5dx5AqyGaw==
X-CSE-MsgGUID: SVtlS4eqTZCguy3xjYIe+g==
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; 
   d="scan'208";a="56483965"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 01 Dec 2025 01:29:24 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 1 Dec 2025 01:29:19 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 1 Dec 2025 01:29:16 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v4 0/2] ARM: add support for pcb8385
Date: Mon, 1 Dec 2025 09:26:27 +0100
Message-ID: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
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


