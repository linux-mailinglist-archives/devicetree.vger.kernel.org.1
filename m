Return-Path: <devicetree+bounces-14940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4B67E79BB
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 08:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56D52281393
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D241FC4;
	Fri, 10 Nov 2023 07:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dpJ6H80E"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507531C30
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 07:26:14 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ECF983FD;
	Thu,  9 Nov 2023 23:26:11 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AA7Pnl0074187;
	Fri, 10 Nov 2023 01:25:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1699601149;
	bh=JCUS06QaMlEG1bwuFXka0dGKEOVlkAppxM8sVyRCbSE=;
	h=From:To:CC:Subject:Date;
	b=dpJ6H80EpkEOXn0KXbLIE/P2W3OGNc3pSc+sviA4hNdcWvLgurwVbFOoP5hZ6n+ml
	 RS04ZvQiN8ZYN7z07mNS72f0uvYuKjVsr7YElcgHleeCBEu2rHPPyOyHuPKh0znhRj
	 ays+63QQQXpGg7dg7Gm9XGkG1DvAgLSakkmtkCmw=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AA7PnsX023724
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Nov 2023 01:25:49 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 10
 Nov 2023 01:25:49 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 10 Nov 2023 01:25:49 -0600
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AA7PkSu102695;
	Fri, 10 Nov 2023 01:25:46 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson
	<ulf.hansson@linaro.org>
CC: <linux-mmc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH] mmc: sdhci_am654: Drop lookup for deprecated ti,otap-del-sel
Date: Fri, 10 Nov 2023 12:55:35 +0530
Message-ID: <20231110072535.2695134-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

ti,otap-del-sel has been deprecated since v5.7 and there are no users of
this property and no documentation in the DT bindings either.
Drop the fallback code looking for this property, this makes
sdhci_am654_get_otap_delay() much easier to read as all the TAP values
can be handled via a single iterator loop.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---

Based on discussions at [1]
https://lore.kernel.org/linux-mmc/CAPDyKFrCSTW3G6H7qS89d+UQ6RJcAYcKSPULVT8J7XKsUDpHdw@mail.gmail.com/

CC'ing DT maintainers to see if there any objection to remove
undocumented and deprecated property.

 drivers/mmc/host/sdhci_am654.c | 25 ++++---------------------
 1 file changed, 4 insertions(+), 21 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 967bd2dfcda1..402fba0fa418 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -577,32 +577,15 @@ static int sdhci_am654_get_otap_delay(struct sdhci_host *host,
 	int i;
 	int ret;
 
-	ret = device_property_read_u32(dev, td[MMC_TIMING_LEGACY].otap_binding,
-				 &sdhci_am654->otap_del_sel[MMC_TIMING_LEGACY]);
-	if (ret) {
-		/*
-		 * ti,otap-del-sel-legacy is mandatory, look for old binding
-		 * if not found.
-		 */
-		ret = device_property_read_u32(dev, "ti,otap-del-sel",
-					       &sdhci_am654->otap_del_sel[0]);
-		if (ret) {
-			dev_err(dev, "Couldn't find otap-del-sel\n");
-
-			return ret;
-		}
-
-		dev_info(dev, "Using legacy binding ti,otap-del-sel\n");
-		sdhci_am654->legacy_otapdly = true;
-
-		return 0;
-	}
-
 	for (i = MMC_TIMING_LEGACY; i <= MMC_TIMING_MMC_HS400; i++) {
 
 		ret = device_property_read_u32(dev, td[i].otap_binding,
 					       &sdhci_am654->otap_del_sel[i]);
 		if (ret) {
+			if (i == MMC_TIMING_LEGACY) {
+				dev_err(dev, "Couldn't find mandatory ti,otap-del-sel-legacy\n");
+				return ret;
+			}
 			dev_dbg(dev, "Couldn't find %s\n",
 				td[i].otap_binding);
 			/*
-- 
2.42.0


