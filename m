Return-Path: <devicetree+bounces-15646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1257EB196
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02B6B281227
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF0C4120C;
	Tue, 14 Nov 2023 14:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cAGwG9D3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD820405FC;
	Tue, 14 Nov 2023 14:08:57 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA0FAD;
	Tue, 14 Nov 2023 06:08:54 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507e85ebf50so7477996e87.1;
        Tue, 14 Nov 2023 06:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699970932; x=1700575732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yK9SIBlN+AIxz2olUnewB7wFXBm3ioZt5ByTy6xELdg=;
        b=cAGwG9D3+37tDu62XWxZiFnKp7/jAZfZnpCEESSeibVNtZxUPHrIG5qclE5rNnpyeu
         lM3xnu2TY7SuDJdKrmqh5EJHeFCLAqiUoSg7bDgsn/cKkRifux3RFW0rl+UwT9xO17R+
         RqvV/ZFDCHo/eOohi6zSIRVhdSF+tUcs06yj+JGCmS7sa+Z0wO+hnWfzD4q+DJGoJUtn
         tW9EGhWQ+uD8CcB66gv5BBCcMkkXlhBFD1FZpAe9RtL0fiAaEhQAyXbA8uKs1yVV0ofk
         MFFF//mzjOySWA+EuMhL6gJ4WpGrKPzBHxqTR6z/ndPJkPK8vWsnMoR7BOGegohpCu9V
         ueQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699970932; x=1700575732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yK9SIBlN+AIxz2olUnewB7wFXBm3ioZt5ByTy6xELdg=;
        b=FQ81q17l8NIyQIPvNWZEZGvOROassmlewI2kfqG4lbSbaI7Mppptf6kwlKeT3lCde5
         Lsds1pd5ce70R2e/ph+928cyhkI1kDT2AeiNh58JNx0lovwjY0QaiG37qpxKzhxplnWQ
         AUoPgooHzHWqYiV7p8Ddz91DTDck9fzvL2MVsuxqk/ik1d68LW5NWPA3p4gRPrgwMb1g
         zTh0MNdv/pAD19UIWXw/H03VVu7Bsk7qvW46xUEz6x4pvQLCT2GHST8/O8KhL5JE4J/0
         oOjedBWHdSPJTITX78XRjH1pfLDUP0PVo+HLHOyUnfFJE7CUvxGERG3A3zuRI5/dVLeg
         Am1Q==
X-Gm-Message-State: AOJu0YyxZGBOxLY3KWL5IRVG0QuC7ykQeHIAJo1qsLb5Ut8GYh1QUoDz
	emEmq2NhypYeTenAmhKm/4M=
X-Google-Smtp-Source: AGHT+IE1zdRE6FPQr+MkQ71wmzJtmL+kVug42fcXy/mO8J708NAY6srAmvGionByE3PJs3+Aa+Yusw==
X-Received: by 2002:a05:6512:3d90:b0:507:9a49:2d3d with SMTP id k16-20020a0565123d9000b005079a492d3dmr7566047lfv.31.1699970931792;
        Tue, 14 Nov 2023 06:08:51 -0800 (PST)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id q2-20020adf9dc2000000b0032db4825495sm8014603wre.22.2023.11.14.06.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:08:51 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
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
	Christian Marangi <ansuelsmth@gmail.com>,
	Robert Marko <robimarko@gmail.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next PATCH v8 3/4] net: phy: aquantia: add firmware load support
Date: Tue, 14 Nov 2023 15:08:43 +0100
Message-Id: <20231114140844.9596-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231114140844.9596-1-ansuelsmth@gmail.com>
References: <20231114140844.9596-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Robert Marko <robimarko@gmail.com>

Aquantia PHY-s require firmware to be loaded before they start operating.
It can be automatically loaded in case when there is a SPI-NOR connected
to Aquantia PHY-s or can be loaded from the host via MDIO.

This patch adds support for loading the firmware via MDIO as in most cases
there is no SPI-NOR being used to save on cost.
Firmware loading code itself is ported from mainline U-boot with cleanups.

The firmware has mixed values both in big and little endian.
PHY core itself is big-endian but it expects values to be in little-endian.
The firmware is little-endian but CRC-16 value for it is stored at the end
of firmware in big-endian.

It seems the PHY does the conversion internally from firmware that is
little-endian to the PHY that is big-endian on using the mailbox
but mailbox returns a big-endian CRC-16 to verify the written data
integrity.

