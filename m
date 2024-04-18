Return-Path: <devicetree+bounces-60566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 237758A9A97
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:00:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE0A1283309
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637BB1487F0;
	Thu, 18 Apr 2024 12:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="KuftiXHd"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8953E2C68C;
	Thu, 18 Apr 2024 12:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713445083; cv=none; b=sIfU+gYnVZ9zqJEFUa+kZ5oI7c4CxZ1W8xfM5UfzOa2RSWWfLuMlnMLv9mu3wDdwLmhXRRW1Y9u626tHus+togcdrX0bdaJzs9l+Lvp9cHF3LsnBnEOGURj6Sl9KOCaJeLX1kj1q4ZNtTeUESObtEeW7hgHOXpCLyGc5XIZfEM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713445083; c=relaxed/simple;
	bh=ej1h3WciPFqpWoiGsccmv5uKW8Enr5Y7MZGln+UwXT4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PajzNJlo3g75bqQefeGJcRREXBue+51TWhXf7j5mmDoMEPX5vxiV4jJ0GTfSFmgyvHO8rAKenIbaEtLy1orqmSSmr01VpS8bdEGvRlg74RSubHjTXdl8DrKQlScRRuOOIiesohqalcuZEc8rsHF9ClGEy2BFNVwIVd2LptUAe2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=KuftiXHd; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1713445082; x=1744981082;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ej1h3WciPFqpWoiGsccmv5uKW8Enr5Y7MZGln+UwXT4=;
  b=KuftiXHd8dvRrppQb/Jnia0WIpeJjCiwaon04dEYbie8qUwh2aVxg00a
   oh/fUYMKlkbWiaHj8AozK7zEID7j0dCZtBuA4mFpA/bq58TYAyi1K6bwT
   SJNmihwpcYaFzrHxmexcv00Xw4ksE+f3w4E7BI853sXjY9uXuWpqOobOX
   MXsXB5Pt8g5enoJuwfL7fnfSuegAc+tnteAqgavw5YOwyP5BSsoOQ+UVy
   4eA3QwHPuswp7a/5o3F4eJl2P0qVaaYuSQQKbcbg8gvLaGsL6vIxvJuzg
   Y/5skfs7nyPeJZAKbDpZxhSdKDEsG9s07eGc+Fq+/AFqqw37WUqMlxChn
   w==;
X-CSE-ConnectionGUID: QFsfLBrER4KIUgEtGyszkA==
X-CSE-MsgGUID: ffYIRa0FTB+JGEihP7WbLg==
X-IronPort-AV: E=Sophos;i="6.07,212,1708412400"; 
   d="scan'208";a="252407862"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Apr 2024 05:58:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 05:57:04 -0700
Received: from CHE-LT-I17164LX.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 05:56:55 -0700
From: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
To: <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
	<pabeni@redhat.com>, <horms@kernel.org>, <saeedm@nvidia.com>,
	<anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <andrew@lunn.ch>, <corbet@lwn.net>,
	<linux-doc@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <horatiu.vultur@microchip.com>,
	<ruanjinjie@huawei.com>, <steen.hegelund@microchip.com>,
	<vladimir.oltean@nxp.com>
CC: <UNGLinuxDriver@microchip.com>, <Thorsten.Kummermehr@microchip.com>,
	<Pier.Beruto@onsemi.com>, <Selvamani.Rajagopal@onsemi.com>,
	<Nicolas.Ferre@microchip.com>, <benjamin.bigler@bernformulastudent.ch>,
	Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Subject: [PATCH net-next v4 02/12] net: ethernet: oa_tc6: implement register write operation
Date: Thu, 18 Apr 2024 18:26:38 +0530
Message-ID: <20240418125648.372526-3-Parthiban.Veerasooran@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>
References: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Implement register write operation according to the control communication
specified in the OPEN Alliance 10BASE-T1x MACPHY Serial Interface
document. Control write commands are used by the SPI host to write
registers within the MAC-PHY. Each control write commands are composed of
a 32 bits control command header followed by register write data.

The MAC-PHY ignores the final 32 bits of data from the SPI host at the
end of the control write command. The write command and data is also
echoed from the MAC-PHY back to the SPI host to enable the SPI host to
identify which register write failed in the case of any bus errors.
Control write commands can write either a single register or multiple
consecutive registers. When multiple consecutive registers are written,
the address is automatically post-incremented by the MAC-PHY. Writing to
any unimplemented or undefined registers shall be ignored and yield no
effect.

