Return-Path: <devicetree+bounces-223004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 641DDBB03A2
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64B8618959F5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BCB52E0934;
	Wed,  1 Oct 2025 11:45:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDF42E090B
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759319142; cv=none; b=pB/ajcShwLYXwq87zMPkQicjMgcRqThJfnLvTmwjIzLfOA5qVQcmP/fmlU6Jha3rDHD3cNZwFq2xVh7vrnAsYn/WqSaDDiphQXLd5o5LTxTfvS7NS5m9rLC2obvOVp/bSNk50Vi7QsKoUBWC7a088z9o5+86TBd0fzA6JZlZnNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759319142; c=relaxed/simple;
	bh=dPTLpSz78Yc9e1Mf4diM9WmIMAMBiHMYzrTh+zAZCLo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AbixRZlbQeB4woe9TsDMmZRM65p7nwu+w9mAUxl7GCFJfeICuAQpTjOPPSG4oa05YzsheQQp49mGoV0hMRYXb+QwC+3KzUfFNIBTFdRiBso55sPHhWyweBMIxXgGv60e9ffH0zsp5DltFDSvMNKRsc0KCAPmBmCceaRZRREQzAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3vGz-0007sk-F3; Wed, 01 Oct 2025 13:45:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3vGy-001PC9-2Y;
	Wed, 01 Oct 2025 13:45:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3vGy-000000081Ta-2vdN;
	Wed, 01 Oct 2025 13:45:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Oct 2025 13:45:27 +0200
Subject: [PATCH 1/2] drivers: hwmon: ntc-thermistor: add Murata ncp18wm474
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-ntc-thermistor-ncp18wm474-v1-1-2c64b9b509ff@pengutronix.de>
References: <20251001-ntc-thermistor-ncp18wm474-v1-0-2c64b9b509ff@pengutronix.de>
In-Reply-To: <20251001-ntc-thermistor-ncp18wm474-v1-0-2c64b9b509ff@pengutronix.de>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, 
 Emil Dahl Juhl <juhl.emildahl@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759319128; l=3880;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yaKpo1Z0z+oS8wWwWInnNsCqgvuW2EJ5m0R0WgGL3Ok=;
 b=sQdv1fxtQOBMQNucNCILeJ09WE2gGLRMGUVMDqHkHDCGY4taT79mQXZVIaNfGIfRaoah4XmXN
 m3Cg96u96EUDUCIV+Kik24S42+pGxKggsmD/DhKO315Jnv51BYHMZNt
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Emil Dahl Juhl <juhl.emildahl@gmail.com>

Add support for the Murata NCP18WM474 NTC.
Compensation table has been constructed by linear interpolation between
well defined points[1] on the resistance vs. temperature graph in the
datasheet[2]. The readouts of the graph has been done to the best of my
abilities, but the compensation table will be subject to inaccuracies
nonetheless.

[1] -40, -25, 0, 25, 50, 75, 100, 125 degrees
[2] https://www.murata.com/en-eu/api/pdfdownloadapi?cate=&partno=NCP18WM474E03RB

