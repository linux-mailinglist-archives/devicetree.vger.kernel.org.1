Return-Path: <devicetree+bounces-90538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F05945B39
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 11:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 745A91F25016
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 09:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0F81DC487;
	Fri,  2 Aug 2024 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXyADRRB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730711C2BD;
	Fri,  2 Aug 2024 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722591625; cv=none; b=oEcLk1buOh7giQdUYNzLIfejnm3SG3u7M8BxCihv7GopBMd3lih1bmMsdYsLy1HHEQ0NjeRHqZcQMR+xXqQ3pXa4wxoZLFNfibKNyQiWKuc3I4EHzTz98yAVH0wkeTQf3FoSr3Lb33lxa+4upQBddKOnXWBXOA4q9G7GJsB27P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722591625; c=relaxed/simple;
	bh=lumRlZy1Z5Bxh8D+83VDcPelMYlM6VCpEqIPbk8+iI0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ChQTpIjrzweH2ov8cLr3kQJOQG6h0AnOqYBXdod7xaernTePOxcR5EReAAfp9+xDrqS6yqfE5Ho2byrpW1ySnHdQzUmdFRcIH6VHPmEjIsW8O3l18uhhvJXqS3sG41oeiyDjlD/PGqfYFdnn8jftwi0Vdt43DDbqGPb+qy/71n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXyADRRB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13539C4AF0A;
	Fri,  2 Aug 2024 09:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722591625;
	bh=lumRlZy1Z5Bxh8D+83VDcPelMYlM6VCpEqIPbk8+iI0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nXyADRRBBcN3g/tbqW1slQcAuRaZTq5+ol6nysCHOGvmltqbOW96vSAmin783a5CG
	 k+otBztOWd6O5sNyMwjn2CDt7qLqWWchOd381mGgyJxB+kplnYVNPkj3r9BO2uxelX
	 LUOBv2gLQiWac66jEzrK+ydPg1Ciks0tpOqLDTAAbb8rBiKTz1e+FAwgEve3dIzNe1
	 QuS5WR2cUTXl1co5HAWe026DD4ih6Z2qQIK0GkC5Pg/w15MMzao9EKQ3ysmVZwD2sG
	 UoV1YGRY7owQ38Sm/NzGFSZOfW7+fV2Ne62uoB7gW45BPiRNlsTVvRAirOdIOu81Mc
	 pEoS40qvrfzng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC1BC3DA49;
	Fri,  2 Aug 2024 09:40:24 +0000 (UTC)
From: Yang Li via B4 Relay <devnull+yang.li.amlogic.com@kernel.org>
Date: Fri, 02 Aug 2024 17:39:48 +0800
Subject: [PATCH v3 2/3] Bluetooth: hci_uart: Add support for Amlogic HCI
 UART
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240802-btaml-v3-2-d8110bf9963f@amlogic.com>
References: <20240802-btaml-v3-0-d8110bf9963f@amlogic.com>
In-Reply-To: <20240802-btaml-v3-0-d8110bf9963f@amlogic.com>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Yang Li <yang.li@amlogic.com>, 
 Ye He <ye.he@amlogic.com>
X-Mailer: b4 0.13-dev-f0463
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722591623; l=22544;
 i=yang.li@amlogic.com; s=20240418; h=from:subject:message-id;
 bh=R2BiOibI0bZj5IIlelLTDSkH2gAfT+QoITyuhmKuTsA=;
 b=JU/O/JfvPlVUdpviVobYVdivsMSaST1iS3DWLTAY94J8jE59oegicY+r7gX7XSWL0G+LsWzpe
 qbopqILBAx1BKifzgLWs12m5kVu/UGiN5lNHgS3VUr4xsaPFPbQr2Mn
X-Developer-Key: i=yang.li@amlogic.com; a=ed25519;
 pk=86OaNWMr3XECW9HGNhkJ4HdR2eYA5SEAegQ3td2UCCs=
X-Endpoint-Received: by B4 Relay for yang.li@amlogic.com/20240418 with
 auth_id=180
X-Original-From: Yang Li <yang.li@amlogic.com>
Reply-To: yang.li@amlogic.com

From: Yang Li <yang.li@amlogic.com>

Add support for Amlogic Bluetooth controller over HCI UART.
In order to send the final firmware at full speed(4Mbps).

