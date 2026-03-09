Return-Path: <devicetree+bounces-272738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKYLFRR9rmlGFQIAu9opvQ
	(envelope-from <devicetree+bounces-272738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:56:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E299D2351BD
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98BDB3044B9F
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180ED36AB7C;
	Mon,  9 Mar 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="RmkheJAq"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3B0364924;
	Mon,  9 Mar 2026 07:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773042873; cv=none; b=cJBiyiOCNAZoDEljPNuVKF3S2rFFP+onYTrAC1w0ac4IwH0OFAhj0jZjUvI3N7cOPMohWi/8VPbTKDGLYuyslsF27ni/IhCzU4DnZnsFDgodVqgnCJvagtNEnGYndskU+f+SGITbD1/H26Riy0MavCaQ3k3MNFHONh0cV8gGN6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773042873; c=relaxed/simple;
	bh=AZMbzgF0MBXEM33A7JxLatOxJLBIUtQdFwEpG1uKRco=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C/CiGFDlcc2FXWL/2Fl/9wY/L4tydfbwXTJSrEslvv2Fd7FhmpM4gAPW662zuC+FAZ1mTHaGyLg56TvMmAJFQVcWT2WxecLbe+UE6vD3VeHvnHYSLBTQCHBrxtni/R3BSfn8wh0Rxl9eZHcitofbYAUt14RzJ38A2ftYM3iRlac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=RmkheJAq; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1773042871; x=1804578871;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AZMbzgF0MBXEM33A7JxLatOxJLBIUtQdFwEpG1uKRco=;
  b=RmkheJAqrRsc0NJur3H9Ai/m0+UdHBFaSumXLiJyKgQ5gNb/jrlkxpn1
   z0A3yGIIc+w6KVuZBI0gx0J1zlZRYHyhSIwgEvLSjvHeonTsb6npIkhrR
   l/CyoVKqZN7RCved/gD+NoB9LwAdXqrKERooV9ghIMsl7YL6HmhvRNET7
   Nuk9hiBk8iVCF4hmJ+23eV1xytMFDAGcvcfD9VoSv5KBgZxAM4ZriEstG
   4kXDRd5cdZJCSJ2H4efvPvQ+ac0H+5rx+RfF8kxI5VPkPfQDFBwBWQneU
   ROyQEg955KeyTEsk8yFUMmTIIMol7b/7hs88Fz8EZ6W+1a69zSvPU4xKT
   Q==;
X-CSE-ConnectionGUID: MQLX6i0wSQyzKKrNx9vzaw==
X-CSE-MsgGUID: SWH6g15HTyq5Bcl91ONhQw==
X-IronPort-AV: E=Sophos;i="6.23,109,1770620400"; 
   d="scan'208";a="285774737"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 00:54:24 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Mon, 9 Mar 2026 00:53:57 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 9 Mar 2026 00:53:53 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <varshini.rajendran@microchip.com>,
	<cristian.birsan@microchip.com>, <balamanikandan.gunasundar@microchip.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<ryan.wanner@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH v3 3/4] clk: at91: sam9x7: Fix gmac_gclk clock definition
Date: Mon, 9 Mar 2026 09:53:28 +0200
Message-ID: <20260309075329.1528-4-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260309075329.1528-1-mihai.sain@microchip.com>
References: <20260309075329.1528-1-mihai.sain@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Queue-Id: E299D2351BD
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272738-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.995];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:dkim,microchip.com:email,microchip.com:url,microchip.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

According with datasheet [1] table 12.1 the instance ID 24 is used
for gmac generic clock.
This patch adds the correct gmac_gclk entry at ID 24, aligned with the
SoC clock layout, and removes the old misplaced 67 entry.

[1]: https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocuments/DataSheets/SAM9X75-SIP-Series-Data-Sheet-DS60001827.pdf

Fixes: 33013b43e271 ("clk: at91: sam9x7: add sam9x7 pmc driver")

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 drivers/clk/at91/sam9x7.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
index 32c082b4ca4b..8b52da194849 100644
--- a/drivers/clk/at91/sam9x7.c
+++ b/drivers/clk/at91/sam9x7.c
@@ -568,6 +568,15 @@ static const struct {
 		.pp_chg_id = INT_MIN,
 	},
 
+	{
+		.n = "gmac_gclk",
+		.id = 24,
+		.pp = { "audiopll_divpmcck", "plla_div2pmcck", },
+		.pp_mux_table = { 6, 8, },
+		.pp_count = 2,
+		.pp_chg_id = INT_MIN,
+	},
+
 	{
 		.n = "lcd_gclk",
 		.id = 25,
@@ -701,15 +710,6 @@ static const struct {
 		.pp_count = 1,
 		.pp_chg_id = INT_MIN,
 	},
-
-	{
-		.n = "gmac_gclk",
-		.id = 67,
-		.pp = { "audiopll_divpmcck", "plla_div2pmcck", },
-		.pp_mux_table = { 6, 8, },
-		.pp_count = 2,
-		.pp_chg_id = INT_MIN,
-	},
 };
 
 static void __init sam9x7_pmc_setup(struct device_node *np)
-- 
2.53.0


