Return-Path: <devicetree+bounces-39270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 590FD84BE4D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 20:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BF961C21945
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 19:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0D917732;
	Tue,  6 Feb 2024 19:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LaCvXy5w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F86317727;
	Tue,  6 Feb 2024 19:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707248886; cv=none; b=lDZXm6YuVP1YSZkCf7g2Z4f3kQHbHaneMMH0AMBdc5/6t7aQnd/27SCSQ5vDrty2BR6BLrLqFrX641oMLdKj3JhNzE33blMAOJp9ng+CyXxPTz3kPDFRzZNL0Tie+t6IF2TvEe0JdU2PI1iX9Jka1peF7EEgiIwJgssmw3rA0bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707248886; c=relaxed/simple;
	bh=MjMSo5AJk+Pie6Xf59ZPkdNOM1Vy2aKvAnfcRG3vPXs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gVNHE6urOPnAd0Rns4oBnA8VI+TaBEpm7eKhT/Y56CNETOxpSGt1LTcFLV0BFw8KPksUoDQyzSsw4grBxyF2RikKXuxt0QV/KO7oM1i+8ANWX/QDSle9u12P8Q7OaIZqo9eyl8L228gPsC31gjtuJkh5rXxZ113N47aCHBDXl0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LaCvXy5w; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55ee686b5d5so7934517a12.0;
        Tue, 06 Feb 2024 11:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707248882; x=1707853682; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MGyvWnPKUIVjN1HiN690qliCnBf3fC7uuXIFezTRm+w=;
        b=LaCvXy5w66vmBZpZEYPKiYtrL3tQ/12abUXpqivnPXwg+Z+pUZ3uKP5WDIY+GQGFhi
         PwJp7JXhDOCL4F5vWrfY29G/jWNd68KyspkAaUZkAJ+RryUpNHsEQflComyjbnNdK8sm
         5urYj2Xn1lvHjuJF+FcppJun+YIa80NJjtg9jya4k0fFLjNEMzZ+5RgWIWq18aY/GuB3
         uSba6o+D4UsxA/YIAqsWcr4png2hEd0UOJGN1oFlf+9udBd+zvIX4A4azR1bQA8NkHc+
         rS9mkuZIj7lPvvGKg7tuik3grzyCJY0Vtr6Xc3/TIXKyIfmp4Mj/juvbhem9fM1OZrXF
         A4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707248882; x=1707853682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MGyvWnPKUIVjN1HiN690qliCnBf3fC7uuXIFezTRm+w=;
        b=OCPgz3ZmYnNjX/OtT+lTRUzcbRjNisBOt0m+VEwO/izag6/YzRuhh58WSx5cNQrV94
         sGlPVUSPCvxo+WbzjVP/atk294ENuWxQwRfyv2rw6AmWVyW4F+lnKUcaOqv68vijgF4O
         g8fL7qiNNbJkfHvysQjHTGheCrFRCymI9rL6L/krPATS+HF0QZjPrY6SVeB82Z/NmxSQ
         4GozuGUnmsrVTL4mqe+3okm07hxG4TM0D4uiay+DdN89toRFDpF/ESvTr4ZvSVH7wqOm
         NoVfafrcqDjjo/DWN1pFuzeiOmKtDZpWSI0Fk43oRfVSsNQKLZcP71EgY37M+sV5b6q8
         M3yQ==
X-Gm-Message-State: AOJu0Yyi5PhRwwQTHPd/5Mmh8B2A8XrNsA26sC5hYKavS1WMAflDQ3w9
	z+2Xna1f8aH0ES4WTT2k6Vtyo2PIwFjEwsfTTamCvL2OYPZjfizp
X-Google-Smtp-Source: AGHT+IGy32WCfYQkVDpeIzmRtLAE8N7SYOsfSyaL3/njdVwna0YjiSrw9lTgittxsTa2/h/i7Xnc2g==
X-Received: by 2002:a17:906:23e9:b0:a38:32cd:983c with SMTP id j9-20020a17090623e900b00a3832cd983cmr1783898ejg.33.1707248882197;
        Tue, 06 Feb 2024 11:48:02 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVxcCjmRKV/aoGX9N8xAOG9+aUGyuSD2rWYC57RtVsaQluyMc30JyxQl65SItn9eZZ1TxwjWIQawoJapu8HP++GDmkTHKFUdONbrNqEVZTm6cG5XJT9y6aauCH/XkQKDJ5Qix4woGC6okIzkFuuGTAOgxmop/iJukdyHZLxHkC3feXbqOdhtx35uJvqa1pg2QRiw+zuRXuTSGxkrJFF/nzJRCf6vUW+GYmP8ZPDLpIMF6ou4L46VuYJ8ecUznQiQYWoFLS6Q2csOuCMakNEoda+RVLixt0j5bsPhTRdF4Rwz8iP0cSbDsW1foiYBWiszg9qjOxXP8C8sKkqG/mwIyIrSlJHzRRw0K18MNqJs3FGm+gpNELc4c3q8N/u5uHLU2XWaqsohrzGfUz/wz8vzCDlKyV5g77caQN9WLpUNRHZcdJ6wv6iD9Ib5bPYrsqN+H/KeDvZF4kyJGdMM88AyWc4BFJSt7ydGDn8oh2kKPXmnP6+TT3VwEeE4KMJn8v5qqkffupjDKyeP7Lp4IMXYMRPEMsqi+mdUDr/Yim83XBzvzX1phMxBPpDbzPZqaqWyQ/gO3BmdBgrBTjwqrqYHsNT7vtA
Received: from corebook.localdomain (2001-1c00-020d-1300-1b1c-4449-176a-89ea.cable.dynamic.v6.ziggo.nl. [2001:1c00:20d:1300:1b1c:4449:176a:89ea])
        by smtp.gmail.com with ESMTPSA id ps7-20020a170906bf4700b00a379be71a84sm1476767ejb.219.2024.02.06.11.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 11:48:01 -0800 (PST)