Co-developed-by: Christian Marangi <ansuelsmth@gmail.com>
Signed-off-by: Robert Marko <robimarko@gmail.com>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v8:
- Out of RFC
Changes v7:
- Fix additional sparse warning using __force
- Make cast to u16 for mailbox more clear
- Drop unless goto in aqr_firmware_load_fs
- Fix memory leak for missing kfree for nvmem_cell_read
Changes v4:
- Drop inline
- Drop extra impossible check for negative values
Changes v3:
- Back to RFC due to merge window
- Use unaligned macro instead of memcpy
- Spam sanity check as firmware is evil
- Add print to signal the user the source of the fw (FS or NVMEM)
Changes v2:
- Move out of RFC
- Address sanity check for offsets
- Add additional comments on firmware load check
- Fix some typo
- Capitalize CRC in comments
- Rename load_sysfs to load_fs

 drivers/net/phy/aquantia/Kconfig             |   1 +
 drivers/net/phy/aquantia/Makefile            |   2 +-
 drivers/net/phy/aquantia/aquantia.h          |  32 ++
 drivers/net/phy/aquantia/aquantia_firmware.c | 370 +++++++++++++++++++
 drivers/net/phy/aquantia/aquantia_main.c     |   6 +
 5 files changed, 410 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/phy/aquantia/aquantia_firmware.c

diff --git a/drivers/net/phy/aquantia/Kconfig b/drivers/net/phy/aquantia/Kconfig
index 226146417a6a..a35de4b9b554 100644
--- a/drivers/net/phy/aquantia/Kconfig
+++ b/drivers/net/phy/aquantia/Kconfig
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config AQUANTIA_PHY
 	tristate "Aquantia PHYs"
+	select CRC_CCITT
 	help
 	  Currently supports the Aquantia AQ1202, AQ2104, AQR105, AQR405
diff --git a/drivers/net/phy/aquantia/Makefile b/drivers/net/phy/aquantia/Makefile
index 346f350bc084..aa77fb63c8ec 100644
--- a/drivers/net/phy/aquantia/Makefile
+++ b/drivers/net/phy/aquantia/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-aquantia-objs			+= aquantia_main.o
+aquantia-objs			+= aquantia_main.o aquantia_firmware.o
 ifdef CONFIG_HWMON
 aquantia-objs			+= aquantia_hwmon.o
 endif
diff --git a/drivers/net/phy/aquantia/aquantia.h b/drivers/net/phy/aquantia/aquantia.h
index f0c767c4fad1..9ed38972abdb 100644
--- a/drivers/net/phy/aquantia/aquantia.h
+++ b/drivers/net/phy/aquantia/aquantia.h
@@ -10,10 +10,35 @@
 #include <linux/phy.h>
 
 /* Vendor specific 1, MDIO_MMD_VEND1 */
+#define VEND1_GLOBAL_SC				0x0
+#define VEND1_GLOBAL_SC_SOFT_RESET		BIT(15)
+#define VEND1_GLOBAL_SC_LOW_POWER		BIT(11)
+
 #define VEND1_GLOBAL_FW_ID			0x0020
 #define VEND1_GLOBAL_FW_ID_MAJOR		GENMASK(15, 8)
 #define VEND1_GLOBAL_FW_ID_MINOR		GENMASK(7, 0)
 
