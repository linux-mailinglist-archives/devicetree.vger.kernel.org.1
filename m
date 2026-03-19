Return-Path: <devicetree+bounces-278005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO8wJcxJvGknwgIAu9opvQ
	(envelope-from <devicetree+bounces-278005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:09:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF8A2D188B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C67DA3017319
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7210336214D;
	Thu, 19 Mar 2026 19:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BBC3644C5
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947310; cv=none; b=fawkEYaXS+6BgvaBbBf+7XvF3ZNleopLMjDPstTrkfwpA5+0os5d8UqY7t9FOxTovusBcqQVwcFcowT/47vVTjDxhbqKrcjn45yAfLb+QR0/jrl0ULGDL71MvdKxbxam4JXkkZ1ytNT/WYVB14rxM/q7dZFbqPFNiHNhju4FIBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947310; c=relaxed/simple;
	bh=B+5ndv72BRvMzqSIMOP8Q+w6kT/EAJtV1+g9+4D/AqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kuh4z/YyIO95HWCU4I2yh77GI1FV0lqJi+esh2bNoRpA337QUOi3+2hhaca1t/LOQ/qvQGMg2/FCGFgIDJQRT2B/mtUGgZ7/4BPLFl2Q10kowhrRYMIqYxKHSYGFgThGPizvULFidRNwkZLmzccE4lYuyHJz5bhmSho5MnyHDcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2b0586d5bb8so7806485ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773947308; x=1774552108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uVN1V4DljApJF1LuKu7/toESVhsazsK/Hl64i9vmp3k=;
        b=bp0rFtz+O1gPsg/NyRDPLrLaNXkOTgeXnDZIIS2mV1DUKDCXD4LD8G7aYVhcl4/xxd
         A30XDnx1WSsD+sBV/vw4ekq3ikESHXhDqUA/bBJZj0QNOPxMqN3FVNonsw12cW38Nqln
         nwxnbTFn6quZBVl30ZFadmK29hGonS8vksSTBDBOtDA4kCmJMoWog1qaUMboLYxjwjSK
         z9837q8b99AbAZShyKEqd1ZuMmWTVNl9ve0nNzz0N4NA24bLdOQQYUEnHEqbOyaZw5oe
         sWRNyCeFUl91BHhZGoRaSmHnc9RZhh7iX+XqJaxn5D7xQQUFM8sqD9bDjhoe1xD8svgx
         XLRw==
X-Forwarded-Encrypted: i=1; AJvYcCW5wcJiWhKiXhrOcdeX3dA0Nr9MZYpm0ZPd55SktCAOofq6hOrq013JW44l8ZBTd6Id08UUgYEyxmfk@vger.kernel.org
X-Gm-Message-State: AOJu0YzRm6N2rkwfwEYKlAFpdul/l2M0/AT5G3CBuRH/Z5gnVZ1VlYM1
	v53qMoO+IUj+YcxLAadRG0POvhVhG67sbRCB5rM69CNsuezRlsGnYYQx
X-Gm-Gg: ATEYQzwvIdK75xRieQ/MpCz1pAhQhclvFXMyP76o5T0hSvqPl3AsH7vDWzgSSyyQ7pC
	B6OWOvfGDQAK+9ccPbywodFP/9zAWYY2UXlI5OPbbE6FSmYaWx6eQlltnKl1g2N1+6tK5r89D4H
	6n+OPZSmXOL2IDpZSBLUgK82eGM60o7E7Vlgu8FfxwWWXDxeI1kNKBNWRnSrEggOT0nSHlmQmqw
	df0LBz3/UEdW0bX6colsdajrRQX9w8778LIMtxKlS8EC0Ve0JcLTI5ux5B+OYm5dZyvFXXGvU7R
	h1BdAg2KAGyAU0pnW0QDtnDijj8qpPXo5NlnEPgFarXNrme7q3cIh31nzEy7wlRwP5ZgLfeRa2M
	Lxe0INRYcKbNbpbbjLBclbDvvu2p/Vd6bRlv3kdKS6QaYVtkwwrWqbhnarsGeWrohEXqMwzYe7J
	KB/3v6vlbtOOcC7x7bgEYy1RRC7KJDntJYb+nKGXC/0tT2TNTZRE8mz3aqIN+z6KGdUBmXaNCu+
	DLahJ5hndnqiK1VMetQ54kT/2cw2/2DHXArdmU=
X-Received: by 2002:a17:902:ce8b:b0:2a9:e8b:5326 with SMTP id d9443c01a7336-2b082717352mr3263335ad.23.1773947307231;
        Thu, 19 Mar 2026 12:08:27 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e603b2asm68665345ad.55.2026.03.19.12.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:08:26 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v6 2/2] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Fri, 20 Mar 2026 01:07:14 +0600
