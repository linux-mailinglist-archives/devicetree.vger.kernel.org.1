Return-Path: <devicetree+bounces-120706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D63F9C3B99
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 11:04:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63BBEB209D6
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 10:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23EE61714B2;
	Mon, 11 Nov 2024 10:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT3iuHOc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBE416CD1D;
	Mon, 11 Nov 2024 10:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731319450; cv=none; b=EfhR57NhBQfPWcZWhjhDgXYC167i7INwB489QDhgRNp20dgSqgTB64NLpl0iHcZcFHrjwdANoXA/sZXSyT7jJvzR6QmO8wOv1W83/D5HzMlCGg3/693/XWFh7Y5S4HSU8sukD12+QCx0x/QZ8eoNyD80LR5mcpz+y37xR5FGrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731319450; c=relaxed/simple;
	bh=D6A9yZwod9RyaYcsbShQlW2Y89y5mowC4F2k/d7+MZc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hX/BrpgJZtkq+GL8f+LYJsD5AHtmQ3pyIdGzKGnVKN6jn34Q10Roz6XasQxfuiMEOlOIAKQ9qZfms0AqicSfe3fBNB+Vi968nTbyucoJLSXUqkxJxr3N8DQU5jL2v2QQRS2SePczhtVUtnpk2gkAd8e9djHRMEVTKeoYHfOFBfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT3iuHOc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A22C4CED0;
	Mon, 11 Nov 2024 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731319449;
	bh=D6A9yZwod9RyaYcsbShQlW2Y89y5mowC4F2k/d7+MZc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BT3iuHOcGdPJk2+dyIezWz/J8YOaMU7eRAcP5QfLZjbxcR68uKCMfohIg69k0+6Hc
	 NXzTpGGEbR2MVUjL8b2J8Ddd1qJN0xCmG1S2EMdemjByZQe9Ll1/jz73a4J21ftjpL
	 ilUmudt6WOHoGiKW9yy0+zzxOGtKsJ4jfijblEOgAnmSRWRfxqc0pd6mJZsoL9nEr0
	 A+WiyzJz3IqaDAfu+h8Z7HZ2PBBgNY5dkU9bVxzEN9gO+9TWRsWEvZQ8WdSOkU7+xg
	 UQOEW9a6pJRC6K6MJs15KuXtC6soNfPyl/DwQq5FA8D1UeVkyGPJuJFbqz2nDbetuL
	 JicYRBYwnou4w==
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
Subject: [PATCH leds v7 02/11] leds: turris-omnia: Use command execution functions from the MCU driver
Date: Mon, 11 Nov 2024 11:03:46 +0100
Message-ID: <20241111100355.6978-3-kabel@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111100355.6978-1-kabel@kernel.org>
References: <20241111100355.6978-1-kabel@kernel.org>
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
 drivers/leds/leds-turris-omnia.c | 137 ++++++++++++-------------------
 2 files changed, 55 insertions(+), 83 deletions(-)

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
index 4cff8c4b020c..00cd3bb86703 100644
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
@@ -427,26 +382,51 @@ static struct attribute *omnia_led_controller_attrs[] = {
 };
 ATTRIBUTE_GROUPS(omnia_led_controller);
 
-static int omnia_mcu_get_features(const struct i2c_client *client)
+static int omnia_mcu_get_features(const struct i2c_client *mcu_client)
 {
 	u16 reply;
 	int err;
 
-	err = omnia_cmd_read_raw(client->adapter, OMNIA_MCU_I2C_ADDR,
-				 CMD_GET_STATUS_WORD, &reply, sizeof(reply));
+	err = omnia_cmd_read_u16(mcu_client, CMD_GET_STATUS_WORD, &reply);
 	if (err)
 		return err;
 
 	/* Check whether MCU firmware supports the CMD_GET_FEAUTRES command */
-	if (!(le16_to_cpu(reply) & STS_FEATURES_SUPPORTED))
+	if (!(reply & STS_FEATURES_SUPPORTED))
 		return 0;
 
-	err = omnia_cmd_read_raw(client->adapter, OMNIA_MCU_I2C_ADDR,
-				 CMD_GET_FEATURES, &reply, sizeof(reply));
+	err = omnia_cmd_read_u16(mcu_client, CMD_GET_FEATURES, &reply);
 	if (err)
 		return err;
 
-	return le16_to_cpu(reply);
+	return reply;
+}
+
+static int omnia_match_mcu_client(struct device *dev, void *data)
+{
+	struct i2c_client *client;
+
+	client = i2c_verify_client(dev);
+	if (!client)
+		return 0;
+
+	return client->addr == OMNIA_MCU_I2C_ADDR;
+}
+
+static int omnia_find_mcu_and_get_features(struct device *dev)
+{
+	struct device *mcu_dev;
+	int ret;
+
+	mcu_dev = device_find_child(dev->parent, NULL, omnia_match_mcu_client);
+	if (!mcu_dev)
+		return -ENODEV;
+
+	ret = omnia_mcu_get_features(i2c_verify_client(mcu_dev));
+
+	put_device(mcu_dev);
+
+	return ret;
 }
 
 static int omnia_leds_probe(struct i2c_client *client)
@@ -473,7 +453,7 @@ static int omnia_leds_probe(struct i2c_client *client)
 	leds->client = client;
 	i2c_set_clientdata(client, leds);
 
-	ret = omnia_mcu_get_features(client);
+	ret = omnia_find_mcu_and_get_features(dev);
 	if (ret < 0) {
 		dev_err(dev, "Cannot determine MCU supported features: %d\n",
 			ret);
@@ -510,20 +490,11 @@ static int omnia_leds_probe(struct i2c_client *client)
 
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


