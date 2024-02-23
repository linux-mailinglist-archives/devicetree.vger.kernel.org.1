Return-Path: <devicetree+bounces-45454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EC6861FB8
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 23:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D6F8285DDC
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 22:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A0514F9ED;
	Fri, 23 Feb 2024 22:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DsUfAM0U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD3114F97A
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 22:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708727102; cv=none; b=Q+n0pQl2y+3jBCJSIJZq+klTKpZzTmMdngicb9ZxcwW5NCDGsjeiGGn7BJoOQcttTXoSmpm33pTGyBEmr8Z05/BECtK8mGl4h84MulRtB/eaOhvLdrl8DkCnHNAFTPEnza8mx3DBPP6vRBWiJ5Vx6bZhf0Ng3ixYxeNkbsvWa3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708727102; c=relaxed/simple;
	bh=VFniF0HBs14rK6CmgcqF57mUkf4S+hqBT32KYrLdtdg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Wd72JIniAW/UkqmUnLSA7ah4P012byyMIZz4pCDJguwe+Rl6pSjFHSicg59KtfZb4/USogcf31Ij3WdQg/YAty1Sp9ytPQUmDZ0BFE4Fz5a3LQhuIwaW1T9/Y88ZyClwNdO5KIhNqnfGB+rVqOyHrymA2dLCTo0WaFLgsrwSkN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DsUfAM0U; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7d5bbbe57b9so407474241.3
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 14:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1708727098; x=1709331898; darn=vger.kernel.org;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=/77LmjqCHUXXHeCLEdf+Uys/CLeg2q8d+/cwe/JZoog=;
        b=DsUfAM0U5W3qpVvin8A4Vk7ZXiIrg19z68zeNx1ovqBOAbE5wWBiEc96hMuJiIY92a
         3L64kbAKKOHRIYJdYU1pefWk1TjbTgA+/gMQFzYiNb9SYL2wR1X4jiQBFBDhbqq3gw+M
         9J42YrTMRxFd/K2YcPepybUo1NtZ5OvsmO4CQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708727098; x=1709331898;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/77LmjqCHUXXHeCLEdf+Uys/CLeg2q8d+/cwe/JZoog=;
        b=Kf+J9XE3fwvtQ8XNFi/Zk0Bw8fGhcPjDEZd9yYyA2pWUSIygDnojoWvik6ybz87uKf
         iEqIZfyu5ZfF9JImvErzqAdFIQFcO4JxnhGMR0WVDQV2gu/Do//ENugpzU2l67VySi5b
         rZKep468za7LtO9plmP8/5U1EKIB8xMDgfR7d5PZfZeBnlDHVRml+ZVXy2N2nQhl2GOO
         DF8ftDsQLufoq4DTfGzQfUfsnbkc4YP+/NZ68eSEhSmg4kp7xroxQsslKuq+BVLGLJGk
         46iPshhunnxRlrv8I5aukddFaoLG3b8BmL+7vc50PNMn+4oNKDP8P+VXQlFPAK5OHb4g
         fMPg==
X-Forwarded-Encrypted: i=1; AJvYcCWuQnnoRszYZ0cjfPy3mqdtUrhdGZgcbF9ngArOzWn+PnjSEZsry2HENp3x5DAAUohiTumCpHb4rxmKHvHmcuxsteLJYoU/T5G3Wg==
X-Gm-Message-State: AOJu0YzN54TekMP/aO9RXpv3L/XJO1l7Zuc/fP6yCZltzJ5aiBngmACI
	/5GOB2Ob0wz4haFmWZ7SVXUWcjdk76C1pDlMwSJGTwWAspucUN1emMbWtNko3g==
X-Google-Smtp-Source: AGHT+IFeF9KK4Uq/NbxHh2yHCzPB1TtGcSipqrKUlpwYIndZq83chBc2B3ziPM7V1IQiifb6cTqE6w==
X-Received: by 2002:a67:f5d4:0:b0:470:5080:451 with SMTP id t20-20020a67f5d4000000b0047050800451mr1260944vso.16.1708727097943;
        Fri, 23 Feb 2024 14:24:57 -0800 (PST)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id n19-20020ac86753000000b0042e6198372dsm1036403qtp.97.2024.02.23.14.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 14:24:57 -0800 (PST)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	opendmb@gmail.com,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	rafal@milecki.pl,
	devicetree@vger.kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next resend 5/6] net: bcmasp: Keep buffers through power management
