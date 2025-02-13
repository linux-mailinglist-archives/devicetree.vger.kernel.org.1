Return-Path: <devicetree+bounces-146331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB28A34826
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE72616E21B
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 15:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD5719D092;
	Thu, 13 Feb 2025 15:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ5+aHhj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47DA15A856;
	Thu, 13 Feb 2025 15:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739460911; cv=none; b=QglberO3hFPQLnSkYCh8+1ewKp2VWOhPIIbZioQc60d1XHh0mUNKY+IwOslBExqkUsjKNf3DvEEOiAWKtmP9rnt+IZhx+VqC/qf69MxYZsY10Q7RD7NiEgEBwHg/73JOanyCX5mqnut+es7kqXNKxRZScy7peFdeLXl54er1A7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739460911; c=relaxed/simple;
	bh=UyYEPlddIkFUvoM3xOhih3hnmMO/4Vng4ybbFMkkQHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R4pdxFVVemxiJaN8yP+DqjD+T1/Gb8PSI283dLOpXB+E+YQdbbbZU8DrM41+vLjIyqSN0VNFMoUxAGZ/C20Z+sEDAOZ6Na84lUiuXfQVOXOV9mH8rMGEo6ehmaUQas3JRA1zoy9CRhBRNiPrsTtwWU3gECRvhwEEWx24tpL0wLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJ5+aHhj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFE7FC4CED1;
	Thu, 13 Feb 2025 15:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739460911;
	bh=UyYEPlddIkFUvoM3xOhih3hnmMO/4Vng4ybbFMkkQHs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pJ5+aHhjKxkLotKUPybqPEqSyz8EEOzjESGjPiXhta8Pqexy0No5cGbIiwTua1g8C
	 uQ2TVeCm279dxE476aFQPrJfAwOurxV0Saldd+7r4ntq3VGEkaTQLJHvMCSD4ddVjH
	 /NuKGT6zEC1C4edCxaM5pSk2f4pGvkrxwhVxrYNNJ/p1lqrpDkVWR9Lm3FTiVu0Cp7
	 hj8wP8RPUkeQ3U2hD06PvyUrtWZSyip3eE6Pctut5z19c3HB7j+oYABd2JK9Jdbntm
	 eNB8P6DxVfbaleFP5llq/rkaOAmCpEVqU/lvr//kmP7K8JT59D6ayKLdF3maqHg+qS
	 HsuIC50ilL3VA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Thu, 13 Feb 2025 16:34:28 +0100
Subject: [PATCH net-next v4 09/16] net: airoha: Move REG_GDM_FWD_CFG()
 initialization in airoha_dev_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-airoha-en7581-flowtable-offload-v4-9-b69ca16d74db@kernel.org>
References: <20250213-airoha-en7581-flowtable-offload-v4-0-b69ca16d74db@kernel.org>
In-Reply-To: <20250213-airoha-en7581-flowtable-offload-v4-0-b69ca16d74db@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
 "Chester A. Unal" <chester.a.unal@arinc9.com>, 
 Daniel Golle <daniel@makrotopia.org>, DENG Qingfang <dqfext@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 upstream@airoha.com
X-Mailer: b4 0.14.2

Move REG_GDM_FWD_CFG() register initialization in airoha_dev_init
routine. Moreover, always send traffic PPE module in order to be
processed by hw accelerator.
This is a preliminary patch to enable netfilter flowtable hw offloading
on EN7581 SoC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/airoha/airoha_eth.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ethernet/airoha/airoha_eth.c
index 513914da8503c1162b0f1b4fcca57434385fa4d1..6c899358c086e6eb1de3ed25f625e48db129888f 100644
--- a/drivers/net/ethernet/airoha/airoha_eth.c
+++ b/drivers/net/ethernet/airoha/airoha_eth.c
@@ -107,25 +107,20 @@ static void airoha_set_gdm_port_fwd_cfg(struct airoha_eth *eth, u32 addr,
 
 static int airoha_set_gdm_port(struct airoha_eth *eth, int port, bool enable)
 {
-	u32 val = enable ? FE_PSE_PORT_PPE1 : FE_PSE_PORT_DROP;
-	u32 vip_port, cfg_addr;
+	u32 vip_port;
 
 	switch (port) {
 	case XSI_PCIE0_PORT:
 		vip_port = XSI_PCIE0_VIP_PORT_MASK;
-		cfg_addr = REG_GDM_FWD_CFG(3);
 		break;
 	case XSI_PCIE1_PORT:
 		vip_port = XSI_PCIE1_VIP_PORT_MASK;
-		cfg_addr = REG_GDM_FWD_CFG(3);
 		break;
 	case XSI_USB_PORT:
 		vip_port = XSI_USB_VIP_PORT_MASK;
-		cfg_addr = REG_GDM_FWD_CFG(4);
 		break;
 	case XSI_ETH_PORT:
 		vip_port = XSI_ETH_VIP_PORT_MASK;
-		cfg_addr = REG_GDM_FWD_CFG(4);
 		break;
 	default:
 		return -EINVAL;
@@ -139,8 +134,6 @@ static int airoha_set_gdm_port(struct airoha_eth *eth, int port, bool enable)
 		airoha_fe_clear(eth, REG_FE_IFC_PORT_EN, vip_port);
 	}
 
-	airoha_set_gdm_port_fwd_cfg(eth, cfg_addr, val);
-
 	return 0;
 }
 
@@ -177,8 +170,6 @@ static void airoha_fe_maccr_init(struct airoha_eth *eth)
 		airoha_fe_set(eth, REG_GDM_FWD_CFG(p),
 			      GDM_TCP_CKSUM | GDM_UDP_CKSUM | GDM_IP4_CKSUM |
 			      GDM_DROP_CRC_ERR);
-		airoha_set_gdm_port_fwd_cfg(eth, REG_GDM_FWD_CFG(p),
-					    FE_PSE_PORT_CDM1);
 		airoha_fe_rmw(eth, REG_GDM_LEN_CFG(p),
 			      GDM_SHORT_LEN_MASK | GDM_LONG_LEN_MASK,
 			      FIELD_PREP(GDM_SHORT_LEN_MASK, 60) |
@@ -1614,8 +1605,11 @@ static int airoha_dev_set_macaddr(struct net_device *dev, void *p)
 static int airoha_dev_init(struct net_device *dev)
 {
 	struct airoha_gdm_port *port = netdev_priv(dev);
+	struct airoha_eth *eth = port->qdma->eth;
 
 	airoha_set_macaddr(port, dev->dev_addr);
+	airoha_set_gdm_port_fwd_cfg(eth, REG_GDM_FWD_CFG(port->id),
+				    FE_PSE_PORT_PPE1);
 
 	return 0;
 }

-- 
2.48.1


