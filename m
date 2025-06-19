Return-Path: <devicetree+bounces-187426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D48DAADFE30
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 08:58:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BE561BC3164
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 06:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E58B25DCF9;
	Thu, 19 Jun 2025 06:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="Tw+qvkG/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F6E25D1E5
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750315935; cv=none; b=pHVwhxkODEvCoNCUzQxRPUNF26qbLWc5656Ut+MDFge4wjYCmpzYZxpE1B5Eg0Kq5a6bfGSwHvkJBXym6dNxj6RdXbPWRljLHr1SuhMUi+2WsytjDaYQt0XPBl4wcVA/P4ccU91Ujdj3GUroRPxwJgk0JsU1J8hr1vwc2U9NxlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750315935; c=relaxed/simple;
	bh=j0D8KCzwpdvfwKiYALqBHWiCezF6D/C7YNd9jZcBaoQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eym+VRfdefgrV14+0ZEPOLEkmkhw+14MLT/kU9r5JORUzsI+NqX1epaGgS8KQP/gfxnobAf/XlXkX6Xv2LkxviPn10LZMzsiAhgwHcbxItLFRC6gue5krFaEVG9uKZUYji3QYf/ZJg5wgBPgkhHi1341CaDW1PsfXRXs0vIcGDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=Tw+qvkG/; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b0b2d0b2843so351490a12.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 23:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1750315932; x=1750920732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7cRG7CEONHQ0MzlEt834pCTpHoSgbKYnCgWwAPvcT0=;
        b=Tw+qvkG/4SSuGdO7x9NLEdsWRhoKnf9iVvbE6Q1nEYpHWxNeZ2vWEbGKGkb3q6kE7Q
         Wt2qZc0Ai3651ZQVIHtWNQRbaf0y/af4OnzNxjg1loJvZEfcSL7l2kL/RHy3/IO17mr6
         /PkuBA+ROsNVlhOJra4FGCYml1UDEzBuzLfZlDfHawwDOjucSQaYtDqgf2yPVUspRdx/
         8MzhCF5lHz/HHCai7KrkcVfes3KUSoVzZ/bDtvz+PsaXRmrz8TzBCDgPxqTOVhWrRp2s
         +b6Esjp5McH98erNG+SQL9Qp0lrLvMFogaNoGNIjqUNeX8advwrxnTJ0TV7siQZTMUr4
         2/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750315932; x=1750920732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7cRG7CEONHQ0MzlEt834pCTpHoSgbKYnCgWwAPvcT0=;
        b=TyuRa6eieZT6O+/MJ1G7qScLc3ZAzWIIoYErWTXhB54HLMv+yd8q7IZaJoIjWpLzem
         5xFRiOgvNEXZPbdWvZNA9JuBeqTUeL0hd4PCvZhOnVg4gcI7obQsXQrwWFHQgkZCah9s
         wtSLGsbs+W7QEjeluMqNX32BP9dlrnRhDGopv0APN7bj02MLpWy0tofB6EOwf4u5lz/V
         4jB0rGVcpPVbbJDo518istVT7eW4t7/hw9ffrFWM8WwJouAKwViNN9GpI3Ckv0upAq2D
         /DL5+tPEitfswtZscOiUi7oOeIA1PxgJcnVhKZjq60TEovhLRWPyITFb3Qv8UHfJMgxn
         JkkA==
X-Forwarded-Encrypted: i=1; AJvYcCUCc3fQZ6bQfa+HrT1rIvtPW6mhk21mfXZul/MR35j5/4RWSRJxjnIQ2AvN+yhIZuVl5f8GZBF0j4Gu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4z7zkjG/TKYSs+65dM+JZLMnqwBTuT7tRfKmYk2TmAsH+iXob
	wHyL2FAfShwJZF2sITiSRrETpQeXhJ7n2/vQaWA5V4XXq2tIDm2zcpF+Vtfp6bhHkeY=
X-Gm-Gg: ASbGncuCdkwtJH4XJl8nb8JvLNKwRc06z0NW2MZ1oT7bn7Pn/DkGywtkcOeo2Va5ik5
	SOHeCQseokUJmxQHCGPKvQDepqkTTwUboK0G3xlDYHkqy1JI4xTZ1TCDxH/DyAYeUCnFgfPXGhb
	jfZMPH0yPYJpwZyNQm0+vuc3BIVKpF4ZN31dZI7gEb/6r/zJpwDdLDfjOIUHsOp4GyoFmeSxXuC
	MrXRUD3O26Sl70qPTOcQ56HCtKdx9Hi2onS2qQz+QR3SBBFKZprJxDcr6+IzSyAOSOnXsB1OZ6g
	W5qAteAq3TDi/x4O+JYERlpUHZDjOy78ZfT1CpaYD5TN1QezSnQSfvtJSsE6tWHtPiEKKFuuAgx
	kdwyV/0NrMQd4CnroVW+10T0rmpVU/NC7HeDVBwmMuV83T17n/E9hvg==
