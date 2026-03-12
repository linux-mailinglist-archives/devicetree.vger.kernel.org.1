Return-Path: <devicetree+bounces-274411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIKmI2M/smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:21:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D3E26D0DF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C7653303C5AE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B034396578;
	Thu, 12 Mar 2026 04:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hMDUFu6a"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF8C394469;
	Thu, 12 Mar 2026 04:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773289305; cv=none; b=cfV5UV4m2mNQXpwnkqAQR/KJ5hNvE2O8aUvEU0lIrJQq9RtpQNianl7XCR0ifURG2/WkCcSWPqsQ3umLrP+XQ/vTgjO/PpntAHSQpAQV4CjIbTm7XcfJY8EojmhJQD+A8yvD4cKH0eCHAkeZ2Kq1GfxW65KbLJ7bcMs+oWBGLxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773289305; c=relaxed/simple;
	bh=1pdGbtvS5ukFxIuzO7UY6eiKSwsEm0UA9a+Owr7FRpw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WrQPoOjaS4ZsCKI3EzCKjJoLdDGCEvGSzjGhpHU4Npzf09OsMkVlG24CPTTDx/wXGPIvBU8lnjm/n/wvU3APYUhOiEcosOgUNSfGPot7G4CKTJZyILSzBlRF8oekmBFyVA3pJIb1GKwGSDx097fn/l1zxEAZgbTKq96MACIb9Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hMDUFu6a; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1773289302; x=1804825302;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1pdGbtvS5ukFxIuzO7UY6eiKSwsEm0UA9a+Owr7FRpw=;
  b=hMDUFu6a2CSUDLrYernTkFJGq7c7Vip9jBC4HX63sYzDfRNcHmx+XdGB
   qsGOV2XDOH+OHJw2z4aGezCjtm73v8owNvYr8DGbWAY9VvAQLP3naofZO
   haR+Oz6R2OuiriJ2V1KdxFnf3XGm1sqxWnHe8lmPDs1I0ouubEqRPv/XL
   wb4obMTldzeVh3svghRnW6s6a1LPtKySeFZDkvflkcKJgHgzUVE8MVCoo
   bJiKXC7FpTLe7Gkvev8enx3AjVtG/ajFGWfFMaoSvlnBjs99wAQe0Hun6
   9OdDEegQ78J+RzKh5rqygeam8ahCBnPBZXXZQ39BGBfycvziV9CX66MmD
   w==;
X-CSE-ConnectionGUID: uJrHAOLBREOlPHbMYZOtwQ==
X-CSE-MsgGUID: 00EUj3A5QlGe/znpFepMrQ==
X-IronPort-AV: E=Sophos;i="6.23,115,1770620400"; 
   d="scan'208";a="53801523"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Mar 2026 21:21:39 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 11 Mar 2026 21:21:30 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 11 Mar 2026 21:21:20 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Frank.Li@nxp.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <linux@armlinux.org.uk>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <ardb@kernel.org>,
	<ebiggers@google.com>, <martin.petersen@oracle.com>, <tytso@mit.edu>,
	<cristian.birsan@microchip.com>, <adrian.hunter@intel.com>,
	<jarkko.nikula@linux.intel.com>, <kees@kernel.org>, <npitre@baylibre.com>,
	<linux-i3c@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-clk@vger.kernel.org>
CC: <manikandan.m@microchip.com>, Durai Manickam KR
	<durai.manickamkr@microchip.com>
Subject: [PATCH v3 2/5] clk: at91: sama7d65: add peripheral clock for I3C
Date: Thu, 12 Mar 2026 09:50:53 +0530
Message-ID: <20260312042056.309237-3-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260312042056.309237-1-manikandan.m@microchip.com>
References: <20260312042056.309237-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274411-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:dkim,microchip.com:email,microchip.com:mid]
X-Rspamd-Queue-Id: 27D3E26D0DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Durai Manickam KR <durai.manickamkr@microchip.com>

Add peripheral clock description for I3C.

Signed-off-by: Durai Manickam KR <durai.manickamkr@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
changes in v3:
- Fixed indentation issues
---
 drivers/clk/at91/sama7d65.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
index 7dee2b160ffb..ba8ff413fa2c 100644
--- a/drivers/clk/at91/sama7d65.c
+++ b/drivers/clk/at91/sama7d65.c
@@ -677,6 +677,7 @@ static struct {
 	{ .n = "uhphs_clk",	.p = PCK_PARENT_HW_MCK5, .id = 101, },
 	{ .n = "dsi_clk",	.p = PCK_PARENT_HW_MCK3, .id = 103, },
 	{ .n = "lvdsc_clk",	.p = PCK_PARENT_HW_MCK3, .id = 104, },
+	{ .n = "i3cc_clk",	.p = PCK_PARENT_HW_MCK8, .id = 105, },
 };
 
 /*
-- 
2.25.1


