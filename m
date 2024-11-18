Return-Path: <devicetree+bounces-122446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0D99D093B
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 07:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30DC81F2234C
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 06:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF46186E2E;
	Mon, 18 Nov 2024 06:02:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FDE1714C0;
	Mon, 18 Nov 2024 06:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731909754; cv=none; b=jSeg6R0k09Eyd+lm13GdigWSiFgPG88TTMusml0fBSy+JeFJHQftZtM1YJGoVOzHXWsfsgMH3iZKF4XST975IWvP18LjkQb3atkXt5fYvl5iv+7iUmLWEfFrz8X8ZFrfdRoiShLbw1b7/hwjtB6+YoqRDg64rDJvcchRljhKwHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731909754; c=relaxed/simple;
	bh=CteD0tS77FWsRmLThWmEcgv6Dxsu7BJ5UokSmVvoN3k=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hCwBt2X82KV/0CZtLD4QbmpB5vJQVnU7BMc8PeoP4kMhfGaK9ip0OAXKpif/lfqgYKPczMIPg8X1HQLEE3/KtFIV8O3I2XaFDrIz8EraCk9zF3aDgOEuCKgD6qI5rInschlNEhwpgiQcwCNc3FDcZbSbeqksJgCz53JDXue4s98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Mon, 18 Nov
 2024 14:02:08 +0800
Received: from mail.aspeedtech.com (192.168.10.10) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1258.12 via Frontend
 Transport; Mon, 18 Nov 2024 14:02:08 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <jacky_chou@aspeedtech.com>
Subject: [net-next v2 6/7] net: ftgmac100: Add 64-bit DMA support for AST2700
Date: Mon, 18 Nov 2024 14:02:06 +0800
Message-ID: <20241118060207.141048-7-jacky_chou@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241118060207.141048-1-jacky_chou@aspeedtech.com>
References: <20241118060207.141048-1-jacky_chou@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

In 7th generation of Aspeed, the ftgmac100 supports 64-bit
DMA operations because it is 64-bit SoC.
Add the high address base registers for TX/RX description and
add the high address base fields for packet buffer in TX/RX description.
These added registers and fields are reserved in older generations and
they will not affect older hardware for accessing read/write
operations to them.
We have verified these patches in older generations, link AST2600.
Run iperf3, tftp, ping and dhcp etc. to confirm that it works normally
on the new generation and older generation.

In TX/RX description, software will reuse the packet buffer address
fields to construct the dma information to unmap these dma region.
Filling in these high address fields in tx/rxdesc2 is software, and the
hardware just use it to do DMA operation and it does not modify these
fields.
And, in older generation, the software will assign to ZERO to the
fields that added in 7th gereration. Because these older SoCs are 32-bit
platforms, the high address will always be ZERO.

Therefore, avoid using a lot of conditions to set the physical address
on old and new generations.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
 drivers/net/ethernet/faraday/ftgmac100.c | 35 ++++++++++++++++++------
 drivers/net/ethernet/faraday/ftgmac100.h |  9 ++++++
 2 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ethernet/faraday/ftgmac100.c
index 801fbc89ab09..f3fbe241edb0 100644
--- a/drivers/net/ethernet/faraday/ftgmac100.c
+++ b/drivers/net/ethernet/faraday/ftgmac100.c
@@ -267,10 +267,12 @@ static void ftgmac100_init_hw(struct ftgmac100 *priv)
 	iowrite32(reg, priv->base + FTGMAC100_OFFSET_ISR);
 
 	/* Setup RX ring buffer base */
-	iowrite32(priv->rxdes_dma, priv->base + FTGMAC100_OFFSET_RXR_BADR);
+	iowrite32(lower_32_bits(priv->rxdes_dma), priv->base + FTGMAC100_OFFSET_RXR_BADR);
+	iowrite32(upper_32_bits(priv->rxdes_dma), priv->base + FTGMAC100_OFFSET_RXR_BADDR_HIGH);
 
 	/* Setup TX ring buffer base */
