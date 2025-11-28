Return-Path: <devicetree+bounces-242925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 46780C915E2
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2057C4E1853
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252172FD7C8;
	Fri, 28 Nov 2025 09:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="sF3aWXXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B222A24DCF6;
	Fri, 28 Nov 2025 09:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764321083; cv=none; b=FkLxqRuTi+mlzEY+QXAwFefPoCcRsq/IOuVHbr9Pt1Jp3miFlS+S7fYw4/aJXNwKQ4h0qc+PrtHcJivtEo8hRo5jkqVhgJ1UfrQilb8O5COpMs+kDnTTO04YzdwmmU79QiGJjYpPGuP4MqG/8HZbY7aKPIUDcJ4MsFVolI3CN0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764321083; c=relaxed/simple;
	bh=tQBgCb7ikzOmnvItGqntAV1a3R1NgbI6Mo7aHY68sjE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Z0zfvex7zOh0iyRD+y8vtjNgTBZQw6cJ2y6nlr871F9gzduWtU0Rzcry6ef8doCOpXY0ePNhLT/pqTE5iiOL5+XAZCl9VK7+DQrtdIm6ibzH/N7bxKIT7PTmJlH2Lz6HiYYtynUp981tczr73Tdg+OYsPTxVCxE2UdD6fPhecEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=sF3aWXXZ; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AS98QwE4394704, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1764320906; bh=WwL08DBtUA04m9uzunJbXUc8Llp3YbCg4yfS44lD4Ls=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=sF3aWXXZtPN4zIvSWVtMamRcVGMf7a0aZyrLEpq0jXiM2DdwG67OFHd14o+cQ6eu1
	 cCBoDjYr50AjqwNH0/DCcZN0pi3rWiDuvkM8LaIdV6tx26Uh0ZkBBvpRhxVbUp6guc
	 P9INQD/k9LTvO+WeDV383iUNEpzQStGrZb5PRci2FUFFmGd30dhz0PgRyIcL2gynfX
	 1aMAjxF/ezQZcXpytoVJTYNdLebnH0RfECX9JZdf7rn9sBeYZbokmVn/ZNXThVBxCJ
	 AUJnJOiDcBikAtc/4NbADH3+iMqClRdDbOHT97jplk2pqFoVf3nbsf1oQYeqCHPhB8
	 W/g2VBD0TuvhQ==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AS98QwE4394704
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Nov 2025 17:08:26 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 28 Nov 2025 17:08:26 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 28 Nov 2025 17:08:26 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Fri, 28 Nov 2025 17:08:25 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <afaerber@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <lee@kernel.org>, <james.tai@realtek.com>
CC: <linux-arm-kernel@lists.infradead.org>,
        <linux-realtek-soc@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <cy.huang@realtek.com>,
        <stanley_chang@realtek.com>, <eleanor.lin@realtek.com>
Subject: [PATCH v3 0/2 RESEND] arm64: dts: Add support for Kent SoC family
Date: Fri, 28 Nov 2025 17:08:23 +0800
Message-ID: <20251128090825.27365-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Hello,

This patch series adds initial Device Tree support for Realtek's Kent SoC
family, including the RTD1501S, RTD1861B, and RTD1920S variants with their
respective evaluation boards.

The series includes:

1. Adds compatible strings for the Kent family.
2. Add Device Tree files for the Kent SoC, TD1501S Phantom EVB (8GB),
RTD1861B Krypton EVB (8GB), and RTD1920S Smallville EVB (4GB).

The patches have been validated with 'make dtbs_check' and
'dt_binding_check' to ensure compliance with DT schema and successful
compilation.

Cheers,
Yu-Chun

Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
---
Changes in v3:

- Drop the dt-bindings patch (realtek,misc.yaml)
- Drop 'iso: syscon@7000' node and and re-parent the UART directly to rbus
- Change all dts/dtsi to license: GPL-2.0
- Drop all custom bootargs

V2: https://lore.kernel.org/lkml/20251113123009.26568-1-eleanor.lin@realtek.com/

Changes in v2:

[PATCH v2 1/3]
- Fix YAML syntax: remove duplicate blank lines
- Validated with 'make dt_binding_check'

[PATCH v2 2/3]
- Rename: realtek,iso-system.yaml -> realtek,misc.yaml
- Improve description and example: show child node (UART)

[PATCH v2 3/3]
- Reorder Makefile targets to alphabetical order.
- Rename node: use generic names ('arch_timer' -> 'timer', 'reg-bus' -> 'bus')
- Fix node naming and hex format (remove leading zeros)
- Inline overlay nodes directly into .dtsi
- Reorder properties: ranges after reg
- Remove unnecessary status and custom bootargs

V1: https://lore.kernel.org/lkml/20251105104452.6336-1-eleanor.lin@realtek.com/

Yu-Chun Lin (2):
  dt-bindings: arm: realtek: Add Kent Soc family compatibles
  arm64: dts: realtek: Add Kent SoC and EVB device trees

 .../devicetree/bindings/arm/realtek.yaml      |  42 +++--
 arch/arm64/boot/dts/realtek/Makefile          |   7 +-
 arch/arm64/boot/dts/realtek/kent.dtsi         | 166 ++++++++++++++++++
 arch/arm64/boot/dts/realtek/rtd1501.dtsi      |  12 ++
 .../boot/dts/realtek/rtd1501s-phantom-8gb.dts |  25 +++
 .../boot/dts/realtek/rtd1501s-phantom.dtsi    | 118 +++++++++++++
 arch/arm64/boot/dts/realtek/rtd1861.dtsi      |  12 ++
 .../boot/dts/realtek/rtd1861b-krypton-8gb.dts |  25 +++
 .../boot/dts/realtek/rtd1861b-krypton.dtsi    |  72 ++++++++
 arch/arm64/boot/dts/realtek/rtd1920.dtsi      |  12 ++
 .../dts/realtek/rtd1920s-smallville-4gb.dts   |  23 +++
 .../boot/dts/realtek/rtd1920s-smallville.dtsi | 128 ++++++++++++++
 12 files changed, 626 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/boot/dts/realtek/kent.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501s-phantom-8gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1501s-phantom.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861b-krypton-8gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1861b-krypton.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920s-smallville-4gb.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1920s-smallville.dtsi

-- 
2.34.1


