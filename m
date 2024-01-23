Return-Path: <devicetree+bounces-34197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB9C8390B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33E021C21AB2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 14:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6CA5F845;
	Tue, 23 Jan 2024 14:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b="bPMqBnpz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [45.157.188.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCB05F578
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 14:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706018420; cv=none; b=NsrIJCXfC3fZNuizQJL93TMtJi7i3E55BMdonJ9gKvuijrsl/0Lr+7DVNHwHA7XayPj2m00q3xfsTU/rTE7QDcbhXx/Q5chR6QqHmQiW+imAW0vcizZcRBEoD4OgS0HRIVyYPJ2iiF8k1lC6MPJjewCQ65qios7o6ADAiWUaS0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706018420; c=relaxed/simple;
	bh=+q/tYEcIVTExKnWzMTwhtlDg9ZknBc4T0oiIo10zzGY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gCJiD1c/U3iZRSY0AM/ztYfUPkgyZ5EDDnD3tT+6o8AHnQldXk2N/825IkC1u2v8+bfcZxAn0uO8m0HX7X5UwLeMbWR+RRKY72XeuDtOP4x/fBRvR595/Vw/kQD8fvAihuzuKMZb0yiAsxQrfEpqCqtiRxMvGFDSAH+zOnxKAv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch; spf=pass smtp.mailfrom=pschenker.ch; dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b=bPMqBnpz; arc=none smtp.client-ip=45.157.188.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pschenker.ch
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TK7l039CCzMq1N5;
	Tue, 23 Jan 2024 14:50:20 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TK7kz4WkvzMppBk;
	Tue, 23 Jan 2024 14:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
	s=20220412; t=1706017820;
	bh=+q/tYEcIVTExKnWzMTwhtlDg9ZknBc4T0oiIo10zzGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bPMqBnpzFFq0nHUd5n3DB8GbbU9QtVQ5oVk802ATafHT4iK49wowRj0zRphKAGnS6
	 dvj+8DPViTvRnsmuT8N2jT7Za0H9qs/8ufomhQwRjGgP4GmhUyQ+j2OX8PTOp8UvW+
	 bmKAMMpzD/3UzJ6gKIshZ6WugdZp+0cetnaxBfr4=
From: Philippe Schenker <dev@pschenker.ch>
To: netdev@vger.kernel.org
Cc: Paolo Abeni <pabeni@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Woojung Huh <woojung.huh@microchip.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	linux-kernel@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	Marek Vasut <marex@denx.de>,
	Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Philippe Schenker <philippe.schenker@impulsing.ch>
Subject: [PATCH net-next v1 2/2] net: dsa: Add KSZ8567 switch support
Date: Tue, 23 Jan 2024 14:50:14 +0100
Message-Id: <20240123135014.614858-2-dev@pschenker.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123135014.614858-1-dev@pschenker.ch>
References: <20240123135014.614858-1-dev@pschenker.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha

From: Philippe Schenker <philippe.schenker@impulsing.ch>

This commit introduces support for the KSZ8567, a robust 7-port
Ethernet switch. The KSZ8567 features two RGMII/MII/RMII interfaces,
each capable of gigabit speeds, complemented by five 10/100 Mbps
MAC/PHYs.

Signed-off-by: Philippe Schenker <philippe.schenker@impulsing.ch>

---

 drivers/net/dsa/microchip/ksz9477_i2c.c     |  4 ++
 drivers/net/dsa/microchip/ksz_common.c      | 42 ++++++++++++++++++++-
 drivers/net/dsa/microchip/ksz_common.h      |  1 +
 drivers/net/dsa/microchip/ksz_spi.c         |  5 +++
 include/linux/platform_data/microchip-ksz.h |  1 +
 5 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/net/dsa/microchip/ksz9477_i2c.c b/drivers/net/dsa/microchip/ksz9477_i2c.c
index cac4a607e54a..82bebee4615c 100644
--- a/drivers/net/dsa/microchip/ksz9477_i2c.c
+++ b/drivers/net/dsa/microchip/ksz9477_i2c.c
@@ -103,6 +103,10 @@ static const struct of_device_id ksz9477_dt_ids[] = {
 		.compatible = "microchip,ksz8563",
 		.data = &ksz_switch_chips[KSZ8563]
 	},