Signed-off-by: Emil Dahl Juhl <juhl.emildahl@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hwmon/ntc_thermistor.c | 43 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/hwmon/ntc_thermistor.c b/drivers/hwmon/ntc_thermistor.c
index d21f7266c4119b3d0190cafd0f376874535de5cf..d6b48178343dbbf268f54004c1f6e39d97fbd532 100644
--- a/drivers/hwmon/ntc_thermistor.c
+++ b/drivers/hwmon/ntc_thermistor.c
@@ -24,6 +24,7 @@ enum ntc_thermistor_type {
 	TYPE_NCPXXWF104,
 	TYPE_NCPXXWL333,
 	TYPE_NCPXXXH103,
+	TYPE_NCPXXWM474,
 };
 
 struct ntc_compensation {
@@ -46,6 +47,7 @@ enum {
 	NTC_NCP18WB473,
 	NTC_NCP21WB473,
 	NTC_SSG1404001221,
+	NTC_NCP18WM474,
 	NTC_LAST,
 };
 
@@ -60,6 +62,7 @@ static const struct platform_device_id ntc_thermistor_id[] = {
 	[NTC_NCP18WB473]      = { "ncp18wb473",      TYPE_NCPXXWB473 },
 	[NTC_NCP21WB473]      = { "ncp21wb473",      TYPE_NCPXXWB473 },
 	[NTC_SSG1404001221]   = { "ssg1404_001221",  TYPE_NCPXXWB473 },
+	[NTC_NCP18WM474]      = { "ncp18wm474",      TYPE_NCPXXWM474 },
 	[NTC_LAST]            = { },
 };
 MODULE_DEVICE_TABLE(platform, ntc_thermistor_id);
@@ -217,6 +220,43 @@ static const struct ntc_compensation ncpXXxh103[] = {
 	{ .temp_c	= 125, .ohm	= 531 },
 };
 
+static const struct ntc_compensation ncpXXwm474[] = {
+	{ .temp_c	= -40, .ohm	= 10900000 },
+	{ .temp_c	= -35, .ohm	= 9600000 },
+	{ .temp_c	= -30, .ohm	= 8300000 },
+	{ .temp_c	= -25, .ohm	= 7000000 },
+	{ .temp_c	= -20, .ohm	= 5980000 },
+	{ .temp_c	= -15, .ohm	= 4960000 },
+	{ .temp_c	= -10, .ohm	= 3940000 },
+	{ .temp_c	= -5, .ohm	= 2920000 },
+	{ .temp_c	= 0, .ohm	= 1900000 },
+	{ .temp_c	= 5, .ohm	= 1614000 },
+	{ .temp_c	= 10, .ohm	= 1328000 },
+	{ .temp_c	= 15, .ohm	= 1042000 },
+	{ .temp_c	= 20, .ohm	= 756000 },
+	{ .temp_c	= 25, .ohm	= 470000 },
+	{ .temp_c	= 30, .ohm	= 404000 },
+	{ .temp_c	= 35, .ohm	= 338000 },
+	{ .temp_c	= 40, .ohm	= 272000 },
+	{ .temp_c	= 45, .ohm	= 206000 },
+	{ .temp_c	= 50, .ohm	= 140000 },
+	{ .temp_c	= 55, .ohm	= 122000 },
+	{ .temp_c	= 60, .ohm	= 104000 },
+	{ .temp_c	= 65, .ohm	= 86000 },
+	{ .temp_c	= 70, .ohm	= 68000 },
+	{ .temp_c	= 75, .ohm	= 50000 },
+	{ .temp_c	= 80, .ohm	= 44200 },
+	{ .temp_c	= 85, .ohm	= 38400 },
+	{ .temp_c	= 90, .ohm	= 32600 },
+	{ .temp_c	= 95, .ohm	= 26800 },
+	{ .temp_c	= 100, .ohm	= 21000 },
+	{ .temp_c	= 105, .ohm	= 18600 },
+	{ .temp_c	= 110, .ohm	= 16200 },
+	{ .temp_c	= 115, .ohm	= 13800 },
+	{ .temp_c	= 120, .ohm	= 11400 },
+	{ .temp_c	= 125, .ohm	= 9000 },
+};
+
 /*
  * The following compensation tables are from the specifications in EPCOS NTC
  * Thermistors Datasheets
@@ -319,6 +359,7 @@ static const struct ntc_type ntc_type[] = {
 	NTC_TYPE(TYPE_NCPXXWF104,  ncpXXwf104),
 	NTC_TYPE(TYPE_NCPXXWL333,  ncpXXwl333),
 	NTC_TYPE(TYPE_NCPXXXH103,  ncpXXxh103),
+	NTC_TYPE(TYPE_NCPXXWM474,  ncpXXwm474),
 };
 
 /*
@@ -675,6 +716,8 @@ static const struct of_device_id ntc_match[] = {
 		.data = &ntc_thermistor_id[NTC_NCP21WB473] },
 	{ .compatible = "samsung,1404-001221",
 		.data = &ntc_thermistor_id[NTC_SSG1404001221] },
+	{ .compatible = "murata,ncp18wm474",
+		.data = &ntc_thermistor_id[NTC_NCP18WM474] },
 
 	/* Usage of vendor name "ntc" is deprecated */
 	{ .compatible = "ntc,ncp03wb473",

-- 
2.47.3


