Return-Path: <devicetree+bounces-144022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3CA2C8C6
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6B4B7A4FC4
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47AE9191F95;
	Fri,  7 Feb 2025 16:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3/Hz9Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D218FDA9;
	Fri,  7 Feb 2025 16:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738945623; cv=none; b=Z5Cmqe9RcbAUUuJgVxiLLAB+pqlNbJ3/nhBkh82ZDEJ7xT12HIzObGSK6ls+znA0o4iMxgdTktefVi5EmqXQknZ+3gdTuTGbKSiNoEokNLR/3KdIqSJ1IOn8sKbN9ryOWt+C04Rfc1Maljg0sWYcmuCCmZpZPrFhrIroM37bKwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738945623; c=relaxed/simple;
	bh=C1aFaWCNYf7kg2GH5A7lQw7Iuw2I/SkqM+nxoGYrGqc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PAdrR72tUuMvwqjctxY6UZbj0O37gZGKbgyoIXhj/q/dEXpvi9Q3vOIvn423RbOPyeDCBWMaOALxuWOUlqYr5BatLzMGTO0LcrOfTkArhMz1c0f2tsHXps0t5xW7W+qr145dDPYjB1BMGlHIYUq3bR1hAqhKKWevsnNesE8/hDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3/Hz9Fq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08BCBC4CED1;
	Fri,  7 Feb 2025 16:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738945622;
	bh=C1aFaWCNYf7kg2GH5A7lQw7Iuw2I/SkqM+nxoGYrGqc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=V3/Hz9FqDg2dATW/crnAHcauMmneFQxg4ibgv9UHH4PkvI46bl87+U9FbGuh4pb4g
	 Ct5cpZg5xvIYz2rTJRhUDIvVupV/i+aXunZltFP2pYIpmFGMmMpT5oX/xpyYGF2rlt
	 ST7pxW4kYOncim6ShoYPIHwY22Mhk4nOV1UoK9XCUKS5VrlqC5+rYbhZK3zfN7zq76
	 FkBjcLlXujTd2Bz6eR7yR4ezXbpJbijePp1Rd8DvGpxekJkeCVF3BHJCo9Q6nj8XL2
	 aNsSDYkcwGlqrvcLwfUq1zxp8aSXGoRVE1Ozow2kw+6UvWkYDW111PWIiY3mSRP2NO
	 TyGxS2xiuGhVg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 07 Feb 2025 17:26:21 +0100
Subject: [PATCH net-next v2 06/15] net: dsa: mt7530: Enable Rx sptag for
 EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-airoha-en7581-flowtable-offload-v2-6-3a2239692a67@kernel.org>
References: <20250207-airoha-en7581-flowtable-offload-v2-0-3a2239692a67@kernel.org>
In-Reply-To: <20250207-airoha-en7581-flowtable-offload-v2-0-3a2239692a67@kernel.org>
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
index 1c83af805209cae40c56138fa8f72261e396f58c..eec8ba9d68088f1dbb2a774a32d3d60af1a9784c 100644
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


