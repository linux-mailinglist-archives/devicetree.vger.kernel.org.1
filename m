Return-Path: <devicetree+bounces-4643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6146D7B3545
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1245D284272
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A062513C3;
	Fri, 29 Sep 2023 14:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C8516C6;
	Fri, 29 Sep 2023 14:32:20 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CB09CF5;
	Fri, 29 Sep 2023 07:32:16 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so944989966b.3;
        Fri, 29 Sep 2023 07:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695997934; x=1696602734; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTbK6qkYutHvyFXWyfDTAiatmpQU1PAd9FUpYTZg5YI=;
        b=BrZD3Dnda2F8jjxRxst95DX2myvUGzLebpKUUPnXLpNdpcV9sfDgrsKkM13v5LbQ+m
         tXI8627AhaXaNhqzVke1CnJOCR9AANcXQdIRF2R6foohkudm+TNEKW9EY17tnexrvXnM
         mGnbtpClmc3pW+NFU6QY3xBl1cB3AqjyibDuBxg6y4s/IbiU9G2HBwKh7bf38Dnu/2Hg
         k+srCKX6akoA3gIde9FRE7uvE6cydJzqcv6lHljJTixhxIztzKfGOPGtqbqRcCvB4OL6
         dl7vgCifcxlnYh9Oea2wMb/EQ9hUeswdVF9oFHcCGD7zs9oLe2uELX1HM6hsHv56Iiyf
         DPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695997934; x=1696602734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTbK6qkYutHvyFXWyfDTAiatmpQU1PAd9FUpYTZg5YI=;
        b=CIEZhJzY8l/UkLsc5L5E+QCq3CWdtNpl+aJ4yzuizr6tClI32swyoN/XdF3IXMtX+b
         TuS6AKTIwuc6xruqHFsCXQ0kYnRB2rmXxzgQXFQvCeHlfuBWSuKQh8zRmbB8pZUhE+qe
         761q58I2cM1pJmHoy8tyXHDrJJmZ2Ds7pets7ivnkvAVcq/LPE51G06v43HWUEw9tZe4
         k36KVAqbOD/IkcteVoFXjHQNpeZeSmwNTxk1ed4HYniLrsGIlxOxa+X5uyc8xKmAuP1D
         uoPdM2YfJAyiO4hXMefuNObWmoXJY+aiwWI3PVm1w+o8NrDaaY117aA6u6NQzwm2eFqc
         CANw==
X-Gm-Message-State: AOJu0YyFZVXroN3QMSW2sewDkDj7m8OSN5KUmG3bPQsN23yHFBrLM5IM
	x3HHMCCgyenhXVokXiJVY7SNadBg2oQtp/saK7o=
X-Google-Smtp-Source: AGHT+IHfZmyhhLpczgJPKXbTVI9PCoCXc7+vBRQPe8RWoQf16ZMFUznFYwfJpjBYB34xUrb7O+K3YQ==
X-Received: by 2002:a17:906:224c:b0:9b2:93c1:72dd with SMTP id 12-20020a170906224c00b009b293c172ddmr4402324ejr.36.1695997934318;
        Fri, 29 Sep 2023 07:32:14 -0700 (PDT)
Received: from primary.. ([212.34.12.50])
        by smtp.gmail.com with ESMTPSA id a7-20020a170906670700b0099293cdbc98sm12660105ejp.145.2023.09.29.07.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:32:14 -0700 (PDT)
From: Abdel Alkuor <alkuor@gmail.com>
To: heikki.krogerus@linux.intel.com,
	krzysztof.kozlowski+dt@linaro.org,
	bryan.odonoghue@linaro.org
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ryan.eleceng@gmail.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Abdel Alkuor <abdelalkuor@geotab.com>
Subject: [PATCH v8 10/14] USB: typec: tps6598x: Add port registration for tps25750
Date: Fri, 29 Sep 2023 10:30:51 -0400
Message-Id: <20230929143055.31360-11-alkuor@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929143055.31360-1-alkuor@gmail.com>
References: <20230929143055.31360-1-alkuor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Abdel Alkuor <abdelalkuor@geotab.com>

TPS25750 doesn't have system configuration register to get dr/pr of the
current applied binary configuration.

Get data role from the device node and power role from PD status register.

Signed-off-by: Abdel Alkuor <abdelalkuor@geotab.com>
---
Changes in v8:
  - Change tps->cb to tps->data
Changes in v7:
  - Add driver name to commit subject
Changes in v6:
  - Add port registration to tipd data factory
Changes in v5:
  - Incorporating tps25750 into tps6598x driver

 drivers/usb/typec/tipd/core.c     | 68 ++++++++++++++++++++++++++++++-
 drivers/usb/typec/tipd/tps6598x.h | 10 +++++
 2 files changed, 77 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
index 580680986f66..dd2ecbea8031 100644
--- a/drivers/usb/typec/tipd/core.c
+++ b/drivers/usb/typec/tipd/core.c
@@ -40,6 +40,7 @@
 #define TPS_REG_CTRL_CONF		0x29
 #define TPS_REG_BOOT_STATUS		0x2D
 #define TPS_REG_POWER_STATUS		0x3f
+#define TPS_REG_PD_STATUS		0x40
 #define TPS_REG_RX_IDENTITY_SOP		0x48
 #define TPS_REG_DATA_STATUS		0x5f
 
