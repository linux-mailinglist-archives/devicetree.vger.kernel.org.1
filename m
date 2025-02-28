Return-Path: <devicetree+bounces-152566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6067A497E3
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7C297AA003
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 10:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5404026136B;
	Fri, 28 Feb 2025 10:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfsVwlbb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5E9260375;
	Fri, 28 Feb 2025 10:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740740086; cv=none; b=oKngegcij0z4xwiwUVCHwuu9VcfnrCTswL1hN2UFpaT6I+csJbQXUfk8ssCoC1wWQ4aWiAv/x6AY9vCRBXLFS+uvWx9WBYlkMmHy0TllbSktGbSey72F72xTQKdLgR1qMIXlnNS+8cgXtw0B8HXSdHA9x9j0xOjNohQcnnOVWIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740740086; c=relaxed/simple;
	bh=Syook/k3osDoz8HpkUWZ96mxKRz3XOL/uBmVWEWdJH4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sjO19duv6FbHOmO+/4M1ETfprT/dV61ClzymtzbTLglGaR4MjFUWIIS/qib6pZlInG1d/O5Gt/+kYRSlzfcUALHJ3H6UtqBTQsZzVArHl0efT/TnN6ZH/aIEYRoIrE6QypJ4kL6QR+U4X5qmlQi6JFQPSa97XC6Nq8wdEZ3k+Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfsVwlbb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42A5DC4CED6;
	Fri, 28 Feb 2025 10:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740740085;
	bh=Syook/k3osDoz8HpkUWZ96mxKRz3XOL/uBmVWEWdJH4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FfsVwlbb8rvfj7r4rO4Xer76kqqExjFpcIDtJBFuxjY3GR06Jay5n4Wg05DLtsLaA
	 uewgnHn9DIM7Shs8FOqCCXqJOcipEF0Sg7SpD3KJuoljTDRNJJ30F36HBh0sN86xMI
	 jlYxa9FaQqVLm3uPDjR+oSjHzRzouBj5qX0UhOxR26ZV+BrubaEJTFVAagQUSpjFyE
	 xufC74aRbVqibzDp04hJHgr79WzcHm6FeuBlxw1WiAYMwUmm6Dq0AzrsSCniCQQuuv
	 9eDtEITH30HsAfqBu4+kFwpS0z7t5HCxMre3gy/j6xSJJg2/uRue7glRxhMsO6N0RP
	 DA5PaL5SHNzCQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 28 Feb 2025 11:54:14 +0100
Subject: [PATCH net-next v8 06/15] net: dsa: mt7530: Enable Rx sptag for
 EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-airoha-en7581-flowtable-offload-v8-6-01dc1653f46e@kernel.org>
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

Packet Processor Engine (PPE) module used for hw acceleration on EN7581
mac block, in order to properly parse packets, requires DSA untagged
packets on TX side and read DSA tag from DMA descriptor on RX side.
For this reason, enable RX Special Tag (SPTAG) for EN7581 SoC.
This is a preliminary patch to enable netfilter flowtable hw offloading
on EN7581 SoC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/dsa/mt7530.c | 5 +++++
 drivers/net/dsa/mt7530.h | 4 ++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 8422262febaf73821887e660c4db77047a91cffb..aaa36c27b0f9f6543db810a135b371bf1d326fa8 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -2586,6 +2586,11 @@ mt7531_setup_common(struct dsa_switch *ds)
 	/* Allow mirroring frames received on the local port (monitor port). */
 	mt7530_set(priv, MT753X_AGC, LOCAL_EN);
 
+	/* Enable Special Tag for rx frames */
+	if (priv->id == ID_EN7581)
+		mt7530_write(priv, MT753X_CPORT_SPTAG_CFG,
+			     CPORT_SW2FE_STAG_EN | CPORT_FE2SW_STAG_EN);
+
 	/* Flush the FDB table */
 	ret = mt7530_fdb_cmd(priv, MT7530_FDB_FLUSH, NULL);
 	if (ret < 0)
diff --git a/drivers/net/dsa/mt7530.h b/drivers/net/dsa/mt7530.h
index 448200689f492dcb73ef056d7284090c1c662e67..349d72a35771f35d478244ab29be1801b3466a5f 100644
--- a/drivers/net/dsa/mt7530.h
+++ b/drivers/net/dsa/mt7530.h
@@ -627,6 +627,10 @@ enum mt7531_xtal_fsel {
 #define  MT7531_GPIO12_RG_RXD3_MASK	GENMASK(19, 16)
 #define  MT7531_EXT_P_MDIO_12		(2 << 16)
 
+#define MT753X_CPORT_SPTAG_CFG		0x7c10
+#define  CPORT_SW2FE_STAG_EN		BIT(1)
+#define  CPORT_FE2SW_STAG_EN		BIT(0)
+
 /* Registers for LED GPIO control (MT7530 only)
  * All registers follow this pattern:
  * [ 2: 0]  port 0

-- 
2.48.1