Signed-off-by: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
---
 MAINTAINERS                   |   2 +
 drivers/net/ethernet/Kconfig  |  11 ++
 drivers/net/ethernet/Makefile |   1 +
 drivers/net/ethernet/oa_tc6.c | 240 ++++++++++++++++++++++++++++++++++
 include/linux/oa_tc6.h        |  17 +++
 5 files changed, 271 insertions(+)
 create mode 100644 drivers/net/ethernet/oa_tc6.c
 create mode 100644 include/linux/oa_tc6.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 79fa7abb4ec9..603528948f61 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16405,6 +16405,8 @@ M:	Parthiban Veerasooran <parthiban.veerasooran@microchip.com>
 L:	netdev@vger.kernel.org
 S:	Maintained
 F:	Documentation/networking/oa-tc6-framework.rst
+F:	drivers/include/linux/oa_tc6.h
+F:	drivers/net/ethernet/oa_tc6.c
 
 OPEN FIRMWARE AND FLATTENED DEVICE TREE
 M:	Rob Herring <robh+dt@kernel.org>
diff --git a/drivers/net/ethernet/Kconfig b/drivers/net/ethernet/Kconfig
index 6a19b5393ed1..eb53372c60b4 100644
--- a/drivers/net/ethernet/Kconfig
+++ b/drivers/net/ethernet/Kconfig
@@ -157,6 +157,17 @@ config ETHOC
 	help
 	  Say Y here if you want to use the OpenCores 10/100 Mbps Ethernet MAC.
 
+config OA_TC6
+	tristate "OPEN Alliance TC6 10BASE-T1x MAC-PHY support"
+	depends on SPI
+	select PHYLIB
+	help
+	  This library implements OPEN Alliance TC6 10BASE-T1x MAC-PHY
+	  Serial Interface protocol for supporting 10BASE-T1x MAC-PHYs.
+
+	  To know the implementation details, refer documentation in
+	  <file:Documentation/networking/oa-tc6-framework.rst>.
+
 source "drivers/net/ethernet/packetengines/Kconfig"
 source "drivers/net/ethernet/pasemi/Kconfig"
 source "drivers/net/ethernet/pensando/Kconfig"
diff --git a/drivers/net/ethernet/Makefile b/drivers/net/ethernet/Makefile
index 0d872d4efcd1..cf5487fc0761 100644
--- a/drivers/net/ethernet/Makefile
+++ b/drivers/net/ethernet/Makefile
@@ -104,3 +104,4 @@ obj-$(CONFIG_NET_VENDOR_XILINX) += xilinx/
 obj-$(CONFIG_NET_VENDOR_XIRCOM) += xircom/
 obj-$(CONFIG_NET_VENDOR_SYNOPSYS) += synopsys/
 obj-$(CONFIG_NET_VENDOR_PENSANDO) += pensando/
