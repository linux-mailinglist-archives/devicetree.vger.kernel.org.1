Return-Path: <devicetree+bounces-24160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 336BE80E386
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 06:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCE951F21C9D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 05:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B289F9FC;
	Tue, 12 Dec 2023 05:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QJ4jwys/"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1178FCF;
	Mon, 11 Dec 2023 21:09:41 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BC58fjn084073;
	Mon, 11 Dec 2023 23:08:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702357721;
	bh=yELq1Mi9FQc6Zi7zKHsjrTGWfdpBsQA4h2JwbNMN7Ak=;
	h=From:To:CC:Subject:Date;
	b=QJ4jwys/ycHYS5UY2u+BPcf4kI/GcrgXUGoRz2X92XFJtG8jZiNDFk4rjStGPdOwg
	 FEmKmbRhWQddgyU09fUg+iZ+6Mu8Rhl/RJan7WW4BjDTLdjsAYN+1GrE+xWwA3WYFo
	 bYpWtQPrrD+UoG57DrmJhafbI6LMV7RWcvRwDjTg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BC58fPc023283
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 11 Dec 2023 23:08:41 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 11
 Dec 2023 23:08:41 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 11 Dec 2023 23:08:41 -0600
Received: from LT5CG31242FY.dhcp.ti.com (lt5cg31242fy.dhcp.ti.com [10.85.8.120])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BC58Zhl003698;
	Mon, 11 Dec 2023 23:08:36 -0600
From: Shenghao Ding <shenghao-ding@ti.com>
To: <broonie@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski@linaro.org>
CC: <robh+dt@kernel.org>, <andriy.shevchenko@linux.intel.com>,
        <devicetree@vger.kernel.org>, <lgirdwood@gmail.com>, <perex@perex.cz>,
        <pierre-louis.bossart@linux.intel.com>, <13916275206@139.com>,
        <linux-sound@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <liam.r.girdwood@intel.com>, <soyer@irl.hu>, <tiwai@suse.de>,
        <peeyush@ti.com>, <navada@ti.com>,
        Shenghao Ding <shenghao-ding@ti.com>
Subject: [PATCH v1] ASoC: tas2562: remove tas2563 into driver
Date: Tue, 12 Dec 2023 13:08:31 +0800
Message-ID: <20231212050831.982-1-shenghao-ding@ti.com>
X-Mailer: git-send-email 2.33.0.windows.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Remove tas2563 from tas2562, it will be supported in separated driver code.

Signed-off-by: Shenghao Ding <shenghao-ding@ti.com>
---
 sound/soc/codecs/tas2562.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/sound/soc/codecs/tas2562.c b/sound/soc/codecs/tas2562.c
index 962c2cdfa017..54561ae598b8 100644
--- a/sound/soc/codecs/tas2562.c
+++ b/sound/soc/codecs/tas2562.c
@@ -59,7 +59,6 @@ struct tas2562_data {
 
 enum tas256x_model {
 	TAS2562,
-	TAS2563,
 	TAS2564,
 	TAS2110,
 };
@@ -721,7 +720,6 @@ static int tas2562_parse_dt(struct tas2562_data *tas2562)
 
 static const struct i2c_device_id tas2562_id[] = {
 	{ "tas2562", TAS2562 },
-	{ "tas2563", TAS2563 },
 	{ "tas2564", TAS2564 },
 	{ "tas2110", TAS2110 },
 	{ }
@@ -770,7 +768,6 @@ static int tas2562_probe(struct i2c_client *client)
 #ifdef CONFIG_OF
 static const struct of_device_id tas2562_of_match[] = {
 	{ .compatible = "ti,tas2562", },
-	{ .compatible = "ti,tas2563", },
 	{ .compatible = "ti,tas2564", },
 	{ .compatible = "ti,tas2110", },
 	{ },
-- 
2.34.1


