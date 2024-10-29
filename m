Return-Path: <devicetree+bounces-117034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D83F49B4B72
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 073F81C229B0
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F9B206968;
	Tue, 29 Oct 2024 13:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYQ90ZC1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684C7206962;
	Tue, 29 Oct 2024 13:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730210201; cv=none; b=H67GHS+oCm5dD5qsQEFlrv+fKBC5gx/bMvh6UC/E061BZvEdTaBJTJoUzPXxD6dCK1K3VWcXnEBs1gC6PIOyyUQdkTWnpxhT8i12SS8JeU61LwZbk7lxsOLqPLtVOBfFLFJ8LUwWrFjkqoKeznB23MCV/gvKZCz7ZPCj0LMPTqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730210201; c=relaxed/simple;
	bh=Lzp4c2xwPI9Bv29V8ootRPCIxvn2SWSPnFiRixJ18kk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qjNs6m9tv/zPiwjThHmO/GcpLsh6JLAlxeW4/YM1loEsIYxNc6HHBGFfak9G4IqOKDVd973Nig8DXlvfl8n4DVXV/lUf8G1oRW+SeG8knRMI4lG1BNaEj6ihq8XMkPEDTZwda7bu97vcJWTDCVuox6ivyZvtAp4Ha/6QdH9ORYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYQ90ZC1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC622C4CEE3;
	Tue, 29 Oct 2024 13:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730210201;
	bh=Lzp4c2xwPI9Bv29V8ootRPCIxvn2SWSPnFiRixJ18kk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LYQ90ZC1yDSdxLhhTrhV2HdyGMVXpIeOzfcmr1jLWQnp/w04XKsOEeiHuvtifl/A5
	 oaFk6PpLuz36uwl7dpSgg48JK4g58/niEQ6oSX+WXU8z6+zma/y47zws5uOpHoGXac
	 qAXPFPMguavUbgk8xOUaDl+aKWgzHvy4nrOSMLTIdFvQjP+I8eScx/MTfUn1iQSs9C
	 OjJZQCVHtW7OaPp4HVzHHIQIgc+IMtbKZRi4r7jlJRU8WuifZ7ZNIdhg5RfhSQoyUy
	 xi42z8IuuNvg3NrP2mse39s2Ecs4goke+V6MBa/s5nvUTGdWeluQ7kmYuv+O6xaV4f
	 tKPenKL1T4TiQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: Pavel Machek <pavel@ucw.cz>,
	linux-leds@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH leds v4 02/12] leds: turris-omnia: Use command execution functions from the MCU driver
Date: Tue, 29 Oct 2024 14:56:11 +0100
Message-ID: <20241029135621.12546-3-kabel@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029135621.12546-1-kabel@kernel.org>
References: <20241029135621.12546-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Use the MCU command execution functions from the MCU driver instead of
the ad-hoc implementation in the LED driver. This allows as to drop the
LED driver implementation, which is a duplicate.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 drivers/leds/Kconfig             |   1 +
 drivers/leds/leds-turris-omnia.c | 110 ++++++++-----------------------
 2 files changed, 30 insertions(+), 81 deletions(-)

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index b784bb74a837..fcbe93b61e49 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -217,6 +217,7 @@ config LEDS_TURRIS_OMNIA
 	depends on I2C
 	depends on MACH_ARMADA_38X || COMPILE_TEST
 	depends on OF
+	depends on TURRIS_OMNIA_MCU
 	select LEDS_TRIGGERS
 	help
 	  This option enables basic support for the LEDs found on the front
diff --git a/drivers/leds/leds-turris-omnia.c b/drivers/leds/leds-turris-omnia.c
index 4cff8c4b020c..0b71848930dd 100644
--- a/drivers/leds/leds-turris-omnia.c
+++ b/drivers/leds/leds-turris-omnia.c
@@ -2,7 +2,7 @@
 /*
  * CZ.NIC's Turris Omnia LEDs driver
  *
- * 2020, 2023 by Marek Behún <kabel@kernel.org>
+ * 2020, 2023, 2024 by Marek Behún <kabel@kernel.org>
  */
 
 #include <linux/i2c.h>
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
+#include <linux/turris-omnia-mcu-interface.h>
 #include "leds.h"
 
 #define OMNIA_BOARD_LEDS	12
@@ -57,66 +58,21 @@ struct omnia_leds {
 	struct omnia_led leds[];
 };
 