Message-ID: <20260319190738.151614-3-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319190738.151614-1-email@sirat.me>
References: <20260319190738.151614-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278005-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[sirat.me];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_SPAM(0.00)[0.420];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:url,linuxfoundation.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sirat.me:email,sirat.me:mid]
X-Rspamd-Queue-Id: 9EF8A2D188B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the STMicroelectronics VL53L1X Time-of-Flight
ranging sensor with I2C interface.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 MAINTAINERS                         |   1 +
 drivers/iio/proximity/Kconfig       |  15 +
 drivers/iio/proximity/Makefile      |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c | 820 ++++++++++++++++++++++++++++
 4 files changed, 837 insertions(+)
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c

diff --git a/MAINTAINERS b/MAINTAINERS
index a142a97be4cb..50531a87bf2e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25098,6 +25098,7 @@ M:	Siratul Islam <email@sirat.me>
 L:	linux-iio@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+F:	drivers/iio/proximity/vl53l1x-i2c.c
 
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/drivers/iio/proximity/Kconfig b/drivers/iio/proximity/Kconfig
index 6070974c2c85..bb77fad2a1b3 100644
--- a/drivers/iio/proximity/Kconfig
+++ b/drivers/iio/proximity/Kconfig
@@ -244,6 +244,21 @@ config VL53L0X_I2C
 	  To compile this driver as a module, choose M here: the
 	  module will be called vl53l0x-i2c.
 
+config VL53L1X_I2C
+	tristate "STMicroelectronics VL53L1X ToF ranger sensor (I2C)"
+	depends on I2C
+	select IIO_BUFFER
+	select IIO_TRIGGERED_BUFFER
+	select REGMAP_I2C
+	select RESET_CONTROLLER
+	help
+	  Say Y here to build a driver for STMicroelectronics VL53L1X
+	  ToF ranger sensors with i2c interface.
+	  This driver can be used to measure the distance of objects.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called vl53l1x-i2c.
+
 config AW96103
 	tristate "AW96103/AW96105 Awinic proximity sensor"
 	select REGMAP_I2C
diff --git a/drivers/iio/proximity/Makefile b/drivers/iio/proximity/Makefile
index 152034d38c49..4352833dd8a4 100644
--- a/drivers/iio/proximity/Makefile
+++ b/drivers/iio/proximity/Makefile
@@ -23,5 +23,6 @@ obj-$(CONFIG_SX_COMMON) 	+= sx_common.o
 obj-$(CONFIG_SX9500)		+= sx9500.o
 obj-$(CONFIG_VCNL3020)		+= vcnl3020.o
 obj-$(CONFIG_VL53L0X_I2C)	+= vl53l0x-i2c.o
+obj-$(CONFIG_VL53L1X_I2C)	+= vl53l1x-i2c.o
 obj-$(CONFIG_AW96103)		+= aw96103.o
 
