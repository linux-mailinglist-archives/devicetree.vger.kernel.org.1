Return-Path: <devicetree+bounces-107816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F60299025D
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90CA3B2205B
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC42A15D5CE;
	Fri,  4 Oct 2024 11:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="rFhv7qUd"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB39155C95;
	Fri,  4 Oct 2024 11:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728042393; cv=none; b=N3+4yO+mMSvHel5laHO6iODGKJLXZllbYEAIGR8YSXHVgaKGBgZzsWeulL7LmjirofPzRi+Ui7KhgpZeH4N4YzvRgrhoN2kPDglQPLWC44Ru5rVKO/w4PW0izA8+8rthFqz516XuX24XaZ9B+hgIdniE+bQXKMs/Z8i5Q4acq/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728042393; c=relaxed/simple;
	bh=Jh8WZeCm8nJkt7ZjOEFxVtabP0bMvsYlozzEmXp8QsU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aFGf3o7xAoUdE7a9dtHvolgHCQCY0S31b7DHZ6lisn/V/HU7RCJtSonViXXvgaY9K12lKWz/1969fM9H8JgG+R9W7pcbCphbfrC0B8lFIFXwVu4sRuyRIJ7DE7QWhZbcxU0I3CxDZi7ZzW8ri+8U3y2ZajBnxCkCkYdkALoccTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=rFhv7qUd; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0AF1F88B89;
	Fri,  4 Oct 2024 13:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1728042384;
	bh=/8HXQqsE7V7o/I1N4vKkRIUpFo3wLY7Dqhg4y63ZDyA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rFhv7qUdag2ijiKaBVg7sHBSdhLjGnle4unplV58Lr1TvF/8vk4wtaxmrPrHdYE2u
	 6AcQUNO4gHQB2Zbms67+3eoEKIv/6Fyxdec4R29MEpkSh3LU3YDxhTlV2nl0+c0fWb
	 wfdQE1fKXAAC6R7VikxM3/0SL3A1aWksOay9Vw3/n4xwpI2CcpOrn48Tf5+xLNWb3j
	 KDyqZHPEcgIWYpx9k04brfALiz7AbQfS+WQuGzqJ0jYm9Yh6MbhDqetbwqTI5Y+yy6
	 TkDG0yTNAwyYDjnrdt7aFQjDnA+b7Cqh/hravSrdmVNS512b91uvrjGoSV50ZOT/0m
	 DSq/H3J5Rg+Uw==
From: Marek Vasut <marex@denx.de>
To: linux-wireless@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Adham Abozaeid <adham.abozaeid@microchip.com>,
	Ajay Singh <ajay.kathat@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Kalle Valo <kvalo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v8 4/7] wifi: wilc1000: Fill in missing error handling
Date: Fri,  4 Oct 2024 13:44:13 +0200
Message-ID: <20241004114551.40236-4-marex@denx.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241004114551.40236-1-marex@denx.de>
References: <20241004114551.40236-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Add error handling to chip_wakeup() and propagate the errors throughout
the entire driver. Add error handling to acquire_bus()/release_bus() and
host_sleep_notify()/host_wakeup_notify() functions as a result as well.
Fill the error handling to all call sites.

Reviewed-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Adham Abozaeid <adham.abozaeid@microchip.com>
Cc: Ajay Singh <ajay.kathat@microchip.com>
Cc: Alexis Lothoré <alexis.lothore@bootlin.com>
Cc: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Kalle Valo <kvalo@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
---
V3: New patch
V4: No change
V4: Add RB from Alexis
V5: No change
V6: - Rebase on next-20240926
V7: - Rebase on next-20241003 / wireless-next/main 5a4d42c1688c
      with v2 wifi: wilc1000: Keep slot powered on during suspend/resume
V8: No change
---
 .../net/wireless/microchip/wilc1000/sdio.c    |  11 +-
 .../net/wireless/microchip/wilc1000/wlan.c    | 154 +++++++++++++-----
 .../net/wireless/microchip/wilc1000/wlan.h    |   4 +-
 3 files changed, 118 insertions(+), 51 deletions(-)

