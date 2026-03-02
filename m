Return-Path: <devicetree+bounces-270054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFLpE0GgpWmuCAAAu9opvQ
	(envelope-from <devicetree+bounces-270054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:35:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B23301DAF63
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D26D3122C8E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60D53FB07B;
	Mon,  2 Mar 2026 14:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="l5/UnYnV"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBDF3E5581;
	Mon,  2 Mar 2026 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461278; cv=none; b=HDxw41vhahkOI0R/eVWOcuAzyhrbAxKV3MAXQy4rRrQUe8MioXuCvHHyppsJFo6RhJ3raBE+v9Ux4euY//AckbcrSJtSpIeYgWfh5FkxCPWeKYeByfnsx+2k9vqV5H2mEQG9/hDZ3FLZ9LL7aPpK/pRjjhQkdKKWOAXKcsB5Tkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461278; c=relaxed/simple;
	bh=QntaU4iicWXzgHMvjcDEMFDc8eb5pgaNlUYW7f+yomU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=dybD5lFensUL9eoHvrj7dJtwsIqSxOMPAdexwwm4dSOngjO3r6YXNFRmHTy3Q7eSqhLrh7gUVyD9RIo1tHuv08iIJvkDVwXigJPt5Gl3TtN5qLOO3TOMXyb6+pZLKh5fYQePnDy3wzN3H0wVLZeHrlTXpWRg0wK3aypZ8qEGb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=l5/UnYnV; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1772461277; x=1803997277;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=QntaU4iicWXzgHMvjcDEMFDc8eb5pgaNlUYW7f+yomU=;
  b=l5/UnYnViN+ToYlkN5qluj0+TfiVdxeFLVubmy4A09iu/hnRgzDRKNR2
   kvXgWH9UmwbO5HDGgN6RnSZN1WcKCEoTVvbi/NZSfgTns1ySVme5i9Lq7
   dqG71Y1vonH8I3Ff/ngGHO4FVGWNOp7qgdE17r/CU3E2BQ9c36jyXOIlA
   Q4f2S50jMjDa/P3uLt1y0Bjr0sQql4Q3flaZ6mGn7zx5TNIKVegWAsRbo
   DbAcbQi1yrBNHsPamub946p5duu9aavi+w4mdQt5cA+K4TKIXSEEJ8rTz
   YOIrRSDxktv5oEaIS4/qjrm66mqVeOvwzavDozrCBXpnFhS32gyO01QRV
   w==;
X-CSE-ConnectionGUID: mnpI00XeSz+qTiTXOT3G5Q==
X-CSE-MsgGUID: v0MzJIpTRXq7VTTCraAtWQ==
X-IronPort-AV: E=Sophos;i="6.21,320,1763449200"; 
   d="scan'208";a="53332801"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 07:21:16 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Mon, 2 Mar 2026 07:20:16 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 2 Mar 2026 07:20:13 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <varshini.rajendran@microchip.com>,
	<cristian.birsan@microchip.com>, <balamanikandan.gunasundar@microchip.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<ryan.wanner@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH v3 0/4] Update gmac clocks and devicetree for sam9x7 mpu
Date: Mon, 2 Mar 2026 16:20:04 +0200
Message-ID: <20260302142008.3253-1-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Queue-Id: B23301DAF63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-270054-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

This series updates the GMAC clock configuration for the
SAM9X7 family. The current clock definitions contain inconsistencies
around the GMAC peripheral and its associated generic clock IDs, which
lead to incorrect wiring in both the clock driver and the devicetree.

Changelog:

v2 -> v3:
- Rework patch 1 and 3 based on Claudiu's comments

v1 -> v2:
- Add only one patch for devicetree with detailed description

Mihai Sain (4):
  clk: at91: sam9x7: Remove gmac peripheral clock with ID 67
  clk: at91: sam9x7: Rename macb0_clk to gmac_clk
  clk: at91: sam9x7: Fix gmac_gclk clock definition
  ARM: dts: microchip: sam9x7: fix GMAC clock configuration

 arch/arm/boot/dts/microchip/sam9x7.dtsi |  6 +++---
 drivers/clk/at91/sam9x7.c               | 21 ++++++++++-----------
 2 files changed, 13 insertions(+), 14 deletions(-)


base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
-- 
2.53.0


