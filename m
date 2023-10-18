Return-Path: <devicetree+bounces-9781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1232C7CE68C
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42EBC1C20E22
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963BC37CAF;
	Wed, 18 Oct 2023 18:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="a506zYAU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2322641A98
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:30:11 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D624712A;
	Wed, 18 Oct 2023 11:30:07 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 0A228120011;
	Wed, 18 Oct 2023 21:30:06 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 0A228120011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1697653806;
	bh=14UJ/DJJE29qDpCRN1SrxNjt/yzZB6wyHVfMk5iJ/cE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=a506zYAUi2OKX2I7PrtDZTa+WPu/QqHN2w/nypgj5FVM51+cQ4bCRVe2DiCqF+Dmf
	 ASHSCFpQqC9XBtd3+HnaySQnp1YFMUVpuQX6dEhPkefDZGK0U5CDrnpBYwn+KiXeXw
	 xAq2Ep0KnAabVeEliGtFrm3t+DHoHphmpr+roLzQhB+dj0zfIJFgMgzzRdQ0Q/8um6
	 uQtSa+2QxlUxOrnUKPze0IPhGirfj+4apwjbUpkfEId6BdUNzlx+enevifpdFK9wer
	 YgNL9zr/QPOSy9+EYEtZUy1g29RL+qE+qt8cTbfJkmyMBytSuqeF1VWhu+Mdrs6iqf
	 QgHVwdblSBg2g==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed, 18 Oct 2023 21:30:05 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 18 Oct 2023 21:29:59 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v2 09/11] leds: aw200xx: add support for aw20108 device
Date: Wed, 18 Oct 2023 21:29:41 +0300
Message-ID: <20231018182943.18700-10-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20231018182943.18700-1-ddrokosov@salutedevices.com>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 180713 [Oct 18 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 541 541 6f62a06a82e8ec968d29b8e7c7bba6aeceb34f57, {Tracking_from_domain_doesnt_match_to}, 127.0.0.199:7.1.2;p-i-exch-sc-m01.sberdevices.ru:7.1.1,5.0.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;100.64.160.123:7.1.2;salutedevices.com:7.1.1, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/10/18 17:21:00 #22224798
X-KSMG-AntiVirus-Status: Clean, skipped
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: George Stark <gnstark@salutedevices.com>

Add support for Awinic aw20108 device from the same LED drivers famliy.
New device supports 108 leds using matrix of 12x9 outputs.

Signed-off-by: George Stark <gnstark@salutedevices.com>
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 drivers/leds/Kconfig        |  8 ++++----
 drivers/leds/leds-aw200xx.c | 10 +++++++++-
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 6046dfeca16f..40b3f4191cff 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -95,13 +95,13 @@ config LEDS_ARIEL
 	  Say Y to if your machine is a Dell Wyse 3020 thin client.
 
 config LEDS_AW200XX
-	tristate "LED support for Awinic AW20036/AW20054/AW20072"
+	tristate "LED support for Awinic AW20036/AW20054/AW20072/AW20108"
 	depends on LEDS_CLASS
 	depends on I2C
 	help
-	  This option enables support for the AW20036/AW20054/AW20072 LED driver.
-	  It is a 3x12/6x9/6x12 matrix LED driver programmed via
-	  an I2C interface, up to 36/54/72 LEDs or 12/18/24 RGBs,
+	  This option enables support for the AW20036/AW20054/AW20072/AW20108
+	  LED driver. It is a 3x12/6x9/6x12/9x12 matrix LED driver programmed via
+	  an I2C interface, up to 36/54/72/108 LEDs or 12/18/24/36 RGBs,
 	  3 pattern controllers for auto breathing or group dimming control.
 
 	  To compile this driver as a module, choose M here: the module
diff --git a/drivers/leds/leds-aw200xx.c b/drivers/leds/leds-aw200xx.c
index 7b8802bd9497..529a4ab9c876 100644
--- a/drivers/leds/leds-aw200xx.c
+++ b/drivers/leds/leds-aw200xx.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Awinic AW20036/AW20054/AW20072 LED driver
+ * Awinic AW20036/AW20054/AW20072/AW20108 LED driver
  *
  * Copyright (c) 2023, SberDevices. All Rights Reserved.
  *
@@ -616,10 +616,17 @@ static const struct aw200xx_chipdef aw20072_cdef = {
 	.display_size_columns = 12,
 };
 
+static const struct aw200xx_chipdef aw20108_cdef = {
+	.channels = 108,
+	.display_size_rows_max = 9,
+	.display_size_columns = 12,
+};
+
 static const struct i2c_device_id aw200xx_id[] = {
 	{ "aw20036" },
 	{ "aw20054" },
 	{ "aw20072" },
+	{ "aw20108" },
 	{}
 };
 MODULE_DEVICE_TABLE(i2c, aw200xx_id);
@@ -628,6 +635,7 @@ static const struct of_device_id aw200xx_match_table[] = {
 	{ .compatible = "awinic,aw20036", .data = &aw20036_cdef, },
 	{ .compatible = "awinic,aw20054", .data = &aw20054_cdef, },
 	{ .compatible = "awinic,aw20072", .data = &aw20072_cdef, },
+	{ .compatible = "awinic,aw20108", .data = &aw20108_cdef, },
 	{}
 };
 MODULE_DEVICE_TABLE(of, aw200xx_match_table);
-- 
2.36.0