diff --git a/drivers/net/wireless/microchip/wilc1000/sdio.c b/drivers/net/wireless/microchip/wilc1000/sdio.c
index 7bc6d788f33a7..9173f6f3beabf 100644
--- a/drivers/net/wireless/microchip/wilc1000/sdio.c
+++ b/drivers/net/wireless/microchip/wilc1000/sdio.c
@@ -960,6 +960,7 @@ static int wilc_sdio_suspend(struct device *dev)
 {
 	struct sdio_func *func = dev_to_sdio_func(dev);
 	struct wilc *wilc = sdio_get_drvdata(func);
+	int ret;
 
 	dev_info(dev, "sdio suspend\n");
 
@@ -969,7 +970,11 @@ static int wilc_sdio_suspend(struct device *dev)
 	if (!IS_ERR(wilc->rtc_clk))
 		clk_disable_unprepare(wilc->rtc_clk);
 
-	host_sleep_notify(wilc);
+	ret = host_sleep_notify(wilc);
+	if (ret) {
+		clk_prepare_enable(wilc->rtc_clk);
+		return ret;
+	}
 
 	wilc_sdio_disable_interrupt(wilc);
 
@@ -992,9 +997,7 @@ static int wilc_sdio_resume(struct device *dev)
 	wilc_sdio_init(wilc, true);
 	wilc_sdio_enable_interrupt(wilc);
 
-	host_wakeup_notify(wilc);
-
-	return 0;
+	return host_wakeup_notify(wilc);
 }
 
 static const struct of_device_id wilc_of_match[] = {
diff --git a/drivers/net/wireless/microchip/wilc1000/wlan.c b/drivers/net/wireless/microchip/wilc1000/wlan.c
index 875f0bb8af673..521caa498035e 100644
--- a/drivers/net/wireless/microchip/wilc1000/wlan.c
+++ b/drivers/net/wireless/microchip/wilc1000/wlan.c
@@ -601,7 +601,7 @@ static int chip_allow_sleep(struct wilc *wilc)
 	return 0;
 }
 
-static void chip_wakeup(struct wilc *wilc)
+static int chip_wakeup(struct wilc *wilc)
 {
 	u32 ret = 0;
 	u32 clk_status_val = 0, trials = 0;
@@ -630,20 +630,20 @@ static void chip_wakeup(struct wilc *wilc)
 	ret = hif_func->hif_write_reg(wilc, from_host_to_fw_reg,
 				      from_host_to_fw_bit);
 	if (ret)
-		return;
+		return ret;
 
 	/* Set wake-up bit */
 	ret = hif_func->hif_write_reg(wilc, wakeup_reg,
 				      wakeup_bit);
 	if (ret)
-		return;
+		return ret;
 
 	while (trials < WAKE_UP_TRIAL_RETRY) {
 		ret = hif_func->hif_read_reg(wilc, clk_status_reg,
 					     &clk_status_val);
 		if (ret) {
 			pr_err("Bus error %d %x\n", ret, clk_status_val);
-			return;
+			return ret;
 		}
 		if (clk_status_val & clk_status_bit)
 			break;
@@ -652,42 +652,63 @@ static void chip_wakeup(struct wilc *wilc)
 	}
 	if (trials >= WAKE_UP_TRIAL_RETRY) {
 		pr_err("Failed to wake-up the chip\n");
-		return;
+		return -ETIMEDOUT;
 	}
 	/* Sometimes spi fail to read clock regs after reading
 	 * writing clockless registers
 	 */
 	if (wilc->io_type == WILC_HIF_SPI)
 		wilc->hif_func->hif_reset(wilc);
+
+	return 0;
 }
 
-static inline void acquire_bus(struct wilc *wilc, enum bus_acquire acquire)
+static inline int acquire_bus(struct wilc *wilc, enum bus_acquire acquire)
 {
+	int ret = 0;
+
 	mutex_lock(&wilc->hif_cs);
-	if (acquire == WILC_BUS_ACQUIRE_AND_WAKEUP && wilc->power_save_mode)
-		chip_wakeup(wilc);
+	if (acquire == WILC_BUS_ACQUIRE_AND_WAKEUP && wilc->power_save_mode) {
+		ret = chip_wakeup(wilc);
+		if (ret)
+			mutex_unlock(&wilc->hif_cs);
+	}
+
+	return ret;
 }
 
-static inline void release_bus(struct wilc *wilc, enum bus_release release)
+static inline int release_bus(struct wilc *wilc, enum bus_release release)
 {
+	int ret = 0;
+
 	if (release == WILC_BUS_RELEASE_ALLOW_SLEEP && wilc->power_save_mode)
-		chip_allow_sleep(wilc);
+		ret = chip_allow_sleep(wilc);
 	mutex_unlock(&wilc->hif_cs);
+
+	return ret;
 }
 