Co-developed-by: Ye He <ye.he@amlogic.com>
Signed-off-by: Ye He <ye.he@amlogic.com>
Signed-off-by: Yang Li <yang.li@amlogic.com>
---
 drivers/bluetooth/Kconfig     |  12 +
 drivers/bluetooth/Makefile    |   1 +
 drivers/bluetooth/hci_aml.c   | 756 ++++++++++++++++++++++++++++++++++++++++++
 drivers/bluetooth/hci_ldisc.c |   8 +-
 drivers/bluetooth/hci_uart.h  |   8 +-
 5 files changed, 782 insertions(+), 3 deletions(-)

diff --git a/drivers/bluetooth/Kconfig b/drivers/bluetooth/Kconfig
index 769fa288179d..18767b54df35 100644
--- a/drivers/bluetooth/Kconfig
+++ b/drivers/bluetooth/Kconfig
@@ -274,6 +274,18 @@ config BT_HCIUART_MRVL
 
 	  Say Y here to compile support for HCI MRVL protocol.
 
+config BT_HCIUART_AML
+	bool "Amlogic protocol support"
+	depends on BT_HCIUART
+	depends on BT_HCIUART_SERDEV
+	select BT_HCIUART_H4
+	select FW_LOADER
+	help
+	  The Amlogic protocol support enables Bluetooth HCI over serial
+	  port interface for Amlogic Bluetooth controllers.
+
+	  Say Y here to compile support for HCI AML protocol.
+
 config BT_HCIBCM203X
 	tristate "HCI BCM203x USB driver"
 	depends on USB
diff --git a/drivers/bluetooth/Makefile b/drivers/bluetooth/Makefile
index 0730d6684d1a..81856512ddd0 100644
--- a/drivers/bluetooth/Makefile
+++ b/drivers/bluetooth/Makefile
@@ -51,4 +51,5 @@ hci_uart-$(CONFIG_BT_HCIUART_BCM)	+= hci_bcm.o
 hci_uart-$(CONFIG_BT_HCIUART_QCA)	+= hci_qca.o
 hci_uart-$(CONFIG_BT_HCIUART_AG6XX)	+= hci_ag6xx.o
 hci_uart-$(CONFIG_BT_HCIUART_MRVL)	+= hci_mrvl.o
+hci_uart-$(CONFIG_BT_HCIUART_AML)	+= hci_aml.o
 hci_uart-objs				:= $(hci_uart-y)
