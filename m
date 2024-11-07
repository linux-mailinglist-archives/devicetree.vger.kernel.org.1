Return-Path: <devicetree+bounces-119893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B5E9C0647
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 13:54:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE7651C20CCF
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 12:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92FC6210189;
	Thu,  7 Nov 2024 12:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="fnPh1FLb"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7D3212D16;
	Thu,  7 Nov 2024 12:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730983978; cv=none; b=dZQvZE8Tnr412IHKGgMorEqwvksHqEW7at+6VanWJQiPD+bjzb6SgsMHnQh4scoSX0AIoD2eL90GxDm3yDskmaPtVcNfG/s0nuqkqlLWv+qDSNPW60iT+BQzcKCzhWkCG90WfQnt2MEUNs+Dyi6frO9kO/eN7KhD05DWvQ9whdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730983978; c=relaxed/simple;
	bh=a0k1wa1qqreq2w28rkenT6P63WxFlhXBlGN7dCS5o9U=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BYxlSCJRSEpEzrGjnE4Dmex2xUXSYcvlX6pW1h6Ot9Td1DN9JdDMpkyMKxrmY1OWjQ0jxB75TkqAPBqvGkj47IIsjNTL4UPPTtExcA6og+m3vLo1go6VCrTb7t9nIXTcXFUyBjNPIiua41cb9oWTVqyBvIlUpZp4BP3xnKjLAOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=fnPh1FLb; arc=none smtp.client-ip=198.47.23.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4A7Cqnpv090808;
	Thu, 7 Nov 2024 06:52:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1730983969;
	bh=k+c/Gd8lP6TLmr43PVUGJJiCdYAdoDz0yeqhgRRqme8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=fnPh1FLbK08t4ADD6X2C6si3CIzZ+19J6kWHp9MRybNYmoJE4Q5HPnSh5JKp+9sxr
	 yDVH4ofHWSZ5FrVfBQ4jo6p+5OVFzuANrNYZZvmcmMw8TqLDZ9jAe2vi5GNicUoIrU
	 C9CBGpu6MtEmiLBKEoxEoF9B6y7CFRaQ9N80e/S8=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4A7Cqn6K116091
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 7 Nov 2024 06:52:49 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 7
 Nov 2024 06:52:48 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 7 Nov 2024 06:52:48 -0600