-void host_wakeup_notify(struct wilc *wilc)
+int host_wakeup_notify(struct wilc *wilc)
 {
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	int ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+
+	if (ret)
+		return ret;
+
 	wilc->hif_func->hif_write_reg(wilc, WILC_CORTUS_INTERRUPT_2, 1);
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	return release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 }
 EXPORT_SYMBOL_GPL(host_wakeup_notify);
 
-void host_sleep_notify(struct wilc *wilc)
+int host_sleep_notify(struct wilc *wilc)
 {
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	int ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+
+	if (ret)
+		return ret;
+
 	wilc->hif_func->hif_write_reg(wilc, WILC_CORTUS_INTERRUPT_1, 1);
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	return release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 }
 EXPORT_SYMBOL_GPL(host_sleep_notify);
 
@@ -714,6 +735,7 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 	int srcu_idx;
 	u8 *txb = wilc->tx_buffer;
 	struct wilc_vif *vif;
+	int rv;
 
 	if (wilc->quit)
 		goto out_update_cnt;
@@ -784,7 +806,10 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 		goto out_unlock;
 	vmm_table[i] = 0x0;
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		goto out_unlock;
+
 	counter = 0;
 	func = wilc->hif_func;
 	do {
@@ -859,7 +884,9 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 		goto out_release_bus;
 	}
 
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	ret = release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	if (ret)
+		goto out_unlock;
 
 	offset = 0;
 	i = 0;
@@ -921,7 +948,9 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 	for (i = 0; i < NQUEUES; i++)
 		wilc->txq[i].fw.count += ac_pkt_num_to_chip[i];
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		goto out_unlock;
 
 	ret = func->hif_clear_int_ext(wilc, ENABLE_TX_VMM);
 	if (ret)
@@ -930,7 +959,9 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 	ret = func->hif_block_tx_ext(wilc, 0, txb, offset);
 
 out_release_bus:
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	rv = release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	if (!ret && rv)
+		ret = rv;
 
 out_unlock:
 	mutex_unlock(&wilc->txq_add_to_head_cs);
@@ -1059,8 +1090,14 @@ static void wilc_wlan_handle_isr_ext(struct wilc *wilc, u32 int_status)
 void wilc_handle_isr(struct wilc *wilc)
 {
 	u32 int_status;
+	int ret;
+
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret) {
+		dev_err_ratelimited(wilc->dev, "Cannot acquire bus\n");
+		return;
+	}
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
 	wilc->hif_func->hif_read_int(wilc, &int_status);
 
 	if (int_status & DATA_INT_EXT)
@@ -1069,7 +1106,9 @@ void wilc_handle_isr(struct wilc *wilc)
 	if (!(int_status & (ALL_INT_EXT)))
 		wilc_unknown_isr_ext(wilc);
 
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	ret = release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	if (ret)
+		dev_err_ratelimited(wilc->dev, "Cannot release bus\n");
 }
 EXPORT_SYMBOL_GPL(wilc_handle_isr);
 
@@ -1081,6 +1120,7 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 	u8 *dma_buffer;
 	int ret = 0;
 	u32 reg = 0;
+	int rv;
 
 	blksz = BIT(12);
 
@@ -1091,7 +1131,9 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 	offset = 0;
 	pr_debug("%s: Downloading firmware size = %d\n", __func__, buffer_size);
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		return ret;
 
 	wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
 	reg &= ~BIT(10);
@@ -1100,11 +1142,17 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 	if (reg & BIT(10))
 		pr_err("%s: Failed to reset\n", __func__);
 
