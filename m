Return-Path: <devicetree+bounces-13446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 119137DE256
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CC06281417
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A6213FFC;
	Wed,  1 Nov 2023 14:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="lPijxW4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5BA13FE7
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:25:07 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4656D118;
	Wed,  1 Nov 2023 07:25:01 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk01 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id E8D9810002C;
	Wed,  1 Nov 2023 17:24:59 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru E8D9810002C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698848699;
	bh=zGbcaAeoOpRXhpYsG9hnKfwX226reF7uQ3cUGwZXb+E=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=lPijxW4YODL7chgvLNjpvWE4X1nlhoslHsYq+Xl1gsY0EUJFM0JHPMNEU3Y8tYmDH
	 TqrjOFw1pnkizEtV5Y/EJJdSLtAG0l2rj0X1v294l/LfjjRVP1oxtFxzTi5WS0urgh
	 +tn0dsPBkkXSOC0mMVqqOaSPraVOciaIMn4PfY+MOLk8WXB2b2Bmadcu3+70mNSzHM
	 OnWsO38VLNRmNXBTlbIEpY+XW8Vbc53oyEmw4eeaWjZsX9Wmo6HWNzDqEMCw/mmO1z
	 tmIhyqelBUwjyX+ijicQf5uS4Nc2Uez3HypHMzTCZU8n85c4LxVr5/Ed8tvZlJV1uv
	 nx6ysT3/skXFQ==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed,  1 Nov 2023 17:24:59 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 1 Nov 2023 17:24:59 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v3 06/11] leds: aw200xx: add delay after software reset
Date: Wed, 1 Nov 2023 17:24:40 +0300
Message-ID: <20231101142445.8753-7-ddrokosov@salutedevices.com>
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

According to datasheets of aw200xx devices software reset takes at
least 1ms so add delay after reset before issuing commands to device.

Signed-off-by: George Stark <gnstark@salutedevices.com>
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 drivers/leds/leds-aw200xx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/leds/leds-aw200xx.c b/drivers/leds/leds-aw200xx.c
index aab8898b0330..ae3b4a96c52c 100644
--- a/drivers/leds/leds-aw200xx.c
+++ b/drivers/leds/leds-aw200xx.c
@@ -321,6 +321,9 @@ static int aw200xx_chip_reset(const struct aw200xx *const chip)
 	if (ret)
 		return ret;
 
+	/* according to datasheet software reset takes at least 1ms */
+	fsleep(1000);
+
 	regcache_mark_dirty(chip->regmap);
 	return regmap_write(chip->regmap, AW200XX_REG_FCD, AW200XX_FCD_CLEAR);
 }
-- 
2.36.0