From: Eric Woudstra <ericwouds@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"Frank Wunderlich" <frank-w@public-files.de>,
	Daniel Golle <daniel@makrotopia.org>,
	Lucien Jheng  <lucien.jheng@airoha.com>,
	Zhi-Jun You <hujy652@protonmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	Eric Woudstra <ericwouds@gmail.com>
Subject: [PATCH net-next 2/2] net: phy: air_en8811h: Add the Airoha EN8811H PHY driver
Date: Tue,  6 Feb 2024 20:47:51 +0100
Message-ID: <20240206194751.1901802-3-ericwouds@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20240206194751.1901802-1-ericwouds@gmail.com>
References: <20240206194751.1901802-1-ericwouds@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 * Source originated from airoha's en8811h v1.2.1 driver
 * Moved air_en8811h.h to air_en8811h.c
 * Removed air_pbus_reg_write() as it writes to another device on mdio-bus
 * Load firmware from /lib/firmware/airoha/ instead of /lib/firmware/
 * Added .get_rate_matching()
 * Use generic phy_read/write() and phy_read/write_mmd()
 * Edited .get_features() to use generic C45 functions
 * Edited .config_aneg() and .read_status() to use a mix of generic C22/C45
 * Use led handling functions from mediatek-ge-soc.c
 * Simplified led handling by storing led rules
 * Cleanup macro definitions
 * Cleanup code to pass checkpatch.pl
 * General code cleanup

Changes from original RFC patch:

 * Use the correct order in Kconfig and Makefile
 * Change some register naming to correspond with datasheet
 * Use phy_driver .read_page() and .write_page()
 * Use module_phy_driver()
 * Use get_unaligned_le16() instead of macro
 * In .config_aneg() and .read_status() use genphy_xxx() C22
 * Use another vendor register to read real speed
 * Load firmware only once and store firmware version
 * Apply 2.5G LPA work-around (firmware before 24011202)
 * Read 2.5G LPA from vendor register (firmware 24011202 and later)

Changes to be committed:
	modified:   drivers/net/phy/Kconfig
	modified:   drivers/net/phy/Makefile
	new file:   drivers/net/phy/air_en8811h.c

Signed-off-by: Eric Woudstra <ericwouds@gmail.com>
---
 drivers/net/phy/Kconfig       |    5 +
 drivers/net/phy/Makefile      |    1 +
 drivers/net/phy/air_en8811h.c | 1006 +++++++++++++++++++++++++++++++++
 3 files changed, 1012 insertions(+)
 create mode 100644 drivers/net/phy/air_en8811h.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index e261e58bf158..efbff264b659 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -76,6 +76,11 @@ config SFP
 
 comment "MII PHY device drivers"
 
+config AIR_EN8811H_PHY
+	tristate "Airoha EN8811H 2.5 Gigabit PHY"
+	help
+	  Currently supports the Airoha EN8811H PHY.
+
 config AMD_PHY
 	tristate "AMD and Altima PHYs"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 197acfa0b412..202ed7f450da 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -34,6 +34,7 @@ obj-y				+= $(sfp-obj-y) $(sfp-obj-m)
 
 obj-$(CONFIG_ADIN_PHY)		+= adin.o
 obj-$(CONFIG_ADIN1100_PHY)	+= adin1100.o
+obj-$(CONFIG_AIR_EN8811H_PHY)   += air_en8811h.o
 obj-$(CONFIG_AMD_PHY)		+= amd.o
 obj-$(CONFIG_AQUANTIA_PHY)	+= aquantia/
 ifdef CONFIG_AX88796B_RUST_PHY
