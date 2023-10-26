Return-Path: <devicetree+bounces-12081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD247D7D61
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FA69B212AE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F19156C7;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="biGaYkkI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC33B125B5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BE74C433C8;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.dev; s=korg;
	t=1698304136; bh=DtHEPpID31tWjOLNIsg0s4zUFeieNUVEZ4/N6Xx8pBg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=biGaYkkIUXadCEOFWeaIlYmd0qN+5dJ1N+wpmgNw8dCBl496EPn16AiOlPtfBDkaq
	 Xyv9Is543zyCs79WwACLAlE4XpLIhSMHHzVGczIfJUIYM8fU+Zp0w6JTd7S1WYvYRh
	 y5BCnRVy9kGS+6oIMlvAjl67lZzpi3Niqc1fd3Xc=
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E1DAC25B6F;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
From: Richard Leitner <richard.leitner@linux.dev>
Date: Thu, 26 Oct 2023 09:08:49 +0200
Subject: [PATCH v2 1/2] hwmon: ina238: add ina237 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231026-ina237-v2-1-dec44811a3c9@linux.dev>
References: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
In-Reply-To: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
To: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 devicetree@vger.kernel.org, Richard Leitner <richard.leitner@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698304135; l=1834;
 i=richard.leitner@linux.dev; s=20231025; h=from:subject:message-id;
 bh=DtHEPpID31tWjOLNIsg0s4zUFeieNUVEZ4/N6Xx8pBg=; =?utf-8?q?b=3D13wTgnzZ8eFG?=
 =?utf-8?q?RhrZN8Iy6HnVFnWae7sKkzOY1EB9lahUvsEaMjrzh58PdKXFtZqWYG1DlKwUCmNu?=
 SF/WJvJ6DCmsg0NCCMCpjc24QzR2ARIwZsT27DB5zMKxDEoZzUUd
X-Developer-Key: i=richard.leitner@linux.dev; a=ed25519;
 pk=ZYa5+0m9RFYtnNU6DLet7sHyPehnVHa0ucJlYiAu2NU=
X-Endpoint-Received:
 by B4 Relay for richard.leitner@linux.dev/20231025 with auth_id=90

The INA237 "85-V, 16-Bit, Precision Power Monitor With I2C Interface" is
basically the same as INA328. Therefore add a corresponding compatible
to the driver.

According to the datasheet the main difference is the current and power
monitoring accuracy:

+------------------------+---------------+---------------+
|                        | INA238        | INA237        |
+------------------------+---------------+---------------+
| Offset voltage         | +/- 5µV       | +/- 50µV      |
| Offset drift           | +/- 0.02µV/°C | +/- 0.02µV/°C |
| Gain error             | +/- 0.1%      | +/- 0.3%      |
| Gain error drift       | +/- 25ppm/°C  | +/- 50ppm/°C  |
| Common mode rejection  | 140dB         | 120dB         |
| Power accuracy         | 0.7%          | 1.6%          |
+------------------------+---------------+---------------+

As well as the missing DEVICE_ID register at 0x3F, which is currently
not in use by the driver.

Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
---
 drivers/hwmon/ina238.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/ina238.c b/drivers/hwmon/ina238.c
index f519c22d3907..ca9f5d2c811b 100644
--- a/drivers/hwmon/ina238.c
+++ b/drivers/hwmon/ina238.c
@@ -33,7 +33,7 @@
 #define INA238_BUS_UNDER_VOLTAGE	0xf
 #define INA238_TEMP_LIMIT		0x10
 #define INA238_POWER_LIMIT		0x11
-#define INA238_DEVICE_ID		0x3f
+#define INA238_DEVICE_ID		0x3f /* not available on INA237 */
 
 #define INA238_CONFIG_ADCRANGE		BIT(4)
 
@@ -622,6 +622,7 @@ static const struct i2c_device_id ina238_id[] = {
 MODULE_DEVICE_TABLE(i2c, ina238_id);
 
 static const struct of_device_id __maybe_unused ina238_of_match[] = {
+	{ .compatible = "ti,ina237" },
 	{ .compatible = "ti,ina238" },
 	{ },
 };

-- 
2.40.1