Received: from localhost (udb0389739.dhcp.ti.com [137.167.1.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4A7CqmQS054836;
	Thu, 7 Nov 2024 06:52:48 -0600
From: Michael Nemanov <michael.nemanov@ti.com>
To: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo
 Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-wireless@vger.kernel.org>,
        <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: Sabeeh Khan <sabeeh-khan@ti.com>, Michael Nemanov <michael.nemanov@ti.com>
Subject: [PATCH v5 08/17] wifi: cc33xx: Add boot.c, boot.h
Date: Thu, 7 Nov 2024 14:52:00 +0200
Message-ID: <20241107125209.1736277-9-michael.nemanov@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241107125209.1736277-1-michael.nemanov@ti.com>
References: <20241107125209.1736277-1-michael.nemanov@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Implements FW download for CC33xx. The FW comes in 2 parts - a 2nd stage
bootloader (cc33xx_2nd_loader.bin) and the actual FW (cc33xx_fw.bin).
Each file is requested from user space, and transferred to device
chunk by chunk. A dedicated IRQ is excepted after each stage
(Device power-on -> 2nd stage loader -> FW). This logic is implemnted in
cc33xx_init_fw.

Signed-off-by: Michael Nemanov <michael.nemanov@ti.com>
---
 drivers/net/wireless/ti/cc33xx/boot.c | 345 ++++++++++++++++++++++++++
 drivers/net/wireless/ti/cc33xx/boot.h |  24 ++
 2 files changed, 369 insertions(+)
 create mode 100644 drivers/net/wireless/ti/cc33xx/boot.c
 create mode 100644 drivers/net/wireless/ti/cc33xx/boot.h

diff --git a/drivers/net/wireless/ti/cc33xx/boot.c b/drivers/net/wireless/ti/cc33xx/boot.c
new file mode 100644
index 000000000000..25efbe937837
--- /dev/null
+++ b/drivers/net/wireless/ti/cc33xx/boot.c
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+#include <linux/firmware.h>
+#include <linux/vmalloc.h>
+
+#include "boot.h"
+#include "cmd.h"
+#include "debug.h"
+#include "init.h"
+#include "io.h"
+
+#define CC33XX_BOOT_TIMEOUT 2000
+
+struct hwinfo_bitmap {
+	u32 disable_5g			: 1u;
+	u32 disable_6g			: 1u;
+	u32 disable_ble			: 1u;
+	u32 disable_ble_m0plus		: 1u;
+	u32 disable_m33			: 1u;
+	u64 udi				: 64u;
+	u32 pg_version			: 4u;
+	u32 metal_version		: 4u;
+	u32 boot_rom_version		: 4u;
+	u32 m3_rom_version		: 4u;
+	u32 fuse_rom_structure_version	: 4u;
+	u64 mac_address			: 48u;
+	u32 device_part_number		: 6u;
+	u32 package_type		: 4u;
+	u32 fw_rollback_protection_1	: 32u;
+	u32 fw_rollback_protection_2	: 32u;
+	u32 fw_rollback_protection_3	: 32u;
+	u32 reserved			: 13u;
+} /* Aligned with boot code, must not be __packed */;
+
+union hw_info {
+	struct hwinfo_bitmap	bitmap;
+	u8			bytes[sizeof(struct hwinfo_bitmap)];
+};
+
+/* Called from threaded irq context */
+void cc33xx_handle_boot_irqs(struct cc33xx *cc, u32 pending_interrupts)
+{
+	if (WARN_ON(!cc->fw_download))
+		return;
+
+	atomic_or(pending_interrupts, &cc->fw_download->pending_irqs);
+	complete(&cc->fw_download->wait_on_irq);
+}
+
+static u8 *fetch_container(struct cc33xx *cc, const char *container_name,
+			   size_t *container_len)
+{
+	u8 *container_data = NULL;
+	const struct firmware *container;
+	int ret;
+
+	ret = request_firmware(&container, container_name, cc->dev);
+
+	if (ret < 0) {
+		cc33xx_error("could not get container %s: (%d)",
+			     container_name, ret);
+		return NULL;
+	}
+
+	if (container->size % 4) {
+		cc33xx_error("container size is not word-aligned: %zu",
+			     container->size);
+		goto out;
+	}
+
+	*container_len = container->size;
+	container_data = vmalloc(container->size);
+
+	if (!container_data) {
+		cc33xx_error("could not allocate memory for the container");
+		goto out;
+	}
+
+	memcpy(container_data, container->data, container->size);
+
+out:
+	release_firmware(container);
+	return container_data;
+}
+
+static int cc33xx_set_power_on(struct cc33xx *cc)
+{
+	int ret;
+
+	msleep(CC33XX_PRE_POWER_ON_SLEEP);
+	ret = cc33xx_power_on(cc);
+	if (ret < 0)
+		goto out;
+	msleep(CC33XX_POWER_ON_SLEEP);
+	cc33xx_io_reset(cc);
+	cc33xx_io_init(cc);
+
+out:
+	return ret;
+}
+
+static int cc33xx_chip_wakeup(struct cc33xx *cc)
+{
+	int ret = 0;
+
+	ret = cc33xx_set_power_on(cc);
+	if (ret < 0)
+		goto out;
+
+	if (!cc33xx_set_block_size(cc))
+		cc->quirks &= ~CC33XX_QUIRK_TX_BLOCKSIZE_ALIGN;
+
+out:
+	return ret;
+}
+
+static int wait_for_boot_irq(struct cc33xx *cc, u32 boot_irq_mask,
+			     unsigned long timeout)
+{
+	int ret;
+	u32 pending_irqs;
+	struct cc33xx_fw_download *fw_download;
+
+	fw_download = cc->fw_download;
+
+	ret = wait_for_completion_interruptible_timeout(&fw_download->wait_on_irq,
+							msecs_to_jiffies(timeout));
+
+	/* Fetch pending IRQs while clearing them in fw_download */
+	pending_irqs = atomic_fetch_and(0, &fw_download->pending_irqs);
+	pending_irqs &= ~HINT_COMMAND_COMPLETE;
+
+	reinit_completion(&fw_download->wait_on_irq);
+
+	if (ret == 0) {
+		cc33xx_error("boot IRQ timeout");
+		return -1;
+	} else if (ret < 0) {
+		cc33xx_error("boot IRQ completion error %d", ret);
+		return -2;
+	}
+
+	if (boot_irq_mask != pending_irqs) {
+		cc33xx_error("Unexpected IRQ received @ boot: 0x%x",
+			     pending_irqs);
+		return -3;
+	}
+
+	return 0;
+}
+
+static int download_container(struct cc33xx *cc, u8 *container, size_t len)
+{
+	int ret = 0;
+	u8 *current_transfer;
+	size_t current_transfer_size;
+	u8 *const container_end = container + len;
+	size_t max_transfer_size = cc->fw_download->max_transfer_size;
+	bool is_last_transfer;
+
+	current_transfer = container;
+
+	while (current_transfer < container_end) {
+		current_transfer_size = container_end - current_transfer;
+		current_transfer_size =
+			min(current_transfer_size, max_transfer_size);
+
+		is_last_transfer = (current_transfer + current_transfer_size >= container_end);
+
+		ret = cmd_download_container_chunk(cc,
+						   current_transfer,
+						   current_transfer_size,
+						   is_last_transfer);
+
+		current_transfer += current_transfer_size;
+
+		if (ret < 0) {
+			cc33xx_error("Chunk transfer failed");
+			goto out;
+		}
+	}
+
+out:
+	return ret;
+}
+
+static int container_download_and_wait(struct cc33xx *cc,
+				       const char *container_name,
+				       const u32 irq_wait_mask)
+{
+	int ret =  -1;
+	u8 *container_data;
+	size_t container_len;
+
+	container_data = fetch_container(cc, container_name, &container_len);
+	if (!container_data)
+		return ret;
+
+	ret = download_container(cc, container_data, container_len);
+	if (ret < 0) {
+		cc33xx_error("Transfer error while downloading %s",
+			     container_name);
+		goto out;
+	}
+
+	ret = wait_for_boot_irq(cc, irq_wait_mask, CC33XX_BOOT_TIMEOUT);
+
+	if (ret < 0) {
+		cc33xx_error("%s boot signal timeout", container_name);
+		goto out;
+	}
+
+	ret = 0;
+
+out:
+	vfree(container_data);
+	return ret;
+}
+
+static int fw_download_alloc(struct cc33xx *cc)
+{
+	if (WARN_ON(cc->fw_download))
+		return -EFAULT;
+
+	cc->fw_download = kzalloc(sizeof(*cc->fw_download), GFP_KERNEL);
+	if (!cc->fw_download)
+		return -ENOMEM;
+
+	init_completion(&cc->fw_download->wait_on_irq);
+
+	return 0;
+}
+
+static void fw_download_free(struct cc33xx *cc)
+{
+	if (WARN_ON(!cc->fw_download))
+		return;
+
+	kfree(cc->fw_download);
+	cc->fw_download = NULL;
+}
+
+static int get_device_info(struct cc33xx *cc)
+{
+	int ret;
+	union hw_info hw_info;
+	u64 mac_address;
+
+	ret = cmd_get_device_info(cc, hw_info.bytes, sizeof(hw_info.bytes));
+	if (ret < 0)
+		return ret;
+
+	cc->fw_download->max_transfer_size = 640;
+
+	mac_address = hw_info.bitmap.mac_address;
+
+	cc->fuse_rom_structure_version = hw_info.bitmap.fuse_rom_structure_version;
+	cc->pg_version = hw_info.bitmap.pg_version;
+	cc->device_part_number = hw_info.bitmap.device_part_number;
+	cc->disable_5g = hw_info.bitmap.disable_5g;
+	cc->disable_6g = hw_info.bitmap.disable_6g;
+
+	cc->efuse_mac_address[5] = (u8)(mac_address);
+	cc->efuse_mac_address[4] = (u8)(mac_address >> 8);
+	cc->efuse_mac_address[3] = (u8)(mac_address >> 16);
+	cc->efuse_mac_address[2] = (u8)(mac_address >> 24);
+	cc->efuse_mac_address[1] = (u8)(mac_address >> 32);
+	cc->efuse_mac_address[0] = (u8)(mac_address >> 40);
+
+	return 0;
+}
+
+int cc33xx_init_fw(struct cc33xx *cc)
+{
+	int ret;
+
+	cc->max_cmd_size = CC33XX_CMD_MAX_SIZE;
+
+	ret = fw_download_alloc(cc);
+	if (ret < 0)
+		return ret;
+
+	reinit_completion(&cc->fw_download->wait_on_irq);
+
+	ret = cc33xx_chip_wakeup(cc);
+	if (ret < 0)
+		goto power_off;
+
+	cc33xx_enable_interrupts(cc);
+
+	ret = wait_for_boot_irq(cc, HINT_ROM_LOADER_INIT_COMPLETE,
+				CC33XX_BOOT_TIMEOUT);
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = get_device_info(cc);
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = container_download_and_wait(cc, SECOND_LOADER_NAME,
+					  HINT_SECOND_LOADER_INIT_COMPLETE);
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = container_download_and_wait(cc,  FW_NAME,
+					  HINT_FW_WAKEUP_COMPLETE);
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = cc33xx_download_ini_params_and_wait(cc);
+
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = wait_for_boot_irq(cc, HINT_FW_INIT_COMPLETE, CC33XX_BOOT_TIMEOUT);
+
+	if (ret < 0)
+		goto disable_irq;
+
+	ret = cc33xx_hw_init(cc);
+	if (ret < 0)
+		goto disable_irq;
+
+	/* Now we know if 11a is supported (info from the INI File), so disable
+	 * 11a channels if not supported
+	 */
+	cc->enable_11a = cc->conf.core.enable_5ghz;
+
+	cc->state = CC33XX_STATE_ON;
+	ret = 0;
+	goto out;
+
+disable_irq:
+	cc33xx_disable_interrupts_nosync(cc);
+
+power_off:
+	cc33xx_power_off(cc);
+
+out:
+	fw_download_free(cc);
+	return ret;
+}
diff --git a/drivers/net/wireless/ti/cc33xx/boot.h b/drivers/net/wireless/ti/cc33xx/boot.h
new file mode 100644
index 000000000000..d5b7763dcd0f
--- /dev/null
+++ b/drivers/net/wireless/ti/cc33xx/boot.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+#ifndef __BOOT_H__
+#define __BOOT_H__
+
+#include "cc33xx.h"
+
+int cc33xx_init_fw(struct cc33xx *cc);
+
+void cc33xx_handle_boot_irqs(struct cc33xx *cc, u32 pending_interrupts);
+
+#define SECOND_LOADER_NAME "ti-connectivity/cc33xx_2nd_loader.bin"
+#define FW_NAME "ti-connectivity/cc33xx_fw.bin"
+
+struct cc33xx_fw_download {
+	atomic_t pending_irqs;
+	struct completion wait_on_irq;
+	size_t max_transfer_size;
+};
+
+#endif /* __BOOT_H__ */
-- 
2.34.1