X-Google-Smtp-Source: AGHT+IG7Ph+8uJQmjQif7lETBAJgdykbV8iaxZ0QjQChWdVLIxh/wav0NIWFvqQJ1rJ/Yowpku5rcg==
X-Received: by 2002:a17:90b:4a92:b0:2fe:e9c6:689e with SMTP id 98e67ed59e1d1-313f1ca8cf7mr27295456a91.8.1750315931848;
        Wed, 18 Jun 2025 23:52:11 -0700 (PDT)
Received: from localhost.localdomain (60-250-242-163.hinet-ip.hinet.net. [60.250.242.163])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365dfdb9a0sm113108155ad.239.2025.06.18.23.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 23:52:11 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: jdelvare@suse.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chiang Brian <chiang.brian@inventec.com>
Subject: [PATCH v10 2/2] hwmon: (pmbus/tps53679) Add support for TPS53685
Date: Thu, 19 Jun 2025 14:42:23 +0800
Message-Id: <20250619064223.3165523-3-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250619064223.3165523-1-chiang.brian@inventec.com>
References: <20250619064223.3165523-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TPS53685 is a fully AMD SVI3 compliant step down controller with
trans-inductor voltage regulator(TLVR) topology support, dual channels,
built-in non-volatile memory (NVM), PMBus interface, and full compatible
with TI NexFET smart power stages.

Add support for it to the tps53679 driver.

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
v9 -> v10:
- Fix the inconsistent indenting in switch case with tab instead of space
- Run the smatch kchecker to confirm
- Link to v9: https://lore.kernel.org/all/20250610102556.236300-3-chiang.brian@inventec.com/

v8 -> v9:
- Wrap commit message body at 75 columns
- Fix the alignment to match open parenthesis
- Link to v8: https://lore.kernel.org/all/20250602042454.184643-3-chiang.brian@inventec.com/

v7 -> v8:
- Convert the type of device_id in tps53679_identify_multiphase() from int to char *
- Run make.cross with ARCH i386
- Link to v7: https://lore.kernel.org/all/20250515081449.1433772-3-chiang.brian@inventec.com/

v6 -> v7:
- Modify the type of device_id from u16 to char *
- Run make.cross with ARCH nios2, powerpc, and riscv
- Link to v6: https://lore.kernel.org/all/20250424132538.2004510-2-chiang.brian@inventec.corp-partner.google.com/

v5 -> v6:
- Add information about tps53685 into tps53679.rst
- Add additional flags when identifing the chip as tps53685
- Adjust length once returned device id is terminated by null character
- Link to v5: https://lore.kernel.org/all/20250314033040.3190642-1-chiang.brian@inventec.com/

v4 -> v5: 
- document the compatible of tps53685 into dt-bindings
- add the buffer length as argument for %*ph
- Add Changelog
- Link to v4: https://lore.kernel.org/all/CAJCfHmW61d2jd_tYpNEqBG_Z58bEnVKAmsvhrEP1zXQoXqrUVw@mail.gmail.com/

v3 -> v4: 
- Add length comparison into the comparison of "id",or it may be true when the substring of "id" matches device id. 
- Restore `return 0;` in `tps53679_identify_chip()`
- Link to v3: https://lore.kernel.org/all/CAJCfHmVyaDPh0_ThPjhBP0zMO1oE1AR=4=Zsa0cMPXU3J4v6dw@mail.gmail.com/

v2 -> v3:
- Remove the length comparsion in the comparison of "id".
- Link to v2: https://lore.kernel.org/all/CAJCfHmUteFM+nUZWBWvmwFjALg1QUL5r+=syU1HmYTL1ewQWqA@mail.gmail.com/

v1 -> v2: 
- Modify subject and description to meet requirements
- Add "tps53685" into enum chips with numeric order
- Modify the content of marco "TPS53681_DEVICE_ID" from 0x81 to "\x81" 
- Add marco "TPS53685_DEVICE_ID" with content "TIShP"
- Modify the type of "id" from u16 to char* in `tps53679_identify_chip()`
- Modify the comparison of "id". It will be true if the string "id" matches device ID and compare with type char*,
- Add the length comparsion into the comparison of "id".
- Modify "len" as return code in `tps53679_identify_chip()`
- Output device error log with %*ph, instead of 0x%x\n" 
- Use existing tps53679_identify_multiphase() with argument "TPS53685_DEVICE_ID" in tps53685_identify() rather than creating one tps53685_identify_multiphase()
- Link to v1: https://lore.kernel.org/all/CAJCfHmVy3O4-nz2_PKF7TcXYr+HqTte1-bdUWLBmV7JOS7He1g@mail.gmail.com/

 Documentation/hwmon/tps53679.rst |  8 +++++++
 drivers/hwmon/pmbus/tps53679.c   | 37 ++++++++++++++++++++++++++------
 2 files changed, 39 insertions(+), 6 deletions(-)

diff --git a/Documentation/hwmon/tps53679.rst b/Documentation/hwmon/tps53679.rst
index 3b9561648c24..dd5e4a37375d 100644
--- a/Documentation/hwmon/tps53679.rst
+++ b/Documentation/hwmon/tps53679.rst
@@ -43,6 +43,14 @@ Supported chips:
 
     Datasheet: https://www.ti.com/lit/gpn/TPS53681
 