Date: Fri, 23 Feb 2024 14:24:33 -0800
Message-Id: <20240223222434.590191-6-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240223222434.590191-1-justin.chen@broadcom.com>
References: <20240223222434.590191-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b5d4ee0612140731"

--000000000000b5d4ee0612140731
Content-Transfer-Encoding: 8bit

There is no advantage of freeing and re-allocating buffers through
suspend and resume. This waste cycles and makes suspend/resume time
longer. We also open ourselves to failed allocations in systems with
heavy memory fragmentation.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/net/ethernet/broadcom/asp2/bcmasp.h   |   1 +
 .../net/ethernet/broadcom/asp2/bcmasp_intf.c  | 181 ++++++++----------
 2 files changed, 76 insertions(+), 106 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/asp2/bcmasp.h b/drivers/net/ethernet/broadcom/asp2/bcmasp.h
index 61598dc070b1..127a5340625e 100644
--- a/drivers/net/ethernet/broadcom/asp2/bcmasp.h
+++ b/drivers/net/ethernet/broadcom/asp2/bcmasp.h
@@ -315,6 +315,7 @@ struct bcmasp_intf {
 	struct bcmasp_desc		*rx_edpkt_cpu;
 	dma_addr_t			rx_edpkt_dma_addr;
 	dma_addr_t			rx_edpkt_dma_read;
+	dma_addr_t			rx_edpkt_dma_valid;
 
 	/* RX buffer prefetcher ring*/
 	void				*rx_ring_cpu;
diff --git a/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c b/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
index 36e6fae937ea..0b378a6d43e7 100644
--- a/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
+++ b/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
@@ -674,40 +674,78 @@ static void bcmasp_adj_link(struct net_device *dev)
 		phy_print_status(phydev);
 }
 