-static int omnia_cmd_write_u8(const struct i2c_client *client, u8 cmd, u8 val)
+static int omnia_cmd_set_color(const struct i2c_client *client, u8 led, u8 r, u8 g, u8 b)
 {
-	u8 buf[2] = { cmd, val };
-	int ret;
-
-	ret = i2c_master_send(client, buf, sizeof(buf));
+	u8 buf[5] = { CMD_LED_COLOR, led, r, g, b };
 
-	return ret < 0 ? ret : 0;
-}
-
-static int omnia_cmd_read_raw(struct i2c_adapter *adapter, u8 addr, u8 cmd,
-			      void *reply, size_t len)
-{
-	struct i2c_msg msgs[2];
-	int ret;
-
-	msgs[0].addr = addr;
-	msgs[0].flags = 0;
-	msgs[0].len = 1;
-	msgs[0].buf = &cmd;
-	msgs[1].addr = addr;
-	msgs[1].flags = I2C_M_RD;
-	msgs[1].len = len;
-	msgs[1].buf = reply;
-
-	ret = i2c_transfer(adapter, msgs, ARRAY_SIZE(msgs));
-	if (likely(ret == ARRAY_SIZE(msgs)))
-		return 0;
-	else if (ret < 0)
-		return ret;
-	else
-		return -EIO;
-}
-
-static int omnia_cmd_read_u8(const struct i2c_client *client, u8 cmd)
-{
-	u8 reply;
-	int err;
-
-	err = omnia_cmd_read_raw(client->adapter, client->addr, cmd, &reply, 1);
-	if (err)
-		return err;
-
-	return reply;
+	return omnia_cmd_write(client, buf, sizeof(buf));
 }
 
 static int omnia_led_send_color_cmd(const struct i2c_client *client,
 				    struct omnia_led *led)
 {
-	char cmd[5];
 	int ret;
 
-	cmd[0] = CMD_LED_COLOR;
-	cmd[1] = led->reg;
-	cmd[2] = led->subled_info[0].brightness;
-	cmd[3] = led->subled_info[1].brightness;
-	cmd[4] = led->subled_info[2].brightness;
-
 	/* Send the color change command */
-	ret = i2c_master_send(client, cmd, 5);
+	ret = omnia_cmd_set_color(client, led->reg, led->subled_info[0].brightness,
+				  led->subled_info[1].brightness, led->subled_info[2].brightness);
 	if (ret < 0)
 		return ret;
 
@@ -352,14 +308,14 @@ static ssize_t brightness_show(struct device *dev, struct device_attribute *a,
 			       char *buf)
 {
 	struct i2c_client *client = to_i2c_client(dev);
-	int ret;
-
-	ret = omnia_cmd_read_u8(client, CMD_LED_GET_BRIGHTNESS);
+	u8 reply;
+	int err;
 
-	if (ret < 0)
-		return ret;
+	err = omnia_cmd_read_u8(client, CMD_LED_GET_BRIGHTNESS, &reply);
+	if (err < 0)
+		return err;
 
-	return sysfs_emit(buf, "%d\n", ret);
+	return sysfs_emit(buf, "%d\n", reply);
 }
 
 static ssize_t brightness_store(struct device *dev, struct device_attribute *a,
@@ -386,17 +342,16 @@ static ssize_t gamma_correction_show(struct device *dev,
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct omnia_leds *leds = i2c_get_clientdata(client);
-	int ret;
+	u8 reply = 0;
+	int err;
 
 	if (leds->has_gamma_correction) {
-		ret = omnia_cmd_read_u8(client, CMD_GET_GAMMA_CORRECTION);
-		if (ret < 0)
-			return ret;
-	} else {
-		ret = 0;
+		err = omnia_cmd_read_u8(client, CMD_GET_GAMMA_CORRECTION, &reply);
+		if (err < 0)
+			return err;
 	}
 
-	return sysfs_emit(buf, "%d\n", !!ret);
+	return sysfs_emit(buf, "%d\n", !!reply);
 }
 
 static ssize_t gamma_correction_store(struct device *dev,
@@ -429,24 +384,26 @@ ATTRIBUTE_GROUPS(omnia_led_controller);
 
 static int omnia_mcu_get_features(const struct i2c_client *client)
 {
+	struct i2c_client mcu_client = *client;
 	u16 reply;
 	int err;
 
-	err = omnia_cmd_read_raw(client->adapter, OMNIA_MCU_I2C_ADDR,
-				 CMD_GET_STATUS_WORD, &reply, sizeof(reply));
+	/* We have to read features from different I2C address */
+	mcu_client.addr = OMNIA_MCU_I2C_ADDR;
+
+	err = omnia_cmd_read_u16(&mcu_client, CMD_GET_STATUS_WORD, &reply);
 	if (err)
 		return err;
 
 	/* Check whether MCU firmware supports the CMD_GET_FEAUTRES command */
-	if (!(le16_to_cpu(reply) & STS_FEATURES_SUPPORTED))
+	if (!(reply & STS_FEATURES_SUPPORTED))
 		return 0;
 
-	err = omnia_cmd_read_raw(client->adapter, OMNIA_MCU_I2C_ADDR,
-				 CMD_GET_FEATURES, &reply, sizeof(reply));
+	err = omnia_cmd_read_u16(&mcu_client, CMD_GET_FEATURES, &reply);
 	if (err)
 		return err;
 
-	return le16_to_cpu(reply);
+	return reply;
 }
 
 static int omnia_leds_probe(struct i2c_client *client)
@@ -510,20 +467,11 @@ static int omnia_leds_probe(struct i2c_client *client)
 
 static void omnia_leds_remove(struct i2c_client *client)
 {
-	u8 buf[5];
-
 	/* put all LEDs into default (HW triggered) mode */
-	omnia_cmd_write_u8(client, CMD_LED_MODE,
-			   CMD_LED_MODE_LED(OMNIA_BOARD_LEDS));
+	omnia_cmd_write_u8(client, CMD_LED_MODE, CMD_LED_MODE_LED(OMNIA_BOARD_LEDS));
 
 	/* set all LEDs color to [255, 255, 255] */
-	buf[0] = CMD_LED_COLOR;
-	buf[1] = OMNIA_BOARD_LEDS;
-	buf[2] = 255;
-	buf[3] = 255;
-	buf[4] = 255;
-
-	i2c_master_send(client, buf, 5);
+	omnia_cmd_set_color(client, OMNIA_BOARD_LEDS, 255, 255, 255);
 }
 
 static const struct of_device_id of_omnia_leds_match[] = {
-- 
2.45.2