+#define VEND1_GLOBAL_MAILBOX_INTERFACE1			0x0200
+#define VEND1_GLOBAL_MAILBOX_INTERFACE1_EXECUTE		BIT(15)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE1_WRITE		BIT(14)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE1_CRC_RESET	BIT(12)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE1_BUSY		BIT(8)
+
+#define VEND1_GLOBAL_MAILBOX_INTERFACE2			0x0201
+#define VEND1_GLOBAL_MAILBOX_INTERFACE3			0x0202
+#define VEND1_GLOBAL_MAILBOX_INTERFACE3_MSW_ADDR_MASK	GENMASK(15, 0)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE3_MSW_ADDR(x)	FIELD_PREP(VEND1_GLOBAL_MAILBOX_INTERFACE3_MSW_ADDR_MASK, (u16)((x) >> 16))
+#define VEND1_GLOBAL_MAILBOX_INTERFACE4			0x0203
+#define VEND1_GLOBAL_MAILBOX_INTERFACE4_LSW_ADDR_MASK	GENMASK(15, 2)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE4_LSW_ADDR(x)	FIELD_PREP(VEND1_GLOBAL_MAILBOX_INTERFACE4_LSW_ADDR_MASK, (u16)(x))
+
+#define VEND1_GLOBAL_MAILBOX_INTERFACE5			0x0204
+#define VEND1_GLOBAL_MAILBOX_INTERFACE5_MSW_DATA_MASK	GENMASK(15, 0)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE5_MSW_DATA(x)	FIELD_PREP(VEND1_GLOBAL_MAILBOX_INTERFACE5_MSW_DATA_MASK, (u16)((x) >> 16))
+#define VEND1_GLOBAL_MAILBOX_INTERFACE6			0x0205
+#define VEND1_GLOBAL_MAILBOX_INTERFACE6_LSW_DATA_MASK	GENMASK(15, 0)
+#define VEND1_GLOBAL_MAILBOX_INTERFACE6_LSW_DATA(x)	FIELD_PREP(VEND1_GLOBAL_MAILBOX_INTERFACE6_LSW_DATA_MASK, (u16)(x))
+
 /* The following registers all have similar layouts; first the registers... */
 #define VEND1_GLOBAL_CFG_10M			0x0310
 #define VEND1_GLOBAL_CFG_100M			0x031b
@@ -28,6 +53,11 @@
 #define VEND1_GLOBAL_CFG_RATE_ADAPT_PAUSE	2
 
 /* Vendor specific 1, MDIO_MMD_VEND2 */
+#define VEND1_GLOBAL_CONTROL2			0xc001
+#define VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_RST	BIT(15)
+#define VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_OVD	BIT(6)
+#define VEND1_GLOBAL_CONTROL2_UP_RUN_STALL	BIT(0)
+
 #define VEND1_THERMAL_PROV_HIGH_TEMP_FAIL	0xc421
 #define VEND1_THERMAL_PROV_LOW_TEMP_FAIL	0xc422
 #define VEND1_THERMAL_PROV_HIGH_TEMP_WARN	0xc423
@@ -83,3 +113,5 @@ int aqr_hwmon_probe(struct phy_device *phydev);
 #else
 static inline int aqr_hwmon_probe(struct phy_device *phydev) { return 0; }
 #endif
