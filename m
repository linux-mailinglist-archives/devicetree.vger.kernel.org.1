Return-Path: <devicetree+bounces-160640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA9DA705B3
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 16:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 028C03A6F7A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BC725D528;
	Tue, 25 Mar 2025 15:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="EvBNDX9X"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67496253B41
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742918197; cv=none; b=bdOhs1DfBAauL4hHgwR4zzDEZHycsv3dTf8U57WLRZiPfMIXCIgY6N3GyzxdSXDAGlbQZ6S8J4WKfldQjyf9NMNgiUbX/bw82BnZSWq++ITVk39QwVY0MRxp8Ed6MN2mcqBVIsraJMV21vdpIdtdXK0lTaaH6iVA6eWnCFOLNic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742918197; c=relaxed/simple;
	bh=KTXtnWwkPZ9dd4XF9bTY1ABrcDQk0xQphr+uv8Hqj7A=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CogAFd3uJp1mSBxvxl148uyTJsigvqa6nAKb3MS5gCo4Ikh5jSkzPExCzHyBcdFJzMe55yllK44ezCRxrSjkUHuN9UXiA+yoTJmWo3/qrEdcJsOU0FQeDdlBqm5yy3ygyc7Gwr4r+SUb4iOBnBSbTwVhg8if0hx6Mno4T1WKaR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=EvBNDX9X; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1742918196; x=1774454196;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KTXtnWwkPZ9dd4XF9bTY1ABrcDQk0xQphr+uv8Hqj7A=;
  b=EvBNDX9XrsdLZeTGdfioBQyZI6ZMra6tzjmFBEmwsRz7u1cDirzTIevk
   1xvQ4dGKnLVRm0c8dVwCxYPJco/ngmNagCrwaxjDVLYDE5/F6ernbw3Yd
   RB1/zJPS8Q6wsTQS4T8VvLiKXtxeUl+v0Y12iOjgT97v24r7v93ZM0SSU
   KosB5Se3wnKdlGDFedF8ykj7bezAQjog+FcYiGkH0PbBesxTn/cnxaGtj
   5a44JgRSeWYDxXFtB1SWxufARvI8fR06pbDpLWKxYXhoC+27LO826IMqe
   kO3cx5HCWBdH0xyJbpDJEIVJAKaN7uCtPA3yOjHRKykINQX0BuYYbuNwK
   w==;
X-CSE-ConnectionGUID: 5ZRRXf5LQVCIU2dRAgtdWw==
X-CSE-MsgGUID: J3K9ZU4iQeaA5GTgDrFq0Q==
X-IronPort-AV: E=Sophos;i="6.14,275,1736838000"; 
   d="scan'208";a="40152234"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Mar 2025 08:55:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Mar 2025 08:54:54 -0700
Received: from ryan-Precision-3630-Tower.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.44 via Frontend Transport; Tue, 25 Mar 2025 08:54:53 -0700
From: <Ryan.Wanner@microchip.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <mturquette@baylibre.com>
CC: <sboyd@kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-clk@vger.kernel.org>, Ryan Wanner <Ryan.Wanner@microchip.com>
Subject: [PATCH v2 3/4]  clk: at91: sama7g5: Add missing clk_hw to parent_data
Date: Tue, 25 Mar 2025 08:55:09 -0700
Message-ID: <690cf499758c10ad5f70df3f0d238b8a7834a971.1742916867.git.Ryan.Wanner@microchip.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1742916867.git.Ryan.Wanner@microchip.com>
References: <cover.1742916867.git.Ryan.Wanner@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Ryan Wanner <Ryan.Wanner@microchip.com>

The main_xtal clk_hw struct is not passed into parent_data.hw causing an
issue with main_osc parent. Passing the main_xtal struct into the
parent_data struct will ensure the correct parent structure.

Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
---
 drivers/clk/at91/sama7g5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sama7g5.c b/drivers/clk/at91/sama7g5.c
index 8385badc1c70..ac51d006ba99 100644
--- a/drivers/clk/at91/sama7g5.c
+++ b/drivers/clk/at91/sama7g5.c
@@ -1017,6 +1017,7 @@ static void __init sama7g5_pmc_setup(struct device_node *np)
 
 	parent_data.name = main_xtal_name;
 	parent_data.fw_name = main_xtal_name;
+	parent_data.hw = main_xtal_hw;
 	main_osc_hw = at91_clk_register_main_osc(regmap, "main_osc", NULL,
 						 &parent_data, bypass);
 	if (IS_ERR(main_osc_hw))
-- 
2.43.0


