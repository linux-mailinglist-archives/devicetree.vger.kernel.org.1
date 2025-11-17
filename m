Return-Path: <devicetree+bounces-239384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBB8C643F2
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E6E33A3B84
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4DE832E156;
	Mon, 17 Nov 2025 13:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="2hymmvvM"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78D13246F4;
	Mon, 17 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384515; cv=none; b=hgOU4sZcmEKZ4oCSakS1epeFbaestr8JXg4FTQboXFlU268aAWHlb5pJ2okzol+18xpy7vctkXurHJQpi3y3b3IyBsVih1Lw/oFYTsRUHOPmNICIbYmlm+KiNhMho3cLawLbT4HGgHn8P7A47SyVAJP7yD8WgBMraOVr3YQijOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384515; c=relaxed/simple;
	bh=UXOU+yL+OrBxKdkfdUf6SCfqvZjolEPurouI3Fu1XLE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=j4zXQ8SAJIor/XFR3KtrGBuDRDsw1tc2bhzHHALJ4b/Qv+fGxBbQa6dJUXjACO0MjC5GYkchn6+l9hBTuF06uauxQWFRGEGLe/HeLpqndLb9koHN3wMs5mxplTERVOX6YY9ajP+0NTm9grLxUTI+wn5onCWce680a5M6Q21xyto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=2hymmvvM; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763384513; x=1794920513;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=UXOU+yL+OrBxKdkfdUf6SCfqvZjolEPurouI3Fu1XLE=;
  b=2hymmvvMOSnKisJAGQ+WeZ0vemBrisqfB25JOvr2d46PTLznZ5qNVONQ
   W9Bd7HJRDIANmuk1U64Vtvi6Sg6BM7jXyAcxPdisDwrTXs4+7ouWlqB1Z
   YthmTtR0IcHiAitu/iwaL+oQ4TfL7/eRUjnfKloVShWdOazCvmT3f20jP
   7oltEJpszmB9bwVZgYEmYZqzyIUA2NYejQ70hycPI/eT7cCdgfmfhqCWS
   vCt4BTIQh6VzuJm6CPfrYPTJ57lbhCO0ZsT7UzMTZ2qhxkkvhfZCoEsvD
   TLV0eDcvBjvHTwM03til5D6Zra/5Uom0A+VqEbsMhHXqaqtTeJZQ5MsyZ
   g==;
X-CSE-ConnectionGUID: a4mIhi7kS1KMxkhMPJdVjQ==
X-CSE-MsgGUID: c8bzCIYjSzW5jvd767lAPg==
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; 
   d="scan'208";a="49728587"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Nov 2025 06:01:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 17 Nov 2025 06:01:43 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 17 Nov 2025 06:01:41 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<romain.sioen@microchip.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 0/2] ARM: add support for pcb8385
Date: Mon, 17 Nov 2025 13:57:07 +0100
Message-ID: <20251117125709.102013-1-horatiu.vultur@microchip.com>
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

Horatiu Vultur (2):
  dt-bindings: arm: at91: add lan966 pcb8385 board
  ARM: dts: Add support for pcb8385

 .../devicetree/bindings/arm/atmel-at91.yaml   |   6 +-
 arch/arm/boot/dts/microchip/Makefile          |   3 +-
 .../boot/dts/microchip/lan966x-pcb8385.dts    | 137 ++++++++++++++++++
 3 files changed, 143 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts

-- 
2.34.1