-	iowrite32(priv->txdes_dma, priv->base + FTGMAC100_OFFSET_NPTXR_BADR);
+	iowrite32(lower_32_bits(priv->txdes_dma), priv->base + FTGMAC100_OFFSET_NPTXR_BADR);
+	iowrite32(upper_32_bits(priv->txdes_dma), priv->base + FTGMAC100_OFFSET_TXR_BADDR_HIGH);
 
 	/* Configure RX buffer size */
 	iowrite32(FTGMAC100_RBSR_SIZE(RX_BUF_SIZE),
@@ -432,7 +434,9 @@ static int ftgmac100_alloc_rx_buf(struct ftgmac100 *priv, unsigned int entry,
 	priv->rx_skbs[entry] = skb;
 
 	/* Store DMA address into RX desc */
-	rxdes->rxdes3 = cpu_to_le32(map);
+	rxdes->rxdes2 = cpu_to_le32(FIELD_PREP(FTGMAC100_RXDES2_RXBUF_BADR_HI,
+					       upper_32_bits(map)));
+	rxdes->rxdes3 = cpu_to_le32(lower_32_bits(map));
 
 	/* Ensure the above is ordered vs clearing the OWN bit */
 	dma_wmb();
@@ -558,7 +562,8 @@ static bool ftgmac100_rx_packet(struct ftgmac100 *priv, int *processed)
 				       csum_vlan & 0xffff);
 
 	/* Tear down DMA mapping, do necessary cache management */
-	map = le32_to_cpu(rxdes->rxdes3);
+	map = le32_to_cpu(rxdes->rxdes3) |
+	      ((le32_to_cpu(rxdes->rxdes2) & FTGMAC100_RXDES2_RXBUF_BADR_HI) << 16);
 
 #if defined(CONFIG_ARM) && !defined(CONFIG_ARM_DMA_USE_IOMMU)
 	/* When we don't have an iommu, we can save cycles by not
@@ -635,9 +640,12 @@ static void ftgmac100_free_tx_packet(struct ftgmac100 *priv,
 				     struct ftgmac100_txdes *txdes,
 				     u32 ctl_stat)
 {
-	dma_addr_t map = le32_to_cpu(txdes->txdes3);
+	dma_addr_t map;
 	size_t len;
 
+	map = le32_to_cpu(txdes->txdes3) |
+	      ((le32_to_cpu(txdes->txdes2) & FTGMAC100_TXDES2_TXBUF_BADR_HI) << 16);
+
 	if (ctl_stat & FTGMAC100_TXDES0_FTS) {
 		len = skb_headlen(skb);
 		dma_unmap_single(priv->dev, map, len, DMA_TO_DEVICE);
@@ -791,7 +799,9 @@ static netdev_tx_t ftgmac100_hard_start_xmit(struct sk_buff *skb,
 	f_ctl_stat |= FTGMAC100_TXDES0_FTS;
 	if (nfrags == 0)
 		f_ctl_stat |= FTGMAC100_TXDES0_LTS;
-	txdes->txdes3 = cpu_to_le32(map);
+	txdes->txdes2 = cpu_to_le32(FIELD_PREP(FTGMAC100_TXDES2_TXBUF_BADR_HI,
+					       upper_32_bits((ulong)map)));
+	txdes->txdes3 = cpu_to_le32(lower_32_bits(map));
 	txdes->txdes1 = cpu_to_le32(csum_vlan);
 
 	/* Next descriptor */
@@ -819,7 +829,9 @@ static netdev_tx_t ftgmac100_hard_start_xmit(struct sk_buff *skb,
 			ctl_stat |= FTGMAC100_TXDES0_LTS;
 		txdes->txdes0 = cpu_to_le32(ctl_stat);
 		txdes->txdes1 = 0;
-		txdes->txdes3 = cpu_to_le32(map);
+		txdes->txdes2 = cpu_to_le32(FIELD_PREP(FTGMAC100_TXDES2_TXBUF_BADR_HI,
+						       upper_32_bits((ulong)map)));
+		txdes->txdes3 = cpu_to_le32(lower_32_bits(map));
 
 		/* Next one */
 		pointer = ftgmac100_next_tx_pointer(priv, pointer);
@@ -894,7 +906,10 @@ static void ftgmac100_free_buffers(struct ftgmac100 *priv)
 	for (i = 0; i < priv->rx_q_entries; i++) {
 		struct ftgmac100_rxdes *rxdes = &priv->rxdes[i];
 		struct sk_buff *skb = priv->rx_skbs[i];
-		dma_addr_t map = le32_to_cpu(rxdes->rxdes3);
+		dma_addr_t map;
+
+		map = le32_to_cpu(rxdes->rxdes3) |
+		      ((le32_to_cpu(rxdes->rxdes2) & FTGMAC100_RXDES2_RXBUF_BADR_HI) << 16);
 
 		if (!skb)
 			continue;
@@ -993,7 +1008,9 @@ static void ftgmac100_init_rings(struct ftgmac100 *priv)
 	for (i = 0; i < priv->rx_q_entries; i++) {
 		rxdes = &priv->rxdes[i];
 		rxdes->rxdes0 = 0;
-		rxdes->rxdes3 = cpu_to_le32(priv->rx_scratch_dma);
+		rxdes->rxdes2 =	cpu_to_le32(FIELD_PREP(FTGMAC100_RXDES2_RXBUF_BADR_HI,
+						       upper_32_bits(priv->rx_scratch_dma)));
+		rxdes->rxdes3 =	cpu_to_le32(lower_32_bits(priv->rx_scratch_dma));
 	}
 	/* Mark the end of the ring */
 	rxdes->rxdes0 |= cpu_to_le32(priv->rxdes0_edorr_mask);
diff --git a/drivers/net/ethernet/faraday/ftgmac100.h b/drivers/net/ethernet/faraday/ftgmac100.h
index c87aa7d7f14c..ac39b864a80c 100644
--- a/drivers/net/ethernet/faraday/ftgmac100.h
+++ b/drivers/net/ethernet/faraday/ftgmac100.h
@@ -57,6 +57,13 @@
 #define FTGMAC100_OFFSET_RX_RUNT	0xc0
 #define FTGMAC100_OFFSET_RX_CRCER_FTL	0xc4
 #define FTGMAC100_OFFSET_RX_COL_LOST	0xc8
+/* reserved 0xcc - 0x174 */
+#define FTGMAC100_OFFSET_TXR_BADDR_LOW		0x178	/* ast2700 */
+#define FTGMAC100_OFFSET_TXR_BADDR_HIGH		0x17c	/* ast2700 */
+#define FTGMAC100_OFFSET_HPTXR_BADDR_LOW	0x180	/* ast2700 */
+#define FTGMAC100_OFFSET_HPTXR_BADDR_HIGH	0x184	/* ast2700 */
+#define FTGMAC100_OFFSET_RXR_BADDR_LOW		0x188	/* ast2700 */
+#define FTGMAC100_OFFSET_RXR_BADDR_HIGH		0x18C	/* ast2700 */
 
 /*
  * Interrupt status register & interrupt enable register
@@ -226,6 +233,7 @@ struct ftgmac100_txdes {
 #define FTGMAC100_TXDES1_TX2FIC		(1 << 30)
 #define FTGMAC100_TXDES1_TXIC		(1 << 31)
 
+#define FTGMAC100_TXDES2_TXBUF_BADR_HI	GENMASK(18, 16)
 /*
  * Receive descriptor, aligned to 16 bytes
  */
@@ -272,4 +280,5 @@ struct ftgmac100_rxdes {
 #define FTGMAC100_RXDES1_UDP_CHKSUM_ERR	(1 << 26)
 #define FTGMAC100_RXDES1_IP_CHKSUM_ERR	(1 << 27)
 
+#define FTGMAC100_RXDES2_RXBUF_BADR_HI	GENMASK(18, 16)
 #endif /* __FTGMAC100_H */
-- 
2.25.1


