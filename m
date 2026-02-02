Return-Path: <devicetree+bounces-261751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMLFGhKAgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:44:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A1CB254
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E1BCC3008308
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94DE35BDBC;
	Mon,  2 Feb 2026 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="EGUYWVh1"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC50156F45;
	Mon,  2 Feb 2026 10:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029069; cv=none; b=kGJJbNlwqJYuILgbZIMHteYA/jg6xb3cxhH60Zeal2K8Tg1jygqyrosqNvSkPog7h6IwOtGgex9gP0eyGf+sBR7PnxylnCHy/Pgj9JACZSBmGpllnZmZXM8PjFxWowzikfIXs8fFFKhBWucbxNeCNJcQWWcXLyg2izO8jN2g0Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029069; c=relaxed/simple;
	bh=Th2Pyfo6YtFvOWalzENkMGywH6Y1rzwFvxcMHuDq2AA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F3inhYa8oKcf4VyjSA2JJY3xy55okYUGmqi/nM3GpohcC4dGssEO9SNagLGZ0v2E50/90QwtK2uWshE5d/HXwOgqGb7nWM9ZElowhU5Uc1paCWW2B7207wbZNa2jDwew72WIrngtLFSzlNhn7uiCNd+OI6XcQJOgZTq4yUZDFts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=EGUYWVh1; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770029068; x=1801565068;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Th2Pyfo6YtFvOWalzENkMGywH6Y1rzwFvxcMHuDq2AA=;
  b=EGUYWVh1ob30pu21j41jzAHNPaabKfIncU8AEoceHxDwwyMVGRfknRFu
   OTW29247kwVD8kuPjbKap4j+bEghjHSukBz+aR4SMhtc9caCelrXdlK87
   QLyyHZAHjUBqK1JBbVAgthqI4EU7LHtE2Oa9jGGjlLWE8i48IygjXhokY
   Noq0Z+f6Oup3fx6dnDbC5PkmG+nigafITe/e88DsPQ9PY1MPCanDuHHTd
   M8DgkRwXqWMB7d+7+Lqy06LCXGuxMpWeLOq5+j3I2B2S+zH/1BU3dDvPI
   JfFrID8+29cEfdSh+ZWSBOMESp1aBT5VzboPZEYAvuf12E5WKJ63faJnW
   w==;
X-CSE-ConnectionGUID: 7oiJFARpQRyJAEDPNcfsaA==
X-CSE-MsgGUID: tqWdLbeJSXGwzwxOpnDMTA==
X-IronPort-AV: E=Sophos;i="6.21,268,1763449200"; 
   d="scan'208";a="59959604"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2026 03:41:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Mon, 2 Feb 2026 03:40:47 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 2 Feb 2026 03:40:41 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <varshini.rajendran@microchip.com>,
	<cristian.birsan@microchip.com>, <balamanikandan.gunasundar@microchip.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<ryan.wanner@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 2/5] clk: at91: sam9x7: Rename macb0_clk to gmac_clk
Date: Mon, 2 Feb 2026 12:40:22 +0200
Message-ID: <20260202104025.3781-3-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260202104025.3781-1-mihai.sain@microchip.com>
References: <20260202104025.3781-1-mihai.sain@microchip.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-261751-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 090A1CB254
X-Rspamd-Action: no action

Update the peripheral clock name for ID 24 from macb0_clk to gmac_clk
to match the actual GMAC hardware block present on SAM9X7 SoCs.
This aligns the clock naming with the device tree and avoids confusion
with legacy MACB controllers.

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 drivers/clk/at91/sam9x7.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
index d9603f1124d0..68e569bd70f5 100644
--- a/drivers/clk/at91/sam9x7.c
+++ b/drivers/clk/at91/sam9x7.c
@@ -387,7 +387,7 @@ static const struct {
 	{ .n = "dma0_clk",	.id = 20, },
 	{ .n = "uhphs_clk",	.id = 22, },
 	{ .n = "udphs_clk",	.id = 23, },
-	{ .n = "macb0_clk",	.id = 24, },
+	{ .n = "gmac_clk",	.id = 24, },
 	{ .n = "lcd_clk",	.id = 25, },
 	{ .n = "sdmmc1_clk",	.id = 26, },
 	{ .n = "ssc_clk",	.id = 28, },
-- 
2.52.0


