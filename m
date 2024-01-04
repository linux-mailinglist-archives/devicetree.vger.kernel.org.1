Return-Path: <devicetree+bounces-29735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC8782444F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 16:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E8E01C20B68
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 15:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7845523765;
	Thu,  4 Jan 2024 14:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PUAC30ca"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84BA249FD;
	Thu,  4 Jan 2024 14:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 404EvwlH014903;
	Thu, 4 Jan 2024 08:57:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1704380278;
	bh=tpsiP9S7pAPpPw0380V2GtyMNvsYeXNqBBFLduNiK5w=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=PUAC30caudaxVIi74hAcs+gAShKCn6IQbIr8yoJn3fXN+6mbSzeRl541yWj2WxTL6
	 zA6an5GOenDTdB2p1XwUm3dtbBnSM3xGlH+pz6RM5JLW93QF6bbsjtcAdyWkmyCoDC
	 9F9bxHejpwEng4zOQaLiogkzwbO4Db7PVQxk3eOg=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 404EvwRx126414
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 4 Jan 2024 08:57:58 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 4
 Jan 2024 08:57:58 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 4 Jan 2024 08:57:58 -0600
Received: from LT5CG31242FY.dhcp.ti.com ([10.250.161.227])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 404EvPfP105959;
	Thu, 4 Jan 2024 08:57:51 -0600
From: Shenghao Ding <shenghao-ding@ti.com>
To: <broonie@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski@linaro.org>
CC: <robh+dt@kernel.org>, <andriy.shevchenko@linux.intel.com>,
        <kevin-lu@ti.com>, <baojun.xu@ti.com>, <devicetree@vger.kernel.org>,
        <lgirdwood@gmail.com>, <perex@perex.cz>,
        <pierre-louis.bossart@linux.intel.com>, <13916275206@139.com>,
        <linux-sound@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <liam.r.girdwood@intel.com>, <soyer@irl.hu>, <tiwai@suse.de>,
        <peeyush@ti.com>, <navada@ti.com>,
        Shenghao Ding <shenghao-ding@ti.com>
Subject: [PATCH v5 4/4] ASoC: tas2781: Add tas2563 into driver
Date: Thu, 4 Jan 2024 22:57:19 +0800
Message-ID: <20240104145721.1398-4-shenghao-ding@ti.com>
X-Mailer: git-send-email 2.33.0.windows.2
In-Reply-To: <20240104145721.1398-1-shenghao-ding@ti.com>
References: <20240104145721.1398-1-shenghao-ding@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Move tas2563 from tas2562 driver to tas2781 driver to unbind tas2563 from
tas2562 driver code and bind it to tas2781 driver code, because tas2563
only work in bypass-DSP mode with tas2562 driver. In order to enable DSP
mode for tas2563, it has been moved to tas2781 driver. As to the hardware
part, such as register setting and DSP firmware, all these are stored in
the binary firmware. What tas2781 drivder does is to parse the firmware
and download it to the chip, then power on the chip. So, tas2781 driver
can be resued as tas2563 driver. Only attention will be paid to downloading
corresponding firmware.

Signed-off-by: Shenghao Ding <shenghao-ding@ti.com>

---
Change in v5:
 - Add tas2563 to tas2781 driver.
 - Add more comments on why move tas2563 to tas2781 driver.
 - Provide rationale in terms of bindings and hardware, not in terms of driver.
   Or at least not only.
 - In all cases, to make the lists ordered by a chip model, tas2563 is first,
   tas2781 is second.
---
 sound/soc/codecs/tas2781-i2c.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/tas2781-i2c.c b/sound/soc/codecs/tas2781-i2c.c
index 55cd5e3c23a5..bd5ef4ff96fe 100644
--- a/sound/soc/codecs/tas2781-i2c.c
+++ b/sound/soc/codecs/tas2781-i2c.c
@@ -1,13 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0
 //
-// ALSA SoC Texas Instruments TAS2781 Audio Smart Amplifier
+// ALSA SoC Texas Instruments TAS2563/TAS2781 Audio Smart Amplifier
 //
 // Copyright (C) 2022 - 2023 Texas Instruments Incorporated
 // https://www.ti.com
 //
-// The TAS2781 driver implements a flexible and configurable
+// The TAS2563/TAS2781 driver implements a flexible and configurable
 // algo coefficient setting for one, two, or even multiple
-// TAS2781 chips.
+// TAS2563/TAS2781 chips.
 //
 // Author: Shenghao Ding <shenghao-ding@ti.com>
 // Author: Kevin Lu <kevin-lu@ti.com>
@@ -32,6 +32,7 @@
 #include <sound/tas2781-tlv.h>
 
 static const struct i2c_device_id tasdevice_id[] = {
+	{ "tas2563", TAS2563 },
 	{ "tas2781", TAS2781 },
 	{}
 };
@@ -39,6 +40,7 @@ MODULE_DEVICE_TABLE(i2c, tasdevice_id);
 
 #ifdef CONFIG_OF
 static const struct of_device_id tasdevice_of_match[] = {
+	{ .compatible = "ti,tas2563" },
 	{ .compatible = "ti,tas2781" },
 	{},
 };
-- 
2.34.1