-	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+	ret = release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+	if (ret)
+		goto fail;
+
 	do {
 		addr = get_unaligned_le32(&buffer[offset]);
 		size = get_unaligned_le32(&buffer[offset + 4]);
-		acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+		ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+		if (ret)
+			goto fail;
+
 		offset += 8;
 		while (((int)size) && (offset < buffer_size)) {
 			if (size <= blksz)
@@ -1122,7 +1170,9 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 			offset += size2;
 			size -= size2;
 		}
-		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		rv = release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		if (!ret && rv)
+			ret = rv;
 
 		if (ret) {
 			pr_err("%s Bus error\n", __func__);
@@ -1141,7 +1191,7 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 int wilc_wlan_start(struct wilc *wilc)
 {
 	u32 reg = 0;
-	int ret;
+	int ret, rv;
 	u32 chipid;
 
 	if (wilc->io_type == WILC_HIF_SDIO) {
@@ -1150,7 +1200,10 @@ int wilc_wlan_start(struct wilc *wilc)
 	} else if (wilc->io_type == WILC_HIF_SPI) {
 		reg = 1;
 	}
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+	if (ret)
+		return ret;
+
 	ret = wilc->hif_func->hif_write_reg(wilc, WILC_VMM_CORE_CFG, reg);
 	if (ret)
 		goto release;
@@ -1181,16 +1234,18 @@ int wilc_wlan_start(struct wilc *wilc)
 	wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
 
 release:
-	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
-	return ret;
+	rv = release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+	return ret ? ret : rv;
 }
 
 int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif)
 {
 	u32 reg = 0;
-	int ret;
+	int ret, rv;
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		return ret;
 
 	ret = wilc->hif_func->hif_read_reg(wilc, GLOBAL_MODE_CONTROL, &reg);
 	if (ret)
@@ -1226,9 +1281,9 @@ int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif)
 	ret = 0;
 release:
 	/* host comm is disabled - we can't issue sleep command anymore: */
-	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+	rv = release_bus(wilc, WILC_BUS_RELEASE_ONLY);
 
-	return ret;
+	return ret ? ret : rv;
 }
 
 void wilc_wlan_cleanup(struct net_device *dev)
@@ -1434,11 +1489,13 @@ EXPORT_SYMBOL_GPL(wilc_get_chipid);
 static int init_chip(struct net_device *dev)
 {
 	u32 reg;
-	int ret = 0;
+	int ret, rv;
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wilc = vif->wilc;
 
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		return ret;
 
 	ret = wilc_get_chipid(wilc);
 	if (ret)
@@ -1470,17 +1527,19 @@ static int init_chip(struct net_device *dev)
 	}
 
 release:
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	rv = release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 
-	return ret;
+	return ret ? ret : rv;
 }
 
 int wilc_load_mac_from_nv(struct wilc *wl)
 {
-	int ret = -EINVAL;
+	int ret, rv;
 	unsigned int i;
 
-	acquire_bus(wl, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	ret = acquire_bus(wl, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	if (ret)
+		return ret;
 
 	for (i = 0; i < WILC_NVMEM_MAX_NUM_BANK; i++) {
 		int bank_offset = get_bank_offset_from_bank_index(i);
@@ -1519,14 +1578,14 @@ int wilc_load_mac_from_nv(struct wilc *wl)
 		break;
 	}
 
-	release_bus(wl, WILC_BUS_RELEASE_ALLOW_SLEEP);
-	return ret;
+	rv = release_bus(wl, WILC_BUS_RELEASE_ALLOW_SLEEP);
+	return ret ? ret : rv;
 }
 EXPORT_SYMBOL_GPL(wilc_load_mac_from_nv);
 
 int wilc_wlan_init(struct net_device *dev)
 {
-	int ret = 0;
+	int ret = 0, rv;
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wilc;
 
@@ -1535,11 +1594,16 @@ int wilc_wlan_init(struct net_device *dev)
 	wilc->quit = 0;
 
 	if (!wilc->hif_func->hif_is_init(wilc)) {
-		acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+		ret = acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+		if (ret)
+			return ret;
+
 		ret = wilc->hif_func->hif_init(wilc, false);
 		if (!ret)
 			ret = wilc_get_chipid(wilc);
-		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+		rv = release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+		if (!ret && rv)
+			ret = rv;
 		if (ret)
 			goto fail;
 
diff --git a/drivers/net/wireless/microchip/wilc1000/wlan.h b/drivers/net/wireless/microchip/wilc1000/wlan.h
index 90ba76cf14dd1..552590823e444 100644
--- a/drivers/net/wireless/microchip/wilc1000/wlan.h
+++ b/drivers/net/wireless/microchip/wilc1000/wlan.h
@@ -436,8 +436,8 @@ netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
 void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size);
 bool wilc_wfi_mgmt_frame_rx(struct wilc_vif *vif, u8 *buff, u32 size);
-void host_wakeup_notify(struct wilc *wilc);
-void host_sleep_notify(struct wilc *wilc);
+int host_wakeup_notify(struct wilc *wilc);
+int host_sleep_notify(struct wilc *wilc);
 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
 			 u32 count);
 int wilc_wlan_init(struct net_device *dev);
-- 
2.45.2