-static int bcmasp_init_rx(struct bcmasp_intf *intf)
+static int bcmasp_alloc_buffers(struct bcmasp_intf *intf)
 {
 	struct device *kdev = &intf->parent->pdev->dev;
 	struct page *buffer_pg;
-	dma_addr_t dma;
-	void *p;
-	u32 reg;
-	int ret;
 
+	/* Alloc RX */
 	intf->rx_buf_order = get_order(RING_BUFFER_SIZE);
 	buffer_pg = alloc_pages(GFP_KERNEL, intf->rx_buf_order);
 	if (!buffer_pg)
 		return -ENOMEM;
 
-	dma = dma_map_page(kdev, buffer_pg, 0, RING_BUFFER_SIZE,
-			   DMA_FROM_DEVICE);
-	if (dma_mapping_error(kdev, dma)) {
-		__free_pages(buffer_pg, intf->rx_buf_order);
-		return -ENOMEM;
-	}
 	intf->rx_ring_cpu = page_to_virt(buffer_pg);
-	intf->rx_ring_dma = dma;
-	intf->rx_ring_dma_valid = intf->rx_ring_dma + RING_BUFFER_SIZE - 1;
+	intf->rx_ring_dma = dma_map_page(kdev, buffer_pg, 0, RING_BUFFER_SIZE,
+					 DMA_FROM_DEVICE);
+	if (dma_mapping_error(kdev, intf->rx_ring_dma))
+		goto free_rx_buffer;
+
+	intf->rx_edpkt_cpu = dma_alloc_coherent(kdev, DESC_RING_SIZE,
+						&intf->rx_edpkt_dma_addr, GFP_KERNEL);
+	if (!intf->rx_edpkt_cpu)
+		goto free_rx_buffer_dma;
+
+	/* Alloc TX */
+	intf->tx_spb_cpu = dma_alloc_coherent(kdev, DESC_RING_SIZE,
+					      &intf->tx_spb_dma_addr, GFP_KERNEL);
+	if (!intf->tx_spb_cpu)
+		goto free_rx_edpkt_dma;
 
-	p = dma_alloc_coherent(kdev, DESC_RING_SIZE, &intf->rx_edpkt_dma_addr,
+	intf->tx_cbs = kcalloc(DESC_RING_COUNT, sizeof(struct bcmasp_tx_cb),
 			       GFP_KERNEL);
-	if (!p) {
-		ret = -ENOMEM;
-		goto free_rx_ring;
-	}
-	intf->rx_edpkt_cpu = p;
+	if (!intf->tx_cbs)
+		goto free_tx_spb_dma;
 
-	netif_napi_add(intf->ndev, &intf->rx_napi, bcmasp_rx_poll);
+	return 0;
+
+free_tx_spb_dma:
+	dma_free_coherent(kdev, DESC_RING_SIZE, intf->tx_spb_cpu,
+			  intf->tx_spb_dma_addr);
+free_rx_edpkt_dma:
+	dma_free_coherent(kdev, DESC_RING_SIZE, intf->rx_edpkt_cpu,
+			  intf->rx_edpkt_dma_addr);
+free_rx_buffer_dma:
+	dma_unmap_page(kdev, intf->rx_ring_dma, RING_BUFFER_SIZE,
+		       DMA_FROM_DEVICE);
+free_rx_buffer:
+	__free_pages(buffer_pg, intf->rx_buf_order);
+
+	return -ENOMEM;
+}
+
+static void bcmasp_reclaim_free_buffers(struct bcmasp_intf *intf)
+{
+	struct device *kdev = &intf->parent->pdev->dev;
+
+	/* RX buffers */
+	dma_free_coherent(kdev, DESC_RING_SIZE, intf->rx_edpkt_cpu,
+			  intf->rx_edpkt_dma_addr);
+	dma_unmap_page(kdev, intf->rx_ring_dma, RING_BUFFER_SIZE,
+		       DMA_FROM_DEVICE);
+	__free_pages(virt_to_page(intf->rx_ring_cpu), intf->rx_buf_order);
+
+	/* TX buffers */
+	dma_free_coherent(kdev, DESC_RING_SIZE, intf->tx_spb_cpu,
+			  intf->tx_spb_dma_addr);
+	kfree(intf->tx_cbs);
+}
 
+static void bcmasp_init_rx(struct bcmasp_intf *intf)
+{
+	/* Restart from index 0 */
+	intf->rx_ring_dma_valid = intf->rx_ring_dma + RING_BUFFER_SIZE - 1;
+	intf->rx_edpkt_dma_valid = intf->rx_edpkt_dma_addr + (DESC_RING_SIZE - 1);
 	intf->rx_edpkt_dma_read = intf->rx_edpkt_dma_addr;
 	intf->rx_edpkt_index = 0;
 
@@ -733,64 +771,23 @@ static int bcmasp_init_rx(struct bcmasp_intf *intf)
 	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_addr, RX_EDPKT_DMA_WRITE);
 	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_addr, RX_EDPKT_DMA_READ);
 	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_addr, RX_EDPKT_DMA_BASE);
-	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_addr + (DESC_RING_SIZE - 1),
-			RX_EDPKT_DMA_END);
-	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_addr + (DESC_RING_SIZE - 1),
-			RX_EDPKT_DMA_VALID);
-
-	reg = UMAC2FB_CFG_DEFAULT_EN |
-	      ((intf->channel + 11) << UMAC2FB_CFG_CHID_SHIFT);
-	reg |= (0xd << UMAC2FB_CFG_OK_SEND_SHIFT);
-	umac2fb_wl(intf, reg, UMAC2FB_CFG);
+	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_valid, RX_EDPKT_DMA_END);
+	rx_edpkt_dma_wq(intf, intf->rx_edpkt_dma_valid, RX_EDPKT_DMA_VALID);
 
-	return 0;
-
-free_rx_ring:
-	dma_unmap_page(kdev, intf->rx_ring_dma, RING_BUFFER_SIZE,
-		       DMA_FROM_DEVICE);
-	__free_pages(virt_to_page(intf->rx_ring_cpu), intf->rx_buf_order);
-
-	return ret;
+	umac2fb_wl(intf, UMAC2FB_CFG_DEFAULT_EN | ((intf->channel + 11) <<
+		   UMAC2FB_CFG_CHID_SHIFT) | (0xd << UMAC2FB_CFG_OK_SEND_SHIFT),
+		   UMAC2FB_CFG);
 }
 
