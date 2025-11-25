Return-Path: <devicetree+bounces-241896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DC776C83F03
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD08F4E719D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB5E2D8DA9;
	Tue, 25 Nov 2025 08:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="cpZXvtVj"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F1E2D7813;
	Tue, 25 Nov 2025 08:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764058649; cv=none; b=K9fTuDui1vDeJuQbkFrPvbOyxJbEizOYSLE98PO0GDj881yGE9brvdvLOH3CsCZlQbJRLReWBlNfYBs1MOy2E+fqjKwDQcAG/iWJybdaTpZgk6w/jkaAnPhbh4IJDFTI2/1I7zNnEned7wPvC8KQzGilFxfFZDlEmP063mmXi/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764058649; c=relaxed/simple;
	bh=6Twb8mgQPk7aj0pXX+bHnIC/oSrtic7qmC+oaQndG4M=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZLUxVctBcmAl0xUEgg8TW5+xOM1qYdHLKEDfP/YL92HREJa/6RFlNrycRRhQfLLE3zPkShqy2IOIydvhxAYhzkUTr2d4LhsaC4jI8w2exxDKvSSbv99fQCKQJgQ+FIXCqJV9cwGGCX78f2h34yh/SDdxhMULjzJtkYIsTEuBTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=cpZXvtVj; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764058647; x=1795594647;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=6Twb8mgQPk7aj0pXX+bHnIC/oSrtic7qmC+oaQndG4M=;
  b=cpZXvtVjbxW6ytb9/3s8L9twORIucjREShudsS0T29Avqu3w329RmlzX
   crk464uEjpKAoASemxxwB7WylNEMFIe4K9+abNORU//3p5uW59n/kj5Ui
   EhIiCpKv7485fat+u0RDDWoTJiU1UCmD16e4qVxrcMPrLdv/tVHZh0y4x
   En8KESsc7CH6RHVKp+pncv8LV2kyJQv/xaLqVKi1oAX7nLxKNHTuYavgt
   EpNTGsWqGECnDrraqBjlCwLYDRzKNtpROaGRcMU+PdPthJ5ZWZTerggUO
   inOydyWA/1ZNavz7qldnYjl4xefVZP2kO8uipMkTI6/8nImg71hEtsL+g
   g==;
X-CSE-ConnectionGUID: tWv0xuV6SpSm15i19A7SVg==
X-CSE-MsgGUID: 0oDT14BcQbmdfSmipQbBLA==
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; 
   d="scan'208";a="216971709"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Nov 2025 01:17:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 25 Nov 2025 01:16:56 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 25 Nov 2025 01:16:54 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v2 0/2] ARM: add support for pcb8385
Date: Tue, 25 Nov 2025 09:15:49 +0100
Message-ID: <20251125081551.1390820-1-horatiu.vultur@microchip.com>
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

v1->v2:
- sort nodes in alphanumerical order
- move the eeprom nodes under i2c0

Horatiu Vultur (2):
  dt-bindings: arm: at91: add lan966 pcb8385 board
  ARM: dts: Add support for pcb8385

 .../devicetree/bindings/arm/atmel-at91.yaml   |   6 +-
 arch/arm/boot/dts/microchip/Makefile          |   3 +-
 .../boot/dts/microchip/lan966x-pcb8385.dts    | 135 ++++++++++++++++++
 3 files changed, 141 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

-- 
2.34.1