+
+int aqr_firmware_load(struct phy_device *phydev);
diff --git a/drivers/net/phy/aquantia/aquantia_firmware.c b/drivers/net/phy/aquantia/aquantia_firmware.c
new file mode 100644
index 000000000000..c5f292b1c4c8
--- /dev/null
+++ b/drivers/net/phy/aquantia/aquantia_firmware.c
@@ -0,0 +1,370 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/bitfield.h>
+#include <linux/of.h>
+#include <linux/firmware.h>
+#include <linux/crc-ccitt.h>
+#include <linux/nvmem-consumer.h>
+
+#include <asm/unaligned.h>
+
+#include "aquantia.h"
+
+#define UP_RESET_SLEEP		100
+
+/* addresses of memory segments in the phy */
+#define DRAM_BASE_ADDR		0x3FFE0000
+#define IRAM_BASE_ADDR		0x40000000
+
+/* firmware image format constants */
+#define VERSION_STRING_SIZE		0x40
+#define VERSION_STRING_OFFSET		0x0200
+/* primary offset is written at an offset from the start of the fw blob */
+#define PRIMARY_OFFSET_OFFSET		0x8
+/* primary offset needs to be then added to a base offset */
+#define PRIMARY_OFFSET_SHIFT		12
+#define PRIMARY_OFFSET(x)		((x) << PRIMARY_OFFSET_SHIFT)
+#define HEADER_OFFSET			0x300
+
+struct aqr_fw_header {
+	u32 padding;
+	u8 iram_offset[3];
+	u8 iram_size[3];
+	u8 dram_offset[3];
+	u8 dram_size[3];
+} __packed;
+
+enum aqr_fw_src {
+	AQR_FW_SRC_NVMEM = 0,
+	AQR_FW_SRC_FS,
+};
+
+static const char * const aqr_fw_src_string[] = {
+	[AQR_FW_SRC_NVMEM] = "NVMEM",
+	[AQR_FW_SRC_FS] = "FS",
+};
+
+/* AQR firmware doesn't have fixed offsets for iram and dram section
+ * but instead provide an header with the offset to use on reading
+ * and parsing the firmware.
+ *
+ * AQR firmware can't be trusted and each offset is validated to be
+ * not negative and be in the size of the firmware itself.
+ */
+static bool aqr_fw_validate_get(size_t size, size_t offset, size_t get_size)
+{
+	return offset + get_size <= size;
+}
+
+static int aqr_fw_get_be16(const u8 *data, size_t offset, size_t size, u16 *value)
+{
+	if (!aqr_fw_validate_get(size, offset, sizeof(u16)))
+		return -EINVAL;
+
+	*value = get_unaligned_be16(data + offset);
+
+	return 0;
+}
+
+static int aqr_fw_get_le16(const u8 *data, size_t offset, size_t size, u16 *value)
+{
+	if (!aqr_fw_validate_get(size, offset, sizeof(u16)))
+		return -EINVAL;
+
+	*value = get_unaligned_le16(data + offset);
+
+	return 0;
+}
+
+static int aqr_fw_get_le24(const u8 *data, size_t offset, size_t size, u32 *value)
+{
+	if (!aqr_fw_validate_get(size, offset, sizeof(u8) * 3))
+		return -EINVAL;
+
+	*value = get_unaligned_le24(data + offset);
+
+	return 0;
+}
+
+/* load data into the phy's memory */
+static int aqr_fw_load_memory(struct phy_device *phydev, u32 addr,
+			      const u8 *data, size_t len)
+{
+	u16 crc = 0, up_crc;
+	size_t pos;
+
+	/* PHY expect addr in LE */
+	addr = (__force u32)cpu_to_le32(addr);
+
+	phy_write_mmd(phydev, MDIO_MMD_VEND1,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE1,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE1_CRC_RESET);
+	phy_write_mmd(phydev, MDIO_MMD_VEND1,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE3,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE3_MSW_ADDR(addr));
+	phy_write_mmd(phydev, MDIO_MMD_VEND1,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE4,
+		      VEND1_GLOBAL_MAILBOX_INTERFACE4_LSW_ADDR(addr));
+
+	/* We assume and enforce the size to be word aligned.
+	 * If a firmware that is not word aligned is found, please report upstream.
+	 */
+	for (pos = 0; pos < len; pos += sizeof(u32)) {
+		u32 word;
+
+		/* FW data is always stored in little-endian */
+		word = get_unaligned((const u32 *)(data + pos));
+
+		phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_MAILBOX_INTERFACE5,
+			      VEND1_GLOBAL_MAILBOX_INTERFACE5_MSW_DATA(word));
+		phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_MAILBOX_INTERFACE6,
+			      VEND1_GLOBAL_MAILBOX_INTERFACE6_LSW_DATA(word));
+
+		phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_MAILBOX_INTERFACE1,
+			      VEND1_GLOBAL_MAILBOX_INTERFACE1_EXECUTE |
+			      VEND1_GLOBAL_MAILBOX_INTERFACE1_WRITE);
+
+		/* calculate CRC as we load data to the mailbox.
+		 * We convert word to big-endian as PHY is BE and mailbox will
+		 * return a BE CRC.
+		 */
+		word = (__force u32)cpu_to_be32(word);
+		crc = crc_ccitt_false(crc, (u8 *)&word, sizeof(word));
+	}
+
+	up_crc = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_MAILBOX_INTERFACE2);
+	if (crc != up_crc) {
+		phydev_err(phydev, "CRC mismatch: calculated 0x%04x PHY 0x%04x\n",
+			   crc, up_crc);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int aqr_fw_boot(struct phy_device *phydev, const u8 *data, size_t size,
+		       enum aqr_fw_src fw_src)
+{
+	u16 calculated_crc, read_crc, read_primary_offset;
+	u32 iram_offset = 0, iram_size = 0;
+	u32 dram_offset = 0, dram_size = 0;
+	char version[VERSION_STRING_SIZE];
+	u32 primary_offset = 0;
+	int ret;
+
+	/* extract saved CRC at the end of the fw
+	 * CRC is saved in big-endian as PHY is BE
+	 */
+	ret = aqr_fw_get_be16(data, size - sizeof(u16), size, &read_crc);
+	if (ret) {
+		phydev_err(phydev, "bad firmware CRC in firmware\n");
+		return ret;
+	}
+	calculated_crc = crc_ccitt_false(0, data, size - sizeof(u16));
+	if (read_crc != calculated_crc) {
+		phydev_err(phydev, "bad firmware CRC: file 0x%04x calculated 0x%04x\n",
+			   read_crc, calculated_crc);
+		return -EINVAL;
+	}
+
+	/* Get the primary offset to extract DRAM and IRAM sections. */
+	ret = aqr_fw_get_le16(data, PRIMARY_OFFSET_OFFSET, size, &read_primary_offset);
+	if (ret) {
+		phydev_err(phydev, "bad primary offset in firmware\n");
+		return ret;
+	}
+	primary_offset = PRIMARY_OFFSET(read_primary_offset);
+
+	/* Find the DRAM and IRAM sections within the firmware file.
+	 * Make sure the fw_header is correctly in the firmware.
+	 */
+	if (!aqr_fw_validate_get(size, primary_offset + HEADER_OFFSET,
+				 sizeof(struct aqr_fw_header))) {
+		phydev_err(phydev, "bad fw_header in firmware\n");
+		return -EINVAL;
+	}
+
+	/* offset are in LE and values needs to be converted to cpu endian */
+	ret = aqr_fw_get_le24(data, primary_offset + HEADER_OFFSET +
+			      offsetof(struct aqr_fw_header, iram_offset),
+			      size, &iram_offset);
+	if (ret) {
+		phydev_err(phydev, "bad iram offset in firmware\n");
+		return ret;
+	}
+	ret = aqr_fw_get_le24(data, primary_offset + HEADER_OFFSET +
+			      offsetof(struct aqr_fw_header, iram_size),
+			      size, &iram_size);
+	if (ret) {
+		phydev_err(phydev, "invalid iram size in firmware\n");
+		return ret;
+	}
+	ret = aqr_fw_get_le24(data, primary_offset + HEADER_OFFSET +
+			      offsetof(struct aqr_fw_header, dram_offset),
+			      size, &dram_offset);
+	if (ret) {
+		phydev_err(phydev, "bad dram offset in firmware\n");
+		return ret;
+	}
+	ret = aqr_fw_get_le24(data, primary_offset + HEADER_OFFSET +
+			      offsetof(struct aqr_fw_header, dram_size),
+			      size, &dram_size);
+	if (ret) {
+		phydev_err(phydev, "invalid dram size in firmware\n");
+		return ret;
+	}
+
+	/* Increment the offset with the primary offset.
+	 * Validate iram/dram offset and size.
+	 */
+	iram_offset += primary_offset;
+	if (iram_size % sizeof(u32)) {
+		phydev_err(phydev, "iram size if not aligned to word size. Please report this upstream!\n");
+		return -EINVAL;
+	}
+	if (!aqr_fw_validate_get(size, iram_offset, iram_size)) {
+		phydev_err(phydev, "invalid iram offset for iram size\n");
+		return -EINVAL;
+	}
+
+	dram_offset += primary_offset;
+	if (dram_size % sizeof(u32)) {
+		phydev_err(phydev, "dram size if not aligned to word size. Please report this upstream!\n");
+		return -EINVAL;
+	}
+	if (!aqr_fw_validate_get(size, dram_offset, dram_size)) {
+		phydev_err(phydev, "invalid iram offset for iram size\n");
+		return -EINVAL;
+	}
+
+	phydev_dbg(phydev, "primary %d IRAM offset=%d size=%d DRAM offset=%d size=%d\n",
+		   primary_offset, iram_offset, iram_size, dram_offset, dram_size);
+
+	if (!aqr_fw_validate_get(size, dram_offset + VERSION_STRING_OFFSET,
+				 VERSION_STRING_SIZE)) {
+		phydev_err(phydev, "invalid version in firmware\n");
+		return -EINVAL;
+	}
+	strscpy(version, (char *)data + dram_offset + VERSION_STRING_OFFSET,
+		VERSION_STRING_SIZE);
+	if (version[0] == '\0') {
+		phydev_err(phydev, "invalid version in firmware\n");
+		return -EINVAL;
+	}
+	phydev_info(phydev, "loading firmware version '%s' from '%s'\n", version,
+		    aqr_fw_src_string[fw_src]);
+
+	/* stall the microcprocessor */
+	phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_CONTROL2,
+		      VEND1_GLOBAL_CONTROL2_UP_RUN_STALL | VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_OVD);
+
+	phydev_dbg(phydev, "loading DRAM 0x%08x from offset=%d size=%d\n",
+		   DRAM_BASE_ADDR, dram_offset, dram_size);
+	ret = aqr_fw_load_memory(phydev, DRAM_BASE_ADDR, data + dram_offset,
+				 dram_size);
+	if (ret)
+		return ret;
+
+	phydev_dbg(phydev, "loading IRAM 0x%08x from offset=%d size=%d\n",
+		   IRAM_BASE_ADDR, iram_offset, iram_size);
+	ret = aqr_fw_load_memory(phydev, IRAM_BASE_ADDR, data + iram_offset,
+				 iram_size);
+	if (ret)
+		return ret;
+
+	/* make sure soft reset and low power mode are clear */
+	phy_clear_bits_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_SC,
+			   VEND1_GLOBAL_SC_SOFT_RESET | VEND1_GLOBAL_SC_LOW_POWER);
+
+	/* Release the microprocessor. UP_RESET must be held for 100 usec. */
+	phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_CONTROL2,
+		      VEND1_GLOBAL_CONTROL2_UP_RUN_STALL |
+		      VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_OVD |
+		      VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_RST);
+	usleep_range(UP_RESET_SLEEP, UP_RESET_SLEEP * 2);
+
+	phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_CONTROL2,
+		      VEND1_GLOBAL_CONTROL2_UP_RUN_STALL_OVD);
+
+	return 0;
+}
+
+static int aqr_firmware_load_nvmem(struct phy_device *phydev)
+{
+	struct nvmem_cell *cell;
+	size_t size;
+	u8 *buf;
+	int ret;
+
+	cell = nvmem_cell_get(&phydev->mdio.dev, "firmware");
+	if (IS_ERR(cell))
+		return PTR_ERR(cell);
+
+	buf = nvmem_cell_read(cell, &size);
+	if (IS_ERR(buf)) {
+		ret = PTR_ERR(buf);
+		goto exit;
+	}
+
+	ret = aqr_fw_boot(phydev, buf, size, AQR_FW_SRC_NVMEM);
+	if (ret)
+		phydev_err(phydev, "firmware loading failed: %d\n", ret);
+
+	kfree(buf);
+exit:
+	nvmem_cell_put(cell);
+
+	return ret;
+}
+
+static int aqr_firmware_load_fs(struct phy_device *phydev)
+{
+	struct device *dev = &phydev->mdio.dev;
+	const struct firmware *fw;
+	const char *fw_name;
+	int ret;
+
+	ret = of_property_read_string(dev->of_node, "firmware-name",
+				      &fw_name);
+	if (ret)
+		return ret;
+
+	ret = request_firmware(&fw, fw_name, dev);
+	if (ret) {
+		phydev_err(phydev, "failed to find FW file %s (%d)\n",
+			   fw_name, ret);
+		return ret;
+	}
+
+	ret = aqr_fw_boot(phydev, fw->data, fw->size, AQR_FW_SRC_FS);
+	if (ret)
+		phydev_err(phydev, "firmware loading failed: %d\n", ret);
+
+	release_firmware(fw);
+
+	return ret;
+}
+
+int aqr_firmware_load(struct phy_device *phydev)
+{
+	int ret;
+
+	/* Check if the firmware is not already loaded by pooling
+	 * the current version returned by the PHY. If 0 is returned,
+	 * no firmware is loaded.
+	 */
+	ret = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_FW_ID);
+	if (ret > 0)
+		goto exit;
+
+	ret = aqr_firmware_load_nvmem(phydev);
+	if (!ret)
+		goto exit;
+
+	ret = aqr_firmware_load_fs(phydev);
+	if (ret)
+		return ret;
+
+exit:
+	return 0;
+}
diff --git a/drivers/net/phy/aquantia/aquantia_main.c b/drivers/net/phy/aquantia/aquantia_main.c
index 4498426e9a52..cc4a97741c4a 100644
--- a/drivers/net/phy/aquantia/aquantia_main.c
+++ b/drivers/net/phy/aquantia/aquantia_main.c
@@ -658,11 +658,17 @@ static int aqr107_resume(struct phy_device *phydev)
 
 static int aqr107_probe(struct phy_device *phydev)
 {
+	int ret;
+
 	phydev->priv = devm_kzalloc(&phydev->mdio.dev,
 				    sizeof(struct aqr107_priv), GFP_KERNEL);
 	if (!phydev->priv)
 		return -ENOMEM;
 
+	ret = aqr_firmware_load(phydev);
+	if (ret)
+		return ret;
+
 	return aqr_hwmon_probe(phydev);
 }
 
-- 
2.40.1


