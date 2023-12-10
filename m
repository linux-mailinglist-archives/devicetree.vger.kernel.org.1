Return-Path: <devicetree+bounces-23640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 994BD80BE5B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 00:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB3761C203B0
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 23:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFDBC1E51D;
	Sun, 10 Dec 2023 23:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="SLVhScEU"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5523AE7;
	Sun, 10 Dec 2023 15:49:33 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BANmILC117035;
	Sun, 10 Dec 2023 17:48:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702252098;
	bh=tqVowNCu+gkbra0kKTIBn0rJWUwWawWCh6sjB2aRuug=;
	h=From:To:CC:Subject:Date;
	b=SLVhScEU0stjXmFxhm+n8t1noEhS9mHOX3Qt94i2LI6ecjBoZ5pl2KgzXZQS2fk2H
	 GvHcWUsPERcSa6WP3Jgb7xpDECeRlBYlvUwsK4plMxRFM5KdzaHGS+YjPJpeFZ+tVu
	 7m+DSW693ZMz3C26hyLrEGLK4TC+II+t8xlBf+uM=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BANmI2M016287
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 10 Dec 2023 17:48:18 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 10
 Dec 2023 17:48:17 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 10 Dec 2023 17:48:18 -0600
Received: from LT5CG31242FY.dhcp.ti.com ([10.250.64.203])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BANm4Cd015683;
	Sun, 10 Dec 2023 17:48:06 -0600
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
Subject: [PATCH v2] ASoC: dt-bindings: Add tas2563 into yaml
Date: Mon, 11 Dec 2023 07:47:58 +0800
Message-ID: <20231210234759.1095-1-shenghao-ding@ti.com>
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

Support tas2563.

Signed-off-by: Shenghao Ding <shenghao-ding@ti.com>

---
Change in v2:
 - Add devicetree list and other list of necessary people and lists to CC
 - Express Compatibility in the bindings
 - Drop driver changes
---
 .../devicetree/bindings/sound/ti,tas2781.yaml | 26 +++++++++++++------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
index a69e6c223308..c049fe6b2dad 100644
--- a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
@@ -5,17 +5,17 @@
 $id: http://devicetree.org/schemas/sound/ti,tas2781.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Texas Instruments TAS2781 SmartAMP
+title: Texas Instruments TAS2781/TAS2563 SmartAMP
 
 maintainers:
   - Shenghao Ding <shenghao-ding@ti.com>
 
 description:
-  The TAS2781 is a mono, digital input Class-D audio amplifier
-  optimized for efficiently driving high peak power into small
-  loudspeakers. An integrated on-chip DSP supports Texas Instruments
-  Smart Amp speaker protection algorithm. The integrated speaker
-  voltage and current sense provides for real time
+  The TAS2781/TAS2563 is a mono, digital input Class-D audio
+  amplifier optimized for efficiently driving high peak power into
+  small loudspeakers. An integrated on-chip DSP supports Texas
+  Instruments Smart Amp speaker protection algorithm. The
+  integrated speaker voltage and current sense provides for real time
   monitoring of loudspeaker behavior.
 
 allOf:
@@ -23,18 +23,28 @@ allOf:
 
 properties:
   compatible:
+    description: |
+      ti,tas2781: 24-V Class-D Amplifier with Real Time Integrated Speaker
+      Protection and Audio Processing, 16/20/24/32bit stereo I2S or
+      multichannel TDM.
+
+      ti,tas2563: 6.1-W Boosted Class-D Audio Amplifier With Integrated
+      DSP and IV Sense, 16/20/24/32bit stereo I2S or multichannel TDM.
     enum:
       - ti,tas2781
+      - ti,tas2563
 
   reg:
     description:
-      I2C address, in multiple tas2781s case, all the i2c address
+      I2C address, in multiple AMP case, all the i2c address
       aggregate as one Audio Device to support multiple audio slots.
+      - For tas2781, i2c address is from 0x38 to 0x3f.
+      - For tas2563, i2c address is from 0x4e to 0x4f.
     maxItems: 8
     minItems: 1
     items:
       minimum: 0x38
-      maximum: 0x3f
+      maximum: 0x4f
 
   reset-gpios:
     maxItems: 1
-- 
2.34.1


