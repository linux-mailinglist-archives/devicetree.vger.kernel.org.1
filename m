Return-Path: <devicetree+bounces-152564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71302A497DA
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 478663BB9C9
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 10:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B64260360;
	Fri, 28 Feb 2025 10:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqJn5zeP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B803E1B4250;
	Fri, 28 Feb 2025 10:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740740080; cv=none; b=D5vV1tR3vSvd58Q3qGKD8IeaYSNnftYSsiVz2xdF1EiGYqoN5lBVmJfXWZBLskeUSTttwHVu+9VoWNjgQK7HmuKAPLTLnZtywb0JMuV6ZAOyT/fWGBBs/DuKFgZJVJYU4JcCuTgaM//zcMAGPSBvy1hbaVqRc8UTmvgwONrGd6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740740080; c=relaxed/simple;
	bh=lGu7kyyDxjP87LBdKrwQNQPjy/Q+PtBmP2j/tK+GVcg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TlG07w7SJ+XatWpsJCXcCwg8kyAaRIpHQvI8jaERxy0cOY1FQXIBPj1WfvdRU2HgJE/QaIzg1qT1FiBCS02FZhrOE0Y0bddbLbSNNhglspo8TmYnwTiOPiM6l8GM0G0/bK1AvBkba5Zdldqxe/KgxSwG4o5bIiKIDldaqDTJxLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqJn5zeP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78B4C4CED6;
	Fri, 28 Feb 2025 10:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740740080;
	bh=lGu7kyyDxjP87LBdKrwQNQPjy/Q+PtBmP2j/tK+GVcg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CqJn5zePsTwPo/q/+6HJF8iofFzdUSJMl4MPK+pLkVcD2Khy2xDPHBlMogA89kxkj
	 Ec1lDZIfNLGnGtMIeakeg3yH3q2Og4qaH0T7d5x00QPEbzGkXq1uXZntqpM1cTua21
	 EEjBeHtatmZQ2B5HT4pdcF9GXYe1vlj7ytKvQPnT068fphf2uZRp9ZpFA64JzG22cF
	 IyojvLiqkIZ8JM3sLIoyXXUFetEedACLBl1a4vspEVxGNrBxLlVhg49ammNdOUAQrK
	 ZxzcvAu89I6520lE53EUL23Fqscf4KB25YALqa+sZFxNIiaVMkNbF03kZixd8sKZiD
	 KGmABCEHKTLEQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 28 Feb 2025 11:54:12 +0100
Subject: [PATCH net-next v8 04/15] net: airoha: Move register definitions
 in airoha_regs.h
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-airoha-en7581-flowtable-offload-v8-4-01dc1653f46e@kernel.org>
References: <20250228-airoha-en7581-flowtable-offload-v8-0-01dc1653f46e@kernel.org>
In-Reply-To: <20250228-airoha-en7581-flowtable-offload-v8-0-01dc1653f46e@kernel.org>
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

Move common airoha_eth register definitions in airoha_regs.h in order
to reuse them for Packet Processor Engine (PPE) codebase.
PPE module is used to enable support for flowtable hw offloading in
airoha_eth driver.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/airoha/airoha_eth.c  | 659 +----------------------------
 drivers/net/ethernet/airoha/airoha_regs.h | 670 ++++++++++++++++++++++++++++++
 2 files changed, 671 insertions(+), 658 deletions(-)

diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ethernet/airoha/airoha_eth.c
index 1c6fb7b9ccbbaec846643343e0347a1e948a575f..b79556f1b4951c687aa89bc5839fc9405581a6c3 100644
--- a/drivers/net/ethernet/airoha/airoha_eth.c
+++ b/drivers/net/ethernet/airoha/airoha_eth.c
@@ -13,666 +13,9 @@
 #include <net/pkt_cls.h>
 #include <uapi/linux/ppp_defs.h>
 
+#include "airoha_regs.h"
 #include "airoha_eth.h"
 
