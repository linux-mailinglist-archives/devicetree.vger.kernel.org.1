Return-Path: <devicetree+bounces-264992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHoMBhCmjWnu5gAAu9opvQ
	(envelope-from <devicetree+bounces-264992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A053212C3CA
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50866312227E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128172E8B87;
	Thu, 12 Feb 2026 10:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="KasU26N9"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81A22DEA8F;
	Thu, 12 Feb 2026 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890575; cv=none; b=ASD1Lf5tHfdiO6ASdZrqI9NaU/AXnrGCa48ypqX20tbexy+tz13LqjXNK5Y4CjDL/s87MTM9VVK5PlMoUt4hY1McYEVKOTUtbB+60zdh/VYfdJrWg6LpGi7lasR4M0muTF/ifvjn3cLiyK5ihZyrWFy72wAkqfLkL1wW3z21idQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890575; c=relaxed/simple;
	bh=HJY0wdSVelljhVy5XonzAMfl6FFec1mLbXSyxYUN/sQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Qpfs/dBmkv7t5ZI/1i+XlRjGF+IkYvwj93P0inhCkSDElZkyhoY9W9UJlPuuR7Dte7H+eAX8KpwLJ2sLY6nSJlQ9y201GHdQntqFlmbJJ2g7T6n2CbVoGXch2kSqu28KmAazqezzCufJq5Eq9Qke7EE0SqBkBUfdgQ3GqfkZ1TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=KasU26N9; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770890572; x=1802426572;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HJY0wdSVelljhVy5XonzAMfl6FFec1mLbXSyxYUN/sQ=;
  b=KasU26N96FYhthATpYZ97GJaQ1zd7pp60j10HnTf5cl15vI/jy+ZxrbH
   iRb4JflIYe6J4Q1SdEetid37Hahm3Owv9YnSl+jPqalkx/2fVXM4kGfN2
   WXcPXqRvtHn/dMkUWihYwAwgLrdvBrSKg/50N1ICRaOiyyzIC22CHJeHK
   0VfuqMcevs3tqy2ADtm2nO1UIIZ3TETxApO5B7y8blk/lXFoQzw6spGO9
   ho6fSsQ40bKnRRJuKxw/vZc02CO5jHBRkNxoOcHPdZPrFEixJWKfXz+xo
   htbwz0i+/jhfg9tq6U3N7IqCe8/JAgIvjc6rHs5zBV+YbgPatpER+k4Wh
   w==;
X-CSE-ConnectionGUID: MLyYTqveRP6xRNiALHFvrA==
X-CSE-MsgGUID: PfVU4YbQS2qWnYiR5+ieQQ==
X-IronPort-AV: E=Sophos;i="6.21,286,1763449200"; 
   d="scan'208";a="220596018"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 03:02:38 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Thu, 12 Feb 2026 03:02:23 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Thu, 12 Feb 2026 03:02:20 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <varshini.rajendran@microchip.com>,
	<cristian.birsan@microchip.com>, <balamanikandan.gunasundar@microchip.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<ryan.wanner@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH v2 4/4] ARM: dts: microchip: sam9x7: fix GMAC clock configuration
Date: Thu, 12 Feb 2026 12:01:47 +0200
Message-ID: <20260212100147.5007-5-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260212100147.5007-1-mihai.sain@microchip.com>
References: <20260212100147.5007-1-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[microchip.com:server fail,tor.lore.kernel.org:server fail,f802c000:server fail,sam9x75:server fail];
	TAGGED_FROM(0.00)[bounces-264992-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sam9x75:email,f802c000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:mid,microchip.com:dkim,microchip.com:email]
X-Rspamd-Queue-Id: A053212C3CA
X-Rspamd-Action: no action

The GMAC node incorrectly listed four clocks, including a separate
tx_clk and a TSU GCK clock sourced from ID 67.
According to the SAM9X7 clocking scheme, the GMAC uses only three
clocks: HCLK, PCLK, and the TSU GCK derived from the GMAC peripheral
clock (ID 24).

This patch removes the unused tx_clk, updates the clock-names accordingly,
and corrects the assigned clock to use GCK 24 instead of GCK 67.
This aligns the device tree with the actual hardware clock topology
and prevents misconfiguration of the GMAC clock tree.

[root@SAM9X75 ~]$ cat /sys/kernel/debug/clk/clk_summary | grep gmac

gmac_gclk      1       1        1        266666666   0          0     50000      Y         f802c000.ethernet           tsu_clk
                                                                                           f802c000.ethernet           tsu_clk
gmac_clk       2       2        0        266666666   0          0     50000      Y         f802c000.ethernet           hclk
                                                                                           f802c000.ethernet           pclk

Fixes: 41af45af8bc3 ("ARM: dts: at91: sam9x7: add device tree for SoC")
Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x7.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
index 46dacbbd201d..a42716e18da3 100644
--- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
@@ -990,9 +990,9 @@ gmac: ethernet@f802c000 {
 				     <62 IRQ_TYPE_LEVEL_HIGH 3>,	/* Queue 3 */
 				     <63 IRQ_TYPE_LEVEL_HIGH 3>,	/* Queue 4 */
 				     <64 IRQ_TYPE_LEVEL_HIGH 3>;	/* Queue 5 */
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_GCK 24>, <&pmc PMC_TYPE_GCK 67>;
-			clock-names = "hclk", "pclk", "tx_clk", "tsu_clk";
-			assigned-clocks = <&pmc PMC_TYPE_GCK 67>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_GCK 24>;
+			clock-names = "hclk", "pclk", "tsu_clk";
+			assigned-clocks = <&pmc PMC_TYPE_GCK 24>;
 			assigned-clock-rates = <266666666>;
 			status = "disabled";
 		};
-- 
2.53.0


