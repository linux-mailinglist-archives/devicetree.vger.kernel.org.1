Return-Path: <devicetree+bounces-54234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8B89007C
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 14:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8239628DC70
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 13:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACFA81AD8;
	Thu, 28 Mar 2024 13:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="vWvVB3aG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8007EF04;
	Thu, 28 Mar 2024 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.18.73.165
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711633097; cv=none; b=D2Wgn4bV00ClqhgBuwrqWJuN9PL61UTj46qIrFil0BQM8AYT7DI0ZIgT67RY0FzQtKAVLVDgFoBI56W+HPsVyMlBGGBA87mgdPeY3LxYBYFPrHdTeNPzCp07lxuHudML5fPLw1goMVHOJrdQafoClNkuAKrSz3ayVXYTRbPU2Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711633097; c=relaxed/simple;
	bh=p3hbEiIiLzGLbAc/LQxfxpj7XX12LshDGTQMkyM/UPA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QsHYI6YCFsZQ3H9gqEwNNAcFneFZ7F64F9UbwUwDYcPs5fJ0wQYxwwUCaoeHMN9GMrjeBpZCph1ntnP4x/aF8vtW8ka1xDivBZjOMQSqDYBYP4Tzw5hIoaGU9c7/lJ6x7WoL2DdmSr2HkE9h79xrVzEVd6fIM5GcmDpGdh0l8do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=salutedevices.com; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=vWvVB3aG; arc=none smtp.client-ip=37.18.73.165
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=salutedevices.com
Received: from p-infra-ksmg-sc-msk01 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 68132100016;
	Thu, 28 Mar 2024 16:38:11 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 68132100016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1711633091;
	bh=YRwihRdpMFrpryJryrHnyMLc35RgfMsFKeEAc77u4o8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=vWvVB3aG1m/eLf0UM82dzWqT3uKfXKYlc++pnS+jg8auBVlcTS6Hh5YxLMU/l4WGP
	 l5rizDvVd8SXDFMRI+/Xrxo34gZsnBDpVQ9jHiG6XUF8hH2een2D13+t3tKBZJ92h0
	 a4NxwtVFwvgxSapxnsyT/BnCpeM03riqXnDaBuIBclIiE8Dgk6N8xrYZ4FWnQpExO7
	 GOyJxhDGu8S9YKN8pMrJS2TsPVXSi2JHjvV6hmGj+FOF0H3xUdRg8yYwC+jNr0bwnl
	 DWNGysHfHFKln+3OSvcxqmFPbkz91FRy8zC0tfebve5+iiFABNgIX3WU9t83gPAbj6
	 7/Huxhtd16Szg==
Received: from smtp.sberdevices.ru (p-i-exch-sc-m02.sberdevices.ru [172.16.192.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Thu, 28 Mar 2024 16:38:11 +0300 (MSK)
Received: from CAB-WSD-L081021.sberdevices.ru (100.64.160.123) by
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 28 Mar 2024 16:38:10 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <neil.armstrong@linaro.org>, <jbrunet@baylibre.com>,
	<mturquette@baylibre.com>, <khilman@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <glaroque@baylibre.com>,
	<rafael@kernel.org>, <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
	<lukasz.luba@arm.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <kernel@salutedevices.com>, <rockosov@gmail.com>,
	<linux-amlogic@lists.infradead.org>, <linux-pm@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Dmitry Rokosov
	<ddrokosov@salutedevices.com>
Subject: [PATCH v1 2/2] thermal: amlogic: support A1 SoC family Thermal Sensor controller
Date: Thu, 28 Mar 2024 16:37:53 +0300
Message-ID: <20240328133802.15651-3-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240328133802.15651-1-ddrokosov@salutedevices.com>
References: <20240328133802.15651-1-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 184470 [Mar 28 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 14 0.3.14 5a0c43d8a1c3c0e5b0916cc02a90d4b950c01f96, {Tracking_from_domain_doesnt_match_to}, smtp.sberdevices.ru:5.0.1,7.1.1;127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;salutedevices.com:7.1.1;100.64.160.123:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2024/03/28 10:33:00 #24492761
X-KSMG-AntiVirus-Status: Clean, skipped

In comparison to other Amlogic chips, there is one key difference.
The offset for the sec_ao base, also known as u_efuse_off, is special,
while other aspects remain the same.

Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 drivers/thermal/amlogic_thermal.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/thermal/amlogic_thermal.c b/drivers/thermal/amlogic_thermal.c
index 5877cde25b79..1d23afd32013 100644
--- a/drivers/thermal/amlogic_thermal.c
+++ b/drivers/thermal/amlogic_thermal.c
@@ -222,6 +222,12 @@ static const struct amlogic_thermal_data amlogic_thermal_g12a_ddr_param = {
 	.regmap_config = &amlogic_thermal_regmap_config_g12a,
 };
 
+static const struct amlogic_thermal_data amlogic_thermal_a1_cpu_param = {
+	.u_efuse_off = 0x114,
+	.calibration_parameters = &amlogic_thermal_g12a,
+	.regmap_config = &amlogic_thermal_regmap_config_g12a,
+};
+
 static const struct of_device_id of_amlogic_thermal_match[] = {
 	{
 		.compatible = "amlogic,g12a-ddr-thermal",
@@ -231,6 +237,10 @@ static const struct of_device_id of_amlogic_thermal_match[] = {
 		.compatible = "amlogic,g12a-cpu-thermal",
 		.data = &amlogic_thermal_g12a_cpu_param,
 	},
+	{
+		.compatible = "amlogic,a1-cpu-thermal",
+		.data = &amlogic_thermal_a1_cpu_param,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, of_amlogic_thermal_match);
-- 
2.43.0


