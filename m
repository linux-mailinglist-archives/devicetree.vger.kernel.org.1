Return-Path: <devicetree+bounces-13451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3D27DE25D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D7CDB21111
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B779214010;
	Wed,  1 Nov 2023 14:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="gj1dHCVK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D444313FF0
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:25:07 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4655119;
	Wed,  1 Nov 2023 07:25:02 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk01 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 8806110002D;
	Wed,  1 Nov 2023 17:25:01 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 8806110002D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698848701;
	bh=5UzFTw0GkjbA5GCoSIxy5Ugy4PogpR26uw1TUsMBOFQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=gj1dHCVKVIHfvy1ulDvKfG+k0Yln4Z5/P3j/3vWsaSsisNFBnCLbtw1uN9gZaWJhn
	 VpqKW1ZCiuZeuGILDuqAAk6nKFUxRTXlXEdTIxSML7LTwg4q0I3uZ28hFUiIatym0r
	 LyP/rF1UrBYKpAqs7UhpE0r2+CbgeGiqz3aiRepZIB44P3lAPr1H1nYayTFox2RhXk
	 Q45UY3XnfzlV91+ITu3sI1/OGtJ7Uf4WOSp3MtB9pT6gxen4dTkmY7rtr6wKUua8AC
	 N/ukq8BUdMwu5dkyRMPyaTusfMKCRrbNdK4v9XU41IuVbs+0M+V+XNrYhbkGj+gBeU
	 dTmgavh7ZW8Og==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed,  1 Nov 2023 17:25:01 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 1 Nov 2023 17:25:01 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v3 08/11] leds: aw200xx: improve autodim calculation method
Date: Wed, 1 Nov 2023 17:24:42 +0300
Message-ID: <20231101142445.8753-9-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20231101142445.8753-1-ddrokosov@salutedevices.com>
References: <20231101142445.8753-1-ddrokosov@salutedevices.com>
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
X-KSMG-AntiSpam-Lua-Profiles: 181053 [Nov 01 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 543 543 1e3516af5cdd92079dfeb0e292c8747a62cb1ee4, {Tracking_from_domain_doesnt_match_to}, 127.0.0.199:7.1.2;salutedevices.com:7.1.1;p-i-exch-sc-m01.sberdevices.ru:5.0.1,7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;100.64.160.123:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/11/01 13:00:00 #22378131
X-KSMG-AntiVirus-Status: Clean, skipped

From: George Stark <gnstark@salutedevices.com>

It is highly recommended to leverage the DIV_ROUND_UP() function as a
more refined and mathematically precise alternative to employing a
coarse division method.

Signed-off-by: George Stark <gnstark@salutedevices.com>
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 drivers/leds/leds-aw200xx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/leds/leds-aw200xx.c b/drivers/leds/leds-aw200xx.c
index b7625f028153..899cb1f7ed9b 100644
--- a/drivers/leds/leds-aw200xx.c
+++ b/drivers/leds/leds-aw200xx.c
@@ -87,6 +87,8 @@
 #define AW200XX_REG_DIM(x, columns) \
 	AW200XX_REG(AW200XX_PAGE4, AW200XX_LED2REG(x, columns) * 2)
 #define AW200XX_REG_DIM2FADE(x) ((x) + 1)
+#define AW200XX_REG_FADE2DIM(fade) \
+	DIV_ROUND_UP((fade) * AW200XX_DIM_MAX, AW200XX_FADE_MAX)
 
 /*
  * Duty ratio of display scan (see p.15 of datasheet for formula):
@@ -195,9 +197,7 @@ static int aw200xx_brightness_set(struct led_classdev *cdev,
 
 	dim = led->dim;
 	if (dim < 0)
-		dim = max_t(int,
-			    brightness / (AW200XX_FADE_MAX / AW200XX_DIM_MAX),
-			    1);
+		dim = AW200XX_REG_FADE2DIM(brightness);
 
 	ret = regmap_write(chip->regmap, reg, dim);
 	if (ret)
@@ -456,6 +456,7 @@ static int aw200xx_probe_fw(struct device *dev, struct aw200xx *chip)
 		led->num = source;
 		led->chip = chip;
 		led->cdev.brightness_set_blocking = aw200xx_brightness_set;
+		led->cdev.max_brightness = AW200XX_FADE_MAX;
 		led->cdev.groups = dim_groups;
 		init_data.fwnode = child;
 
-- 
2.36.0