@@ -102,8 +103,11 @@ static const char *const modes[] = {
 /* Unrecognized commands will be replaced with "!CMD" */
 #define INVALID_CMD(_cmd_)		(_cmd_ == 0x444d4321)
 
+struct tps6598x;
+
 struct tipd_data {
 	irq_handler_t irq_handler;
+	int (*register_port)(struct tps6598x *tps, struct fwnode_handle *node);
 };
 
 struct tps6598x {
@@ -208,6 +212,11 @@ static inline int tps6598x_read64(struct tps6598x *tps, u8 reg, u64 *val)
 	return tps6598x_block_read(tps, reg, val, sizeof(u64));
 }
 
+static inline int tps6598x_write8(struct tps6598x *tps, u8 reg, u8 val)
+{
+	return tps6598x_block_write(tps, reg, &val, sizeof(u8));
+}
+
 static inline int tps6598x_write64(struct tps6598x *tps, u8 reg, u64 val)
 {
 	return tps6598x_block_write(tps, reg, &val, sizeof(u64));
@@ -1084,16 +1093,73 @@ tps6598x_register_port(struct tps6598x *tps, struct fwnode_handle *fwnode)
 	return 0;
 }
 
+static int
+tps25750_register_port(struct tps6598x *tps, struct fwnode_handle *fwnode)
+{
+	struct typec_capability typec_cap = { };
+	const char *data_role;
+	u8 pd_status;
+	int ret;
+
+	ret = tps6598x_read8(tps, TPS_REG_PD_STATUS, &pd_status);
+	if (ret)
+		return ret;
+
+	ret = fwnode_property_read_string(fwnode, "data-role", &data_role);
+	if (ret) {
+		dev_err(tps->dev, "data-role not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = typec_find_port_data_role(data_role);
+	if (ret < 0) {
+		dev_err(tps->dev, "unknown data-role: %s\n", data_role);
+		return ret;
+	}
+
+	typec_cap.data = ret;
+	typec_cap.revision = USB_TYPEC_REV_1_3;
+	typec_cap.pd_revision = 0x300;
+	typec_cap.driver_data = tps;
+	typec_cap.ops = &tps6598x_ops;
+	typec_cap.fwnode = fwnode;
+	typec_cap.prefer_role = TYPEC_NO_PREFERRED_ROLE;
+
+	switch (TPS_PD_STATUS_PORT_TYPE(pd_status)) {
+	case TPS_PD_STATUS_PORT_TYPE_SINK_SOURCE:
+	case TPS_PD_STATUS_PORT_TYPE_SOURCE_SINK:
+		typec_cap.type = TYPEC_PORT_DRP;
+		break;
+	case TPS_PD_STATUS_PORT_TYPE_SINK:
+		typec_cap.type = TYPEC_PORT_SNK;
+		break;
+	case TPS_PD_STATUS_PORT_TYPE_SOURCE:
+		typec_cap.type = TYPEC_PORT_SRC;
+		break;
+	default:
+		return -ENODEV;
+	}
+
+	tps->port = typec_register_port(tps->dev, &typec_cap);
+	if (IS_ERR(tps->port))
+		return PTR_ERR(tps->port);
+
+	return 0;
+}
+
 static const struct tipd_data cd321x_data = {
 	.irq_handler = cd321x_interrupt,
+	.register_port = tps6598x_register_port,
 };
 
 static const struct tipd_data tps6598x_data = {
 	.irq_handler = tps6598x_interrupt,
+	.register_port = tps6598x_register_port,
 };
 
 static const struct tipd_data tps25750_data = {
 	.irq_handler = tps25750_interrupt,
+	.register_port = tps25750_register_port,
 };
 
 static const struct of_device_id tps6598x_of_match[] = {
@@ -1206,7 +1272,7 @@ static int tps6598x_probe(struct i2c_client *client)
 	if (ret)
 		goto err_role_put;
 
-	ret = tps6598x_register_port(tps, fwnode);
+	ret = tps->data->register_port(tps, fwnode);
 	if (ret)
 		goto err_role_put;
 
diff --git a/drivers/usb/typec/tipd/tps6598x.h b/drivers/usb/typec/tipd/tps6598x.h
index c000170f4547..3a9a43394134 100644
--- a/drivers/usb/typec/tipd/tps6598x.h
+++ b/drivers/usb/typec/tipd/tps6598x.h
@@ -203,4 +203,14 @@
 #define TPS_BOOT_STATUS_DEAD_BATTERY_FLAG	BIT(2)
 #define TPS_BOOT_STATUS_I2C_EEPROM_PRESENT	BIT(3)
 
+/* PD STATUS REG */
+#define TPS_REG_PD_STATUS_PORT_TYPE_MASK	GENMASK(5, 4)
+#define TPS_PD_STATUS_PORT_TYPE(x) \
+	TPS_FIELD_GET(TPS_REG_PD_STATUS_PORT_TYPE_MASK, x)
+
+#define TPS_PD_STATUS_PORT_TYPE_SINK_SOURCE	0
+#define TPS_PD_STATUS_PORT_TYPE_SINK		1
+#define TPS_PD_STATUS_PORT_TYPE_SOURCE		2
+#define TPS_PD_STATUS_PORT_TYPE_SOURCE_SINK	3
+
 #endif /* __TPS6598X_H__ */
-- 
2.34.1