+  * Texas Instruments TPS53685
+
+    Prefix: 'tps53685'
+
+    Addresses scanned: -
+
+    Datasheet: https://www.ti.com/lit/gpn/TPS53685
+
   * Texas Instruments TPS53688
 
     Prefix: 'tps53688'
diff --git a/drivers/hwmon/pmbus/tps53679.c b/drivers/hwmon/pmbus/tps53679.c
index 63524dff5e75..ca2bfa25eb04 100644
--- a/drivers/hwmon/pmbus/tps53679.c
+++ b/drivers/hwmon/pmbus/tps53679.c
@@ -16,7 +16,7 @@
 #include "pmbus.h"
 
 enum chips {
-	tps53647, tps53667, tps53676, tps53679, tps53681, tps53688
+	tps53647, tps53667, tps53676, tps53679, tps53681, tps53685, tps53688
 };
 
 #define TPS53647_PAGE_NUM		1
@@ -31,7 +31,8 @@ enum chips {
 #define TPS53679_PROT_VR13_5MV		0x07 /* VR13.0 mode, 5-mV DAC */
 #define TPS53679_PAGE_NUM		2
 
-#define TPS53681_DEVICE_ID		0x81
+#define TPS53681_DEVICE_ID     "\x81"
+#define TPS53685_DEVICE_ID     "TIShP"
 
 #define TPS53681_PMBUS_REVISION		0x33
 
@@ -86,10 +87,12 @@ static int tps53679_identify_phases(struct i2c_client *client,
 }
 
 static int tps53679_identify_chip(struct i2c_client *client,
-				  u8 revision, u16 id)
+				  u8 revision, char *id)
 {
 	u8 buf[I2C_SMBUS_BLOCK_MAX];
 	int ret;
+	int buf_len;
+	int id_len;
 
 	ret = pmbus_read_byte_data(client, 0, PMBUS_REVISION);
 	if (ret < 0)
@@ -102,8 +105,14 @@ static int tps53679_identify_chip(struct i2c_client *client,
 	ret = i2c_smbus_read_block_data(client, PMBUS_IC_DEVICE_ID, buf);
 	if (ret < 0)
 		return ret;
-	if (ret != 1 || buf[0] != id) {
-		dev_err(&client->dev, "Unexpected device ID 0x%x\n", buf[0]);
+
+	/* Adjust length if null terminator if present */
+	buf_len = (buf[ret - 1] != '\x00' ? ret : ret - 1);
+
+	id_len = strlen(id);
+
+	if (buf_len != id_len || strncmp(id, buf, id_len)) {
+		dev_err(&client->dev, "Unexpected device ID: %*ph\n", ret, buf);
 		return -ENODEV;
 	}
 	return 0;
@@ -117,7 +126,7 @@ static int tps53679_identify_chip(struct i2c_client *client,
  */
 static int tps53679_identify_multiphase(struct i2c_client *client,
 					struct pmbus_driver_info *info,
-					int pmbus_rev, int device_id)
+					int pmbus_rev, char *device_id)
 {
 	int ret;
 
@@ -138,6 +147,16 @@ static int tps53679_identify(struct i2c_client *client,
 	return tps53679_identify_mode(client, info);
 }
 
+static int tps53685_identify(struct i2c_client *client,
+			     struct pmbus_driver_info *info)
+{
+	info->func[1] |= PMBUS_HAVE_VIN | PMBUS_HAVE_IIN | PMBUS_HAVE_PIN |
+			 PMBUS_HAVE_STATUS_INPUT;
+	info->format[PSC_VOLTAGE_OUT] = linear;
+	return tps53679_identify_chip(client, TPS53681_PMBUS_REVISION,
+					   TPS53685_DEVICE_ID);
+}
+
 static int tps53681_identify(struct i2c_client *client,
 			     struct pmbus_driver_info *info)
 {
@@ -263,6 +282,10 @@ static int tps53679_probe(struct i2c_client *client)
 		info->identify = tps53681_identify;
 		info->read_word_data = tps53681_read_word_data;
 		break;
+	case tps53685:
+		info->pages = TPS53679_PAGE_NUM;
+		info->identify = tps53685_identify;
+		break;
 	default:
 		return -ENODEV;
 	}
@@ -277,6 +300,7 @@ static const struct i2c_device_id tps53679_id[] = {
 	{"tps53676", tps53676},
 	{"tps53679", tps53679},
 	{"tps53681", tps53681},
+	{"tps53685", tps53685},
 	{"tps53688", tps53688},
 	{}
 };
@@ -289,6 +313,7 @@ static const struct of_device_id __maybe_unused tps53679_of_match[] = {
 	{.compatible = "ti,tps53676", .data = (void *)tps53676},
 	{.compatible = "ti,tps53679", .data = (void *)tps53679},
 	{.compatible = "ti,tps53681", .data = (void *)tps53681},
+	{.compatible = "ti,tps53685", .data = (void *)tps53685},
 	{.compatible = "ti,tps53688", .data = (void *)tps53688},
 	{}
 };
-- 
2.43.0