-static void bcmasp_reclaim_free_all_rx(struct bcmasp_intf *intf)
-{
-	struct device *kdev = &intf->parent->pdev->dev;
-
-	dma_free_coherent(kdev, DESC_RING_SIZE, intf->rx_edpkt_cpu,
-			  intf->rx_edpkt_dma_addr);
-	dma_unmap_page(kdev, intf->rx_ring_dma, RING_BUFFER_SIZE,
-		       DMA_FROM_DEVICE);
-	__free_pages(virt_to_page(intf->rx_ring_cpu), intf->rx_buf_order);
-}
 
-static int bcmasp_init_tx(struct bcmasp_intf *intf)
+static void bcmasp_init_tx(struct bcmasp_intf *intf)
 {
-	struct device *kdev = &intf->parent->pdev->dev;
-	void *p;
-	int ret;
-
-	p = dma_alloc_coherent(kdev, DESC_RING_SIZE, &intf->tx_spb_dma_addr,
-			       GFP_KERNEL);
-	if (!p)
-		return -ENOMEM;
-
-	intf->tx_spb_cpu = p;
+	/* Restart from index 0 */
 	intf->tx_spb_dma_valid = intf->tx_spb_dma_addr + DESC_RING_SIZE - 1;
 	intf->tx_spb_dma_read = intf->tx_spb_dma_addr;
-
-	intf->tx_cbs = kcalloc(DESC_RING_COUNT, sizeof(struct bcmasp_tx_cb),
-			       GFP_KERNEL);
-	if (!intf->tx_cbs) {
-		ret = -ENOMEM;
-		goto free_tx_spb;
-	}
-
 	intf->tx_spb_index = 0;
 	intf->tx_spb_clean_index = 0;
 
-	netif_napi_add_tx(intf->ndev, &intf->tx_napi, bcmasp_tx_poll);
-
 	/* Make sure channels are disabled */
 	tx_spb_ctrl_wl(intf, 0x0, TX_SPB_CTRL_ENABLE);
 	tx_epkt_core_wl(intf, 0x0, TX_EPKT_C_CFG_MISC);
@@ -806,26 +803,6 @@ static int bcmasp_init_tx(struct bcmasp_intf *intf)
 	tx_spb_dma_wq(intf, intf->tx_spb_dma_addr, TX_SPB_DMA_BASE);
 	tx_spb_dma_wq(intf, intf->tx_spb_dma_valid, TX_SPB_DMA_END);
 	tx_spb_dma_wq(intf, intf->tx_spb_dma_valid, TX_SPB_DMA_VALID);
-
-	return 0;
-
-free_tx_spb:
-	dma_free_coherent(kdev, DESC_RING_SIZE, intf->tx_spb_cpu,
-			  intf->tx_spb_dma_addr);
-
-	return ret;
-}
-
-static void bcmasp_reclaim_free_all_tx(struct bcmasp_intf *intf)
-{
-	struct device *kdev = &intf->parent->pdev->dev;
-
-	/* Free descriptors */
-	dma_free_coherent(kdev, DESC_RING_SIZE, intf->tx_spb_cpu,
-			  intf->tx_spb_dma_addr);
-
-	/* Free cbs */
-	kfree(intf->tx_cbs);
 }
 
 static void bcmasp_ephy_enable_set(struct bcmasp_intf *intf, bool enable)
@@ -915,10 +892,7 @@ static void bcmasp_netif_deinit(struct net_device *dev)
 	bcmasp_enable_rx_irq(intf, 0);
 
 	netif_napi_del(&intf->tx_napi);
-	bcmasp_reclaim_free_all_tx(intf);
-
 	netif_napi_del(&intf->rx_napi);
-	bcmasp_reclaim_free_all_rx(intf);
 }
 
 static int bcmasp_stop(struct net_device *dev)
@@ -932,6 +906,8 @@ static int bcmasp_stop(struct net_device *dev)
 
 	bcmasp_netif_deinit(dev);
 
+	bcmasp_reclaim_free_buffers(intf);
+
 	phy_disconnect(dev->phydev);
 
 	/* Disable internal EPHY or external PHY */