+	{
+		.compatible = "microchip,ksz8567",
+		.data = &ksz_switch_chips[KSZ8567]
+	},
 	{
 		.compatible = "microchip,ksz9567",
 		.data = &ksz_switch_chips[KSZ9567]
diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
index 245dfb7a7a31..9b96de86dfc8 100644
--- a/drivers/net/dsa/microchip/ksz_common.c
+++ b/drivers/net/dsa/microchip/ksz_common.c
@@ -1214,6 +1214,38 @@ const struct ksz_chip_data ksz_switch_chips[] = {
 		.rd_table = &ksz8563_register_set,
 	},
 
+	[KSZ8567] = {
+		.chip_id = KSZ8567_CHIP_ID,
+		.dev_name = "KSZ8567",
+		.num_vlans = 4096,
+		.num_alus = 4096,
+		.num_statics = 16,
+		.cpu_ports = 0x7F,	/* can be configured as cpu port */
+		.port_cnt = 7,		/* total port count */
+		.port_nirqs = 3,
+		.num_tx_queues = 4,
+		.tc_cbs_supported = true,
+		.tc_ets_supported = true,
+		.ops = &ksz9477_dev_ops,
+		.mib_names = ksz9477_mib_names,
+		.mib_cnt = ARRAY_SIZE(ksz9477_mib_names),
+		.reg_mib_cnt = MIB_COUNTER_NUM,
+		.regs = ksz9477_regs,
+		.masks = ksz9477_masks,
+		.shifts = ksz9477_shifts,
+		.xmii_ctrl0 = ksz9477_xmii_ctrl0,
+		.xmii_ctrl1 = ksz9477_xmii_ctrl1,
+		.supports_mii	= {false, false, false, false,
+				   false, true, true},
+		.supports_rmii	= {false, false, false, false,
+				   false, true, true},
+		.supports_rgmii = {false, false, false, false,
+				   false, true, true},
+		.internal_phy	= {true, true, true, true,
+				   true, false, false},
+		.gbit_capable	= {false, false, false, false, false, true, true},
+	},
+
 	[KSZ8795] = {
 		.chip_id = KSZ8795_CHIP_ID,
 		.dev_name = "KSZ8795",
@@ -2649,6 +2681,7 @@ static void ksz_port_teardown(struct dsa_switch *ds, int port)
 
 	switch (dev->chip_id) {
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
@@ -2705,7 +2738,8 @@ static enum dsa_tag_protocol ksz_get_tag_protocol(struct dsa_switch *ds,
 	    dev->chip_id == KSZ9563_CHIP_ID)
 		proto = DSA_TAG_PROTO_KSZ9893;
 
-	if (dev->chip_id == KSZ9477_CHIP_ID ||
+	if (dev->chip_id == KSZ8567_CHIP_ID ||
+	    dev->chip_id == KSZ9477_CHIP_ID ||
 	    dev->chip_id == KSZ9896_CHIP_ID ||
 	    dev->chip_id == KSZ9897_CHIP_ID ||
 	    dev->chip_id == KSZ9567_CHIP_ID)
@@ -2813,6 +2847,7 @@ static int ksz_max_mtu(struct dsa_switch *ds, int port)
 	case KSZ8830_CHIP_ID:
 		return KSZ8863_HUGE_PACKET_SIZE - VLAN_ETH_HLEN - ETH_FCS_LEN;
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
@@ -2839,6 +2874,7 @@ static int ksz_validate_eee(struct dsa_switch *ds, int port)
 
 	switch (dev->chip_id) {
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
@@ -3183,6 +3219,7 @@ static int ksz_switch_detect(struct ksz_device *dev)
 		case KSZ9896_CHIP_ID:
 		case KSZ9897_CHIP_ID:
 		case KSZ9567_CHIP_ID:
+		case KSZ8567_CHIP_ID:
 		case LAN9370_CHIP_ID:
 		case LAN9371_CHIP_ID:
 		case LAN9372_CHIP_ID:
@@ -3220,6 +3257,7 @@ static int ksz_cls_flower_add(struct dsa_switch *ds, int port,
 
 	switch (dev->chip_id) {
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
@@ -3239,6 +3277,7 @@ static int ksz_cls_flower_del(struct dsa_switch *ds, int port,
 
 	switch (dev->chip_id) {
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
@@ -4142,6 +4181,7 @@ static int ksz_parse_drive_strength(struct ksz_device *dev)
 	case KSZ8794_CHIP_ID:
 	case KSZ8765_CHIP_ID:
 	case KSZ8563_CHIP_ID:
+	case KSZ8567_CHIP_ID:
 	case KSZ9477_CHIP_ID:
 	case KSZ9563_CHIP_ID:
 	case KSZ9567_CHIP_ID:
diff --git a/drivers/net/dsa/microchip/ksz_common.h b/drivers/net/dsa/microchip/ksz_common.h
index 15612101a155..060c5de9aa05 100644
--- a/drivers/net/dsa/microchip/ksz_common.h
+++ b/drivers/net/dsa/microchip/ksz_common.h
@@ -187,6 +187,7 @@ struct ksz_device {
 /* List of supported models */
 enum ksz_model {
 	KSZ8563,
+	KSZ8567,
 	KSZ8795,
 	KSZ8794,
 	KSZ8765,
diff --git a/drivers/net/dsa/microchip/ksz_spi.c b/drivers/net/dsa/microchip/ksz_spi.c
index 6f6d878e742c..c8166fb440ab 100644
--- a/drivers/net/dsa/microchip/ksz_spi.c
+++ b/drivers/net/dsa/microchip/ksz_spi.c
@@ -164,6 +164,10 @@ static const struct of_device_id ksz_dt_ids[] = {
 		.compatible = "microchip,ksz8563",
 		.data = &ksz_switch_chips[KSZ8563]
 	},
+	{
+		.compatible = "microchip,ksz8567",
+		.data = &ksz_switch_chips[KSZ8567]
+	},
 	{
 		.compatible = "microchip,ksz9567",
 		.data = &ksz_switch_chips[KSZ9567]
@@ -204,6 +208,7 @@ static const struct spi_device_id ksz_spi_ids[] = {
 	{ "ksz9893" },
 	{ "ksz9563" },
 	{ "ksz8563" },
+	{ "ksz8567" },
 	{ "ksz9567" },
 	{ "lan9370" },
 	{ "lan9371" },
diff --git a/include/linux/platform_data/microchip-ksz.h b/include/linux/platform_data/microchip-ksz.h
index f177416635a2..c4466e56d9d7 100644
--- a/include/linux/platform_data/microchip-ksz.h
+++ b/include/linux/platform_data/microchip-ksz.h
@@ -24,6 +24,7 @@
 
 enum ksz_chip_id {
 	KSZ8563_CHIP_ID = 0x8563,
+	KSZ8567_CHIP_ID = 0x00856700,
 	KSZ8795_CHIP_ID = 0x8795,
 	KSZ8794_CHIP_ID = 0x8794,
 	KSZ8765_CHIP_ID = 0x8765,
-- 
2.34.1