-/* FE */
-#define PSE_BASE			0x0100
-#define CSR_IFC_BASE			0x0200
-#define CDM1_BASE			0x0400
-#define GDM1_BASE			0x0500
-#define PPE1_BASE			0x0c00
-
-#define CDM2_BASE			0x1400
-#define GDM2_BASE			0x1500
-
-#define GDM3_BASE			0x1100
-#define GDM4_BASE			0x2500
-
-#define GDM_BASE(_n)			\
-	((_n) == 4 ? GDM4_BASE :	\
-	 (_n) == 3 ? GDM3_BASE :	\
-	 (_n) == 2 ? GDM2_BASE : GDM1_BASE)
-
-#define REG_FE_DMA_GLO_CFG		0x0000
-#define FE_DMA_GLO_L2_SPACE_MASK	GENMASK(7, 4)
-#define FE_DMA_GLO_PG_SZ_MASK		BIT(3)
-
-#define REG_FE_RST_GLO_CFG		0x0004
-#define FE_RST_GDM4_MBI_ARB_MASK	BIT(3)
-#define FE_RST_GDM3_MBI_ARB_MASK	BIT(2)
-#define FE_RST_CORE_MASK		BIT(0)
-
-#define REG_FE_WAN_MAC_H		0x0030
-#define REG_FE_LAN_MAC_H		0x0040
-
-#define REG_FE_MAC_LMIN(_n)		((_n) + 0x04)
-#define REG_FE_MAC_LMAX(_n)		((_n) + 0x08)
-
-#define REG_FE_CDM1_OQ_MAP0		0x0050
-#define REG_FE_CDM1_OQ_MAP1		0x0054
-#define REG_FE_CDM1_OQ_MAP2		0x0058
-#define REG_FE_CDM1_OQ_MAP3		0x005c
-
-#define REG_FE_PCE_CFG			0x0070
-#define PCE_DPI_EN_MASK			BIT(2)
-#define PCE_KA_EN_MASK			BIT(1)
-#define PCE_MC_EN_MASK			BIT(0)
-
-#define REG_FE_PSE_QUEUE_CFG_WR		0x0080
-#define PSE_CFG_PORT_ID_MASK		GENMASK(27, 24)
-#define PSE_CFG_QUEUE_ID_MASK		GENMASK(20, 16)
-#define PSE_CFG_WR_EN_MASK		BIT(8)
-#define PSE_CFG_OQRSV_SEL_MASK		BIT(0)
-
-#define REG_FE_PSE_QUEUE_CFG_VAL	0x0084
-#define PSE_CFG_OQ_RSV_MASK		GENMASK(13, 0)
-
-#define PSE_FQ_CFG			0x008c
-#define PSE_FQ_LIMIT_MASK		GENMASK(14, 0)
-
-#define REG_FE_PSE_BUF_SET		0x0090
-#define PSE_SHARE_USED_LTHD_MASK	GENMASK(31, 16)
-#define PSE_ALLRSV_MASK			GENMASK(14, 0)
-
-#define REG_PSE_SHARE_USED_THD		0x0094
-#define PSE_SHARE_USED_MTHD_MASK	GENMASK(31, 16)
-#define PSE_SHARE_USED_HTHD_MASK	GENMASK(15, 0)
-
-#define REG_GDM_MISC_CFG		0x0148
-#define GDM2_RDM_ACK_WAIT_PREF_MASK	BIT(9)
-#define GDM2_CHN_VLD_MODE_MASK		BIT(5)
-
-#define REG_FE_CSR_IFC_CFG		CSR_IFC_BASE
-#define FE_IFC_EN_MASK			BIT(0)
-
-#define REG_FE_VIP_PORT_EN		0x01f0
-#define REG_FE_IFC_PORT_EN		0x01f4
-
-#define REG_PSE_IQ_REV1			(PSE_BASE + 0x08)
-#define PSE_IQ_RES1_P2_MASK		GENMASK(23, 16)
-
-#define REG_PSE_IQ_REV2			(PSE_BASE + 0x0c)
-#define PSE_IQ_RES2_P5_MASK		GENMASK(15, 8)
-#define PSE_IQ_RES2_P4_MASK		GENMASK(7, 0)
-
-#define REG_FE_VIP_EN(_n)		(0x0300 + ((_n) << 3))
-#define PATN_FCPU_EN_MASK		BIT(7)
-#define PATN_SWP_EN_MASK		BIT(6)
-#define PATN_DP_EN_MASK			BIT(5)
-#define PATN_SP_EN_MASK			BIT(4)
-#define PATN_TYPE_MASK			GENMASK(3, 1)
-#define PATN_EN_MASK			BIT(0)
-
-#define REG_FE_VIP_PATN(_n)		(0x0304 + ((_n) << 3))
-#define PATN_DP_MASK			GENMASK(31, 16)
-#define PATN_SP_MASK			GENMASK(15, 0)
-
-#define REG_CDM1_VLAN_CTRL		CDM1_BASE
-#define CDM1_VLAN_MASK			GENMASK(31, 16)
-
-#define REG_CDM1_FWD_CFG		(CDM1_BASE + 0x08)
-#define CDM1_VIP_QSEL_MASK		GENMASK(24, 20)
-
-#define REG_CDM1_CRSN_QSEL(_n)		(CDM1_BASE + 0x10 + ((_n) << 2))
-#define CDM1_CRSN_QSEL_REASON_MASK(_n)	\
-	GENMASK(4 + (((_n) % 4) << 3),	(((_n) % 4) << 3))
-
-#define REG_CDM2_FWD_CFG		(CDM2_BASE + 0x08)
-#define CDM2_OAM_QSEL_MASK		GENMASK(31, 27)
-#define CDM2_VIP_QSEL_MASK		GENMASK(24, 20)
-
-#define REG_CDM2_CRSN_QSEL(_n)		(CDM2_BASE + 0x10 + ((_n) << 2))
-#define CDM2_CRSN_QSEL_REASON_MASK(_n)	\
-	GENMASK(4 + (((_n) % 4) << 3),	(((_n) % 4) << 3))
-
-#define REG_GDM_FWD_CFG(_n)		GDM_BASE(_n)
-#define GDM_DROP_CRC_ERR		BIT(23)
-#define GDM_IP4_CKSUM			BIT(22)
-#define GDM_TCP_CKSUM			BIT(21)
-#define GDM_UDP_CKSUM			BIT(20)
-#define GDM_UCFQ_MASK			GENMASK(15, 12)
-#define GDM_BCFQ_MASK			GENMASK(11, 8)
-#define GDM_MCFQ_MASK			GENMASK(7, 4)
-#define GDM_OCFQ_MASK			GENMASK(3, 0)
-
-#define REG_GDM_INGRESS_CFG(_n)		(GDM_BASE(_n) + 0x10)
-#define GDM_INGRESS_FC_EN_MASK		BIT(1)
-#define GDM_STAG_EN_MASK		BIT(0)
-
-#define REG_GDM_LEN_CFG(_n)		(GDM_BASE(_n) + 0x14)
-#define GDM_SHORT_LEN_MASK		GENMASK(13, 0)
-#define GDM_LONG_LEN_MASK		GENMASK(29, 16)
-
-#define REG_FE_CPORT_CFG		(GDM1_BASE + 0x40)
-#define FE_CPORT_PAD			BIT(26)
-#define FE_CPORT_PORT_XFC_MASK		BIT(25)
-#define FE_CPORT_QUEUE_XFC_MASK		BIT(24)
-
-#define REG_FE_GDM_MIB_CLEAR(_n)	(GDM_BASE(_n) + 0xf0)
-#define FE_GDM_MIB_RX_CLEAR_MASK	BIT(1)
-#define FE_GDM_MIB_TX_CLEAR_MASK	BIT(0)
-
-#define REG_FE_GDM1_MIB_CFG		(GDM1_BASE + 0xf4)
-#define FE_STRICT_RFC2819_MODE_MASK	BIT(31)
-#define FE_GDM1_TX_MIB_SPLIT_EN_MASK	BIT(17)
-#define FE_GDM1_RX_MIB_SPLIT_EN_MASK	BIT(16)
-#define FE_TX_MIB_ID_MASK		GENMASK(15, 8)
-#define FE_RX_MIB_ID_MASK		GENMASK(7, 0)
-
-#define REG_FE_GDM_TX_OK_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x104)
-#define REG_FE_GDM_TX_OK_BYTE_CNT_L(_n)		(GDM_BASE(_n) + 0x10c)
-#define REG_FE_GDM_TX_ETH_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x110)
-#define REG_FE_GDM_TX_ETH_BYTE_CNT_L(_n)	(GDM_BASE(_n) + 0x114)
-#define REG_FE_GDM_TX_ETH_DROP_CNT(_n)		(GDM_BASE(_n) + 0x118)
-#define REG_FE_GDM_TX_ETH_BC_CNT(_n)		(GDM_BASE(_n) + 0x11c)
-#define REG_FE_GDM_TX_ETH_MC_CNT(_n)		(GDM_BASE(_n) + 0x120)
-#define REG_FE_GDM_TX_ETH_RUNT_CNT(_n)		(GDM_BASE(_n) + 0x124)
-#define REG_FE_GDM_TX_ETH_LONG_CNT(_n)		(GDM_BASE(_n) + 0x128)
-#define REG_FE_GDM_TX_ETH_E64_CNT_L(_n)		(GDM_BASE(_n) + 0x12c)
-#define REG_FE_GDM_TX_ETH_L64_CNT_L(_n)		(GDM_BASE(_n) + 0x130)
-#define REG_FE_GDM_TX_ETH_L127_CNT_L(_n)	(GDM_BASE(_n) + 0x134)
-#define REG_FE_GDM_TX_ETH_L255_CNT_L(_n)	(GDM_BASE(_n) + 0x138)
-#define REG_FE_GDM_TX_ETH_L511_CNT_L(_n)	(GDM_BASE(_n) + 0x13c)
-#define REG_FE_GDM_TX_ETH_L1023_CNT_L(_n)	(GDM_BASE(_n) + 0x140)
-
-#define REG_FE_GDM_RX_OK_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x148)
-#define REG_FE_GDM_RX_FC_DROP_CNT(_n)		(GDM_BASE(_n) + 0x14c)
-#define REG_FE_GDM_RX_RC_DROP_CNT(_n)		(GDM_BASE(_n) + 0x150)
-#define REG_FE_GDM_RX_OVERFLOW_DROP_CNT(_n)	(GDM_BASE(_n) + 0x154)
-#define REG_FE_GDM_RX_ERROR_DROP_CNT(_n)	(GDM_BASE(_n) + 0x158)
-#define REG_FE_GDM_RX_OK_BYTE_CNT_L(_n)		(GDM_BASE(_n) + 0x15c)
-#define REG_FE_GDM_RX_ETH_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x160)
-#define REG_FE_GDM_RX_ETH_BYTE_CNT_L(_n)	(GDM_BASE(_n) + 0x164)
-#define REG_FE_GDM_RX_ETH_DROP_CNT(_n)		(GDM_BASE(_n) + 0x168)
-#define REG_FE_GDM_RX_ETH_BC_CNT(_n)		(GDM_BASE(_n) + 0x16c)
-#define REG_FE_GDM_RX_ETH_MC_CNT(_n)		(GDM_BASE(_n) + 0x170)
-#define REG_FE_GDM_RX_ETH_CRC_ERR_CNT(_n)	(GDM_BASE(_n) + 0x174)
-#define REG_FE_GDM_RX_ETH_FRAG_CNT(_n)		(GDM_BASE(_n) + 0x178)
-#define REG_FE_GDM_RX_ETH_JABBER_CNT(_n)	(GDM_BASE(_n) + 0x17c)
-#define REG_FE_GDM_RX_ETH_RUNT_CNT(_n)		(GDM_BASE(_n) + 0x180)
-#define REG_FE_GDM_RX_ETH_LONG_CNT(_n)		(GDM_BASE(_n) + 0x184)
-#define REG_FE_GDM_RX_ETH_E64_CNT_L(_n)		(GDM_BASE(_n) + 0x188)
-#define REG_FE_GDM_RX_ETH_L64_CNT_L(_n)		(GDM_BASE(_n) + 0x18c)
-#define REG_FE_GDM_RX_ETH_L127_CNT_L(_n)	(GDM_BASE(_n) + 0x190)
-#define REG_FE_GDM_RX_ETH_L255_CNT_L(_n)	(GDM_BASE(_n) + 0x194)
-#define REG_FE_GDM_RX_ETH_L511_CNT_L(_n)	(GDM_BASE(_n) + 0x198)
-#define REG_FE_GDM_RX_ETH_L1023_CNT_L(_n)	(GDM_BASE(_n) + 0x19c)
-
-#define REG_PPE1_TB_HASH_CFG		(PPE1_BASE + 0x250)
-#define PPE1_SRAM_TABLE_EN_MASK		BIT(0)
-#define PPE1_SRAM_HASH1_EN_MASK		BIT(8)
-#define PPE1_DRAM_TABLE_EN_MASK		BIT(16)
-#define PPE1_DRAM_HASH1_EN_MASK		BIT(24)
-
-#define REG_FE_GDM_TX_OK_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x280)
-#define REG_FE_GDM_TX_OK_BYTE_CNT_H(_n)		(GDM_BASE(_n) + 0x284)
-#define REG_FE_GDM_TX_ETH_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x288)
-#define REG_FE_GDM_TX_ETH_BYTE_CNT_H(_n)	(GDM_BASE(_n) + 0x28c)
-
-#define REG_FE_GDM_RX_OK_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x290)
-#define REG_FE_GDM_RX_OK_BYTE_CNT_H(_n)		(GDM_BASE(_n) + 0x294)
-#define REG_FE_GDM_RX_ETH_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x298)
-#define REG_FE_GDM_RX_ETH_BYTE_CNT_H(_n)	(GDM_BASE(_n) + 0x29c)
-#define REG_FE_GDM_TX_ETH_E64_CNT_H(_n)		(GDM_BASE(_n) + 0x2b8)
-#define REG_FE_GDM_TX_ETH_L64_CNT_H(_n)		(GDM_BASE(_n) + 0x2bc)
-#define REG_FE_GDM_TX_ETH_L127_CNT_H(_n)	(GDM_BASE(_n) + 0x2c0)
-#define REG_FE_GDM_TX_ETH_L255_CNT_H(_n)	(GDM_BASE(_n) + 0x2c4)
-#define REG_FE_GDM_TX_ETH_L511_CNT_H(_n)	(GDM_BASE(_n) + 0x2c8)
-#define REG_FE_GDM_TX_ETH_L1023_CNT_H(_n)	(GDM_BASE(_n) + 0x2cc)
-#define REG_FE_GDM_RX_ETH_E64_CNT_H(_n)		(GDM_BASE(_n) + 0x2e8)
-#define REG_FE_GDM_RX_ETH_L64_CNT_H(_n)		(GDM_BASE(_n) + 0x2ec)
-#define REG_FE_GDM_RX_ETH_L127_CNT_H(_n)	(GDM_BASE(_n) + 0x2f0)
-#define REG_FE_GDM_RX_ETH_L255_CNT_H(_n)	(GDM_BASE(_n) + 0x2f4)
-#define REG_FE_GDM_RX_ETH_L511_CNT_H(_n)	(GDM_BASE(_n) + 0x2f8)
-#define REG_FE_GDM_RX_ETH_L1023_CNT_H(_n)	(GDM_BASE(_n) + 0x2fc)
-
-#define REG_GDM2_CHN_RLS		(GDM2_BASE + 0x20)
-#define MBI_RX_AGE_SEL_MASK		GENMASK(26, 25)
-#define MBI_TX_AGE_SEL_MASK		GENMASK(18, 17)
-
-#define REG_GDM3_FWD_CFG		GDM3_BASE
-#define GDM3_PAD_EN_MASK		BIT(28)
-
-#define REG_GDM4_FWD_CFG		GDM4_BASE
-#define GDM4_PAD_EN_MASK		BIT(28)
-#define GDM4_SPORT_OFFSET0_MASK		GENMASK(11, 8)
-
-#define REG_GDM4_SRC_PORT_SET		(GDM4_BASE + 0x23c)
-#define GDM4_SPORT_OFF2_MASK		GENMASK(19, 16)
-#define GDM4_SPORT_OFF1_MASK		GENMASK(15, 12)
-#define GDM4_SPORT_OFF0_MASK		GENMASK(11, 8)
-
-#define REG_IP_FRAG_FP			0x2010
-#define IP_ASSEMBLE_PORT_MASK		GENMASK(24, 21)
-#define IP_ASSEMBLE_NBQ_MASK		GENMASK(20, 16)
-#define IP_FRAGMENT_PORT_MASK		GENMASK(8, 5)
-#define IP_FRAGMENT_NBQ_MASK		GENMASK(4, 0)
-
-#define REG_MC_VLAN_EN			0x2100
-#define MC_VLAN_EN_MASK			BIT(0)
-
-#define REG_MC_VLAN_CFG			0x2104
-#define MC_VLAN_CFG_CMD_DONE_MASK	BIT(31)
-#define MC_VLAN_CFG_TABLE_ID_MASK	GENMASK(21, 16)
-#define MC_VLAN_CFG_PORT_ID_MASK	GENMASK(11, 8)
-#define MC_VLAN_CFG_TABLE_SEL_MASK	BIT(4)
-#define MC_VLAN_CFG_RW_MASK		BIT(0)
-
-#define REG_MC_VLAN_DATA		0x2108
-
-#define REG_CDM5_RX_OQ1_DROP_CNT	0x29d4
-
-/* QDMA */
-#define REG_QDMA_GLOBAL_CFG			0x0004
-#define GLOBAL_CFG_RX_2B_OFFSET_MASK		BIT(31)
-#define GLOBAL_CFG_DMA_PREFERENCE_MASK		GENMASK(30, 29)
-#define GLOBAL_CFG_CPU_TXR_RR_MASK		BIT(28)
-#define GLOBAL_CFG_DSCP_BYTE_SWAP_MASK		BIT(27)
-#define GLOBAL_CFG_PAYLOAD_BYTE_SWAP_MASK	BIT(26)
-#define GLOBAL_CFG_MULTICAST_MODIFY_FP_MASK	BIT(25)
-#define GLOBAL_CFG_OAM_MODIFY_MASK		BIT(24)
-#define GLOBAL_CFG_RESET_MASK			BIT(23)
-#define GLOBAL_CFG_RESET_DONE_MASK		BIT(22)
-#define GLOBAL_CFG_MULTICAST_EN_MASK		BIT(21)
-#define GLOBAL_CFG_IRQ1_EN_MASK			BIT(20)
-#define GLOBAL_CFG_IRQ0_EN_MASK			BIT(19)
-#define GLOBAL_CFG_LOOPCNT_EN_MASK		BIT(18)
-#define GLOBAL_CFG_RD_BYPASS_WR_MASK		BIT(17)
-#define GLOBAL_CFG_QDMA_LOOPBACK_MASK		BIT(16)
-#define GLOBAL_CFG_LPBK_RXQ_SEL_MASK		GENMASK(13, 8)
-#define GLOBAL_CFG_CHECK_DONE_MASK		BIT(7)
-#define GLOBAL_CFG_TX_WB_DONE_MASK		BIT(6)
-#define GLOBAL_CFG_MAX_ISSUE_NUM_MASK		GENMASK(5, 4)
-#define GLOBAL_CFG_RX_DMA_BUSY_MASK		BIT(3)
-#define GLOBAL_CFG_RX_DMA_EN_MASK		BIT(2)
-#define GLOBAL_CFG_TX_DMA_BUSY_MASK		BIT(1)
-#define GLOBAL_CFG_TX_DMA_EN_MASK		BIT(0)
-
-#define REG_FWD_DSCP_BASE			0x0010
-#define REG_FWD_BUF_BASE			0x0014
-
-#define REG_HW_FWD_DSCP_CFG			0x0018
-#define HW_FWD_DSCP_PAYLOAD_SIZE_MASK		GENMASK(29, 28)
-#define HW_FWD_DSCP_SCATTER_LEN_MASK		GENMASK(17, 16)
-#define HW_FWD_DSCP_MIN_SCATTER_LEN_MASK	GENMASK(15, 0)
-
-#define REG_INT_STATUS(_n)		\
-	(((_n) == 4) ? 0x0730 :		\
-	 ((_n) == 3) ? 0x0724 :		\
-	 ((_n) == 2) ? 0x0720 :		\
-	 ((_n) == 1) ? 0x0024 : 0x0020)
-
-#define REG_INT_ENABLE(_n)		\
-	(((_n) == 4) ? 0x0750 :		\
-	 ((_n) == 3) ? 0x0744 :		\
-	 ((_n) == 2) ? 0x0740 :		\
-	 ((_n) == 1) ? 0x002c : 0x0028)
-
-/* QDMA_CSR_INT_ENABLE1 */
-#define RX15_COHERENT_INT_MASK		BIT(31)
-#define RX14_COHERENT_INT_MASK		BIT(30)
-#define RX13_COHERENT_INT_MASK		BIT(29)
-#define RX12_COHERENT_INT_MASK		BIT(28)
-#define RX11_COHERENT_INT_MASK		BIT(27)
-#define RX10_COHERENT_INT_MASK		BIT(26)
-#define RX9_COHERENT_INT_MASK		BIT(25)
-#define RX8_COHERENT_INT_MASK		BIT(24)
-#define RX7_COHERENT_INT_MASK		BIT(23)
-#define RX6_COHERENT_INT_MASK		BIT(22)
-#define RX5_COHERENT_INT_MASK		BIT(21)
-#define RX4_COHERENT_INT_MASK		BIT(20)
-#define RX3_COHERENT_INT_MASK		BIT(19)
-#define RX2_COHERENT_INT_MASK		BIT(18)
-#define RX1_COHERENT_INT_MASK		BIT(17)
-#define RX0_COHERENT_INT_MASK		BIT(16)
-#define TX7_COHERENT_INT_MASK		BIT(15)
-#define TX6_COHERENT_INT_MASK		BIT(14)
-#define TX5_COHERENT_INT_MASK		BIT(13)
-#define TX4_COHERENT_INT_MASK		BIT(12)
-#define TX3_COHERENT_INT_MASK		BIT(11)
-#define TX2_COHERENT_INT_MASK		BIT(10)
-#define TX1_COHERENT_INT_MASK		BIT(9)
-#define TX0_COHERENT_INT_MASK		BIT(8)
-#define CNT_OVER_FLOW_INT_MASK		BIT(7)
-#define IRQ1_FULL_INT_MASK		BIT(5)
-#define IRQ1_INT_MASK			BIT(4)
-#define HWFWD_DSCP_LOW_INT_MASK		BIT(3)
-#define HWFWD_DSCP_EMPTY_INT_MASK	BIT(2)
-#define IRQ0_FULL_INT_MASK		BIT(1)
-#define IRQ0_INT_MASK			BIT(0)
-
-#define TX_DONE_INT_MASK(_n)					\
-	((_n) ? IRQ1_INT_MASK | IRQ1_FULL_INT_MASK		\
-	      : IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
-
-#define INT_TX_MASK						\
-	(IRQ1_INT_MASK | IRQ1_FULL_INT_MASK |			\
-	 IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
-
-#define INT_IDX0_MASK						\
-	(TX0_COHERENT_INT_MASK | TX1_COHERENT_INT_MASK |	\
-	 TX2_COHERENT_INT_MASK | TX3_COHERENT_INT_MASK |	\
-	 TX4_COHERENT_INT_MASK | TX5_COHERENT_INT_MASK |	\
-	 TX6_COHERENT_INT_MASK | TX7_COHERENT_INT_MASK |	\
-	 RX0_COHERENT_INT_MASK | RX1_COHERENT_INT_MASK |	\
-	 RX2_COHERENT_INT_MASK | RX3_COHERENT_INT_MASK |	\
-	 RX4_COHERENT_INT_MASK | RX7_COHERENT_INT_MASK |	\
-	 RX8_COHERENT_INT_MASK | RX9_COHERENT_INT_MASK |	\
-	 RX15_COHERENT_INT_MASK | INT_TX_MASK)
-
-/* QDMA_CSR_INT_ENABLE2 */
-#define RX15_NO_CPU_DSCP_INT_MASK	BIT(31)
-#define RX14_NO_CPU_DSCP_INT_MASK	BIT(30)
-#define RX13_NO_CPU_DSCP_INT_MASK	BIT(29)
-#define RX12_NO_CPU_DSCP_INT_MASK	BIT(28)
-#define RX11_NO_CPU_DSCP_INT_MASK	BIT(27)
-#define RX10_NO_CPU_DSCP_INT_MASK	BIT(26)
-#define RX9_NO_CPU_DSCP_INT_MASK	BIT(25)
-#define RX8_NO_CPU_DSCP_INT_MASK	BIT(24)
-#define RX7_NO_CPU_DSCP_INT_MASK	BIT(23)
-#define RX6_NO_CPU_DSCP_INT_MASK	BIT(22)
-#define RX5_NO_CPU_DSCP_INT_MASK	BIT(21)
-#define RX4_NO_CPU_DSCP_INT_MASK	BIT(20)
-#define RX3_NO_CPU_DSCP_INT_MASK	BIT(19)
-#define RX2_NO_CPU_DSCP_INT_MASK	BIT(18)
-#define RX1_NO_CPU_DSCP_INT_MASK	BIT(17)
-#define RX0_NO_CPU_DSCP_INT_MASK	BIT(16)
-#define RX15_DONE_INT_MASK		BIT(15)
-#define RX14_DONE_INT_MASK		BIT(14)
-#define RX13_DONE_INT_MASK		BIT(13)
-#define RX12_DONE_INT_MASK		BIT(12)
-#define RX11_DONE_INT_MASK		BIT(11)
-#define RX10_DONE_INT_MASK		BIT(10)
-#define RX9_DONE_INT_MASK		BIT(9)
-#define RX8_DONE_INT_MASK		BIT(8)
-#define RX7_DONE_INT_MASK		BIT(7)
-#define RX6_DONE_INT_MASK		BIT(6)
-#define RX5_DONE_INT_MASK		BIT(5)
-#define RX4_DONE_INT_MASK		BIT(4)
-#define RX3_DONE_INT_MASK		BIT(3)
-#define RX2_DONE_INT_MASK		BIT(2)
-#define RX1_DONE_INT_MASK		BIT(1)
-#define RX0_DONE_INT_MASK		BIT(0)
-
-#define RX_DONE_INT_MASK					\
-	(RX0_DONE_INT_MASK | RX1_DONE_INT_MASK |		\
-	 RX2_DONE_INT_MASK | RX3_DONE_INT_MASK |		\
-	 RX4_DONE_INT_MASK | RX7_DONE_INT_MASK |		\
-	 RX8_DONE_INT_MASK | RX9_DONE_INT_MASK |		\
-	 RX15_DONE_INT_MASK)
-#define INT_IDX1_MASK						\
-	(RX_DONE_INT_MASK |					\
-	 RX0_NO_CPU_DSCP_INT_MASK | RX1_NO_CPU_DSCP_INT_MASK |	\
-	 RX2_NO_CPU_DSCP_INT_MASK | RX3_NO_CPU_DSCP_INT_MASK |	\
-	 RX4_NO_CPU_DSCP_INT_MASK | RX7_NO_CPU_DSCP_INT_MASK |	\
-	 RX8_NO_CPU_DSCP_INT_MASK | RX9_NO_CPU_DSCP_INT_MASK |	\
-	 RX15_NO_CPU_DSCP_INT_MASK)
-
-/* QDMA_CSR_INT_ENABLE5 */
-#define TX31_COHERENT_INT_MASK		BIT(31)
-#define TX30_COHERENT_INT_MASK		BIT(30)
-#define TX29_COHERENT_INT_MASK		BIT(29)
-#define TX28_COHERENT_INT_MASK		BIT(28)
-#define TX27_COHERENT_INT_MASK		BIT(27)
-#define TX26_COHERENT_INT_MASK		BIT(26)
-#define TX25_COHERENT_INT_MASK		BIT(25)
-#define TX24_COHERENT_INT_MASK		BIT(24)
-#define TX23_COHERENT_INT_MASK		BIT(23)
-#define TX22_COHERENT_INT_MASK		BIT(22)
-#define TX21_COHERENT_INT_MASK		BIT(21)
-#define TX20_COHERENT_INT_MASK		BIT(20)
-#define TX19_COHERENT_INT_MASK		BIT(19)
-#define TX18_COHERENT_INT_MASK		BIT(18)
-#define TX17_COHERENT_INT_MASK		BIT(17)
-#define TX16_COHERENT_INT_MASK		BIT(16)
-#define TX15_COHERENT_INT_MASK		BIT(15)
-#define TX14_COHERENT_INT_MASK		BIT(14)
-#define TX13_COHERENT_INT_MASK		BIT(13)
-#define TX12_COHERENT_INT_MASK		BIT(12)
-#define TX11_COHERENT_INT_MASK		BIT(11)
-#define TX10_COHERENT_INT_MASK		BIT(10)
-#define TX9_COHERENT_INT_MASK		BIT(9)
-#define TX8_COHERENT_INT_MASK		BIT(8)
-
-#define INT_IDX4_MASK						\
-	(TX8_COHERENT_INT_MASK | TX9_COHERENT_INT_MASK |	\
-	 TX10_COHERENT_INT_MASK | TX11_COHERENT_INT_MASK |	\
-	 TX12_COHERENT_INT_MASK | TX13_COHERENT_INT_MASK |	\
-	 TX14_COHERENT_INT_MASK | TX15_COHERENT_INT_MASK |	\
-	 TX16_COHERENT_INT_MASK | TX17_COHERENT_INT_MASK |	\
-	 TX18_COHERENT_INT_MASK | TX19_COHERENT_INT_MASK |	\
-	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
-	 TX22_COHERENT_INT_MASK | TX23_COHERENT_INT_MASK |	\
-	 TX24_COHERENT_INT_MASK | TX25_COHERENT_INT_MASK |	\
-	 TX26_COHERENT_INT_MASK | TX27_COHERENT_INT_MASK |	\
-	 TX28_COHERENT_INT_MASK | TX29_COHERENT_INT_MASK |	\
-	 TX30_COHERENT_INT_MASK | TX31_COHERENT_INT_MASK)
-
-#define REG_TX_IRQ_BASE(_n)		((_n) ? 0x0048 : 0x0050)
-
-#define REG_TX_IRQ_CFG(_n)		((_n) ? 0x004c : 0x0054)
-#define TX_IRQ_THR_MASK			GENMASK(27, 16)
-#define TX_IRQ_DEPTH_MASK		GENMASK(11, 0)
-
-#define REG_IRQ_CLEAR_LEN(_n)		((_n) ? 0x0064 : 0x0058)
-#define IRQ_CLEAR_LEN_MASK		GENMASK(7, 0)
-
-#define REG_IRQ_STATUS(_n)		((_n) ? 0x0068 : 0x005c)
-#define IRQ_ENTRY_LEN_MASK		GENMASK(27, 16)
-#define IRQ_HEAD_IDX_MASK		GENMASK(11, 0)
-
-#define REG_TX_RING_BASE(_n)	\
-	(((_n) < 8) ? 0x0100 + ((_n) << 5) : 0x0b00 + (((_n) - 8) << 5))
-
-#define REG_TX_RING_BLOCKING(_n)	\
-	(((_n) < 8) ? 0x0104 + ((_n) << 5) : 0x0b04 + (((_n) - 8) << 5))
-
-#define TX_RING_IRQ_BLOCKING_MAP_MASK			BIT(6)
-#define TX_RING_IRQ_BLOCKING_CFG_MASK			BIT(4)
-#define TX_RING_IRQ_BLOCKING_TX_DROP_EN_MASK		BIT(2)
-#define TX_RING_IRQ_BLOCKING_MAX_TH_TXRING_EN_MASK	BIT(1)
-#define TX_RING_IRQ_BLOCKING_MIN_TH_TXRING_EN_MASK	BIT(0)
-
-#define REG_TX_CPU_IDX(_n)	\
-	(((_n) < 8) ? 0x0108 + ((_n) << 5) : 0x0b08 + (((_n) - 8) << 5))
-
-#define TX_RING_CPU_IDX_MASK		GENMASK(15, 0)
-
-#define REG_TX_DMA_IDX(_n)	\
-	(((_n) < 8) ? 0x010c + ((_n) << 5) : 0x0b0c + (((_n) - 8) << 5))
-
-#define TX_RING_DMA_IDX_MASK		GENMASK(15, 0)
-
-#define IRQ_RING_IDX_MASK		GENMASK(20, 16)
-#define IRQ_DESC_IDX_MASK		GENMASK(15, 0)
-
-#define REG_RX_RING_BASE(_n)	\
-	(((_n) < 16) ? 0x0200 + ((_n) << 5) : 0x0e00 + (((_n) - 16) << 5))
-
-#define REG_RX_RING_SIZE(_n)	\
-	(((_n) < 16) ? 0x0204 + ((_n) << 5) : 0x0e04 + (((_n) - 16) << 5))
-
-#define RX_RING_THR_MASK		GENMASK(31, 16)
-#define RX_RING_SIZE_MASK		GENMASK(15, 0)
-
-#define REG_RX_CPU_IDX(_n)	\
-	(((_n) < 16) ? 0x0208 + ((_n) << 5) : 0x0e08 + (((_n) - 16) << 5))
-
-#define RX_RING_CPU_IDX_MASK		GENMASK(15, 0)
-
-#define REG_RX_DMA_IDX(_n)	\
-	(((_n) < 16) ? 0x020c + ((_n) << 5) : 0x0e0c + (((_n) - 16) << 5))
-
-#define REG_RX_DELAY_INT_IDX(_n)	\
-	(((_n) < 16) ? 0x0210 + ((_n) << 5) : 0x0e10 + (((_n) - 16) << 5))
-
-#define RX_DELAY_INT_MASK		GENMASK(15, 0)
-
-#define RX_RING_DMA_IDX_MASK		GENMASK(15, 0)
-
-#define REG_INGRESS_TRTCM_CFG		0x0070
-#define INGRESS_TRTCM_EN_MASK		BIT(31)
-#define INGRESS_TRTCM_MODE_MASK		BIT(30)
-#define INGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
-#define INGRESS_FAST_TICK_MASK		GENMASK(15, 0)
-
-#define REG_QUEUE_CLOSE_CFG(_n)		(0x00a0 + ((_n) & 0xfc))
-#define TXQ_DISABLE_CHAN_QUEUE_MASK(_n, _m)	BIT((_m) + (((_n) & 0x3) << 3))
-
-#define REG_TXQ_DIS_CFG_BASE(_n)	((_n) ? 0x20a0 : 0x00a0)
-#define REG_TXQ_DIS_CFG(_n, _m)		(REG_TXQ_DIS_CFG_BASE((_n)) + (_m) << 2)
-
-#define REG_CNTR_CFG(_n)		(0x0400 + ((_n) << 3))
-#define CNTR_EN_MASK			BIT(31)
-#define CNTR_ALL_CHAN_EN_MASK		BIT(30)
-#define CNTR_ALL_QUEUE_EN_MASK		BIT(29)
-#define CNTR_ALL_DSCP_RING_EN_MASK	BIT(28)
-#define CNTR_SRC_MASK			GENMASK(27, 24)
-#define CNTR_DSCP_RING_MASK		GENMASK(20, 16)
-#define CNTR_CHAN_MASK			GENMASK(7, 3)
-#define CNTR_QUEUE_MASK			GENMASK(2, 0)
-
-#define REG_CNTR_VAL(_n)		(0x0404 + ((_n) << 3))
-
-#define REG_LMGR_INIT_CFG		0x1000
-#define LMGR_INIT_START			BIT(31)
-#define LMGR_SRAM_MODE_MASK		BIT(30)
-#define HW_FWD_PKTSIZE_OVERHEAD_MASK	GENMASK(27, 20)
-#define HW_FWD_DESC_NUM_MASK		GENMASK(16, 0)
-
-#define REG_FWD_DSCP_LOW_THR		0x1004
-#define FWD_DSCP_LOW_THR_MASK		GENMASK(17, 0)
-
-#define REG_EGRESS_RATE_METER_CFG		0x100c
-#define EGRESS_RATE_METER_EN_MASK		BIT(31)
-#define EGRESS_RATE_METER_EQ_RATE_EN_MASK	BIT(17)
-#define EGRESS_RATE_METER_WINDOW_SZ_MASK	GENMASK(16, 12)
-#define EGRESS_RATE_METER_TIMESLICE_MASK	GENMASK(10, 0)
-
-#define REG_EGRESS_TRTCM_CFG		0x1010
-#define EGRESS_TRTCM_EN_MASK		BIT(31)
-#define EGRESS_TRTCM_MODE_MASK		BIT(30)
-#define EGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
-#define EGRESS_FAST_TICK_MASK		GENMASK(15, 0)
-
-#define TRTCM_PARAM_RW_MASK		BIT(31)
-#define TRTCM_PARAM_RW_DONE_MASK	BIT(30)
-#define TRTCM_PARAM_TYPE_MASK		GENMASK(29, 28)
-#define TRTCM_METER_GROUP_MASK		GENMASK(27, 26)
-#define TRTCM_PARAM_INDEX_MASK		GENMASK(23, 17)
-#define TRTCM_PARAM_RATE_TYPE_MASK	BIT(16)
-
-#define REG_TRTCM_CFG_PARAM(_n)		((_n) + 0x4)
-#define REG_TRTCM_DATA_LOW(_n)		((_n) + 0x8)
-#define REG_TRTCM_DATA_HIGH(_n)		((_n) + 0xc)
-
-#define REG_TXWRR_MODE_CFG		0x1020
-#define TWRR_WEIGHT_SCALE_MASK		BIT(31)
-#define TWRR_WEIGHT_BASE_MASK		BIT(3)
-
-#define REG_TXWRR_WEIGHT_CFG		0x1024
-#define TWRR_RW_CMD_MASK		BIT(31)
-#define TWRR_RW_CMD_DONE		BIT(30)
-#define TWRR_CHAN_IDX_MASK		GENMASK(23, 19)
-#define TWRR_QUEUE_IDX_MASK		GENMASK(18, 16)
-#define TWRR_VALUE_MASK			GENMASK(15, 0)
-
-#define REG_PSE_BUF_USAGE_CFG		0x1028
-#define PSE_BUF_ESTIMATE_EN_MASK	BIT(29)
-
-#define REG_CHAN_QOS_MODE(_n)		(0x1040 + ((_n) << 2))
-#define CHAN_QOS_MODE_MASK(_n)		GENMASK(2 + ((_n) << 2), (_n) << 2)
-
-#define REG_GLB_TRTCM_CFG		0x1080
-#define GLB_TRTCM_EN_MASK		BIT(31)
-#define GLB_TRTCM_MODE_MASK		BIT(30)
-#define GLB_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
-#define GLB_FAST_TICK_MASK		GENMASK(15, 0)
-
-#define REG_TXQ_CNGST_CFG		0x10a0
-#define TXQ_CNGST_DROP_EN		BIT(31)
-#define TXQ_CNGST_DEI_DROP_EN		BIT(30)
-
-#define REG_SLA_TRTCM_CFG		0x1150
-#define SLA_TRTCM_EN_MASK		BIT(31)
-#define SLA_TRTCM_MODE_MASK		BIT(30)
-#define SLA_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
-#define SLA_FAST_TICK_MASK		GENMASK(15, 0)
-
-/* CTRL */
-#define QDMA_DESC_DONE_MASK		BIT(31)
-#define QDMA_DESC_DROP_MASK		BIT(30) /* tx: drop - rx: overflow */
-#define QDMA_DESC_MORE_MASK		BIT(29) /* more SG elements */
-#define QDMA_DESC_DEI_MASK		BIT(25)
-#define QDMA_DESC_NO_DROP_MASK		BIT(24)
-#define QDMA_DESC_LEN_MASK		GENMASK(15, 0)
-/* DATA */
-#define QDMA_DESC_NEXT_ID_MASK		GENMASK(15, 0)
-/* TX MSG0 */
-#define QDMA_ETH_TXMSG_MIC_IDX_MASK	BIT(30)
-#define QDMA_ETH_TXMSG_SP_TAG_MASK	GENMASK(29, 14)
-#define QDMA_ETH_TXMSG_ICO_MASK		BIT(13)
-#define QDMA_ETH_TXMSG_UCO_MASK		BIT(12)
-#define QDMA_ETH_TXMSG_TCO_MASK		BIT(11)
-#define QDMA_ETH_TXMSG_TSO_MASK		BIT(10)
-#define QDMA_ETH_TXMSG_FAST_MASK	BIT(9)
-#define QDMA_ETH_TXMSG_OAM_MASK		BIT(8)
-#define QDMA_ETH_TXMSG_CHAN_MASK	GENMASK(7, 3)
-#define QDMA_ETH_TXMSG_QUEUE_MASK	GENMASK(2, 0)
-/* TX MSG1 */
-#define QDMA_ETH_TXMSG_NO_DROP		BIT(31)
-#define QDMA_ETH_TXMSG_METER_MASK	GENMASK(30, 24)	/* 0x7f no meters */
-#define QDMA_ETH_TXMSG_FPORT_MASK	GENMASK(23, 20)
-#define QDMA_ETH_TXMSG_NBOQ_MASK	GENMASK(19, 15)
-#define QDMA_ETH_TXMSG_HWF_MASK		BIT(14)
-#define QDMA_ETH_TXMSG_HOP_MASK		BIT(13)
-#define QDMA_ETH_TXMSG_PTP_MASK		BIT(12)
-#define QDMA_ETH_TXMSG_ACNT_G1_MASK	GENMASK(10, 6)	/* 0x1f do not count */
-#define QDMA_ETH_TXMSG_ACNT_G0_MASK	GENMASK(5, 0)	/* 0x3f do not count */
-
-/* RX MSG1 */
-#define QDMA_ETH_RXMSG_DEI_MASK		BIT(31)
-#define QDMA_ETH_RXMSG_IP6_MASK		BIT(30)
-#define QDMA_ETH_RXMSG_IP4_MASK		BIT(29)
-#define QDMA_ETH_RXMSG_IP4F_MASK	BIT(28)
-#define QDMA_ETH_RXMSG_L4_VALID_MASK	BIT(27)
-#define QDMA_ETH_RXMSG_L4F_MASK		BIT(26)
-#define QDMA_ETH_RXMSG_SPORT_MASK	GENMASK(25, 21)
-#define QDMA_ETH_RXMSG_CRSN_MASK	GENMASK(20, 16)
-#define QDMA_ETH_RXMSG_PPE_ENTRY_MASK	GENMASK(15, 0)
-
-struct airoha_qdma_desc {
-	__le32 rsv;
-	__le32 ctrl;
-	__le32 addr;
-	__le32 data;
-	__le32 msg0;
-	__le32 msg1;
-	__le32 msg2;
-	__le32 msg3;
-};
-
-/* CTRL0 */
-#define QDMA_FWD_DESC_CTX_MASK		BIT(31)
-#define QDMA_FWD_DESC_RING_MASK		GENMASK(30, 28)
-#define QDMA_FWD_DESC_IDX_MASK		GENMASK(27, 16)
-#define QDMA_FWD_DESC_LEN_MASK		GENMASK(15, 0)
-/* CTRL1 */
-#define QDMA_FWD_DESC_FIRST_IDX_MASK	GENMASK(15, 0)
-/* CTRL2 */
-#define QDMA_FWD_DESC_MORE_PKT_NUM_MASK	GENMASK(2, 0)
-
-struct airoha_qdma_fwd_desc {
-	__le32 addr;
-	__le32 ctrl0;
-	__le32 ctrl1;
-	__le32 ctrl2;
-	__le32 msg0;
-	__le32 msg1;
-	__le32 rsv0;
-	__le32 rsv1;
-};
-
 u32 airoha_rr(void __iomem *base, u32 offset)
 {
 	return readl(base + offset);
diff --git a/drivers/net/ethernet/airoha/airoha_regs.h b/drivers/net/ethernet/airoha/airoha_regs.h
new file mode 100644
index 0000000000000000000000000000000000000000..7c9dadb348834cb5a856760abe45e8221d6fd700
--- /dev/null
+++ b/drivers/net/ethernet/airoha/airoha_regs.h
@@ -0,0 +1,670 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2024 AIROHA Inc
+ * Author: Lorenzo Bianconi <lorenzo@kernel.org>
+ */
+
+#ifndef AIROHA_REGS_H
+#define AIROHA_REGS_H
+
+#include <linux/types.h>
+
+/* FE */
+#define PSE_BASE			0x0100
+#define CSR_IFC_BASE			0x0200
+#define CDM1_BASE			0x0400
+#define GDM1_BASE			0x0500
+#define PPE1_BASE			0x0c00
+
+#define CDM2_BASE			0x1400
+#define GDM2_BASE			0x1500
+
+#define GDM3_BASE			0x1100
+#define GDM4_BASE			0x2500
+
+#define GDM_BASE(_n)			\
+	((_n) == 4 ? GDM4_BASE :	\
+	 (_n) == 3 ? GDM3_BASE :	\
+	 (_n) == 2 ? GDM2_BASE : GDM1_BASE)
+
+#define REG_FE_DMA_GLO_CFG		0x0000
+#define FE_DMA_GLO_L2_SPACE_MASK	GENMASK(7, 4)
+#define FE_DMA_GLO_PG_SZ_MASK		BIT(3)
+
+#define REG_FE_RST_GLO_CFG		0x0004
+#define FE_RST_GDM4_MBI_ARB_MASK	BIT(3)
+#define FE_RST_GDM3_MBI_ARB_MASK	BIT(2)
+#define FE_RST_CORE_MASK		BIT(0)
+
+#define REG_FE_WAN_MAC_H		0x0030
+#define REG_FE_LAN_MAC_H		0x0040
+
+#define REG_FE_MAC_LMIN(_n)		((_n) + 0x04)
+#define REG_FE_MAC_LMAX(_n)		((_n) + 0x08)
+
+#define REG_FE_CDM1_OQ_MAP0		0x0050
+#define REG_FE_CDM1_OQ_MAP1		0x0054
+#define REG_FE_CDM1_OQ_MAP2		0x0058
+#define REG_FE_CDM1_OQ_MAP3		0x005c
+
+#define REG_FE_PCE_CFG			0x0070
+#define PCE_DPI_EN_MASK			BIT(2)
+#define PCE_KA_EN_MASK			BIT(1)
+#define PCE_MC_EN_MASK			BIT(0)
+
+#define REG_FE_PSE_QUEUE_CFG_WR		0x0080
+#define PSE_CFG_PORT_ID_MASK		GENMASK(27, 24)
+#define PSE_CFG_QUEUE_ID_MASK		GENMASK(20, 16)
+#define PSE_CFG_WR_EN_MASK		BIT(8)
+#define PSE_CFG_OQRSV_SEL_MASK		BIT(0)
+
+#define REG_FE_PSE_QUEUE_CFG_VAL	0x0084
+#define PSE_CFG_OQ_RSV_MASK		GENMASK(13, 0)
+
+#define PSE_FQ_CFG			0x008c
+#define PSE_FQ_LIMIT_MASK		GENMASK(14, 0)
+
+#define REG_FE_PSE_BUF_SET		0x0090
+#define PSE_SHARE_USED_LTHD_MASK	GENMASK(31, 16)
+#define PSE_ALLRSV_MASK			GENMASK(14, 0)
+
+#define REG_PSE_SHARE_USED_THD		0x0094
+#define PSE_SHARE_USED_MTHD_MASK	GENMASK(31, 16)
+#define PSE_SHARE_USED_HTHD_MASK	GENMASK(15, 0)
+
+#define REG_GDM_MISC_CFG		0x0148
+#define GDM2_RDM_ACK_WAIT_PREF_MASK	BIT(9)
+#define GDM2_CHN_VLD_MODE_MASK		BIT(5)
+
+#define REG_FE_CSR_IFC_CFG		CSR_IFC_BASE
+#define FE_IFC_EN_MASK			BIT(0)
+
+#define REG_FE_VIP_PORT_EN		0x01f0
+#define REG_FE_IFC_PORT_EN		0x01f4
+
+#define REG_PSE_IQ_REV1			(PSE_BASE + 0x08)
+#define PSE_IQ_RES1_P2_MASK		GENMASK(23, 16)
+
+#define REG_PSE_IQ_REV2			(PSE_BASE + 0x0c)
+#define PSE_IQ_RES2_P5_MASK		GENMASK(15, 8)
+#define PSE_IQ_RES2_P4_MASK		GENMASK(7, 0)
+
+#define REG_FE_VIP_EN(_n)		(0x0300 + ((_n) << 3))
+#define PATN_FCPU_EN_MASK		BIT(7)
+#define PATN_SWP_EN_MASK		BIT(6)
+#define PATN_DP_EN_MASK			BIT(5)
+#define PATN_SP_EN_MASK			BIT(4)
+#define PATN_TYPE_MASK			GENMASK(3, 1)
+#define PATN_EN_MASK			BIT(0)
+
+#define REG_FE_VIP_PATN(_n)		(0x0304 + ((_n) << 3))
+#define PATN_DP_MASK			GENMASK(31, 16)
+#define PATN_SP_MASK			GENMASK(15, 0)
+
+#define REG_CDM1_VLAN_CTRL		CDM1_BASE
+#define CDM1_VLAN_MASK			GENMASK(31, 16)
+
+#define REG_CDM1_FWD_CFG		(CDM1_BASE + 0x08)
+#define CDM1_VIP_QSEL_MASK		GENMASK(24, 20)
+
+#define REG_CDM1_CRSN_QSEL(_n)		(CDM1_BASE + 0x10 + ((_n) << 2))
+#define CDM1_CRSN_QSEL_REASON_MASK(_n)	\
+	GENMASK(4 + (((_n) % 4) << 3),	(((_n) % 4) << 3))
+
+#define REG_CDM2_FWD_CFG		(CDM2_BASE + 0x08)
+#define CDM2_OAM_QSEL_MASK		GENMASK(31, 27)
+#define CDM2_VIP_QSEL_MASK		GENMASK(24, 20)
+
+#define REG_CDM2_CRSN_QSEL(_n)		(CDM2_BASE + 0x10 + ((_n) << 2))
+#define CDM2_CRSN_QSEL_REASON_MASK(_n)	\
+	GENMASK(4 + (((_n) % 4) << 3),	(((_n) % 4) << 3))
+
+#define REG_GDM_FWD_CFG(_n)		GDM_BASE(_n)
+#define GDM_DROP_CRC_ERR		BIT(23)
+#define GDM_IP4_CKSUM			BIT(22)
+#define GDM_TCP_CKSUM			BIT(21)
+#define GDM_UDP_CKSUM			BIT(20)
+#define GDM_UCFQ_MASK			GENMASK(15, 12)
+#define GDM_BCFQ_MASK			GENMASK(11, 8)
+#define GDM_MCFQ_MASK			GENMASK(7, 4)
+#define GDM_OCFQ_MASK			GENMASK(3, 0)
+
+#define REG_GDM_INGRESS_CFG(_n)		(GDM_BASE(_n) + 0x10)
+#define GDM_INGRESS_FC_EN_MASK		BIT(1)
+#define GDM_STAG_EN_MASK		BIT(0)
+
+#define REG_GDM_LEN_CFG(_n)		(GDM_BASE(_n) + 0x14)
+#define GDM_SHORT_LEN_MASK		GENMASK(13, 0)
+#define GDM_LONG_LEN_MASK		GENMASK(29, 16)
+
+#define REG_FE_CPORT_CFG		(GDM1_BASE + 0x40)
+#define FE_CPORT_PAD			BIT(26)
+#define FE_CPORT_PORT_XFC_MASK		BIT(25)
+#define FE_CPORT_QUEUE_XFC_MASK		BIT(24)
+
+#define REG_FE_GDM_MIB_CLEAR(_n)	(GDM_BASE(_n) + 0xf0)
+#define FE_GDM_MIB_RX_CLEAR_MASK	BIT(1)
+#define FE_GDM_MIB_TX_CLEAR_MASK	BIT(0)
+
+#define REG_FE_GDM1_MIB_CFG		(GDM1_BASE + 0xf4)
+#define FE_STRICT_RFC2819_MODE_MASK	BIT(31)
+#define FE_GDM1_TX_MIB_SPLIT_EN_MASK	BIT(17)
+#define FE_GDM1_RX_MIB_SPLIT_EN_MASK	BIT(16)
+#define FE_TX_MIB_ID_MASK		GENMASK(15, 8)
+#define FE_RX_MIB_ID_MASK		GENMASK(7, 0)
+
+#define REG_FE_GDM_TX_OK_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x104)
+#define REG_FE_GDM_TX_OK_BYTE_CNT_L(_n)		(GDM_BASE(_n) + 0x10c)
+#define REG_FE_GDM_TX_ETH_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x110)
+#define REG_FE_GDM_TX_ETH_BYTE_CNT_L(_n)	(GDM_BASE(_n) + 0x114)
+#define REG_FE_GDM_TX_ETH_DROP_CNT(_n)		(GDM_BASE(_n) + 0x118)
+#define REG_FE_GDM_TX_ETH_BC_CNT(_n)		(GDM_BASE(_n) + 0x11c)
+#define REG_FE_GDM_TX_ETH_MC_CNT(_n)		(GDM_BASE(_n) + 0x120)
+#define REG_FE_GDM_TX_ETH_RUNT_CNT(_n)		(GDM_BASE(_n) + 0x124)
+#define REG_FE_GDM_TX_ETH_LONG_CNT(_n)		(GDM_BASE(_n) + 0x128)
+#define REG_FE_GDM_TX_ETH_E64_CNT_L(_n)		(GDM_BASE(_n) + 0x12c)
+#define REG_FE_GDM_TX_ETH_L64_CNT_L(_n)		(GDM_BASE(_n) + 0x130)
+#define REG_FE_GDM_TX_ETH_L127_CNT_L(_n)	(GDM_BASE(_n) + 0x134)
+#define REG_FE_GDM_TX_ETH_L255_CNT_L(_n)	(GDM_BASE(_n) + 0x138)
+#define REG_FE_GDM_TX_ETH_L511_CNT_L(_n)	(GDM_BASE(_n) + 0x13c)
+#define REG_FE_GDM_TX_ETH_L1023_CNT_L(_n)	(GDM_BASE(_n) + 0x140)
+
+#define REG_FE_GDM_RX_OK_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x148)
+#define REG_FE_GDM_RX_FC_DROP_CNT(_n)		(GDM_BASE(_n) + 0x14c)
+#define REG_FE_GDM_RX_RC_DROP_CNT(_n)		(GDM_BASE(_n) + 0x150)
+#define REG_FE_GDM_RX_OVERFLOW_DROP_CNT(_n)	(GDM_BASE(_n) + 0x154)
+#define REG_FE_GDM_RX_ERROR_DROP_CNT(_n)	(GDM_BASE(_n) + 0x158)
+#define REG_FE_GDM_RX_OK_BYTE_CNT_L(_n)		(GDM_BASE(_n) + 0x15c)
+#define REG_FE_GDM_RX_ETH_PKT_CNT_L(_n)		(GDM_BASE(_n) + 0x160)
+#define REG_FE_GDM_RX_ETH_BYTE_CNT_L(_n)	(GDM_BASE(_n) + 0x164)
+#define REG_FE_GDM_RX_ETH_DROP_CNT(_n)		(GDM_BASE(_n) + 0x168)
+#define REG_FE_GDM_RX_ETH_BC_CNT(_n)		(GDM_BASE(_n) + 0x16c)
+#define REG_FE_GDM_RX_ETH_MC_CNT(_n)		(GDM_BASE(_n) + 0x170)
+#define REG_FE_GDM_RX_ETH_CRC_ERR_CNT(_n)	(GDM_BASE(_n) + 0x174)
+#define REG_FE_GDM_RX_ETH_FRAG_CNT(_n)		(GDM_BASE(_n) + 0x178)
+#define REG_FE_GDM_RX_ETH_JABBER_CNT(_n)	(GDM_BASE(_n) + 0x17c)
+#define REG_FE_GDM_RX_ETH_RUNT_CNT(_n)		(GDM_BASE(_n) + 0x180)
+#define REG_FE_GDM_RX_ETH_LONG_CNT(_n)		(GDM_BASE(_n) + 0x184)
+#define REG_FE_GDM_RX_ETH_E64_CNT_L(_n)		(GDM_BASE(_n) + 0x188)
+#define REG_FE_GDM_RX_ETH_L64_CNT_L(_n)		(GDM_BASE(_n) + 0x18c)
+#define REG_FE_GDM_RX_ETH_L127_CNT_L(_n)	(GDM_BASE(_n) + 0x190)
+#define REG_FE_GDM_RX_ETH_L255_CNT_L(_n)	(GDM_BASE(_n) + 0x194)
+#define REG_FE_GDM_RX_ETH_L511_CNT_L(_n)	(GDM_BASE(_n) + 0x198)
+#define REG_FE_GDM_RX_ETH_L1023_CNT_L(_n)	(GDM_BASE(_n) + 0x19c)
+
+#define REG_PPE1_TB_HASH_CFG		(PPE1_BASE + 0x250)
+#define PPE1_SRAM_TABLE_EN_MASK		BIT(0)
+#define PPE1_SRAM_HASH1_EN_MASK		BIT(8)
+#define PPE1_DRAM_TABLE_EN_MASK		BIT(16)
+#define PPE1_DRAM_HASH1_EN_MASK		BIT(24)
+
+#define REG_FE_GDM_TX_OK_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x280)
+#define REG_FE_GDM_TX_OK_BYTE_CNT_H(_n)		(GDM_BASE(_n) + 0x284)
+#define REG_FE_GDM_TX_ETH_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x288)
+#define REG_FE_GDM_TX_ETH_BYTE_CNT_H(_n)	(GDM_BASE(_n) + 0x28c)
+
+#define REG_FE_GDM_RX_OK_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x290)
+#define REG_FE_GDM_RX_OK_BYTE_CNT_H(_n)		(GDM_BASE(_n) + 0x294)
+#define REG_FE_GDM_RX_ETH_PKT_CNT_H(_n)		(GDM_BASE(_n) + 0x298)
+#define REG_FE_GDM_RX_ETH_BYTE_CNT_H(_n)	(GDM_BASE(_n) + 0x29c)
+#define REG_FE_GDM_TX_ETH_E64_CNT_H(_n)		(GDM_BASE(_n) + 0x2b8)
+#define REG_FE_GDM_TX_ETH_L64_CNT_H(_n)		(GDM_BASE(_n) + 0x2bc)
+#define REG_FE_GDM_TX_ETH_L127_CNT_H(_n)	(GDM_BASE(_n) + 0x2c0)
+#define REG_FE_GDM_TX_ETH_L255_CNT_H(_n)	(GDM_BASE(_n) + 0x2c4)
+#define REG_FE_GDM_TX_ETH_L511_CNT_H(_n)	(GDM_BASE(_n) + 0x2c8)
+#define REG_FE_GDM_TX_ETH_L1023_CNT_H(_n)	(GDM_BASE(_n) + 0x2cc)
+#define REG_FE_GDM_RX_ETH_E64_CNT_H(_n)		(GDM_BASE(_n) + 0x2e8)
+#define REG_FE_GDM_RX_ETH_L64_CNT_H(_n)		(GDM_BASE(_n) + 0x2ec)
+#define REG_FE_GDM_RX_ETH_L127_CNT_H(_n)	(GDM_BASE(_n) + 0x2f0)
+#define REG_FE_GDM_RX_ETH_L255_CNT_H(_n)	(GDM_BASE(_n) + 0x2f4)
+#define REG_FE_GDM_RX_ETH_L511_CNT_H(_n)	(GDM_BASE(_n) + 0x2f8)
+#define REG_FE_GDM_RX_ETH_L1023_CNT_H(_n)	(GDM_BASE(_n) + 0x2fc)
+
+#define REG_GDM2_CHN_RLS		(GDM2_BASE + 0x20)
+#define MBI_RX_AGE_SEL_MASK		GENMASK(26, 25)
+#define MBI_TX_AGE_SEL_MASK		GENMASK(18, 17)
+
+#define REG_GDM3_FWD_CFG		GDM3_BASE
+#define GDM3_PAD_EN_MASK		BIT(28)
+
+#define REG_GDM4_FWD_CFG		GDM4_BASE
+#define GDM4_PAD_EN_MASK		BIT(28)
+#define GDM4_SPORT_OFFSET0_MASK		GENMASK(11, 8)
+
+#define REG_GDM4_SRC_PORT_SET		(GDM4_BASE + 0x23c)
+#define GDM4_SPORT_OFF2_MASK		GENMASK(19, 16)
+#define GDM4_SPORT_OFF1_MASK		GENMASK(15, 12)
+#define GDM4_SPORT_OFF0_MASK		GENMASK(11, 8)
+
+#define REG_IP_FRAG_FP			0x2010
+#define IP_ASSEMBLE_PORT_MASK		GENMASK(24, 21)
+#define IP_ASSEMBLE_NBQ_MASK		GENMASK(20, 16)
+#define IP_FRAGMENT_PORT_MASK		GENMASK(8, 5)
+#define IP_FRAGMENT_NBQ_MASK		GENMASK(4, 0)
+
+#define REG_MC_VLAN_EN			0x2100
+#define MC_VLAN_EN_MASK			BIT(0)
+
+#define REG_MC_VLAN_CFG			0x2104
+#define MC_VLAN_CFG_CMD_DONE_MASK	BIT(31)
+#define MC_VLAN_CFG_TABLE_ID_MASK	GENMASK(21, 16)
+#define MC_VLAN_CFG_PORT_ID_MASK	GENMASK(11, 8)
+#define MC_VLAN_CFG_TABLE_SEL_MASK	BIT(4)
+#define MC_VLAN_CFG_RW_MASK		BIT(0)
+
+#define REG_MC_VLAN_DATA		0x2108
+
+#define REG_CDM5_RX_OQ1_DROP_CNT	0x29d4
+
+/* QDMA */
+#define REG_QDMA_GLOBAL_CFG			0x0004
+#define GLOBAL_CFG_RX_2B_OFFSET_MASK		BIT(31)
+#define GLOBAL_CFG_DMA_PREFERENCE_MASK		GENMASK(30, 29)
+#define GLOBAL_CFG_CPU_TXR_RR_MASK		BIT(28)
+#define GLOBAL_CFG_DSCP_BYTE_SWAP_MASK		BIT(27)
+#define GLOBAL_CFG_PAYLOAD_BYTE_SWAP_MASK	BIT(26)
+#define GLOBAL_CFG_MULTICAST_MODIFY_FP_MASK	BIT(25)
+#define GLOBAL_CFG_OAM_MODIFY_MASK		BIT(24)
+#define GLOBAL_CFG_RESET_MASK			BIT(23)
+#define GLOBAL_CFG_RESET_DONE_MASK		BIT(22)
+#define GLOBAL_CFG_MULTICAST_EN_MASK		BIT(21)
+#define GLOBAL_CFG_IRQ1_EN_MASK			BIT(20)
+#define GLOBAL_CFG_IRQ0_EN_MASK			BIT(19)
+#define GLOBAL_CFG_LOOPCNT_EN_MASK		BIT(18)
+#define GLOBAL_CFG_RD_BYPASS_WR_MASK		BIT(17)
+#define GLOBAL_CFG_QDMA_LOOPBACK_MASK		BIT(16)
+#define GLOBAL_CFG_LPBK_RXQ_SEL_MASK		GENMASK(13, 8)
+#define GLOBAL_CFG_CHECK_DONE_MASK		BIT(7)
+#define GLOBAL_CFG_TX_WB_DONE_MASK		BIT(6)
+#define GLOBAL_CFG_MAX_ISSUE_NUM_MASK		GENMASK(5, 4)
+#define GLOBAL_CFG_RX_DMA_BUSY_MASK		BIT(3)
+#define GLOBAL_CFG_RX_DMA_EN_MASK		BIT(2)
+#define GLOBAL_CFG_TX_DMA_BUSY_MASK		BIT(1)
+#define GLOBAL_CFG_TX_DMA_EN_MASK		BIT(0)
+
+#define REG_FWD_DSCP_BASE			0x0010
+#define REG_FWD_BUF_BASE			0x0014
+
+#define REG_HW_FWD_DSCP_CFG			0x0018
+#define HW_FWD_DSCP_PAYLOAD_SIZE_MASK		GENMASK(29, 28)
+#define HW_FWD_DSCP_SCATTER_LEN_MASK		GENMASK(17, 16)
+#define HW_FWD_DSCP_MIN_SCATTER_LEN_MASK	GENMASK(15, 0)
+
+#define REG_INT_STATUS(_n)		\
+	(((_n) == 4) ? 0x0730 :		\
+	 ((_n) == 3) ? 0x0724 :		\
+	 ((_n) == 2) ? 0x0720 :		\
+	 ((_n) == 1) ? 0x0024 : 0x0020)
+
+#define REG_INT_ENABLE(_n)		\
+	(((_n) == 4) ? 0x0750 :		\
+	 ((_n) == 3) ? 0x0744 :		\
+	 ((_n) == 2) ? 0x0740 :		\
+	 ((_n) == 1) ? 0x002c : 0x0028)
+
+/* QDMA_CSR_INT_ENABLE1 */
+#define RX15_COHERENT_INT_MASK		BIT(31)
+#define RX14_COHERENT_INT_MASK		BIT(30)
+#define RX13_COHERENT_INT_MASK		BIT(29)
+#define RX12_COHERENT_INT_MASK		BIT(28)
+#define RX11_COHERENT_INT_MASK		BIT(27)
+#define RX10_COHERENT_INT_MASK		BIT(26)
+#define RX9_COHERENT_INT_MASK		BIT(25)
+#define RX8_COHERENT_INT_MASK		BIT(24)
+#define RX7_COHERENT_INT_MASK		BIT(23)
+#define RX6_COHERENT_INT_MASK		BIT(22)
+#define RX5_COHERENT_INT_MASK		BIT(21)
+#define RX4_COHERENT_INT_MASK		BIT(20)
+#define RX3_COHERENT_INT_MASK		BIT(19)
+#define RX2_COHERENT_INT_MASK		BIT(18)
+#define RX1_COHERENT_INT_MASK		BIT(17)
+#define RX0_COHERENT_INT_MASK		BIT(16)
+#define TX7_COHERENT_INT_MASK		BIT(15)
+#define TX6_COHERENT_INT_MASK		BIT(14)
+#define TX5_COHERENT_INT_MASK		BIT(13)
+#define TX4_COHERENT_INT_MASK		BIT(12)
+#define TX3_COHERENT_INT_MASK		BIT(11)
+#define TX2_COHERENT_INT_MASK		BIT(10)
+#define TX1_COHERENT_INT_MASK		BIT(9)
+#define TX0_COHERENT_INT_MASK		BIT(8)
+#define CNT_OVER_FLOW_INT_MASK		BIT(7)
+#define IRQ1_FULL_INT_MASK		BIT(5)
+#define IRQ1_INT_MASK			BIT(4)
+#define HWFWD_DSCP_LOW_INT_MASK		BIT(3)
+#define HWFWD_DSCP_EMPTY_INT_MASK	BIT(2)
+#define IRQ0_FULL_INT_MASK		BIT(1)
+#define IRQ0_INT_MASK			BIT(0)
+
+#define TX_DONE_INT_MASK(_n)					\
+	((_n) ? IRQ1_INT_MASK | IRQ1_FULL_INT_MASK		\
+	      : IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
+
+#define INT_TX_MASK						\
+	(IRQ1_INT_MASK | IRQ1_FULL_INT_MASK |			\
+	 IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
+
+#define INT_IDX0_MASK						\
+	(TX0_COHERENT_INT_MASK | TX1_COHERENT_INT_MASK |	\
+	 TX2_COHERENT_INT_MASK | TX3_COHERENT_INT_MASK |	\
+	 TX4_COHERENT_INT_MASK | TX5_COHERENT_INT_MASK |	\
+	 TX6_COHERENT_INT_MASK | TX7_COHERENT_INT_MASK |	\
+	 RX0_COHERENT_INT_MASK | RX1_COHERENT_INT_MASK |	\
+	 RX2_COHERENT_INT_MASK | RX3_COHERENT_INT_MASK |	\
+	 RX4_COHERENT_INT_MASK | RX7_COHERENT_INT_MASK |	\
+	 RX8_COHERENT_INT_MASK | RX9_COHERENT_INT_MASK |	\
+	 RX15_COHERENT_INT_MASK | INT_TX_MASK)
+
+/* QDMA_CSR_INT_ENABLE2 */
+#define RX15_NO_CPU_DSCP_INT_MASK	BIT(31)
+#define RX14_NO_CPU_DSCP_INT_MASK	BIT(30)
+#define RX13_NO_CPU_DSCP_INT_MASK	BIT(29)
+#define RX12_NO_CPU_DSCP_INT_MASK	BIT(28)
+#define RX11_NO_CPU_DSCP_INT_MASK	BIT(27)
+#define RX10_NO_CPU_DSCP_INT_MASK	BIT(26)
+#define RX9_NO_CPU_DSCP_INT_MASK	BIT(25)
+#define RX8_NO_CPU_DSCP_INT_MASK	BIT(24)
+#define RX7_NO_CPU_DSCP_INT_MASK	BIT(23)
+#define RX6_NO_CPU_DSCP_INT_MASK	BIT(22)
+#define RX5_NO_CPU_DSCP_INT_MASK	BIT(21)
+#define RX4_NO_CPU_DSCP_INT_MASK	BIT(20)
+#define RX3_NO_CPU_DSCP_INT_MASK	BIT(19)
+#define RX2_NO_CPU_DSCP_INT_MASK	BIT(18)
+#define RX1_NO_CPU_DSCP_INT_MASK	BIT(17)
+#define RX0_NO_CPU_DSCP_INT_MASK	BIT(16)
+#define RX15_DONE_INT_MASK		BIT(15)
+#define RX14_DONE_INT_MASK		BIT(14)
+#define RX13_DONE_INT_MASK		BIT(13)
+#define RX12_DONE_INT_MASK		BIT(12)
+#define RX11_DONE_INT_MASK		BIT(11)
+#define RX10_DONE_INT_MASK		BIT(10)
+#define RX9_DONE_INT_MASK		BIT(9)
+#define RX8_DONE_INT_MASK		BIT(8)
+#define RX7_DONE_INT_MASK		BIT(7)
+#define RX6_DONE_INT_MASK		BIT(6)
+#define RX5_DONE_INT_MASK		BIT(5)
+#define RX4_DONE_INT_MASK		BIT(4)
+#define RX3_DONE_INT_MASK		BIT(3)
+#define RX2_DONE_INT_MASK		BIT(2)
+#define RX1_DONE_INT_MASK		BIT(1)
+#define RX0_DONE_INT_MASK		BIT(0)
+
+#define RX_DONE_INT_MASK					\
+	(RX0_DONE_INT_MASK | RX1_DONE_INT_MASK |		\
+	 RX2_DONE_INT_MASK | RX3_DONE_INT_MASK |		\
+	 RX4_DONE_INT_MASK | RX7_DONE_INT_MASK |		\
+	 RX8_DONE_INT_MASK | RX9_DONE_INT_MASK |		\
+	 RX15_DONE_INT_MASK)
+#define INT_IDX1_MASK						\
+	(RX_DONE_INT_MASK |					\
+	 RX0_NO_CPU_DSCP_INT_MASK | RX1_NO_CPU_DSCP_INT_MASK |	\
+	 RX2_NO_CPU_DSCP_INT_MASK | RX3_NO_CPU_DSCP_INT_MASK |	\
+	 RX4_NO_CPU_DSCP_INT_MASK | RX7_NO_CPU_DSCP_INT_MASK |	\
+	 RX8_NO_CPU_DSCP_INT_MASK | RX9_NO_CPU_DSCP_INT_MASK |	\
+	 RX15_NO_CPU_DSCP_INT_MASK)
+
+/* QDMA_CSR_INT_ENABLE5 */
+#define TX31_COHERENT_INT_MASK		BIT(31)
+#define TX30_COHERENT_INT_MASK		BIT(30)
+#define TX29_COHERENT_INT_MASK		BIT(29)
+#define TX28_COHERENT_INT_MASK		BIT(28)
+#define TX27_COHERENT_INT_MASK		BIT(27)
+#define TX26_COHERENT_INT_MASK		BIT(26)
+#define TX25_COHERENT_INT_MASK		BIT(25)
+#define TX24_COHERENT_INT_MASK		BIT(24)
+#define TX23_COHERENT_INT_MASK		BIT(23)
+#define TX22_COHERENT_INT_MASK		BIT(22)
+#define TX21_COHERENT_INT_MASK		BIT(21)
+#define TX20_COHERENT_INT_MASK		BIT(20)
+#define TX19_COHERENT_INT_MASK		BIT(19)
+#define TX18_COHERENT_INT_MASK		BIT(18)
+#define TX17_COHERENT_INT_MASK		BIT(17)
+#define TX16_COHERENT_INT_MASK		BIT(16)
+#define TX15_COHERENT_INT_MASK		BIT(15)
+#define TX14_COHERENT_INT_MASK		BIT(14)
+#define TX13_COHERENT_INT_MASK		BIT(13)
+#define TX12_COHERENT_INT_MASK		BIT(12)
+#define TX11_COHERENT_INT_MASK		BIT(11)
+#define TX10_COHERENT_INT_MASK		BIT(10)
+#define TX9_COHERENT_INT_MASK		BIT(9)
+#define TX8_COHERENT_INT_MASK		BIT(8)
+
+#define INT_IDX4_MASK						\
+	(TX8_COHERENT_INT_MASK | TX9_COHERENT_INT_MASK |	\
+	 TX10_COHERENT_INT_MASK | TX11_COHERENT_INT_MASK |	\
+	 TX12_COHERENT_INT_MASK | TX13_COHERENT_INT_MASK |	\
+	 TX14_COHERENT_INT_MASK | TX15_COHERENT_INT_MASK |	\
+	 TX16_COHERENT_INT_MASK | TX17_COHERENT_INT_MASK |	\
+	 TX18_COHERENT_INT_MASK | TX19_COHERENT_INT_MASK |	\
+	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
+	 TX22_COHERENT_INT_MASK | TX23_COHERENT_INT_MASK |	\
+	 TX24_COHERENT_INT_MASK | TX25_COHERENT_INT_MASK |	\
+	 TX26_COHERENT_INT_MASK | TX27_COHERENT_INT_MASK |	\
+	 TX28_COHERENT_INT_MASK | TX29_COHERENT_INT_MASK |	\
+	 TX30_COHERENT_INT_MASK | TX31_COHERENT_INT_MASK)
+
+#define REG_TX_IRQ_BASE(_n)		((_n) ? 0x0048 : 0x0050)
+
+#define REG_TX_IRQ_CFG(_n)		((_n) ? 0x004c : 0x0054)
+#define TX_IRQ_THR_MASK			GENMASK(27, 16)
+#define TX_IRQ_DEPTH_MASK		GENMASK(11, 0)
+
+#define REG_IRQ_CLEAR_LEN(_n)		((_n) ? 0x0064 : 0x0058)
+#define IRQ_CLEAR_LEN_MASK		GENMASK(7, 0)
+
+#define REG_IRQ_STATUS(_n)		((_n) ? 0x0068 : 0x005c)
+#define IRQ_ENTRY_LEN_MASK		GENMASK(27, 16)
+#define IRQ_HEAD_IDX_MASK		GENMASK(11, 0)
+
+#define REG_TX_RING_BASE(_n)	\
+	(((_n) < 8) ? 0x0100 + ((_n) << 5) : 0x0b00 + (((_n) - 8) << 5))
+
+#define REG_TX_RING_BLOCKING(_n)	\
+	(((_n) < 8) ? 0x0104 + ((_n) << 5) : 0x0b04 + (((_n) - 8) << 5))
+
+#define TX_RING_IRQ_BLOCKING_MAP_MASK			BIT(6)
+#define TX_RING_IRQ_BLOCKING_CFG_MASK			BIT(4)
+#define TX_RING_IRQ_BLOCKING_TX_DROP_EN_MASK		BIT(2)
+#define TX_RING_IRQ_BLOCKING_MAX_TH_TXRING_EN_MASK	BIT(1)
+#define TX_RING_IRQ_BLOCKING_MIN_TH_TXRING_EN_MASK	BIT(0)
+
+#define REG_TX_CPU_IDX(_n)	\
+	(((_n) < 8) ? 0x0108 + ((_n) << 5) : 0x0b08 + (((_n) - 8) << 5))
+
+#define TX_RING_CPU_IDX_MASK		GENMASK(15, 0)
+
+#define REG_TX_DMA_IDX(_n)	\
+	(((_n) < 8) ? 0x010c + ((_n) << 5) : 0x0b0c + (((_n) - 8) << 5))
+
+#define TX_RING_DMA_IDX_MASK		GENMASK(15, 0)
+
+#define IRQ_RING_IDX_MASK		GENMASK(20, 16)
+#define IRQ_DESC_IDX_MASK		GENMASK(15, 0)
+
+#define REG_RX_RING_BASE(_n)	\
+	(((_n) < 16) ? 0x0200 + ((_n) << 5) : 0x0e00 + (((_n) - 16) << 5))
+
+#define REG_RX_RING_SIZE(_n)	\
+	(((_n) < 16) ? 0x0204 + ((_n) << 5) : 0x0e04 + (((_n) - 16) << 5))
+
+#define RX_RING_THR_MASK		GENMASK(31, 16)
+#define RX_RING_SIZE_MASK		GENMASK(15, 0)
+
+#define REG_RX_CPU_IDX(_n)	\
+	(((_n) < 16) ? 0x0208 + ((_n) << 5) : 0x0e08 + (((_n) - 16) << 5))
+
+#define RX_RING_CPU_IDX_MASK		GENMASK(15, 0)
+
+#define REG_RX_DMA_IDX(_n)	\
+	(((_n) < 16) ? 0x020c + ((_n) << 5) : 0x0e0c + (((_n) - 16) << 5))
+
+#define REG_RX_DELAY_INT_IDX(_n)	\
+	(((_n) < 16) ? 0x0210 + ((_n) << 5) : 0x0e10 + (((_n) - 16) << 5))
+
+#define RX_DELAY_INT_MASK		GENMASK(15, 0)
+
+#define RX_RING_DMA_IDX_MASK		GENMASK(15, 0)
+
+#define REG_INGRESS_TRTCM_CFG		0x0070
+#define INGRESS_TRTCM_EN_MASK		BIT(31)
+#define INGRESS_TRTCM_MODE_MASK		BIT(30)
+#define INGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define INGRESS_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define REG_QUEUE_CLOSE_CFG(_n)		(0x00a0 + ((_n) & 0xfc))
+#define TXQ_DISABLE_CHAN_QUEUE_MASK(_n, _m)	BIT((_m) + (((_n) & 0x3) << 3))
+
+#define REG_TXQ_DIS_CFG_BASE(_n)	((_n) ? 0x20a0 : 0x00a0)
+#define REG_TXQ_DIS_CFG(_n, _m)		(REG_TXQ_DIS_CFG_BASE((_n)) + (_m) << 2)
+
+#define REG_CNTR_CFG(_n)		(0x0400 + ((_n) << 3))
+#define CNTR_EN_MASK			BIT(31)
+#define CNTR_ALL_CHAN_EN_MASK		BIT(30)
+#define CNTR_ALL_QUEUE_EN_MASK		BIT(29)
+#define CNTR_ALL_DSCP_RING_EN_MASK	BIT(28)
+#define CNTR_SRC_MASK			GENMASK(27, 24)
+#define CNTR_DSCP_RING_MASK		GENMASK(20, 16)
+#define CNTR_CHAN_MASK			GENMASK(7, 3)
+#define CNTR_QUEUE_MASK			GENMASK(2, 0)
+
+#define REG_CNTR_VAL(_n)		(0x0404 + ((_n) << 3))
+
+#define REG_LMGR_INIT_CFG		0x1000
+#define LMGR_INIT_START			BIT(31)
+#define LMGR_SRAM_MODE_MASK		BIT(30)
+#define HW_FWD_PKTSIZE_OVERHEAD_MASK	GENMASK(27, 20)
+#define HW_FWD_DESC_NUM_MASK		GENMASK(16, 0)
+
+#define REG_FWD_DSCP_LOW_THR		0x1004
+#define FWD_DSCP_LOW_THR_MASK		GENMASK(17, 0)
+
+#define REG_EGRESS_RATE_METER_CFG		0x100c
+#define EGRESS_RATE_METER_EN_MASK		BIT(31)
+#define EGRESS_RATE_METER_EQ_RATE_EN_MASK	BIT(17)
+#define EGRESS_RATE_METER_WINDOW_SZ_MASK	GENMASK(16, 12)
+#define EGRESS_RATE_METER_TIMESLICE_MASK	GENMASK(10, 0)
+
+#define REG_EGRESS_TRTCM_CFG		0x1010
+#define EGRESS_TRTCM_EN_MASK		BIT(31)
+#define EGRESS_TRTCM_MODE_MASK		BIT(30)
+#define EGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define EGRESS_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define TRTCM_PARAM_RW_MASK		BIT(31)
+#define TRTCM_PARAM_RW_DONE_MASK	BIT(30)
+#define TRTCM_PARAM_TYPE_MASK		GENMASK(29, 28)
+#define TRTCM_METER_GROUP_MASK		GENMASK(27, 26)
+#define TRTCM_PARAM_INDEX_MASK		GENMASK(23, 17)
+#define TRTCM_PARAM_RATE_TYPE_MASK	BIT(16)
+
+#define REG_TRTCM_CFG_PARAM(_n)		((_n) + 0x4)
+#define REG_TRTCM_DATA_LOW(_n)		((_n) + 0x8)
+#define REG_TRTCM_DATA_HIGH(_n)		((_n) + 0xc)
+
+#define REG_TXWRR_MODE_CFG		0x1020
+#define TWRR_WEIGHT_SCALE_MASK		BIT(31)
+#define TWRR_WEIGHT_BASE_MASK		BIT(3)
+
+#define REG_TXWRR_WEIGHT_CFG		0x1024
+#define TWRR_RW_CMD_MASK		BIT(31)
+#define TWRR_RW_CMD_DONE		BIT(30)
+#define TWRR_CHAN_IDX_MASK		GENMASK(23, 19)
+#define TWRR_QUEUE_IDX_MASK		GENMASK(18, 16)
+#define TWRR_VALUE_MASK			GENMASK(15, 0)
+
+#define REG_PSE_BUF_USAGE_CFG		0x1028
+#define PSE_BUF_ESTIMATE_EN_MASK	BIT(29)
+
+#define REG_CHAN_QOS_MODE(_n)		(0x1040 + ((_n) << 2))
+#define CHAN_QOS_MODE_MASK(_n)		GENMASK(2 + ((_n) << 2), (_n) << 2)
+
+#define REG_GLB_TRTCM_CFG		0x1080
+#define GLB_TRTCM_EN_MASK		BIT(31)
+#define GLB_TRTCM_MODE_MASK		BIT(30)
+#define GLB_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define GLB_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define REG_TXQ_CNGST_CFG		0x10a0
+#define TXQ_CNGST_DROP_EN		BIT(31)
+#define TXQ_CNGST_DEI_DROP_EN		BIT(30)
+
+#define REG_SLA_TRTCM_CFG		0x1150
+#define SLA_TRTCM_EN_MASK		BIT(31)
+#define SLA_TRTCM_MODE_MASK		BIT(30)
+#define SLA_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define SLA_FAST_TICK_MASK		GENMASK(15, 0)
+
+/* CTRL */
+#define QDMA_DESC_DONE_MASK		BIT(31)
+#define QDMA_DESC_DROP_MASK		BIT(30) /* tx: drop - rx: overflow */
+#define QDMA_DESC_MORE_MASK		BIT(29) /* more SG elements */
+#define QDMA_DESC_DEI_MASK		BIT(25)
+#define QDMA_DESC_NO_DROP_MASK		BIT(24)
+#define QDMA_DESC_LEN_MASK		GENMASK(15, 0)
+/* DATA */
+#define QDMA_DESC_NEXT_ID_MASK		GENMASK(15, 0)
+/* TX MSG0 */
+#define QDMA_ETH_TXMSG_MIC_IDX_MASK	BIT(30)
+#define QDMA_ETH_TXMSG_SP_TAG_MASK	GENMASK(29, 14)
+#define QDMA_ETH_TXMSG_ICO_MASK		BIT(13)
+#define QDMA_ETH_TXMSG_UCO_MASK		BIT(12)
+#define QDMA_ETH_TXMSG_TCO_MASK		BIT(11)
+#define QDMA_ETH_TXMSG_TSO_MASK		BIT(10)
+#define QDMA_ETH_TXMSG_FAST_MASK	BIT(9)
+#define QDMA_ETH_TXMSG_OAM_MASK		BIT(8)
+#define QDMA_ETH_TXMSG_CHAN_MASK	GENMASK(7, 3)
+#define QDMA_ETH_TXMSG_QUEUE_MASK	GENMASK(2, 0)
+/* TX MSG1 */
+#define QDMA_ETH_TXMSG_NO_DROP		BIT(31)
+#define QDMA_ETH_TXMSG_METER_MASK	GENMASK(30, 24)	/* 0x7f no meters */
+#define QDMA_ETH_TXMSG_FPORT_MASK	GENMASK(23, 20)
+#define QDMA_ETH_TXMSG_NBOQ_MASK	GENMASK(19, 15)
+#define QDMA_ETH_TXMSG_HWF_MASK		BIT(14)
+#define QDMA_ETH_TXMSG_HOP_MASK		BIT(13)
+#define QDMA_ETH_TXMSG_PTP_MASK		BIT(12)
+#define QDMA_ETH_TXMSG_ACNT_G1_MASK	GENMASK(10, 6)	/* 0x1f do not count */
+#define QDMA_ETH_TXMSG_ACNT_G0_MASK	GENMASK(5, 0)	/* 0x3f do not count */
+
+/* RX MSG1 */
+#define QDMA_ETH_RXMSG_DEI_MASK		BIT(31)
+#define QDMA_ETH_RXMSG_IP6_MASK		BIT(30)
+#define QDMA_ETH_RXMSG_IP4_MASK		BIT(29)
+#define QDMA_ETH_RXMSG_IP4F_MASK	BIT(28)
+#define QDMA_ETH_RXMSG_L4_VALID_MASK	BIT(27)
+#define QDMA_ETH_RXMSG_L4F_MASK		BIT(26)
+#define QDMA_ETH_RXMSG_SPORT_MASK	GENMASK(25, 21)
+#define QDMA_ETH_RXMSG_CRSN_MASK	GENMASK(20, 16)
+#define QDMA_ETH_RXMSG_PPE_ENTRY_MASK	GENMASK(15, 0)
+
+struct airoha_qdma_desc {
+	__le32 rsv;
+	__le32 ctrl;
+	__le32 addr;
+	__le32 data;
+	__le32 msg0;
+	__le32 msg1;
+	__le32 msg2;
+	__le32 msg3;
+};
+
+/* CTRL0 */
+#define QDMA_FWD_DESC_CTX_MASK		BIT(31)
+#define QDMA_FWD_DESC_RING_MASK		GENMASK(30, 28)
+#define QDMA_FWD_DESC_IDX_MASK		GENMASK(27, 16)
+#define QDMA_FWD_DESC_LEN_MASK		GENMASK(15, 0)
+/* CTRL1 */
+#define QDMA_FWD_DESC_FIRST_IDX_MASK	GENMASK(15, 0)
+/* CTRL2 */
+#define QDMA_FWD_DESC_MORE_PKT_NUM_MASK	GENMASK(2, 0)
+
+struct airoha_qdma_fwd_desc {
+	__le32 addr;
+	__le32 ctrl0;
+	__le32 ctrl1;
+	__le32 ctrl2;
+	__le32 msg0;
+	__le32 msg1;
+	__le32 rsv0;
+	__le32 rsv1;
+};
+
+#endif /* AIROHA_REGS_H */

-- 
2.48.1