diff --git a/drivers/iio/proximity/vl53l1x-i2c.c b/drivers/iio/proximity/vl53l1x-i2c.c
new file mode 100644
index 000000000000..771598b92e04
--- /dev/null
+++ b/drivers/iio/proximity/vl53l1x-i2c.c
@@ -0,0 +1,820 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+/*
+ * Support for ST VL53L1X FlightSense ToF Ranging Sensor on a i2c bus.
+ *
+ * Copyright (C) 2026 Siratul Islam <email@sirat.me>
+ *
+ * Datasheet available at
+ * <https://www.st.com/resource/en/datasheet/vl53l1x.pdf>
+ *
+ * Default 7-bit i2c slave address 0x29.
+ *
+ * The VL53L1X requires a firmware configuration blob to be loaded at boot.
+ * Register values for the default configuration are taken from
+ * ST's VL53L1X Ultra Lite Driver (STSW-IMG009).
+ */
+
+#include <linux/array_size.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <linux/completion.h>
+#include <linux/delay.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/math.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/reset.h>
+#include <linux/time.h>
+#include <linux/types.h>
+
+#include <asm/byteorder.h>
+
+#include <linux/iio/buffer.h>
+#include <linux/iio/iio.h>
+#include <linux/iio/trigger.h>
+#include <linux/iio/trigger_consumer.h>
+#include <linux/iio/triggered_buffer.h>
+
+#define VL53L1X_SOFT_RESET					0x0000
+#define VL53L1X_VHV_CONFIG__TIMEOUT_MACROP_LOOP_BOUND		0x0008
+#define VL53L1X_VHV_CONFIG__INIT				0x000B
+#define VL53L1X_GPIO_HV_MUX__CTRL				0x0030
+#define VL53L1X_GPIO__TIO_HV_STATUS				0x0031
+#define VL53L1X_SYSTEM__INTERRUPT_CONFIG_GPIO			0x0046
+#define VL53L1X_PHASECAL_CONFIG__TIMEOUT_MACROP			0x004B
+#define VL53L1X_RANGE_CONFIG__TIMEOUT_MACROP_A			0x005E
+#define VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_A			0x0060
+#define VL53L1X_RANGE_CONFIG__TIMEOUT_MACROP_B			0x0061
+#define VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_B			0x0063
+#define VL53L1X_RANGE_CONFIG__VALID_PHASE_HIGH			0x0069
+#define VL53L1X_SYSTEM__INTERMEASUREMENT_PERIOD			0x006C
+#define VL53L1X_SD_CONFIG__WOI_SD0				0x0078
+#define VL53L1X_SD_CONFIG__WOI_SD1				0x0079
+#define VL53L1X_SD_CONFIG__INITIAL_PHASE_SD0			0x007A
+#define VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1			0x007B
+#define VL53L1X_SYSTEM__INTERRUPT_CLEAR				0x0086
+#define VL53L1X_SYSTEM__MODE_START				0x0087
+#define VL53L1X_RESULT__RANGE_STATUS				0x0089
+#define VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0	0x0096
+#define VL53L1X_RESULT__OSC_CALIBRATE_VAL			0x00DE
+#define VL53L1X_FIRMWARE__SYSTEM_STATUS				0x00E5
+#define VL53L1X_IDENTIFICATION__MODEL_ID			0x010F
+
+#define VL53L1X_MODEL_ID_VAL		0xEACC
+
+#define VL53L1X_DEFAULT_CONFIG_ADDR	0x2D
+
+#define VL53L1X_MODE_START_TIMED	0x40
+#define VL53L1X_MODE_START_STOP		0x00
+
+#define VL53L1X_INT_NEW_SAMPLE_READY	0x02
+
+#define VL53L1X_GPIO_HV_MUX_POLARITY	BIT(4)
+
+#define VL53L1X_VHV_LOOP_BOUND_TWO	0x09
+
+#define VL53L1X_RANGE_STATUS_MASK	GENMASK(4, 0)
+#define VL53L1X_RANGE_STATUS_VALID	9
+
+#define VL53L1X_OSC_CALIBRATE_MASK	GENMASK(9, 0)
+
+/* Inter-measurement period uses PLL divider with 1.075 oscillator correction */
+static const struct u32_fract vl53l1x_osc_correction = {
+	.numerator = 1075,
+	.denominator = 1000,
+};
+
+enum vl53l1x_distance_mode {
+	VL53L1X_SHORT,
+	VL53L1X_LONG,
+};
+
+struct vl53l1x_data {
+	struct regmap *regmap;
+	struct completion completion;
+	struct regulator *vdd_supply;
+	struct reset_control *xshut_reset;
+	enum vl53l1x_distance_mode distance_mode;
+	u8 gpio_polarity;
+	int irq;
+};
+
+static const struct regmap_range vl53l1x_volatile_ranges[] = {
+	regmap_reg_range(VL53L1X_GPIO__TIO_HV_STATUS,
+			 VL53L1X_GPIO__TIO_HV_STATUS),
+	regmap_reg_range(VL53L1X_RESULT__RANGE_STATUS,
+			 VL53L1X_RESULT__RANGE_STATUS),
+	regmap_reg_range(VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0,
+			 VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0 + 1),
+	regmap_reg_range(VL53L1X_RESULT__OSC_CALIBRATE_VAL,
+			 VL53L1X_RESULT__OSC_CALIBRATE_VAL + 1),
+	regmap_reg_range(VL53L1X_FIRMWARE__SYSTEM_STATUS,
+			 VL53L1X_FIRMWARE__SYSTEM_STATUS),
+};
+
+static const struct regmap_access_table vl53l1x_volatile_table = {
+	.yes_ranges = vl53l1x_volatile_ranges,
+	.n_yes_ranges = ARRAY_SIZE(vl53l1x_volatile_ranges),
+};
+
+static const struct regmap_range vl53l1x_wr_only_ranges[] = {
+	regmap_reg_range(VL53L1X_SOFT_RESET, VL53L1X_SOFT_RESET),
+	regmap_reg_range(VL53L1X_SYSTEM__INTERRUPT_CLEAR,
+			 VL53L1X_SYSTEM__MODE_START),
+};
+
+static const struct regmap_access_table vl53l1x_readable_table = {
+	.no_ranges = vl53l1x_wr_only_ranges,
+	.n_no_ranges = ARRAY_SIZE(vl53l1x_wr_only_ranges),
+};
+
+static const struct regmap_config vl53l1x_regmap_config = {
+	.reg_bits = 16,
+	.val_bits = 8,
+	.max_register = VL53L1X_IDENTIFICATION__MODEL_ID + 1,
+	.cache_type = REGCACHE_MAPLE,
+	.volatile_table = &vl53l1x_volatile_table,
+	.rd_table = &vl53l1x_readable_table,
+};
+
+static int vl53l1x_read_u16(struct vl53l1x_data *data, u16 reg, u16 *val)
+{
+	__be16 buf;
+	int ret;
+
+	ret = regmap_bulk_read(data->regmap, reg, &buf, sizeof(buf));
+	if (ret)
+		return ret;
+
+	*val = be16_to_cpu(buf);
+	return 0;
+}
+
+static int vl53l1x_write_u16(struct vl53l1x_data *data, u16 reg, u16 val)
+{
+	__be16 buf = cpu_to_be16(val);
+
+	return regmap_bulk_write(data->regmap, reg, &buf, sizeof(buf));
+}
+
+static int vl53l1x_write_u32(struct vl53l1x_data *data, u16 reg, u32 val)
+{
+	__be32 buf = cpu_to_be32(val);
+
+	return regmap_bulk_write(data->regmap, reg, &buf, sizeof(buf));
+}
+
+static int vl53l1x_clear_irq(struct vl53l1x_data *data)
+{
+	return regmap_write(data->regmap, VL53L1X_SYSTEM__INTERRUPT_CLEAR, 0x01);
+}
+
+static int vl53l1x_start_ranging(struct vl53l1x_data *data)
+{
+	int ret;
+
+	ret = vl53l1x_clear_irq(data);
+	if (ret)
+		return ret;
+
+	return regmap_write(data->regmap, VL53L1X_SYSTEM__MODE_START,
+			    VL53L1X_MODE_START_TIMED);
+}
+
+static int vl53l1x_stop_ranging(struct vl53l1x_data *data)
+{
+	return regmap_write(data->regmap, VL53L1X_SYSTEM__MODE_START,
+			    VL53L1X_MODE_START_STOP);
+}
+
+/*
+ * Default configuration blob from ST's VL53L1X Ultra Lite Driver
+ * (STSW-IMG009).
+ */
+static const u8 vl53l1x_default_config[] = {
+	0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x02, 0x08,	/* 0x2d..0x34 */
+	0x00, 0x08, 0x10, 0x01, 0x01, 0x00, 0x00, 0x00,	/* 0x35..0x3c */
+	0x00, 0xFF, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,	/* 0x3d..0x44 */
+	0x00, 0x20, 0x0B, 0x00, 0x00, 0x02, 0x0A, 0x21,	/* 0x45..0x4c */
+	0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0xC8,	/* 0x4d..0x54 */
+	0x00, 0x00, 0x38, 0xFF, 0x01, 0x00, 0x08, 0x00,	/* 0x55..0x5c */
+	0x00, 0x01, 0xCC, 0x0F, 0x01, 0xF1, 0x0D, 0x01,	/* 0x5d..0x64 */
+	0x68, 0x00, 0x80, 0x08, 0xB8, 0x00, 0x00, 0x00,	/* 0x65..0x6c */
+	0x00, 0x0F, 0x89, 0x00, 0x00, 0x00, 0x00, 0x00,	/* 0x6d..0x74 */
+	0x00, 0x00, 0x01, 0x0F, 0x0D, 0x0E, 0x0E, 0x00,	/* 0x75..0x7c */
+	0x00, 0x02, 0xC7, 0xFF, 0x9B, 0x00, 0x00, 0x00,	/* 0x7d..0x84 */
+	0x01, 0x00, 0x00,				/* 0x85..0x87 */
+};
+
+static int vl53l1x_chip_init(struct vl53l1x_data *data)
+{
+	struct device *dev = regmap_get_device(data->regmap);
+	unsigned int val;
+	u16 model_id;
+	int ret;
+
+	if (!data->xshut_reset) {
+		ret = regmap_write(data->regmap, VL53L1X_SOFT_RESET, 0x00);
+		if (ret)
+			return ret;
+		fsleep(100); /* conservative reset pulse, no spec */
+
+		ret = regmap_write(data->regmap, VL53L1X_SOFT_RESET, 0x01);
+		if (ret)
+			return ret;
+		fsleep(1000); /* conservative boot wait, no spec */
+	}
+
+	ret = regmap_read_poll_timeout(data->regmap,
+				       VL53L1X_FIRMWARE__SYSTEM_STATUS, val,
+				       val & BIT(0),
+				       1 * USEC_PER_MSEC,
+				       100 * USEC_PER_MSEC);
+	if (ret)
+		return dev_err_probe(dev, ret, "firmware boot timeout\n");
+
+	ret = vl53l1x_read_u16(data, VL53L1X_IDENTIFICATION__MODEL_ID,
+			       &model_id);
+	if (ret)
+		return ret;
+
+	if (model_id != VL53L1X_MODEL_ID_VAL)
+		dev_info(dev, "unknown model id: 0x%04x, continuing\n", model_id);
+
+	ret = regmap_bulk_write(data->regmap, VL53L1X_DEFAULT_CONFIG_ADDR,
+				vl53l1x_default_config,
+				sizeof(vl53l1x_default_config));
+	if (ret)
+		return ret;
+
+	ret = regmap_read(data->regmap, VL53L1X_GPIO_HV_MUX__CTRL, &val);
+	if (ret)
+		return ret;
+	data->gpio_polarity = !!(val & VL53L1X_GPIO_HV_MUX_POLARITY);
+
+	/* Initial ranging cycle for VHV calibration */
+	ret = vl53l1x_start_ranging(data);
+	if (ret)
+		return ret;
+
+	/* 1ms poll, 1s timeout covers max timing budgets (per ST Ultra Lite Driver) */
+	ret = regmap_read_poll_timeout(data->regmap,
+				       VL53L1X_GPIO__TIO_HV_STATUS, val,
+				       (val & 1) != data->gpio_polarity,
+				       1 * USEC_PER_MSEC,
+				       1000 * USEC_PER_MSEC);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_clear_irq(data);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_stop_ranging(data);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(data->regmap,
+			   VL53L1X_VHV_CONFIG__TIMEOUT_MACROP_LOOP_BOUND,
+			   VL53L1X_VHV_LOOP_BOUND_TWO);
+	if (ret)
+		return ret;
+
+	return regmap_write(data->regmap, VL53L1X_VHV_CONFIG__INIT, 0x00);
+}
+
+static const struct reg_sequence vl53l1x_mode_short[] = {
+	{ VL53L1X_PHASECAL_CONFIG__TIMEOUT_MACROP,	0x14 },
+	{ VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_A,		0x07 },
+	{ VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_B,		0x05 },
+	{ VL53L1X_RANGE_CONFIG__VALID_PHASE_HIGH,	0x38 },
+	{ VL53L1X_SD_CONFIG__WOI_SD0,			0x07 },
+	{ VL53L1X_SD_CONFIG__WOI_SD1,			0x05 },
+	{ VL53L1X_SD_CONFIG__INITIAL_PHASE_SD0,		0x06 },
+	{ VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1,		0x06 },
+};
+
+static const struct reg_sequence vl53l1x_mode_long[] = {
+	{ VL53L1X_PHASECAL_CONFIG__TIMEOUT_MACROP,	0x0A },
+	{ VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_A,		0x0F },
+	{ VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_B,		0x0D },
+	{ VL53L1X_RANGE_CONFIG__VALID_PHASE_HIGH,	0xB8 },
+	{ VL53L1X_SD_CONFIG__WOI_SD0,			0x0F },
+	{ VL53L1X_SD_CONFIG__WOI_SD1,			0x0D },
+	{ VL53L1X_SD_CONFIG__INITIAL_PHASE_SD0,		0x0E },
+	{ VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1,		0x0E },
+};
+
+static const struct {
+	const struct reg_sequence *regs;
+	size_t num_regs;
+} vl53l1x_mode_configs[] = {
+	[VL53L1X_SHORT] = { vl53l1x_mode_short, ARRAY_SIZE(vl53l1x_mode_short) },
+	[VL53L1X_LONG]  = { vl53l1x_mode_long, ARRAY_SIZE(vl53l1x_mode_long) },
+};
+
+static int vl53l1x_set_distance_mode(struct vl53l1x_data *data,
+				     enum vl53l1x_distance_mode mode)
+{
+	int ret;
+
+	if (mode >= ARRAY_SIZE(vl53l1x_mode_configs))
+		return -EINVAL;
+
+	ret = regmap_multi_reg_write(data->regmap,
+				     vl53l1x_mode_configs[mode].regs,
+				     vl53l1x_mode_configs[mode].num_regs);
+	if (ret)
+		return ret;
+
+	data->distance_mode = mode;
+	return 0;
+}
+
+/*
+ * The timing budget controls how long the sensor spends collecting
+ * a single range measurement. Pre-computed TIMEOUT_MACROP register
+ * values from ST's VL53L1X Ultra Lite Driver.
+ */
+static int vl53l1x_set_timing_budget(struct vl53l1x_data *data, u16 budget_ms)
+{
+	u16 timeout_a, timeout_b;
+	int ret;
+
+	switch (data->distance_mode) {
+	case VL53L1X_SHORT:
+		switch (budget_ms) {
+		case 15:
+			timeout_a = 0x001D;
+			timeout_b = 0x0027;
+			break;
+		case 20:
+			timeout_a = 0x0051;
+			timeout_b = 0x006E;
+			break;
+		case 33:
+			timeout_a = 0x00D6;
+			timeout_b = 0x006E;
+			break;
+		case 50:
+			timeout_a = 0x01AE;
+			timeout_b = 0x01E8;
+			break;
+		case 100:
+			timeout_a = 0x02E1;
+			timeout_b = 0x0388;
+			break;
+		case 200:
+			timeout_a = 0x03E1;
+			timeout_b = 0x0496;
+			break;
+		case 500:
+			timeout_a = 0x0591;
+			timeout_b = 0x05C1;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	case VL53L1X_LONG:
+		switch (budget_ms) {
+		case 20:
+			timeout_a = 0x001E;
+			timeout_b = 0x0022;
+			break;
+		case 33:
+			timeout_a = 0x0060;
+			timeout_b = 0x006E;
+			break;
+		case 50:
+			timeout_a = 0x00AD;
+			timeout_b = 0x00C6;
+			break;
+		case 100:
+			timeout_a = 0x01CC;
+			timeout_b = 0x01EA;
+			break;
+		case 200:
+			timeout_a = 0x02D9;
+			timeout_b = 0x02F8;
+			break;
+		case 500:
+			timeout_a = 0x048F;
+			timeout_b = 0x04A4;
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = vl53l1x_write_u16(data, VL53L1X_RANGE_CONFIG__TIMEOUT_MACROP_A,
+				timeout_a);
+	if (ret)
+		return ret;
+
+	return vl53l1x_write_u16(data, VL53L1X_RANGE_CONFIG__TIMEOUT_MACROP_B,
+				 timeout_b);
+}
+
+static int vl53l1x_set_inter_measurement_ms(struct vl53l1x_data *data,
+					    u16 period_ms)
+{
+	u16 osc_calibrate_val;
+	u16 clock_pll;
+	u32 inter_meas;
+	int ret;
+
+	ret = vl53l1x_read_u16(data, VL53L1X_RESULT__OSC_CALIBRATE_VAL,
+			       &osc_calibrate_val);
+	if (ret)
+		return ret;
+
+	clock_pll = osc_calibrate_val & VL53L1X_OSC_CALIBRATE_MASK;
+	inter_meas = (clock_pll * period_ms * vl53l1x_osc_correction.numerator) /
+		     vl53l1x_osc_correction.denominator;
+
+	return vl53l1x_write_u32(data,
+				 VL53L1X_SYSTEM__INTERMEASUREMENT_PERIOD,
+				 inter_meas);
+}
+
+static int vl53l1x_read_proximity(struct vl53l1x_data *data, int *val)
+{
+	unsigned int range_status;
+	u16 distance;
+	int ret;
+
+	if (data->irq) {
+		reinit_completion(&data->completion);
+
+		ret = vl53l1x_clear_irq(data);
+		if (ret)
+			return ret;
+
+		if (!wait_for_completion_timeout(&data->completion, HZ))
+			return -ETIMEDOUT;
+	} else {
+		unsigned int rdy;
+
+		/* 1ms poll, 1s timeout covers max timing budgets (per ST Ultra Lite Driver) */
+		ret = regmap_read_poll_timeout(data->regmap,
+					       VL53L1X_GPIO__TIO_HV_STATUS, rdy,
+					       (rdy & 1) != data->gpio_polarity,
+					       1 * USEC_PER_MSEC,
+					       1000 * USEC_PER_MSEC);
+		if (ret)
+			return ret;
+	}
+
+	ret = regmap_read(data->regmap, VL53L1X_RESULT__RANGE_STATUS,
+			  &range_status);
+	if (ret)
+		goto clear_irq;
+
+	if (FIELD_GET(VL53L1X_RANGE_STATUS_MASK, range_status) !=
+	    VL53L1X_RANGE_STATUS_VALID) {
+		ret = -EIO;
+		goto clear_irq;
+	}
+
+	ret = vl53l1x_read_u16(data,
+			       VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0,
+			       &distance);
+	if (ret)
+		goto clear_irq;
+
+	*val = distance;
+
+clear_irq:
+	vl53l1x_clear_irq(data);
+	return ret;
+}
+
+static const struct iio_chan_spec vl53l1x_channels[] = {
+	{
+		.type = IIO_DISTANCE,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				      BIT(IIO_CHAN_INFO_SCALE),
+		.scan_index = 0,
+		.scan_type = {
+			.sign = 'u',
+			.realbits = 16,
+			.storagebits = 16,
+		},
+	},
+	IIO_CHAN_SOFT_TIMESTAMP(1),
+};
+
+static int vl53l1x_read_raw(struct iio_dev *indio_dev,
+			    const struct iio_chan_spec *chan,
+			    int *val, int *val2, long mask)
+{
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+	int ret;
+
+	if (chan->type != IIO_DISTANCE)
+		return -EINVAL;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		if (!iio_device_claim_direct(indio_dev))
+			return -EBUSY;
+		ret = vl53l1x_read_proximity(data, val);
+		iio_device_release_direct(indio_dev);
+		if (ret)
+			return ret;
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SCALE:
+		*val = 0;
+		*val2 = 1000;
+		return IIO_VAL_INT_PLUS_MICRO;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct iio_info vl53l1x_info = {
+	.read_raw = vl53l1x_read_raw,
+	.validate_trigger = iio_validate_own_trigger,
+};
+
+static irqreturn_t vl53l1x_trigger_handler(int irq, void *priv)
+{
+	struct iio_poll_func *pf = priv;
+	struct iio_dev *indio_dev = pf->indio_dev;
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+	struct {
+		u16 distance;
+		aligned_s64 timestamp;
+	} scan = {};
+	unsigned int range_status;
+	int ret;
+
+	ret = regmap_read(data->regmap, VL53L1X_RESULT__RANGE_STATUS,
+			  &range_status);
+	if (ret)
+		goto notify_and_clear_irq;
+	if (FIELD_GET(VL53L1X_RANGE_STATUS_MASK, range_status) !=
+		      VL53L1X_RANGE_STATUS_VALID)
+		goto notify_and_clear_irq;
+
+	ret = vl53l1x_read_u16(data,
+			       VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0,
+			       &scan.distance);
+	if (ret)
+		goto notify_and_clear_irq;
+
+	iio_push_to_buffers_with_timestamp(indio_dev, &scan,
+					   iio_get_time_ns(indio_dev));
+
+notify_and_clear_irq:
+	iio_trigger_notify_done(indio_dev->trig);
+	vl53l1x_clear_irq(data);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t vl53l1x_irq_handler(int irq, void *priv)
+{
+	struct iio_dev *indio_dev = priv;
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+
+	if (iio_buffer_enabled(indio_dev))
+		iio_trigger_poll(indio_dev->trig);
+	else
+		complete(&data->completion);
+
+	return IRQ_HANDLED;
+}
+
+static int vl53l1x_buffer_postenable(struct iio_dev *indio_dev)
+{
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+
+	return vl53l1x_start_ranging(data);
+}
+
+static int vl53l1x_buffer_predisable(struct iio_dev *indio_dev)
+{
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+	int ret;
+
+	ret = vl53l1x_stop_ranging(data);
+	if (ret)
+		return ret;
+
+	/*
+	 * Best-effort drain. Wait for any in-flight IRQ before clearing.
+	 * Ignoring timeout as device is shutting down anyway.
+	 */
+	reinit_completion(&data->completion);
+	wait_for_completion_timeout(&data->completion, HZ / 10);
+
+	return vl53l1x_clear_irq(data);
+}
+
+static const struct iio_buffer_setup_ops vl53l1x_buffer_setup_ops = {
+	.postenable = &vl53l1x_buffer_postenable,
+	.predisable = &vl53l1x_buffer_predisable,
+};
+
+static const struct iio_trigger_ops vl53l1x_trigger_ops = {
+	.validate_device = iio_trigger_validate_own_device,
+};
+
+static void vl53l1x_stop_ranging_action(void *_data)
+{
+	vl53l1x_stop_ranging(_data);
+}
+
+static void vl53l1x_power_off(void *_data)
+{
+	struct vl53l1x_data *data = _data;
+
+	reset_control_assert(data->xshut_reset);
+	regulator_disable(data->vdd_supply);
+}
+
+static int vl53l1x_power_on(struct vl53l1x_data *data)
+{
+	int ret;
+
+	ret = regulator_enable(data->vdd_supply);
+	if (ret)
+		return ret;
+
+	ret = reset_control_deassert(data->xshut_reset);
+	if (ret) {
+		regulator_disable(data->vdd_supply);
+		return ret;
+	}
+	/*
+	 * 1.2 ms max boot duration.
+	 * Datasheet Section 3.6 "Power up and boot sequence".
+	 */
+	fsleep(1200);
+
+	return 0;
+}
+
+static int vl53l1x_configure_irq(struct device *dev, int irq,
+				 struct iio_dev *indio_dev)
+{
+	struct vl53l1x_data *data = iio_priv(indio_dev);
+	int ret;
+
+	ret = devm_request_irq(dev, irq, vl53l1x_irq_handler, IRQF_NO_THREAD,
+			       indio_dev->name, indio_dev);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(data->regmap, VL53L1X_SYSTEM__INTERRUPT_CONFIG_GPIO,
+			   VL53L1X_INT_NEW_SAMPLE_READY);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to configure IRQ\n");
+
+	return 0;
+}
+
+static int vl53l1x_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct vl53l1x_data *data;
+	struct iio_dev *indio_dev;
+	int ret;
+
+	if (!i2c_check_functionality(client->adapter,
+				     I2C_FUNC_SMBUS_READ_I2C_BLOCK |
+				     I2C_FUNC_SMBUS_BYTE_DATA))
+		return -EOPNOTSUPP;
+
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	data = iio_priv(indio_dev);
+	data->irq = client->irq;
+
+	data->regmap = devm_regmap_init_i2c(client, &vl53l1x_regmap_config);
+	if (IS_ERR(data->regmap))
+		return dev_err_probe(dev, PTR_ERR(data->regmap),
+				     "regmap initialization failed\n");
+
+	/*
+	 * vdd-supply is required in the DT binding but we
+	 * continue if it is missing to support older DTs.
+	 */
+	data->vdd_supply = devm_regulator_get(dev, "vdd");
+	if (IS_ERR(data->vdd_supply))
+		return dev_err_probe(dev, PTR_ERR(data->vdd_supply),
+				     "Unable to get VDD regulator\n");
+
+	data->xshut_reset = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(data->xshut_reset))
+		return dev_err_probe(dev, PTR_ERR(data->xshut_reset),
+				     "Cannot get reset control\n");
+
+	ret = vl53l1x_power_on(data);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to power on the chip\n");
+
+	ret = devm_add_action_or_reset(dev, vl53l1x_power_off, data);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_chip_init(data);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_set_distance_mode(data, VL53L1X_LONG);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_set_timing_budget(data, 50);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_set_inter_measurement_ms(data, 50);
+	if (ret)
+		return ret;
+
+	ret = vl53l1x_start_ranging(data);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, vl53l1x_stop_ranging_action, data);
+	if (ret)
+		return ret;
+
+	indio_dev->name = "vl53l1x";
+	indio_dev->info = &vl53l1x_info;
+	indio_dev->channels = vl53l1x_channels;
+	indio_dev->num_channels = ARRAY_SIZE(vl53l1x_channels);
+	indio_dev->modes = INDIO_DIRECT_MODE;
+
+	if (client->irq) {
+		struct iio_trigger *trig;
+
+		init_completion(&data->completion);
+
+		trig = devm_iio_trigger_alloc(dev, "%s-dev%d", indio_dev->name,
+					      iio_device_id(indio_dev));
+		if (!trig)
+			return -ENOMEM;
+
+		trig->ops = &vl53l1x_trigger_ops;
+		iio_trigger_set_drvdata(trig, indio_dev);
+		ret = devm_iio_trigger_register(dev, trig);
+		if (ret)
+			return ret;
+
+		indio_dev->trig = iio_trigger_get(trig);
+
+		ret = vl53l1x_configure_irq(dev, client->irq, indio_dev);
+		if (ret)
+			return ret;
+
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev, NULL,
+						      &vl53l1x_trigger_handler,
+						      &vl53l1x_buffer_setup_ops);
+		if (ret)
+			return ret;
+	}
+
+	return devm_iio_device_register(dev, indio_dev);
+}
+
+static const struct i2c_device_id vl53l1x_id[] = {
+	{ "vl53l1x" },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, vl53l1x_id);
+
+static const struct of_device_id st_vl53l1x_dt_match[] = {
+	{ .compatible = "st,vl53l1x" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, st_vl53l1x_dt_match);
+
+static struct i2c_driver vl53l1x_driver = {
+	.driver = {
+		.name = "vl53l1x-i2c",
+		.of_match_table = st_vl53l1x_dt_match,
+	},
+	.probe = vl53l1x_probe,
+	.id_table = vl53l1x_id,
+};
+module_i2c_driver(vl53l1x_driver);
+
+MODULE_AUTHOR("Siratul Islam <email@sirat.me>");
+MODULE_DESCRIPTION("ST VL53L1X ToF ranging sensor driver");
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.53.0