+obj-$(CONFIG_OA_TC6) += oa_tc6.o
diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
new file mode 100644
index 000000000000..a92337de4534
--- /dev/null
+++ b/drivers/net/ethernet/oa_tc6.c
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * OPEN Alliance 10BASE‑T1x MAC‑PHY Serial Interface framework
+ *
+ * Author: Parthiban Veerasooran <parthiban.veerasooran@microchip.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/oa_tc6.h>
+
+/* Control command header */
+#define OA_TC6_CTRL_HEADER_DATA_NOT_CTRL	BIT(31)
+#define OA_TC6_CTRL_HEADER_WRITE_NOT_READ	BIT(29)
+#define OA_TC6_CTRL_HEADER_MEM_MAP_SELECTOR	GENMASK(27, 24)
+#define OA_TC6_CTRL_HEADER_ADDR			GENMASK(23, 8)
+#define OA_TC6_CTRL_HEADER_LENGTH		GENMASK(7, 1)
+#define OA_TC6_CTRL_HEADER_PARITY		BIT(0)
+
+#define OA_TC6_CTRL_HEADER_SIZE			4
+#define OA_TC6_CTRL_REG_VALUE_SIZE		4
+#define OA_TC6_CTRL_IGNORED_SIZE		4
+#define OA_TC6_CTRL_MAX_REGISTERS		128
+#define OA_TC6_CTRL_SPI_BUF_SIZE		(OA_TC6_CTRL_HEADER_SIZE +\
+						(OA_TC6_CTRL_MAX_REGISTERS *\
+						OA_TC6_CTRL_REG_VALUE_SIZE) +\
+						OA_TC6_CTRL_IGNORED_SIZE)
+
+/* Internal structure for MAC-PHY drivers */
+struct oa_tc6 {
+	struct spi_device *spi;
+	struct mutex spi_ctrl_lock; /* Protects spi control transfer */
+	void *spi_ctrl_tx_buf;
+	void *spi_ctrl_rx_buf;
+};
+
+enum oa_tc6_header_type {
+	OA_TC6_CTRL_HEADER,
+};
+
+enum oa_tc6_register_op {
+	OA_TC6_CTRL_REG_WRITE = 1,
+};
+
+static int oa_tc6_spi_transfer(struct oa_tc6 *tc6,
+			       enum oa_tc6_header_type header_type, u16 length)
+{
+	struct spi_transfer xfer = { 0 };
+	struct spi_message msg;
+
+	xfer.tx_buf = tc6->spi_ctrl_tx_buf;
+	xfer.rx_buf = tc6->spi_ctrl_rx_buf;
+	xfer.len = length;
+
+	spi_message_init(&msg);
+	spi_message_add_tail(&xfer, &msg);
+
+	return spi_sync(tc6->spi, &msg);
+}
+
+static int oa_tc6_get_parity(u32 p)
+{
+	/* Public domain code snippet, lifted from
+	 * http://www-graphics.stanford.edu/~seander/bithacks.html
+	 */
+	p ^= p >> 1;
+	p ^= p >> 2;
+	p = (p & 0x11111111U) * 0x11111111U;
+
+	/* Odd parity is used here */
+	return !((p >> 28) & 1);
+}
+
+static __be32 oa_tc6_prepare_ctrl_header(u32 address, u8 length,
+					 enum oa_tc6_register_op reg_op)
+{
+	u32 header;
+
+	header = FIELD_PREP(OA_TC6_CTRL_HEADER_DATA_NOT_CTRL,
+			    OA_TC6_CTRL_HEADER) |
+		 FIELD_PREP(OA_TC6_CTRL_HEADER_WRITE_NOT_READ, reg_op) |
+		 FIELD_PREP(OA_TC6_CTRL_HEADER_MEM_MAP_SELECTOR, address >> 16) |
+		 FIELD_PREP(OA_TC6_CTRL_HEADER_ADDR, address) |
+		 FIELD_PREP(OA_TC6_CTRL_HEADER_LENGTH, length - 1);
+	header |= FIELD_PREP(OA_TC6_CTRL_HEADER_PARITY,
+			     oa_tc6_get_parity(header));
+
+	return cpu_to_be32(header);
+}
+
+static void oa_tc6_update_ctrl_write_data(struct oa_tc6 *tc6, u32 value[],
+					  u8 length)
+{
+	__be32 *tx_buf = tc6->spi_ctrl_tx_buf + OA_TC6_CTRL_HEADER_SIZE;
+
+	for (int i = 0; i < length; i++)
+		*tx_buf++ = cpu_to_be32(value[i]);
+}
+
+static u16 oa_tc6_calculate_ctrl_buf_size(u8 length)
+{
+	/* Control command consists 4 bytes header + 4 bytes register value for
+	 * each register + 4 bytes ignored value.
+	 */
+	return OA_TC6_CTRL_HEADER_SIZE + OA_TC6_CTRL_REG_VALUE_SIZE * length +
+	       OA_TC6_CTRL_IGNORED_SIZE;
+}
+
+static void oa_tc6_prepare_ctrl_spi_buf(struct oa_tc6 *tc6, u32 address,
+					u32 value[], u8 length,
+					enum oa_tc6_register_op reg_op)
+{
+	__be32 *tx_buf = tc6->spi_ctrl_tx_buf;
+
+	*tx_buf = oa_tc6_prepare_ctrl_header(address, length, reg_op);
+
+	oa_tc6_update_ctrl_write_data(tc6, value, length);
+}
+
+static int oa_tc6_check_ctrl_write_reply(struct oa_tc6 *tc6, u8 size)
+{
+	u8 *tx_buf = tc6->spi_ctrl_tx_buf;
+	u8 *rx_buf = tc6->spi_ctrl_rx_buf;
+
+	rx_buf += OA_TC6_CTRL_IGNORED_SIZE;
+
+	/* The echoed control write must match with the one that was
+	 * transmitted.
+	 */
+	if (memcmp(tx_buf, rx_buf, size - OA_TC6_CTRL_IGNORED_SIZE))
+		return -EPROTO;
+
+	return 0;
+}
+
+static int oa_tc6_perform_ctrl(struct oa_tc6 *tc6, u32 address, u32 value[],
+			       u8 length, enum oa_tc6_register_op reg_op)
+{
+	u16 size;
+	int ret;
+
+	/* Prepare control command and copy to SPI control buffer */
+	oa_tc6_prepare_ctrl_spi_buf(tc6, address, value, length, reg_op);
+
+	size = oa_tc6_calculate_ctrl_buf_size(length);
+
+	/* Perform SPI transfer */
+	ret = oa_tc6_spi_transfer(tc6, OA_TC6_CTRL_HEADER, size);
+	if (ret) {
+		dev_err(&tc6->spi->dev, "SPI transfer failed for control: %d\n",
+			ret);
+		return ret;
+	}
+
+	/* Check echoed/received control write command reply for errors */
+	return oa_tc6_check_ctrl_write_reply(tc6, size);
+}
+
+/**
+ * oa_tc6_write_registers - function for writing multiple consecutive registers.
+ * @tc6: oa_tc6 struct.
+ * @address: address of the first register to be written in the MAC-PHY.
+ * @value: values to be written from the starting register address @address.
+ * @length: number of consecutive registers to be written from @address.
+ *
+ * Maximum of 128 consecutive registers can be written starting at @address.
+ *
+ * Returns 0 on success otherwise failed.
+ */
+int oa_tc6_write_registers(struct oa_tc6 *tc6, u32 address, u32 value[],
+			   u8 length)
+{
+	int ret;
+
+	if (!length || length > OA_TC6_CTRL_MAX_REGISTERS) {
+		dev_err(&tc6->spi->dev, "Invalid register length parameter\n");
+		return -EINVAL;
+	}
+
+	mutex_lock(&tc6->spi_ctrl_lock);
+	ret = oa_tc6_perform_ctrl(tc6, address, value, length,
+				  OA_TC6_CTRL_REG_WRITE);
+	mutex_unlock(&tc6->spi_ctrl_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(oa_tc6_write_registers);
+
+/**
+ * oa_tc6_write_register - function for writing a MAC-PHY register.
+ * @tc6: oa_tc6 struct.
+ * @address: register address of the MAC-PHY to be written.
+ * @value: value to be written in the @address register address of the MAC-PHY.
+ *
+ * Returns 0 on success otherwise failed.
+ */
+int oa_tc6_write_register(struct oa_tc6 *tc6, u32 address, u32 value)
+{
+	return oa_tc6_write_registers(tc6, address, &value, 1);
+}
+EXPORT_SYMBOL_GPL(oa_tc6_write_register);
+
+/**
+ * oa_tc6_init - allocates and initializes oa_tc6 structure.
+ * @spi: device with which data will be exchanged.
+ *
+ * Returns pointer reference to the oa_tc6 structure if the MAC-PHY
+ * initialization is successful otherwise NULL.
+ */
+struct oa_tc6 *oa_tc6_init(struct spi_device *spi)
+{
+	struct oa_tc6 *tc6;
+
+	tc6 = devm_kzalloc(&spi->dev, sizeof(*tc6), GFP_KERNEL);
+	if (!tc6)
+		return NULL;
+
+	tc6->spi = spi;
+	mutex_init(&tc6->spi_ctrl_lock);
+
+	/* Set the SPI controller to pump at realtime priority */
+	tc6->spi->rt = true;
+	spi_setup(tc6->spi);
+
+	tc6->spi_ctrl_tx_buf = devm_kzalloc(&tc6->spi->dev,
+					    OA_TC6_CTRL_SPI_BUF_SIZE, GFP_KERNEL);
+	if (!tc6->spi_ctrl_tx_buf)
+		return NULL;
+
+	tc6->spi_ctrl_rx_buf = devm_kzalloc(&tc6->spi->dev,
+					    OA_TC6_CTRL_SPI_BUF_SIZE, GFP_KERNEL);
+	if (!tc6->spi_ctrl_rx_buf)
+		return NULL;
+
+	return tc6;
+}
+EXPORT_SYMBOL_GPL(oa_tc6_init);
+
+MODULE_DESCRIPTION("OPEN Alliance 10BASE‑T1x MAC‑PHY Serial Interface Lib");
+MODULE_AUTHOR("Parthiban Veerasooran <parthiban.veerasooran@microchip.com>");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/oa_tc6.h b/include/linux/oa_tc6.h
new file mode 100644
index 000000000000..99c490f1c8a8
--- /dev/null
+++ b/include/linux/oa_tc6.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * OPEN Alliance 10BASE‑T1x MAC‑PHY Serial Interface framework
+ *
+ * Link: https://opensig.org/download/document/OPEN_Alliance_10BASET1x_MAC-PHY_Serial_Interface_V1.1.pdf
+ *
+ * Author: Parthiban Veerasooran <parthiban.veerasooran@microchip.com>
+ */
+
+#include <linux/spi/spi.h>
+
+struct oa_tc6;
+
+struct oa_tc6 *oa_tc6_init(struct spi_device *spi);
+int oa_tc6_write_register(struct oa_tc6 *tc6, u32 address, u32 value);
+int oa_tc6_write_registers(struct oa_tc6 *tc6, u32 address, u32 value[],
+			   u8 length);
-- 
2.34.1