diff --git a/drivers/net/phy/air_en8811h.c b/drivers/net/phy/air_en8811h.c
new file mode 100644
index 000000000000..45ae8d20f752
--- /dev/null
+++ b/drivers/net/phy/air_en8811h.c
@@ -0,0 +1,1006 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Airoha Ethernet PHYs
+ *
+ * Currently supporting the EN8811H.
+ *
+ * Limitations of the EN8811H:
+ * - Only full duplex supported
+ * - Forced speed (AN off) is not supported by hardware (100Mbps)
+ *
+ * Source originated from airoha's en8811h.c and en8811h.h v1.2.1
+ *
+ * Copyright (C) 2023 Airoha Technology Corp.
+ */
+
+#include <linux/phy.h>
+#include <linux/firmware.h>
+#include <linux/property.h>
+#include <asm/unaligned.h>
+
+#define EN8811H_PHY_ID		0x03a2a411
+
+#define EN8811H_MD32_DM		"airoha/EthMD32.dm.bin"
+#define EN8811H_MD32_DSP	"airoha/EthMD32.DSP.bin"
+
+#define AIR_FW_ADDR_DM	0x00000000
+#define AIR_FW_ADDR_DSP	0x00100000
+
+/* u32 (DWORD) component macros */
+#define LOWORD(d) ((u16)(u32)(d))
+#define HIWORD(d) ((u16)(((u32)(d)) >> 16))
+
+/* MII Registers */
+#define AIR_AUX_CTRL_STATUS	0x1d
+#define   AIR_AUX_CTRL_STATUS_SPEED_MASK	GENMASK(4, 2)
+#define   AIR_AUX_CTRL_STATUS_SPEED_100		0x4
+#define   AIR_AUX_CTRL_STATUS_SPEED_1000	0x8
+#define   AIR_AUX_CTRL_STATUS_SPEED_2500	0xc
+
+#define AIR_EXT_PAGE_ACCESS		0x1f
+#define   AIR_PHY_PAGE_STANDARD			0x0000
+#define   AIR_PHY_PAGE_EXTENDED_4		0x0004
+
+/* MII Registers Page 4*/
+#define AIR_PBUS_MODE			0x10
+#define   AIR_PBUS_MODE_ADDR_FIXED		0x0000
+#define   AIR_PBUS_MODE_ADDR_INCR		BIT(15)
+#define AIR_PBUS_WR_ADDR_HIGH		0x11
+#define AIR_PBUS_WR_ADDR_LOW		0x12
+#define AIR_PBUS_WR_DATA_HIGH		0x13
+#define AIR_PBUS_WR_DATA_LOW		0x14
+#define AIR_PBUS_RD_ADDR_HIGH		0x15
+#define AIR_PBUS_RD_ADDR_LOW		0x16
+#define AIR_PBUS_RD_DATA_HIGH		0x17
+#define AIR_PBUS_RD_DATA_LOW		0x18
+
+/* Registers on MDIO_MMD_VEND1 */
+#define EN8811H_PHY_FW_STATUS		0x8009
+#define   EN8811H_PHY_READY			0x02
+
+#define AIR_PHY_HOST_CMD_1		0x800c
+#define AIR_PHY_HOST_CMD_1_MODE1		0x0
+#define AIR_PHY_HOST_CMD_2		0x800d
+#define AIR_PHY_HOST_CMD_2_MODE1		0x0
+#define AIR_PHY_HOST_CMD_3		0x800e
+#define AIR_PHY_HOST_CMD_3_MODE1		0x1101
+#define AIR_PHY_HOST_CMD_3_DOCMD		0x1100
+#define AIR_PHY_HOST_CMD_4		0x800f
+#define AIR_PHY_HOST_CMD_4_MODE1		0x0002
+#define AIR_PHY_HOST_CMD_4_INTCLR		0x00e4
+
+/* Registers on MDIO_MMD_VEND2 */
+#define AIR_PHY_LED_BCR			0x021
+#define   AIR_PHY_LED_BCR_MODE_MASK		GENMASK(1, 0)
+#define   AIR_PHY_LED_BCR_TIME_TEST		BIT(2)
+#define   AIR_PHY_LED_BCR_CLK_EN		BIT(3)
+#define   AIR_PHY_LED_BCR_EXT_CTRL		BIT(15)
+
+#define AIR_PHY_LED_DUR_ON		0x022
+
+#define AIR_PHY_LED_DUR_BLINK		0x023
+
+#define AIR_PHY_LED_ON(i)	       (0x024 + ((i) * 2))
+#define   AIR_PHY_LED_ON_MASK			(GENMASK(6, 0) | BIT(8))
+#define   AIR_PHY_LED_ON_LINK1000		BIT(0)
+#define   AIR_PHY_LED_ON_LINK100		BIT(1)
+#define   AIR_PHY_LED_ON_LINK10			BIT(2)
+#define   AIR_PHY_LED_ON_LINKDOWN		BIT(3)
+#define   AIR_PHY_LED_ON_FDX			BIT(4) /* Full duplex */
+#define   AIR_PHY_LED_ON_HDX			BIT(5) /* Half duplex */
+#define   AIR_PHY_LED_ON_FORCE_ON		BIT(6)
+#define   AIR_PHY_LED_ON_LINK2500		BIT(8)
+#define   AIR_PHY_LED_ON_POLARITY		BIT(14)
+#define   AIR_PHY_LED_ON_ENABLE			BIT(15)
+
+#define AIR_PHY_LED_BLINK(i)	       (0x025 + ((i) * 2))
+#define   AIR_PHY_LED_BLINK_1000TX		BIT(0)
+#define   AIR_PHY_LED_BLINK_1000RX		BIT(1)
+#define   AIR_PHY_LED_BLINK_100TX		BIT(2)
+#define   AIR_PHY_LED_BLINK_100RX		BIT(3)
+#define   AIR_PHY_LED_BLINK_10TX		BIT(4)
+#define   AIR_PHY_LED_BLINK_10RX		BIT(5)
+#define   AIR_PHY_LED_BLINK_COLLISION		BIT(6)
+#define   AIR_PHY_LED_BLINK_RX_CRC_ERR		BIT(7)
+#define   AIR_PHY_LED_BLINK_RX_IDLE_ERR		BIT(8)
+#define   AIR_PHY_LED_BLINK_FORCE_BLINK		BIT(9)
+#define   AIR_PHY_LED_BLINK_2500TX		BIT(10)
+#define   AIR_PHY_LED_BLINK_2500RX		BIT(11)
+
+/* Registers on BUCKPBUS */
+#define EN8811H_2P5G_LPA		0x3b30
+#define   EN8811H_2P5G_LPA_2P5G			BIT(0)
+
+#define EN8811H_FW_VERSION		0x3b3c
+
+#define EN8811H_POLARITY		0xca0f8
+#define   EN8811H_POLARITY_TX_NORMAL		BIT(0)
+#define   EN8811H_POLARITY_RX_REVERSE		BIT(1)
+
+#define EN8811H_GPIO_OUTPUT		0xcf8b8
+#define   EN8811H_GPIO_OUTPUT_345		(BIT(3) | BIT(4) | BIT(5))
+
+#define EN8811H_FW_CTRL_1		0x0f0018
+#define   EN8811H_FW_CTRL_1_START		0x0
+#define   EN8811H_FW_CTRL_1_FINISH		0x1
+#define EN8811H_FW_CTRL_2		0x800000
+#define EN8811H_FW_CTRL_2_LOADING		BIT(11)
+
+#define EN8811H_LED_COUNT	3
+
+/* GPIO5  <-> BASE_T_LED0
+ * GPIO4  <-> BASE_T_LED1
+ * GPIO3  <-> BASE_T_LED2
+ *
+ * Default setup suitable for 2 leds connected:
+ *    100M link up triggers led0, only led0 blinking on traffic
+ *   1000M link up triggers led1, only led1 blinking on traffic
+ *   2500M link up triggers led0 and led1, both blinking on traffic
+ * Also suitable for 1 led connected:
+ *     any link up triggers led2
+ */
+#define AIR_DEFAULT_TRIGGER_LED0 (BIT(TRIGGER_NETDEV_LINK_2500) | \
+				  BIT(TRIGGER_NETDEV_LINK_100)  | \
+				  BIT(TRIGGER_NETDEV_RX)        | \
+				  BIT(TRIGGER_NETDEV_TX))
+#define AIR_DEFAULT_TRIGGER_LED1 (BIT(TRIGGER_NETDEV_LINK_2500) | \
+				  BIT(TRIGGER_NETDEV_LINK_1000) | \
+				  BIT(TRIGGER_NETDEV_RX)        | \
+				  BIT(TRIGGER_NETDEV_TX))
+#define AIR_DEFAULT_TRIGGER_LED2  BIT(TRIGGER_NETDEV_LINK)
+
+struct led {
+	unsigned long rules;
+	unsigned long state;
+};
+
+struct en8811h_priv {
+	u32		firmware_version;
+	struct led	led[EN8811H_LED_COUNT];
+};
+
+enum {
+	AIR_PHY_LED_STATE_FORCE_ON,
+	AIR_PHY_LED_STATE_FORCE_BLINK,
+};
+
+enum {
+	AIR_PHY_LED_DUR_BLINK_32M,
+	AIR_PHY_LED_DUR_BLINK_64M,
+	AIR_PHY_LED_DUR_BLINK_128M,
+	AIR_PHY_LED_DUR_BLINK_256M,
+	AIR_PHY_LED_DUR_BLINK_512M,
+	AIR_PHY_LED_DUR_BLINK_1024M,
+};
+
+enum {
+	AIR_LED_DISABLE,
+	AIR_LED_ENABLE,
+};
+
+enum {
+	AIR_ACTIVE_LOW,
+	AIR_ACTIVE_HIGH,
+};
+
+enum {
+	AIR_LED_MODE_DISABLE,
+	AIR_LED_MODE_USER_DEFINE,
+};
+
+#define AIR_PHY_LED_DUR_UNIT	1024
+#define AIR_PHY_LED_DUR (AIR_PHY_LED_DUR_UNIT << AIR_PHY_LED_DUR_BLINK_64M)
+
+static const unsigned long en8811h_led_trig = (BIT(TRIGGER_NETDEV_FULL_DUPLEX) |
+					       BIT(TRIGGER_NETDEV_LINK)        |
+					       BIT(TRIGGER_NETDEV_LINK_10)     |
+					       BIT(TRIGGER_NETDEV_LINK_100)    |
+					       BIT(TRIGGER_NETDEV_LINK_1000)   |
+					       BIT(TRIGGER_NETDEV_LINK_2500)   |
+					       BIT(TRIGGER_NETDEV_RX)          |
+					       BIT(TRIGGER_NETDEV_TX));
+
+static int air_phy_read_page(struct phy_device *phydev)
+{
+	return __phy_read(phydev, AIR_EXT_PAGE_ACCESS);
+}
+
+static int air_phy_write_page(struct phy_device *phydev, int page)
+{
+	return __phy_write(phydev, AIR_EXT_PAGE_ACCESS, page);
+}
+
+static int __air_buckpbus_reg_write(struct phy_device *phydev,
+				    u32 pbus_address, u32 pbus_data)
+{
+	int ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_MODE, AIR_PBUS_MODE_ADDR_FIXED);
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_ADDR_HIGH, HIWORD(pbus_address));
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_ADDR_LOW,  LOWORD(pbus_address));
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_DATA_HIGH, HIWORD(pbus_data));
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_DATA_LOW,  LOWORD(pbus_data));
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int air_buckpbus_reg_write(struct phy_device *phydev,
+				  u32 pbus_address, u32 pbus_data)
+{
+	int ret, saved_page;
+
+	saved_page = phy_select_page(phydev, AIR_PHY_PAGE_EXTENDED_4);
+
+	ret = __air_buckpbus_reg_write(phydev, pbus_address, pbus_data);
+	if (ret < 0)
+		phydev_err(phydev, "%s 0x%08x failed: %d\n", __func__,
+			   pbus_address, ret);
+
+	return phy_restore_page(phydev, saved_page, ret);
+;
+}
+
+static int __air_buckpbus_reg_read(struct phy_device *phydev,
+				   u32 pbus_address, u32 *pbus_data)
+{
+	int pbus_data_low, pbus_data_high;
+	int ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_MODE, AIR_PBUS_MODE_ADDR_FIXED);
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_RD_ADDR_HIGH, HIWORD(pbus_address));
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_RD_ADDR_LOW,  LOWORD(pbus_address));
+	if (ret < 0)
+		return ret;
+
+	pbus_data_high = __phy_read(phydev, AIR_PBUS_RD_DATA_HIGH);
+	if (pbus_data_high < 0)
+		return ret;
+
+	pbus_data_low = __phy_read(phydev, AIR_PBUS_RD_DATA_LOW);
+	if (pbus_data_low < 0)
+		return ret;
+
+	*pbus_data = (u16)pbus_data_low | ((u32)(u16)pbus_data_high << 16);
+	return 0;
+}
+
+static int air_buckpbus_reg_read(struct phy_device *phydev,
+				 u32 pbus_address, u32 *pbus_data)
+{
+	int ret, saved_page;
+
+	saved_page = phy_select_page(phydev, AIR_PHY_PAGE_EXTENDED_4);
+
+	ret = __air_buckpbus_reg_read(phydev, pbus_address, pbus_data);
+	if (ret < 0)
+		phydev_err(phydev, "%s 0x%08x failed: %d\n", __func__,
+			   pbus_address, ret);
+
+	return phy_restore_page(phydev, saved_page, ret);
+}
+
+static int __air_write_buf(struct phy_device *phydev, u32 address,
+			   const struct firmware *fw)
+{
+	unsigned int offset;
+	int ret;
+	u16 val;
+
+	ret = __phy_write(phydev, AIR_PBUS_MODE, AIR_PBUS_MODE_ADDR_INCR);
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_ADDR_HIGH, HIWORD(address));
+	if (ret < 0)
+		return ret;
+
+	ret = __phy_write(phydev, AIR_PBUS_WR_ADDR_LOW,  LOWORD(address));
+	if (ret < 0)
+		return ret;
+
+	for (offset = 0; offset < fw->size; offset += 4) {
+		val = get_unaligned_le16(&fw->data[offset + 2]);
+		ret = __phy_write(phydev, AIR_PBUS_WR_DATA_HIGH, val);
+		if (ret < 0)
+			return ret;
+
+		val = get_unaligned_le16(&fw->data[offset]);
+		ret = __phy_write(phydev, AIR_PBUS_WR_DATA_LOW, val);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int air_write_buf(struct phy_device *phydev, u32 address,
+			 const struct firmware *fw)
+{
+	int ret, saved_page;
+
+	saved_page = phy_select_page(phydev, AIR_PHY_PAGE_EXTENDED_4);
+
+	ret = __air_write_buf(phydev, address, fw);
+	if (ret < 0)
+		phydev_err(phydev, "%s 0x%08x failed: %d\n", __func__,
+			   address, ret);
+
+	return phy_restore_page(phydev, saved_page, ret);
+}
+
+static int en8811h_load_firmware(struct phy_device *phydev)
+{
+	struct device *dev = &phydev->mdio.dev;
+	const struct firmware *fw1, *fw2;
+	u32 pbus_value;
+	int ret;
+
+	ret = request_firmware_direct(&fw1, EN8811H_MD32_DM, dev);
+	if (ret < 0)
+		return ret;
+
+	ret = request_firmware_direct(&fw2, EN8811H_MD32_DSP, dev);
+	if (ret < 0)
+		goto en8811h_load_firmware_rel1;
+
+	ret = air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_1,
+				     EN8811H_FW_CTRL_1_START);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = air_buckpbus_reg_read(phydev, EN8811H_FW_CTRL_2, &pbus_value);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+	pbus_value |= EN8811H_FW_CTRL_2_LOADING;
+	ret = air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_2, pbus_value);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = air_write_buf(phydev, AIR_FW_ADDR_DM,  fw1);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = air_write_buf(phydev, AIR_FW_ADDR_DSP, fw2);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = air_buckpbus_reg_read(phydev, EN8811H_FW_CTRL_2, &pbus_value);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+	pbus_value &= ~EN8811H_FW_CTRL_2_LOADING;
+	ret = air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_2, pbus_value);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_1,
+				     EN8811H_FW_CTRL_1_FINISH);
+	if (ret < 0)
+		goto en8811h_load_firmware_out;
+
+	ret = 0;
+
+en8811h_load_firmware_out:
+	release_firmware(fw2);
+
+en8811h_load_firmware_rel1:
+	release_firmware(fw1);
+
+	if (ret < 0)
+		phydev_err(phydev, "Load firmware failed: %d\n", ret);
+
+	return ret;
+}
+
+static int en8811h_restart_host(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_1,
+				     EN8811H_FW_CTRL_1_START);
+	if (ret < 0)
+		return ret;
+
+	return air_buckpbus_reg_write(phydev, EN8811H_FW_CTRL_1,
+				     EN8811H_FW_CTRL_1_FINISH);
+}
+
+static int air_hw_led_on_set(struct phy_device *phydev, u8 index, bool on)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	bool changed;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	if (on)
+		changed = !test_and_set_bit(AIR_PHY_LED_STATE_FORCE_ON,
+					    &priv->led[index].state);
+	else
+		changed = !!test_and_clear_bit(AIR_PHY_LED_STATE_FORCE_ON,
+					       &priv->led[index].state);
+
+	changed |= (priv->led[index].rules != 0);
+
+	if (changed)
+		return phy_modify_mmd(phydev, MDIO_MMD_VEND2,
+				      AIR_PHY_LED_ON(index),
+				      AIR_PHY_LED_ON_MASK,
+				      on ? AIR_PHY_LED_ON_FORCE_ON : 0);
+
+	return 0;
+}
+
+static int air_hw_led_blink_set(struct phy_device *phydev, u8 index,
+				bool blinking)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	bool changed;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	if (blinking)
+		changed = !test_and_set_bit(AIR_PHY_LED_STATE_FORCE_BLINK,
+					    &priv->led[index].state);
+	else
+		changed = !!test_and_clear_bit(AIR_PHY_LED_STATE_FORCE_BLINK,
+					       &priv->led[index].state);
+
+	changed |= (priv->led[index].rules != 0);
+
+	if (changed)
+		return phy_write_mmd(phydev, MDIO_MMD_VEND2,
+				     AIR_PHY_LED_BLINK(index),
+				     blinking ?
+				     AIR_PHY_LED_BLINK_FORCE_BLINK : 0);
+	else
+		return 0;
+}
+
+static int air_led_blink_set(struct phy_device *phydev, u8 index,
+			     unsigned long *delay_on,
+			     unsigned long *delay_off)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	bool blinking = false;
+	int err;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	if (delay_on && delay_off && (*delay_on > 0) && (*delay_off > 0)) {
+		blinking = true;
+		*delay_on = 50;
+		*delay_off = 50;
+	}
+
+	err = air_hw_led_blink_set(phydev, index, blinking);
+	if (err)
+		return err;
+
+	/* led-blink set, so switch led-on off */
+	err = air_hw_led_on_set(phydev, index, false);
+	if (err)
+		return err;
+
+	/* hw-control is off*/
+	if (!!test_bit(AIR_PHY_LED_STATE_FORCE_BLINK, &priv->led[index].state))
+		priv->led[index].rules = 0;
+
+	return 0;
+}
+
+static int air_led_brightness_set(struct phy_device *phydev, u8 index,
+				  enum led_brightness value)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	int err;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	/* led-on set, so switch led-blink off */
+	err = air_hw_led_blink_set(phydev, index, false);
+	if (err)
+		return err;
+
+	err = air_hw_led_on_set(phydev, index, (value != LED_OFF));
+	if (err)
+		return err;
+
+	/* hw-control is off */
+	if (!!test_bit(AIR_PHY_LED_STATE_FORCE_ON, &priv->led[index].state))
+		priv->led[index].rules = 0;
+
+	return 0;
+}
+
+static int air_led_hw_control_get(struct phy_device *phydev, u8 index,
+				  unsigned long *rules)
+{
+	struct en8811h_priv *priv = phydev->priv;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	*rules = priv->led[index].rules;
+
+	return 0;
+};
+
+static int air_led_hw_control_set(struct phy_device *phydev, u8 index,
+				  unsigned long rules)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	u16 on = 0, blink = 0;
+	int ret;
+
+	priv->led[index].rules = rules;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	if (rules & (BIT(TRIGGER_NETDEV_LINK_10)   | BIT(TRIGGER_NETDEV_LINK))) {
+		on |= AIR_PHY_LED_ON_LINK10;
+		if (rules & BIT(TRIGGER_NETDEV_RX))
+			blink |= AIR_PHY_LED_BLINK_10RX;
+		if (rules & BIT(TRIGGER_NETDEV_TX))
+			blink |= AIR_PHY_LED_BLINK_10TX;
+	}
+
+	if (rules & (BIT(TRIGGER_NETDEV_LINK_100)  | BIT(TRIGGER_NETDEV_LINK))) {
+		on |= AIR_PHY_LED_ON_LINK100;
+		if (rules & BIT(TRIGGER_NETDEV_RX))
+			blink |= AIR_PHY_LED_BLINK_100RX;
+		if (rules & BIT(TRIGGER_NETDEV_TX))
+			blink |= AIR_PHY_LED_BLINK_100TX;
+	}
+
+	if (rules & (BIT(TRIGGER_NETDEV_LINK_1000) | BIT(TRIGGER_NETDEV_LINK))) {
+		on |= AIR_PHY_LED_ON_LINK1000;
+		if (rules & BIT(TRIGGER_NETDEV_RX))
+			blink |= AIR_PHY_LED_BLINK_1000RX;
+		if (rules & BIT(TRIGGER_NETDEV_TX))
+			blink |= AIR_PHY_LED_BLINK_1000TX;
+	}
+
+	if (rules & (BIT(TRIGGER_NETDEV_LINK_2500) | BIT(TRIGGER_NETDEV_LINK))) {
+		on |= AIR_PHY_LED_ON_LINK2500;
+		if (rules & BIT(TRIGGER_NETDEV_RX))
+			blink |= AIR_PHY_LED_BLINK_2500RX;
+		if (rules & BIT(TRIGGER_NETDEV_TX))
+			blink |= AIR_PHY_LED_BLINK_2500TX;
+	}
+
+	if (on == 0) {
+		if (rules & BIT(TRIGGER_NETDEV_RX)) {
+			blink |= AIR_PHY_LED_BLINK_10RX   |
+				 AIR_PHY_LED_BLINK_100RX  |
+				 AIR_PHY_LED_BLINK_1000RX |
+				 AIR_PHY_LED_BLINK_2500RX;
+		}
+		if (rules & BIT(TRIGGER_NETDEV_TX)) {
+			blink |= AIR_PHY_LED_BLINK_10TX   |
+				 AIR_PHY_LED_BLINK_100TX  |
+				 AIR_PHY_LED_BLINK_1000TX |
+				 AIR_PHY_LED_BLINK_2500TX;
+		}
+	}
+
+	if (rules & BIT(TRIGGER_NETDEV_FULL_DUPLEX))
+		on |= AIR_PHY_LED_ON_FDX;
+
+	if (rules & BIT(TRIGGER_NETDEV_HALF_DUPLEX))
+		on |= AIR_PHY_LED_ON_HDX;
+
+	if (blink || on) {
+		/* switch hw-control on, so led-on and led-blink are off */
+		clear_bit(AIR_PHY_LED_STATE_FORCE_ON, &priv->led[index].state);
+		clear_bit(AIR_PHY_LED_STATE_FORCE_BLINK, &priv->led[index].state);
+	} else {
+		priv->led[index].rules = 0;
+	}
+
+	ret = phy_modify_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_ON(index),
+			     AIR_PHY_LED_ON_MASK, on);
+
+	if (ret < 0)
+		return ret;
+
+	return phy_write_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_BLINK(index),
+			     blink);
+};
+
+static int air_led_init(struct phy_device *phydev, u8 index, u8 state, u8 pol)
+{
+	int cl45_data;
+	int err;
+
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	cl45_data = phy_read_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_ON(index));
+	if (cl45_data < 0)
+		return cl45_data;
+
+	if (state == AIR_LED_ENABLE)
+		cl45_data |= AIR_PHY_LED_ON_ENABLE;
+	else
+		cl45_data &= ~AIR_PHY_LED_ON_ENABLE;
+
+	if (pol == AIR_ACTIVE_HIGH)
+		cl45_data |= AIR_PHY_LED_ON_POLARITY;
+	else
+		cl45_data &= ~AIR_PHY_LED_ON_POLARITY;
+
+	err = phy_write_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_ON(index),
+			    cl45_data);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static int air_leds_init(struct phy_device *phydev, int num, int dur, int mode)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	int cl45_data = dur;
+	int ret, i;
+
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_DUR_BLINK,
+			    cl45_data);
+	if (ret < 0)
+		return ret;
+
+	cl45_data >>= 1;
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_DUR_ON,
+			    cl45_data);
+	if (ret < 0)
+		return ret;
+
+	cl45_data = phy_read_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_BCR);
+	if (cl45_data < 0)
+		return cl45_data;
+
+	switch (mode) {
+	case AIR_LED_MODE_DISABLE:
+		cl45_data &= ~AIR_PHY_LED_BCR_EXT_CTRL;
+		cl45_data &= ~AIR_PHY_LED_BCR_MODE_MASK;
+		break;
+	case AIR_LED_MODE_USER_DEFINE:
+		cl45_data |= AIR_PHY_LED_BCR_EXT_CTRL;
+		cl45_data |= AIR_PHY_LED_BCR_CLK_EN;
+		break;
+	default:
+		phydev_err(phydev, "LED mode %d is not supported\n", mode);
+		return -EINVAL;
+	}
+
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND2, AIR_PHY_LED_BCR, cl45_data);
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < num; ++i) {
+		ret = air_led_init(phydev, i, AIR_LED_ENABLE, AIR_ACTIVE_HIGH);
+		if (ret < 0) {
+			phydev_err(phydev, "LED%d init failed: %d\n", i, ret);
+			return ret;
+		}
+		air_led_hw_control_set(phydev, i, priv->led[i].rules);
+	}
+
+	return 0;
+}
+
+static int en8811h_led_hw_is_supported(struct phy_device *phydev, u8 index,
+				       unsigned long rules)
+{
+	if (index >= EN8811H_LED_COUNT)
+		return -EINVAL;
+
+	/* All combinations of the supported triggers are allowed */
+	if (rules & ~en8811h_led_trig)
+		return -EOPNOTSUPP;
+
+	return 0;
+};
+
+static int en8811h_probe(struct phy_device *phydev)
+{
+	struct en8811h_priv *priv;
+
+	priv = devm_kzalloc(&phydev->mdio.dev, sizeof(struct en8811h_priv),
+			    GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->led[0].rules = AIR_DEFAULT_TRIGGER_LED0;
+	priv->led[1].rules = AIR_DEFAULT_TRIGGER_LED1;
+	priv->led[2].rules = AIR_DEFAULT_TRIGGER_LED2;
+
+	phydev->priv = priv;
+
+	/* MDIO_DEVS1/2 empty, so set mmds_present bits here */
+	phydev->c45_ids.mmds_present |= MDIO_DEVS_PMAPMD | MDIO_DEVS_AN;
+
+	return 0;
+}
+
+static int en8811h_config_init(struct phy_device *phydev)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	struct device *dev = &phydev->mdio.dev;
+	int ret, pollret, reg_value;
+	u32 pbus_value;
+
+	if (!priv->firmware_version)
+		ret = en8811h_load_firmware(phydev);
+	else
+		ret = en8811h_restart_host(phydev);
+	if (ret < 0)
+		return ret;
+
+	/* Because of mdio-lock, may have to wait for multiple loads */
+	pollret = phy_read_mmd_poll_timeout(phydev, MDIO_MMD_VEND1,
+					    EN8811H_PHY_FW_STATUS, reg_value,
+					    reg_value == EN8811H_PHY_READY,
+					    20000, 7500000, true);
+
+	ret = air_buckpbus_reg_read(phydev, EN8811H_FW_VERSION, &pbus_value);
+	if (ret < 0)
+		return ret;
+
+	if (pollret || !pbus_value) {
+		phydev_err(phydev, "Firmware not ready: 0x%x\n", reg_value);
+		return -ENODEV;
+	}
+
+	if (!priv->firmware_version) {
+		phydev_info(phydev, "MD32 firmware version: %08x\n", pbus_value);
+		priv->firmware_version = pbus_value;
+	}
+
+	/* Select mode 1, the only mode supported */
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_1,
+			    AIR_PHY_HOST_CMD_1_MODE1);
+	if (ret < 0)
+		return ret;
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_2,
+			    AIR_PHY_HOST_CMD_2_MODE1);
+	if (ret < 0)
+		return ret;
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_3,
+			    AIR_PHY_HOST_CMD_3_MODE1);
+	if (ret < 0)
+		return ret;
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_4,
+			    AIR_PHY_HOST_CMD_4_MODE1);
+	if (ret < 0)
+		return ret;
+
+	/* Serdes polarity */
+	ret = air_buckpbus_reg_read(phydev, EN8811H_POLARITY, &pbus_value);
+	if (ret < 0)
+		return ret;
+	if (device_property_read_bool(dev, "airoha,pnswap-rx"))
+		pbus_value |=  EN8811H_POLARITY_RX_REVERSE;
+	else
+		pbus_value &= ~EN8811H_POLARITY_RX_REVERSE;
+	if (device_property_read_bool(dev, "airoha,pnswap-tx"))
+		pbus_value &= ~EN8811H_POLARITY_TX_NORMAL;
+	else
+		pbus_value |=  EN8811H_POLARITY_TX_NORMAL;
+	ret = air_buckpbus_reg_write(phydev, EN8811H_POLARITY, pbus_value);
+	if (ret < 0)
+		return ret;
+
+	ret = air_leds_init(phydev, EN8811H_LED_COUNT, AIR_PHY_LED_DUR,
+			    AIR_LED_MODE_USER_DEFINE);
+	if (ret < 0) {
+		phydev_err(phydev, "Failed to initialize leds: %d\n", ret);
+		return ret;
+	}
+
+	ret = air_buckpbus_reg_read(phydev, EN8811H_GPIO_OUTPUT, &pbus_value);
+	if (ret < 0)
+		return ret;
+	pbus_value |= EN8811H_GPIO_OUTPUT_345;
+	ret = air_buckpbus_reg_write(phydev, EN8811H_GPIO_OUTPUT, pbus_value);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int en8811h_get_features(struct phy_device *phydev)
+{
+	linkmode_set_bit_array(phy_basic_ports_array,
+			       ARRAY_SIZE(phy_basic_ports_array),
+			       phydev->supported);
+
+	return genphy_c45_pma_read_abilities(phydev);
+}
+
+static int en8811h_get_rate_matching(struct phy_device *phydev,
+				     phy_interface_t iface)
+{
+	return RATE_MATCH_PAUSE;
+}
+
+static int en8811h_config_aneg(struct phy_device *phydev)
+{
+	bool changed = false;
+	int err, val;
+
+	val = 0;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+			      phydev->advertising))
+		val |= MDIO_AN_10GBT_CTRL_ADV2_5G;
+	err =  phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL,
+				      MDIO_AN_10GBT_CTRL_ADV2_5G, val);
+	if (err < 0)
+		return err;
+	if (err > 0)
+		changed = true;
+
+	return __genphy_config_aneg(phydev, changed);
+}
+
+static int en8811h_read_status(struct phy_device *phydev)
+{
+	struct en8811h_priv *priv = phydev->priv;
+	u32 pbus_value;
+	int ret, val;
+
+	ret = genphy_update_link(phydev);
+	if (ret)
+		return ret;
+
+	phydev->master_slave_get = MASTER_SLAVE_CFG_UNSUPPORTED;
+	phydev->master_slave_state = MASTER_SLAVE_STATE_UNSUPPORTED;
+	phydev->speed = SPEED_UNKNOWN;
+	phydev->duplex = DUPLEX_UNKNOWN;
+	phydev->pause = 0;
+	phydev->asym_pause = 0;
+
+	ret = genphy_read_master_slave(phydev);
+	if (ret < 0)
+		return ret;
+
+	ret = genphy_read_lpa(phydev);
+	if (ret < 0)
+		return ret;
+
+	/* Get link partner 2.5GBASE-T ability from vendor register */
+	ret = air_buckpbus_reg_read(phydev, EN8811H_2P5G_LPA, &pbus_value);
+	if (ret < 0)
+		return ret;
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+			 phydev->lp_advertising,
+			 pbus_value & EN8811H_2P5G_LPA_2P5G);
+
+	if (phydev->autoneg == AUTONEG_ENABLE && phydev->autoneg_complete)
+		phy_resolve_aneg_pause(phydev);
+
+	if (!phydev->link)
+		return 0;
+
+	/* Get real speed from vendor register */
+	val = phy_read(phydev, AIR_AUX_CTRL_STATUS);
+	if (val < 0)
+		return val;
+	switch (val & AIR_AUX_CTRL_STATUS_SPEED_MASK) {
+	case AIR_AUX_CTRL_STATUS_SPEED_2500:
+		phydev->speed = SPEED_2500;
+		break;
+	case AIR_AUX_CTRL_STATUS_SPEED_1000:
+		phydev->speed = SPEED_1000;
+		break;
+	case AIR_AUX_CTRL_STATUS_SPEED_100:
+		phydev->speed = SPEED_100;
+		break;
+	}
+
+	/* BUG in PHY firmware: MDIO_AN_10GBT_STAT_LP2_5G does not get set.
+	 * Firmware before version 24011202 has no vendor register 2P5G_LPA.
+	 * Assume link partner advertised it if connected at 2500Mbps.
+	 */
+	if (priv->firmware_version < 0x24011202) {
+		linkmode_mod_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+				 phydev->lp_advertising,
+				 phydev->speed == SPEED_2500);
+	}
+
+	/* Only supports full duplex */
+	phydev->duplex = DUPLEX_FULL;
+
+	return 0;
+}
+
+static int en8811h_clear_intr(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_3,
+			    AIR_PHY_HOST_CMD_3_DOCMD);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_write_mmd(phydev, MDIO_MMD_VEND1, AIR_PHY_HOST_CMD_4,
+			    AIR_PHY_HOST_CMD_4_INTCLR);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static irqreturn_t en8811h_handle_interrupt(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = en8811h_clear_intr(phydev);
+	if (ret < 0) {
+		phy_error(phydev);
+		return IRQ_NONE;
+	}
+
+	phy_trigger_machine(phydev);
+
+	return IRQ_HANDLED;
+}
+
+static struct phy_driver en8811h_driver[] = {
+{
+	PHY_ID_MATCH_MODEL(EN8811H_PHY_ID),
+	.name			= "Airoha EN8811H",
+	.probe			= en8811h_probe,
+	.get_features		= en8811h_get_features,
+	.config_init		= en8811h_config_init,
+	.get_rate_matching	= en8811h_get_rate_matching,
+	.config_aneg		= en8811h_config_aneg,
+	.read_status		= en8811h_read_status,
+	.config_intr		= en8811h_clear_intr,
+	.handle_interrupt	= en8811h_handle_interrupt,
+	.led_hw_is_supported	= en8811h_led_hw_is_supported,
+	.read_page		= air_phy_read_page,
+	.write_page		= air_phy_write_page,
+	.led_blink_set		= air_led_blink_set,
+	.led_brightness_set	= air_led_brightness_set,
+	.led_hw_control_set	= air_led_hw_control_set,
+	.led_hw_control_get	= air_led_hw_control_get,
+} };
+
+module_phy_driver(en8811h_driver);
+
+static struct mdio_device_id __maybe_unused en8811h_tbl[] = {
+	{ PHY_ID_MATCH_MODEL(EN8811H_PHY_ID) },
+	{ }
+};
+MODULE_DEVICE_TABLE(mdio, en8811h_tbl);
+MODULE_FIRMWARE(EN8811H_MD32_DM);
+MODULE_FIRMWARE(EN8811H_MD32_DSP);
+
+MODULE_DESCRIPTION("Airoha EN8811H PHY drivers");
+MODULE_AUTHOR("Airoha");
+MODULE_AUTHOR("Eric Woudstra <ericwouds@gmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.42.1