diff --git a/drivers/bluetooth/hci_aml.c b/drivers/bluetooth/hci_aml.c
new file mode 100644
index 000000000000..cc6627788611
--- /dev/null
+++ b/drivers/bluetooth/hci_aml.c
@@ -0,0 +1,756 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
+/*
+ * Copyright (C) 2024 Amlogic, Inc. All rights reserved
+ */
+
+#include <linux/kernel.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/property.h>
+#include <linux/of.h>
+#include <linux/serdev.h>
+#include <linux/clk.h>
+#include <linux/firmware.h>
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+#include <net/bluetooth/bluetooth.h>
+#include <net/bluetooth/hci_core.h>
+#include <net/bluetooth/hci.h>
+
+#include "hci_uart.h"
+
+#define AML_EVT_HEAD_SIZE		4
+#define AML_BDADDR_DEFAULT (&(bdaddr_t) {{ 0x00, 0xff, 0x00, 0x22, 0x2d, 0xae }})
+
+#define AML_FIRMWARE_OPERATION_SIZE		(248)
+#define AML_FIRMWARE_MAX_SIZE			(512 * 1024)
+
+/* TCI command */
+#define AML_TCI_CMD_READ			0xFEF0
+#define AML_TCI_CMD_WRITE			0xFEF1
+#define AML_TCI_CMD_UPDATE_BAUDRATE		0xFEF2
+#define AML_TCI_CMD_HARDWARE_RESET		0xFEF2
+#define AML_TCI_CMD_DOWNLOAD_BT_FW		0xFEF3
+#define AML_BT_HCI_VENDOR_CMD			0xFC1A
+
+/* TCI operation parameter in controller chip */
+#define AML_OP_UART_MODE			0x00A30128
+#define AML_OP_EVT_ENABLE			0x00A70014
+#define AML_OP_MEM_HARD_TRANS_EN		0x00A7000C
+#define AML_OP_RF_CFG				0x00F03040
+#define AML_OP_RAM_POWER_CTR			0x00F03050
+#define AML_OP_HARDWARE_RST			0x00F03058
+#define AML_OP_ICCM_RAM_BASE			0x00000000
+#define AML_OP_DCCM_RAM_BASE			0x00D00000
+
+/* UART configuration */
+#define AML_UART_XMIT_EN			BIT(12)
+#define AML_UART_RECV_EN			BIT(13)
+#define AML_UART_TIMEOUT_INT_EN			BIT(14)
+#define AML_UART_CLK_SOURCE			40000000
+
+/* Controller event */
+#define AML_EVT_EN				BIT(24)
+
+/* RAM power control */
+#define AML_RAM_POWER_ON			(0)
+#define AML_RAM_POWER_OFF			(1)
+
+/* RF configuration */
+#define AML_RF_ANT_SINGLE			BIT(28)
+#define AML_RF_ANT_DOUBLE			BIT(29)
+
+/* Memory transaction */
+#define AML_MM_CTR_HARD_TRAS_EN			BIT(27)
+
+/* Controller reset */
+#define AML_CTR_CPU_RESET			BIT(8)
+#define AML_CTR_MAC_RESET			BIT(9)
+#define AML_CTR_PHY_RESET			BIT(10)
+
+enum {
+	FW_ICCM,
+	FW_DCCM
+};
+
+struct aml_fw_len {
+	u32 iccm_len;
+	u32 dccm_len;
+};
+
+struct aml_tci_rsp {
+	u8 num_cmd_packet;
+	u16 opcode;
+	u8 status;
+} __packed;
+
+struct aml_device_data {
+	int iccm_offset;
+	int dccm_offset;
+	bool is_coex;
+};
+
+struct aml_serdev {
+	struct hci_uart serdev_hu;
+	struct device *dev;
+	struct gpio_desc *bt_en_gpio;
+	struct regulator *bt_supply;
+	struct clk *lpo_clk;
+	const struct aml_device_data *aml_dev_data;
+	const char *firmware_name;
+};
+
+struct aml_data {
+	struct sk_buff *rx_skb;
+	struct sk_buff_head txq;
+};
+
+static const struct h4_recv_pkt aml_recv_pkts[] = {
+	{ H4_RECV_ACL, .recv = hci_recv_frame },
+	{ H4_RECV_SCO, .recv = hci_recv_frame },
+	{ H4_RECV_EVENT, .recv = hci_recv_frame },
+	{ H4_RECV_ISO, .recv = hci_recv_frame },
+};
+
+/* The TCI command is private command, which is used to configure before BT
+ * chip startup, contains update baudrate, update firmware, set public addr.
+ *
+ * op_code |      op_len           | op_addr | parameter   |
+ * --------|-----------------------|---------|-------------|
+ *   2B    | 1B len(addr+param)    |    4B   |  len(param) |
+ */
+static int aml_send_tci_cmd(struct hci_dev *hdev, u16 op_code, u32 op_addr,
+			    u32 *param, u32 param_len)
+{
+	struct aml_tci_rsp *rsp = NULL;
+	struct sk_buff *skb = NULL;
+	u32 buf_len = 0;
+	u8 *buf = NULL;
+	int err = 0;
+
+	buf_len = sizeof(op_addr) + param_len;
+	buf = kmalloc(buf_len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	memcpy(buf, &op_addr, sizeof(op_addr));
+	if (param && param_len > 0)
+		memcpy(buf + sizeof(op_addr), param, param_len);
+
+	skb = __hci_cmd_sync_ev(hdev, op_code, buf_len, buf,
+				HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed to send TCI cmd:(%d)", err);
+		goto exit;
+	}
+
+	rsp = skb_pull_data(skb, sizeof(struct aml_tci_rsp));
+	if (!rsp)
+		goto skb_free;
+
+	if (rsp->opcode != op_code || rsp->status != 0x00) {
+		bt_dev_err(hdev, "send TCI cmd(0x%04X), response(0x%04X):(%d)",
+		       op_code, rsp->opcode, rsp->status);
+		err = -EINVAL;
+		goto skb_free;
+	}
+
+skb_free:
+	kfree_skb(skb);
+
+exit:
+	kfree(buf);
+	return err;
+}
+
+static int aml_update_chip_baudrate(struct hci_dev *hdev, u32 baud)
+{
+	u32 value;
+
+	value = ((AML_UART_CLK_SOURCE / baud) - 1) & 0x0FFF;
+	value |= AML_UART_XMIT_EN | AML_UART_RECV_EN | AML_UART_TIMEOUT_INT_EN;
+
+	return aml_send_tci_cmd(hdev, AML_TCI_CMD_UPDATE_BAUDRATE,
+				  AML_OP_UART_MODE, &value, sizeof(value));
+}
+
+static int aml_start_chip(struct hci_dev *hdev)
+{
+	u32 value = 0;
+	int ret;
+
+	value = AML_MM_CTR_HARD_TRAS_EN;
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_WRITE,
+			       AML_OP_MEM_HARD_TRANS_EN,
+			       &value, sizeof(value));
+	if (ret)
+		return ret;
+
+	/* controller hardware reset. */
+	value = AML_CTR_CPU_RESET | AML_CTR_MAC_RESET | AML_CTR_PHY_RESET;
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_HARDWARE_RESET,
+			       AML_OP_HARDWARE_RST,
+			       &value, sizeof(value));
+	return ret;
+}
+
+static int aml_send_firmware_segment(struct hci_dev *hdev,
+				     u8 fw_type,
+				     u8 *seg,
+				     u32 seg_size,
+				     u32 offset)
+{
+	u32 op_addr = 0;
+
+	if (fw_type == FW_ICCM)
+		op_addr = AML_OP_ICCM_RAM_BASE  + offset;
+	else if (fw_type == FW_DCCM)
+		op_addr = AML_OP_DCCM_RAM_BASE + offset;
+
+	return aml_send_tci_cmd(hdev, AML_TCI_CMD_DOWNLOAD_BT_FW,
+			     op_addr, (u32 *)seg, seg_size);
+}
+
+static int aml_send_firmware(struct hci_dev *hdev, u8 fw_type,
+			     u8 *fw, u32 fw_size, u32 offset)
+{
+	u32 seg_size = 0;
+	u32 seg_off = 0;
+
+	if (fw_size > AML_FIRMWARE_MAX_SIZE) {
+		bt_dev_err(hdev, "fw_size error, fw_size:%d, max_size: 512K",
+		       fw_size);
+		return -EINVAL;
+	}
+	while (fw_size > 0) {
+		seg_size = (fw_size > AML_FIRMWARE_OPERATION_SIZE) ?
+			   AML_FIRMWARE_OPERATION_SIZE : fw_size;
+		if (aml_send_firmware_segment(hdev, fw_type, (fw + seg_off),
+					      seg_size, offset)) {
+			bt_dev_err(hdev, "Failed send firmware, type:%d, offset:0x%x",
+			       fw_type, offset);
+			return -EINVAL;
+		}
+		seg_off += seg_size;
+		fw_size -= seg_size;
+		offset += seg_size;
+	}
+	return 0;
+}
+
+static int aml_download_firmware(struct hci_dev *hdev, const char *fw_name)
+{
+	struct hci_uart *hu = hci_get_drvdata(hdev);
+	struct aml_serdev *amldev = serdev_device_get_drvdata(hu->serdev);
+	const struct firmware *firmware = NULL;
+	struct aml_fw_len *fw_len = NULL;
+	u8 *iccm_start = NULL, *dccm_start = NULL;
+	u32 iccm_len, dccm_len;
+	u32 value = 0;
+	int ret = 0;
+
+	/* Enable firmware download event. */
+	value = AML_EVT_EN;
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_WRITE,
+			       AML_OP_EVT_ENABLE,
+			       &value, sizeof(value));
+	if (ret)
+		goto exit;
+
+	/* RAM power on */
+	value = AML_RAM_POWER_ON;
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_WRITE,
+			       AML_OP_RAM_POWER_CTR,
+			       &value, sizeof(value));
+	if (ret)
+		goto exit;
+
+	/* Check RAM power status */
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_READ,
+			       AML_OP_RAM_POWER_CTR, NULL, 0);
+	if (ret)
+		goto exit;
+
+	ret = request_firmware(&firmware, fw_name, &hdev->dev);
+	if (ret < 0) {
+		bt_dev_err(hdev, "Failed to load <%s>:(%d)", fw_name, ret);
+		goto exit;
+	}
+
+	fw_len = (struct aml_fw_len *)firmware->data;
+
+	/* Download ICCM */
+	iccm_start = (u8 *)(firmware->data) + sizeof(struct aml_fw_len)
+			+ amldev->aml_dev_data->iccm_offset;
+	iccm_len = fw_len->iccm_len - amldev->aml_dev_data->iccm_offset;
+	ret = aml_send_firmware(hdev, FW_ICCM, iccm_start, iccm_len,
+				amldev->aml_dev_data->iccm_offset);
+	if (ret) {
+		bt_dev_err(hdev, "Failed to send FW_ICCM (%d)", ret);
+		goto exit;
+	}
+
+	/* Download DCCM */
+	dccm_start = (u8 *)(firmware->data) + sizeof(struct aml_fw_len) + fw_len->iccm_len;
+	dccm_len = fw_len->dccm_len;
+	ret = aml_send_firmware(hdev, FW_DCCM, dccm_start, dccm_len,
+				amldev->aml_dev_data->dccm_offset);
+	if (ret) {
+		bt_dev_err(hdev, "Failed to send FW_DCCM (%d)", ret);
+		goto exit;
+	}
+
+	/* Disable firmware download event. */
+	value = 0;
+	ret = aml_send_tci_cmd(hdev, AML_TCI_CMD_WRITE,
+			       AML_OP_EVT_ENABLE,
+			       &value, sizeof(value));
+	if (ret)
+		goto exit;
+
+exit:
+	if (firmware)
+		release_firmware(firmware);
+	return ret;
+}
+
+static int aml_send_reset(struct hci_dev *hdev)
+{
+	struct sk_buff *skb;
+	int err;
+
+	skb = __hci_cmd_sync_ev(hdev, HCI_OP_RESET, 0, NULL,
+				HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed to send hci reset cmd(%d)", err);
+		return err;
+	}
+
+	kfree_skb(skb);
+	return 0;
+}
+
+static int aml_dump_fw_version(struct hci_dev *hdev)
+{
+	struct aml_tci_rsp *rsp = NULL;
+	struct sk_buff *skb;
+	u8 value[6] = {0};
+	u8 *fw_ver = NULL;
+	int err = 0;
+
+	skb = __hci_cmd_sync_ev(hdev, AML_BT_HCI_VENDOR_CMD, sizeof(value), value,
+				HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed get fw version:(%d)", err);
+		return err;
+	}
+
+	rsp = skb_pull_data(skb, sizeof(struct aml_tci_rsp));
+	if (!rsp)
+		goto exit;
+
+	if (rsp->opcode != AML_BT_HCI_VENDOR_CMD || rsp->status != 0x00) {
+		bt_dev_err(hdev, "dump version, error response (0x%04X):(%d)",
+		       rsp->opcode, rsp->status);
+		err = -EINVAL;
+		goto exit;
+	}
+
+	fw_ver = (u8 *)rsp + AML_EVT_HEAD_SIZE;
+	bt_dev_info(hdev, "fw_version: date = %02x.%02x, number = 0x%02x%02x",
+		*(fw_ver + 1), *fw_ver, *(fw_ver + 3), *(fw_ver + 2));
+
+exit:
+	kfree_skb(skb);
+	return err;
+}
+
+static int aml_set_bdaddr(struct hci_dev *hdev, const bdaddr_t *bdaddr)
+{
+	struct aml_tci_rsp *rsp = NULL;
+	struct sk_buff *skb;
+	int err = 0;
+
+	bt_dev_info(hdev, "set bdaddr (%pM)", bdaddr);
+	skb = __hci_cmd_sync_ev(hdev, AML_BT_HCI_VENDOR_CMD,
+				sizeof(bdaddr_t), bdaddr,
+				HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed to set bdaddr:(%d)", err);
+		return err;
+	}
+
+	rsp = skb_pull_data(skb, sizeof(struct aml_tci_rsp));
+	if (!rsp)
+		goto exit;
+
+	if (rsp->opcode != AML_BT_HCI_VENDOR_CMD || rsp->status != 0x00) {
+		bt_dev_err(hdev, "error response (0x%x):(%d)", rsp->opcode, rsp->status);
+		err = -EINVAL;
+		goto exit;
+	}
+
+exit:
+	kfree_skb(skb);
+	return err;
+}
+
+static int aml_check_bdaddr(struct hci_dev *hdev)
+{
+	struct hci_rp_read_bd_addr *paddr;
+	struct sk_buff *skb;
+	int err;
+
+	if (bacmp(&hdev->public_addr, BDADDR_ANY))
+		return 0;
+
+	skb = __hci_cmd_sync(hdev, HCI_OP_READ_BD_ADDR, 0, NULL,
+			     HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed to read bdaddr:(%d)", err);
+		return err;
+	}
+
+	paddr = skb_pull_data(skb, sizeof(struct hci_rp_read_bd_addr));
+	if (!paddr)
+		goto exit;
+
+	if (!bacmp(&paddr->bdaddr, AML_BDADDR_DEFAULT)) {
+		bt_dev_info(hdev, "amlbt using default bdaddr (%pM)", &paddr->bdaddr);
+		set_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
+	}
+
+exit:
+	kfree_skb(skb);
+	return 0;
+}
+
+static int aml_config_rf(struct hci_dev *hdev, bool is_coex)
+{
+	u32 value = AML_RF_ANT_DOUBLE;
+
+	/* Use a single antenna when co-existing with wifi. */
+	if (is_coex)
+		value = AML_RF_ANT_SINGLE;
+
+	return aml_send_tci_cmd(hdev, AML_TCI_CMD_WRITE,
+				AML_OP_RF_CFG,
+				&value, sizeof(value));
+}
+
+static int aml_parse_dt(struct aml_serdev *amldev)
+{
+	struct device *pdev = amldev->dev;
+
+	amldev->bt_en_gpio = devm_gpiod_get(pdev, "enable",
+					GPIOD_OUT_LOW);
+	if (IS_ERR(amldev->bt_en_gpio)) {
+		dev_err(pdev, "Failed to acquire enable gpios");
+		return PTR_ERR(amldev->bt_en_gpio);
+	}
+
+	if (device_property_read_string(pdev, "firmware-name",
+					&amldev->firmware_name)) {
+		dev_err(pdev, "Failed to acquire firmware path");
+		return -ENODEV;
+	}
+
+	amldev->bt_supply = devm_regulator_get(pdev, "vddio");
+	if (IS_ERR(amldev->bt_supply)) {
+		dev_err(pdev, "Failed to acquire regulator");
+		return PTR_ERR(amldev->bt_supply);
+	}
+
+	amldev->lpo_clk = devm_clk_get(pdev, NULL);
+	if (IS_ERR(amldev->lpo_clk)) {
+		dev_err(pdev, "Failed to acquire clock source");
+		return PTR_ERR(amldev->lpo_clk);
+	}
+
+	return 0;
+}
+
+static int aml_power_on(struct aml_serdev *amldev)
+{
+	int err;
+
+	err = regulator_enable(amldev->bt_supply);
+	if (err) {
+		dev_err(amldev->dev, "Failed to enable regulator: (%d)", err);
+		return err;
+	}
+
+	err = clk_prepare_enable(amldev->lpo_clk);
+	if (err) {
+		dev_err(amldev->dev, "Failed to enable lpo clock: (%d)", err);
+		return err;
+	}
+
+	gpiod_set_value_cansleep(amldev->bt_en_gpio, 1);
+
+	/* wait 100ms for bluetooth controller power on  */
+	msleep(100);
+	return 0;
+}
+
+static int aml_power_off(struct aml_serdev *amldev)
+{
+	gpiod_set_value_cansleep(amldev->bt_en_gpio, 0);
+
+	clk_disable_unprepare(amldev->lpo_clk);
+
+	regulator_disable(amldev->bt_supply);
+
+	return 0;
+}
+
+static int aml_set_baudrate(struct hci_uart *hu, unsigned int speed)
+{
+	/* update controller baudrate*/
+	if (aml_update_chip_baudrate(hu->hdev, speed) != 0) {
+		bt_dev_err(hu->hdev, "Failed to update baud rate");
+		return -EINVAL;
+	}
+
+	/* update local baudrate*/
+	serdev_device_set_baudrate(hu->serdev, speed);
+
+	return 0;
+}
+
+/* Initialize protocol */
+static int aml_open(struct hci_uart *hu)
+{
+	struct aml_serdev *amldev = serdev_device_get_drvdata(hu->serdev);
+	struct aml_data *aml_data;
+	int err;
+
+	err = aml_parse_dt(amldev);
+	if (err)
+		return err;
+
+	if (!hci_uart_has_flow_control(hu)) {
+		bt_dev_err(hu->hdev, "no flow control");
+		return -EOPNOTSUPP;
+	}
+
+	aml_data = kzalloc(sizeof(*aml_data), GFP_KERNEL);
+	if (!aml_data)
+		return -ENOMEM;
+
+	skb_queue_head_init(&aml_data->txq);
+
+	hu->priv = aml_data;
+
+	return 0;
+}
+
+static int aml_close(struct hci_uart *hu)
+{
+	struct aml_serdev *amldev = serdev_device_get_drvdata(hu->serdev);
+	struct aml_data *aml_data = hu->priv;
+
+	if (hu->serdev)
+		serdev_device_close(hu->serdev);
+
+	skb_queue_purge(&aml_data->txq);
+	kfree_skb(aml_data->rx_skb);
+	kfree(aml_data);
+
+	hu->priv = NULL;
+
+	return aml_power_off(amldev);
+}
+
+static int aml_flush(struct hci_uart *hu)
+{
+	struct aml_data *aml_data = hu->priv;
+
+	skb_queue_purge(&aml_data->txq);
+
+	return 0;
+}
+
+static int aml_setup(struct hci_uart *hu)
+{
+	struct aml_serdev *amldev = serdev_device_get_drvdata(hu->serdev);
+	struct hci_dev *hdev = amldev->serdev_hu.hdev;
+	int err;
+
+	/* Setup bdaddr */
+	hdev->set_bdaddr = aml_set_bdaddr;
+
+	err = aml_power_on(amldev);
+	if (err)
+		return err;
+
+	err = aml_set_baudrate(hu, amldev->serdev_hu.proto->oper_speed);
+	if (err)
+		return err;
+
+	err = aml_download_firmware(hdev, amldev->firmware_name);
+	if (err)
+		return err;
+
+	err = aml_config_rf(hdev, amldev->aml_dev_data->is_coex);
+	if (err)
+		return err;
+
+	err = aml_start_chip(hdev);
+	if (err)
+		return err;
+
+	/* wait 350ms for controller start up*/
+	msleep(350);
+
+	err = aml_dump_fw_version(hdev);
+	if (err)
+		return err;
+
+	err = aml_send_reset(hdev);
+	if (err)
+		return err;
+
+	err = aml_check_bdaddr(hdev);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int aml_enqueue(struct hci_uart *hu, struct sk_buff *skb)
+{
+	struct aml_data *aml_data = hu->priv;
+
+	skb_queue_tail(&aml_data->txq, skb);
+
+	return 0;
+}
+
+static struct sk_buff *aml_dequeue(struct hci_uart *hu)
+{
+	struct aml_data *aml_data = hu->priv;
+	struct sk_buff *skb;
+
+	skb = skb_dequeue(&aml_data->txq);
+
+	/* Prepend skb with frame type */
+	if (skb)
+		memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);
+
+	return skb;
+}
+
+static int aml_recv(struct hci_uart *hu, const void *data, int count)
+{
+	struct aml_data *aml_data = hu->priv;
+	int err;
+
+	aml_data->rx_skb = h4_recv_buf(hu->hdev, aml_data->rx_skb, data, count,
+				       aml_recv_pkts,
+				       ARRAY_SIZE(aml_recv_pkts));
+	if (IS_ERR(aml_data->rx_skb)) {
+		err = PTR_ERR(aml_data->rx_skb);
+		bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
+		aml_data->rx_skb = NULL;
+		return err;
+	}
+
+	return count;
+}
+
+static const struct hci_uart_proto aml_hci_proto = {
+	.id		= HCI_UART_AML,
+	.name		= "AML",
+	.manufacturer	= 50,
+	.init_speed	= 115200,
+	.oper_speed	= 4000000,
+	.open		= aml_open,
+	.close		= aml_close,
+	.setup		= aml_setup,
+	.flush		= aml_flush,
+	.recv		= aml_recv,
+	.enqueue	= aml_enqueue,
+	.dequeue	= aml_dequeue,
+};
+
+static void aml_device_driver_shutdown(struct device *dev)
+{
+	struct aml_serdev *amldev = dev_get_drvdata(dev);
+
+	aml_power_off(amldev);
+}
+
+static int aml_serdev_probe(struct serdev_device *serdev)
+{
+	struct aml_serdev *amldev;
+	int err;
+
+	amldev = devm_kzalloc(&serdev->dev, sizeof(*amldev), GFP_KERNEL);
+	if (!amldev)
+		return -ENOMEM;
+
+	amldev->serdev_hu.serdev = serdev;
+	amldev->dev = &serdev->dev;
+	serdev_device_set_drvdata(serdev, amldev);
+
+	err = hci_uart_register_device(&amldev->serdev_hu, &aml_hci_proto);
+	if (err)
+		return dev_err_probe(amldev->dev, err,
+			      "Failed to register hci uart device");
+
+	amldev->aml_dev_data = device_get_match_data(&serdev->dev);
+
+	return 0;
+}
+
+static void aml_serdev_remove(struct serdev_device *serdev)
+{
+	struct aml_serdev *amldev = serdev_device_get_drvdata(serdev);
+
+	hci_uart_unregister_device(&amldev->serdev_hu);
+}
+
+static const struct aml_device_data data_w155s2 = {
+	.iccm_offset = 256 * 1024,
+};
+
+static const struct aml_device_data data_w265s2 = {
+	.iccm_offset = 384 * 1024,
+};
+
+static const struct of_device_id aml_bluetooth_of_match[] = {
+	{ .compatible = "amlogic,w155s2-bt", .data = &data_w155s2 },
+	{ .compatible = "amlogic,w265s2-bt", .data = &data_w265s2 },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, aml_bluetooth_of_match);
+
+static struct serdev_device_driver aml_serdev_driver = {
+	.probe = aml_serdev_probe,
+	.remove = aml_serdev_remove,
+	.driver = {
+		.name = "hci_uart_aml",
+		.of_match_table = aml_bluetooth_of_match,
+		.shutdown = aml_device_driver_shutdown,
+	},
+};
+
+int __init aml_init(void)
+{
+	serdev_device_driver_register(&aml_serdev_driver);
+
+	return hci_uart_register_proto(&aml_hci_proto);
+}
+
+int __exit aml_deinit(void)
+{
+	serdev_device_driver_unregister(&aml_serdev_driver);
+
+	return hci_uart_unregister_proto(&aml_hci_proto);
+}
diff --git a/drivers/bluetooth/hci_ldisc.c b/drivers/bluetooth/hci_ldisc.c
index 30192bb08354..d307c41a5470 100644
--- a/drivers/bluetooth/hci_ldisc.c
+++ b/drivers/bluetooth/hci_ldisc.c
@@ -870,7 +870,9 @@ static int __init hci_uart_init(void)
 #ifdef CONFIG_BT_HCIUART_MRVL
 	mrvl_init();
 #endif
