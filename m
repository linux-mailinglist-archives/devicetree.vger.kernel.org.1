Return-Path: <devicetree+bounces-6546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6162D7BBC5F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 922431C20B97
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A901286B9;
	Fri,  6 Oct 2023 16:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="EmE3pDxA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5119E286B3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:05:07 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B4FA6;
	Fri,  6 Oct 2023 09:05:04 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk01 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id BF5EB100006;
	Fri,  6 Oct 2023 19:05:00 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru BF5EB100006
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1696608300;
	bh=5Ufuy/Jjm8EWqaQZSmq4eDmLrQJXNTNImLau+WXmXuQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=EmE3pDxAP5+37QT2BX/JVZBhXigkaBobMIpCmpvDLM8IlTxSh8v6uEaNJ/7DXmwop
	 j6X1rocubh1uNfj9DmeafC8uvaGqnBZAe4mIOn4pW62C7unulmHIHKVkNKzdoEX9Vw
	 3thXMgm5wZS94Ss8FMG1Nl/L8rZrFK2HDN5dteXCOpcRrRfKzoRw+tCI9yUnEheXyb
	 Ky/YObDmzmz4qm6O3PzEkH/QKTo7lq3YSZOKIAZqjtWUdFKq0UzBdJ4U8UwRyZ7A77
	 s8Ht7pTjBCYKdvcMhlCPXWq02EP9BA3GOcipJMm18EMl8IrVW03KqYZBmur7kAPdug
	 cY00b2JZVL5vQ==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Fri,  6 Oct 2023 19:05:00 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Fri, 6 Oct 2023 19:05:00 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v1 05/11] leds: aw200xx: calculate dts property display_rows in driver
Date: Fri, 6 Oct 2023 19:04:31 +0300
Message-ID: <20231006160437.15627-6-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20231006160437.15627-1-ddrokosov@salutedevices.com>
References: <20231006160437.15627-1-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 180438 [Oct 06 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 535 535 da804c0ea8918f802fc60e7a20ba49783d957ba2, {Tracking_from_domain_doesnt_match_to}, salutedevices.com:7.1.1;100.64.160.123:7.1.2;p-i-exch-sc-m01.sberdevices.ru:7.1.1,5.0.1;127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/10/06 13:25:00 #22070343
X-KSMG-AntiVirus-Status: Clean, skipped
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: George Stark <gnstark@salutedevices.com>

Get rid of device tree property "awinic,display-rows" and calculate it
in driver using led definition nodes. display-row actually means number
of current switches and depends on how leds are connected to the device.

Signed-off-by: George Stark <gnstark@salutedevices.com>
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 drivers/leds/leds-aw200xx.c | 40 ++++++++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/leds/leds-aw200xx.c b/drivers/leds/leds-aw200xx.c
index d92c082d4ab3..5b6907eb6299 100644
--- a/drivers/leds/leds-aw200xx.c
+++ b/drivers/leds/leds-aw200xx.c
@@ -383,6 +383,32 @@ static void aw200xx_disable(const struct aw200xx *const chip)
 		gpio_set_value(chip->hwen, 0);
 }
 
+static int aw200xx_probe_get_display_rows(struct device *dev, struct aw200xx *chip)
+{
+	struct fwnode_handle *child;
+	u32 max_source = 0;
+
+	device_for_each_child_node(dev, child) {
+		u32 source;
+		int ret;
+
+		ret = fwnode_property_read_u32(child, "reg", &source);
+		if (ret || source >= chip->cdef->channels)
+			continue;
+
+		if (max_source < source)
+			max_source = source;
+	}
+
+	chip->display_rows = max_source / chip->cdef->display_size_columns + 1;
+	if (!chip->display_rows) {
+		dev_err(dev, "No valid led definitions found\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int aw200xx_probe_fw(struct device *dev, struct aw200xx *chip)
 {
 	struct fwnode_handle *child;
@@ -390,18 +416,8 @@ static int aw200xx_probe_fw(struct device *dev, struct aw200xx *chip)
 	int ret;
 	int i;
 
-	ret = device_property_read_u32(dev, "awinic,display-rows",
-				       &chip->display_rows);
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "Failed to read 'display-rows' property\n");
-
-	if (!chip->display_rows ||
-	    chip->display_rows > chip->cdef->display_size_rows_max) {
-		return dev_err_probe(dev, ret,
-				     "Invalid leds display size %u\n",
-				     chip->display_rows);
-	}
+	if (aw200xx_probe_get_display_rows(dev, chip))
+		return -EINVAL;
 
 	current_max = aw200xx_imax_from_global(chip, AW200XX_IMAX_MAX_uA);
 	current_min = aw200xx_imax_from_global(chip, AW200XX_IMAX_MIN_uA);
-- 
2.36.0