@@ -1073,17 +1049,12 @@ static int bcmasp_netif_init(struct net_device *dev, bool phy_connect)
 	intf->old_link = -1;
 	intf->old_pause = -1;
 
-	ret = bcmasp_init_tx(intf);
-	if (ret)
-		goto err_phy_disconnect;
-
-	/* Turn on asp */
+	bcmasp_init_tx(intf);
+	netif_napi_add_tx(intf->ndev, &intf->tx_napi, bcmasp_tx_poll);
 	bcmasp_enable_tx(intf, 1);
 
-	ret = bcmasp_init_rx(intf);
-	if (ret)
-		goto err_reclaim_tx;
-
+	bcmasp_init_rx(intf);
+	netif_napi_add(intf->ndev, &intf->rx_napi, bcmasp_rx_poll);
 	bcmasp_enable_rx(intf, 1);
 
 	/* Turn on UniMAC TX/RX */
@@ -1097,12 +1068,6 @@ static int bcmasp_netif_init(struct net_device *dev, bool phy_connect)
 
 	return 0;
 
-err_reclaim_tx:
-	netif_napi_del(&intf->tx_napi);
-	bcmasp_reclaim_free_all_tx(intf);
-err_phy_disconnect:
-	if (phydev)
-		phy_disconnect(phydev);
 err_phy_disable:
 	if (intf->internal_phy)
 		bcmasp_ephy_enable_set(intf, false);
@@ -1118,6 +1083,10 @@ static int bcmasp_open(struct net_device *dev)
 
 	netif_dbg(intf, ifup, dev, "bcmasp open\n");
 
+	ret = bcmasp_alloc_buffers(intf);
+	if (ret)
+		return ret;
+
 	ret = clk_prepare_enable(intf->parent->clk);
 	if (ret)
 		return ret;
-- 
2.34.1


--000000000000b5d4ee0612140731
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
NhTY3E+cXCB11wty89QStajwXdhGJTYEvUgvsq1h8CwJj9w/38ldAQf5WjhPmApYeJR2ewFrBMCM
4lHkdRJ6TDc9nXoEkypUfjJkJHe7Eal06tosh6JpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGp1c3Rpbi5jaGVuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUIWGeYuaTsnIada5Xx8TR3cheUbgw
DQYJKoZIhvcNAQELBQADggEBAHNQlMqQOFYPYFO71A+8t+qWMmtOdd2iGswSOvpSZ/pmGlfw8ZvY
dRTkl27m37la84AxRkiVMes14JyOZJoMh/g7fbgPlU14eBc6WQWkIA6AmNkduFWTr1pRezkjpeo6
xVmdBLM4VY1TFDYj7S8H2adPuypd62uHMY/MZi+BIUys4uAFA+N3NuUBNjcVZXYPplYxxKEuIFq6
sDL+OV16G+F9CkNMN3txsym8Nnx5WAYZb6+rBUIhMGz70V05xsHQfzvo2s7f0J1tJ5BoRlPPhL0h
VOnWA3h71u9TfSsv+PXVm3P21TfOS2uc1hbzEqyENCP4i5XQ0rv0TmPW42GZ0o4xggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwj8BKLXNpALfemdRAwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIP187QjDcFXLgV0ovZ3bRlTx/3gUZ2TnHxpt
CTcjb2CBMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyMzIy
MjQ1OFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCN+WZI+l6aAKLrrHF+H3uXDgmAwGBBqD5ijNlYEeqSt3OJJ2qmpObX
XyS7cVwRQLmdn6jEQMDTCYMcOy40WkiAQEP9jyHi9y8MAA9ZsDtK0Li7g0avfLrEvfXC5KA+qiO+
vcuUHLFi5QvB3JpI72jHVgpjmxcm5Amemx+OuZKJpD/YLVGAird/HVhZ6GB2K+wVbcxMcz0/LsEF
b8lz4U1buuJI88JohaxZ2CqFgsRdcvBjzkT//zjzWwiH1VY1Icu1lYDecaVNvMjdS6pG+3jDSrOx
yh0caExXjAkWyHSvdr/ggJmox1iFE8bPbQhG2xD2FMW8UUvYz4ayX2i1rEje
--000000000000b5d4ee0612140731--