-
+#ifdef CONFIG_BT_HCIUART_AML
+	aml_init();
+#endif
 	return 0;
 }
 
@@ -906,7 +908,9 @@ static void __exit hci_uart_exit(void)
 #ifdef CONFIG_BT_HCIUART_MRVL
 	mrvl_deinit();
 #endif
-
+#ifdef CONFIG_BT_HCIUART_AML
+	aml_deinit();
+#endif
 	tty_unregister_ldisc(&hci_uart_ldisc);
 }
 
diff --git a/drivers/bluetooth/hci_uart.h b/drivers/bluetooth/hci_uart.h
index 00bf7ae82c5b..fbf3079b92a5 100644
--- a/drivers/bluetooth/hci_uart.h
+++ b/drivers/bluetooth/hci_uart.h
@@ -20,7 +20,7 @@
 #define HCIUARTGETFLAGS		_IOR('U', 204, int)
 
 /* UART protocols */
-#define HCI_UART_MAX_PROTO	12
+#define HCI_UART_MAX_PROTO	13
 
 #define HCI_UART_H4	0
 #define HCI_UART_BCSP	1
@@ -34,6 +34,7 @@
 #define HCI_UART_AG6XX	9
 #define HCI_UART_NOKIA	10
 #define HCI_UART_MRVL	11
+#define HCI_UART_AML	12
 
 #define HCI_UART_RAW_DEVICE	0
 #define HCI_UART_RESET_ON_INIT	1
@@ -209,3 +210,8 @@ int ag6xx_deinit(void);
 int mrvl_init(void);
 int mrvl_deinit(void);
 #endif
+
+#ifdef CONFIG_BT_HCIUART_AML
+int aml_init(void);
+int aml_deinit(void);
+#endif

-- 
2.42.0



