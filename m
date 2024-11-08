Return-Path: <devicetree+bounces-120324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 558A19C20A7
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 16:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11A362854F7
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 15:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7155C21F4A5;
	Fri,  8 Nov 2024 15:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JI0s33Ei"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B583621B425;
	Fri,  8 Nov 2024 15:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731080236; cv=none; b=PWevgnts+s1hkOSW9FPJ7+VvllIstxrsBX3PWgYUAE/6ktQw2fgOPRh0HQoMqcDBlMUyAHhKrdS4M+Uu3id8goF3l5/w1d8Ou9Dd6/f7q9YgH638Wlz/62Hl7NRb6i4Mxsr0M6+Zk8J5Etg7t3M0LvBs9WXW3hQ2+yLYxkeGDMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731080236; c=relaxed/simple;
	bh=ybftUMxFeXNrw4AE2s143r0M00oklLUIBb8THoHDFXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hAxdoXUBEGqaWN7nRfPXdNM9garrmKFupg0Ue/pxkBBuvv8rT4AGYWi9Yy54xngXEAXsDeHEC24Dn2ojUwIeAMYA1qomQA0zGiTsl97n8EbSKkgpuHZGbNCciYQ/lNVFVtKOMxxxNxtmRwJesshJrrcfuQHgTnrJ0lkCKZXW4ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JI0s33Ei; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4F48620010;
	Fri,  8 Nov 2024 15:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1731080232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eDMqNXN+UYqyQqUu1V62RNFnYP8XOvywWsZyr2uIKsA=;
	b=JI0s33Ei7I72AFzZotpxa62seEaJrpxbi0WRmcqPdDdV9He7FYGQJN4mTY0v/GsHVNLv7U
	ccAxU0MwIb5NrOpdS8WRk9l/HisXA/rpvvXuD8pSxP4mpCTNSX2yd9fmr7b1TogWDgqNQr
	A7qZyhQeDTX/tTKrnhUid6V8WQp/2NoSEXo26iGz9Z40kysaIFOJbB/XzzVZnzM0WAMiQZ
	k0WQk/y7X4MlecrpWf+W72jWTKkqROiyzRWzSEFWLFbjVp2QxHbwaGJ3Qav6XazDZZ7Vjf
	usti4+pQzHpxK7oMHVo7Eh+eEcUuCi98SLVDuz5VMp9qi/D9uVoWkBfI88/31g==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Fri, 08 Nov 2024 16:36:56 +0100
Subject: [PATCH 4/9] i2c: use client addresses directly in ATR interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-fpc202-v1-4-fe42c698bc92@bootlin.com>
References: <20241108-fpc202-v1-0-fe42c698bc92@bootlin.com>
In-Reply-To: <20241108-fpc202-v1-0-fe42c698bc92@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Kory Maincent <kory.maincent@bootlin.com>, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.14.2
X-GND-Sasl: romain.gantois@bootlin.com

The I2C Address Translator (ATR) module defines mappings from i2c_client
structs to aliases. However, only the physical address of each i2c_client
struct is actually relevant to the workings of the ATR module. Moreover,
some drivers require address translation functionality but do not allocate
i2c_client structs, accessing the adapter directly instead. The SFP
subsystem is an example of this.

Replace the "i2c_client" field of the i2c_atr_alias_pair struct with a u16
"addr" field. Rewrite helper functions and callbacks as needed.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 drivers/i2c/i2c-atr.c         | 52 ++++++++++++++++---------------------------
 drivers/media/i2c/ds90ub960.c | 20 ++++++++---------
 include/linux/i2c-atr.h       | 20 ++++++++---------
 3 files changed, 39 insertions(+), 53 deletions(-)

diff --git a/drivers/i2c/i2c-atr.c b/drivers/i2c/i2c-atr.c
index f21475ae592183a45b5e46a20e7a0699fb88132c..894787246846b9965deb03a7ec7eb600b102ddad 100644
--- a/drivers/i2c/i2c-atr.c
+++ b/drivers/i2c/i2c-atr.c
@@ -21,16 +21,16 @@
 #define ATR_MAX_SYMLINK_LEN 11	/* Longest name is 10 chars: "channel-99" */
 
 /**
- * struct i2c_atr_alias_pair - Holds the alias assigned to a client.
+ * struct i2c_atr_alias_pair - Holds the alias assigned to a client address.
  * @node:   List node
- * @client: Pointer to the client on the child bus
+ * @addr:   Address of the client on the child bus.
  * @alias:  I2C alias address assigned by the driver.
  *          This is the address that will be used to issue I2C transactions
  *          on the parent (physical) bus.
  */
 struct i2c_atr_alias_pair {
 	struct list_head node;
-	const struct i2c_client *client;
+	u16 addr;
 	u16 alias;
 };
 
@@ -97,27 +97,13 @@ struct i2c_atr {
 	struct i2c_adapter *adapter[] __counted_by(max_adapters);
 };
 
-static struct i2c_atr_alias_pair *
-i2c_atr_find_mapping_by_client(const struct list_head *list,
-			       const struct i2c_client *client)
-{
-	struct i2c_atr_alias_pair *c2a;
-
-	list_for_each_entry(c2a, list, node) {
-		if (c2a->client == client)
-			return c2a;
-	}
-
-	return NULL;
-}
-
 static struct i2c_atr_alias_pair *
 i2c_atr_find_mapping_by_addr(const struct list_head *list, u16 phys_addr)
 {
 	struct i2c_atr_alias_pair *c2a;
 
 	list_for_each_entry(c2a, list, node) {
-		if (c2a->client->addr == phys_addr)
+		if (c2a->addr == phys_addr)
 			return c2a;
 	}
 
@@ -313,8 +299,8 @@ static void i2c_atr_release_alias(struct i2c_atr *atr, u16 alias)
 	dev_warn(atr->dev, "Unable to find mapped alias\n");
 }
 
-static int i2c_atr_attach_client(struct i2c_adapter *adapter,
-				 const struct i2c_client *client)
+static int i2c_atr_attach_addr(struct i2c_adapter *adapter,
+			       u16 addr)
 {
 	struct i2c_atr_chan *chan = adapter->algo_data;
 	struct i2c_atr *atr = chan->atr;
@@ -334,14 +320,14 @@ static int i2c_atr_attach_client(struct i2c_adapter *adapter,
 		goto err_release_alias;
 	}
 
-	ret = atr->ops->attach_client(atr, chan->chan_id, client, alias);
+	ret = atr->ops->attach_addr(atr, chan->chan_id, addr, alias);
 	if (ret)
 		goto err_free;
 
-	dev_dbg(atr->dev, "chan%u: client 0x%02x mapped at alias 0x%02x (%s)\n",
-		chan->chan_id, client->addr, alias, client->name);
+	dev_dbg(atr->dev, "chan%u: addr 0x%02x mapped at alias 0x%02x\n",
+		chan->chan_id, addr, alias);
 
-	c2a->client = client;
+	c2a->addr = addr;
 	c2a->alias = alias;
 	list_add(&c2a->node, &chan->alias_list);
 
@@ -355,16 +341,16 @@ static int i2c_atr_attach_client(struct i2c_adapter *adapter,
 	return ret;
 }
 
-static void i2c_atr_detach_client(struct i2c_adapter *adapter,
-				  const struct i2c_client *client)
+static void i2c_atr_detach_addr(struct i2c_adapter *adapter,
+				u16 addr)
 {
 	struct i2c_atr_chan *chan = adapter->algo_data;
 	struct i2c_atr *atr = chan->atr;
 	struct i2c_atr_alias_pair *c2a;
 
-	atr->ops->detach_client(atr, chan->chan_id, client);
+	atr->ops->detach_addr(atr, chan->chan_id, addr);
 
-	c2a = i2c_atr_find_mapping_by_client(&chan->alias_list, client);
+	c2a = i2c_atr_find_mapping_by_addr(&chan->alias_list, addr);
 	if (!c2a) {
 		 /* This should never happen */
 		dev_warn(atr->dev, "Unable to find address mapping\n");
@@ -374,8 +360,8 @@ static void i2c_atr_detach_client(struct i2c_adapter *adapter,
 	i2c_atr_release_alias(atr, c2a->alias);
 
 	dev_dbg(atr->dev,
-		"chan%u: client 0x%02x unmapped from alias 0x%02x (%s)\n",
-		chan->chan_id, client->addr, c2a->alias, client->name);
+		"chan%u: addr 0x%02x unmapped from alias 0x%02x\n",
+		chan->chan_id, addr, c2a->alias);
 
 	list_del(&c2a->node);
 	kfree(c2a);
@@ -405,7 +391,7 @@ static int i2c_atr_bus_notifier_call(struct notifier_block *nb,
 
 	switch (event) {
 	case BUS_NOTIFY_ADD_DEVICE:
-		ret = i2c_atr_attach_client(client->adapter, client);
+		ret = i2c_atr_attach_addr(client->adapter, client->addr);
 		if (ret)
 			dev_err(atr->dev,
 				"Failed to attach remote client '%s': %d\n",
@@ -413,7 +399,7 @@ static int i2c_atr_bus_notifier_call(struct notifier_block *nb,
 		break;
 
 	case BUS_NOTIFY_DEL_DEVICE:
-		i2c_atr_detach_client(client->adapter, client);
+		i2c_atr_detach_addr(client->adapter, client->addr);
 		break;
 
 	default:
@@ -506,7 +492,7 @@ struct i2c_atr *i2c_atr_new(struct i2c_adapter *parent, struct device *dev,
 	if (max_adapters > ATR_MAX_ADAPTERS)
 		return ERR_PTR(-EINVAL);
 
-	if (!ops || !ops->attach_client || !ops->detach_client)
+	if (!ops || !ops->attach_addr || !ops->detach_addr)
 		return ERR_PTR(-EINVAL);
 
 	atr = kzalloc(struct_size(atr, adapter, max_adapters), GFP_KERNEL);
diff --git a/drivers/media/i2c/ds90ub960.c b/drivers/media/i2c/ds90ub960.c
index 84aa976bed2d74f1d639684601f4c1c38d748188..5a836731af6c701ef4070eb2dbab36cbdd86e0a2 100644
--- a/drivers/media/i2c/ds90ub960.c
+++ b/drivers/media/i2c/ds90ub960.c
@@ -1026,8 +1026,8 @@ static int ub960_ind_update_bits(struct ub960_data *priv, u8 block, u8 reg,
  * I2C-ATR (address translator)
  */
 
-static int ub960_atr_attach_client(struct i2c_atr *atr, u32 chan_id,
-				   const struct i2c_client *client, u16 alias)
+static int ub960_atr_attach_addr(struct i2c_atr *atr, u32 chan_id,
+				 u16 addr, u16 alias)
 {
 	struct ub960_data *priv = i2c_atr_get_driver_data(atr);
 	struct ub960_rxport *rxport = priv->rxports[chan_id];
@@ -1047,20 +1047,20 @@ static int ub960_atr_attach_client(struct i2c_atr *atr, u32 chan_id,
 	set_bit(reg_idx, rxport->alias_use_mask);
 
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ID(reg_idx),
-			   client->addr << 1);
+			   addr << 1);
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ALIAS(reg_idx),
 			   alias << 1);
 
 	dev_dbg(dev, "rx%u: client 0x%02x assigned alias 0x%02x at slot %u\n",
-		rxport->nport, client->addr, alias, reg_idx);
+		rxport->nport, addr, alias, reg_idx);
 
 out_unlock:
 	mutex_unlock(&rxport->alias_mask_lock);
 	return ret;
 }
 
-static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
-				    const struct i2c_client *client)
+static void ub960_atr_detach_addr(struct i2c_atr *atr, u32 chan_id,
+				  u16 addr)
 {
 	struct ub960_data *priv = i2c_atr_get_driver_data(atr);
 	struct ub960_rxport *rxport = priv->rxports[chan_id];
@@ -1073,7 +1073,7 @@ static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
 
 	if (reg_idx >= UB960_MAX_PORT_ALIASES) {
 		dev_err(dev, "rx%u: client 0x%02x is not mapped!\n",
-			rxport->nport, client->addr);
+			rxport->nport, addr);
 		goto out_unlock;
 	}
 
@@ -1082,15 +1082,15 @@ static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ALIAS(reg_idx), 0);
 
 	dev_dbg(dev, "rx%u: client 0x%02x released at slot %u\n", rxport->nport,
-		client->addr, reg_idx);
+		addr, reg_idx);
 
 out_unlock:
 	mutex_unlock(&rxport->alias_mask_lock);
 }
 
 static const struct i2c_atr_ops ub960_atr_ops = {
-	.attach_client = ub960_atr_attach_client,
-	.detach_client = ub960_atr_detach_client,
+	.attach_addr = ub960_atr_attach_addr,
+	.detach_addr = ub960_atr_detach_addr,
 };
 
 static int ub960_init_atr(struct ub960_data *priv)
diff --git a/include/linux/i2c-atr.h b/include/linux/i2c-atr.h
index 4d5da161c22516b3294e73702ace7a4546cdd588..14c1f9175c0db6a8a9c6ef5d771ae68361132a76 100644
--- a/include/linux/i2c-atr.h
+++ b/include/linux/i2c-atr.h
@@ -20,20 +20,20 @@ struct i2c_atr;
 
 /**
  * struct i2c_atr_ops - Callbacks from ATR to the device driver.
- * @attach_client: Notify the driver of a new device connected on a child
- *                 bus, with the alias assigned to it. The driver must
- *                 configure the hardware to use the alias.
- * @detach_client: Notify the driver of a device getting disconnected. The
- *                 driver must configure the hardware to stop using the
- *                 alias.
+ * @attach_addr: Notify the driver of a new device connected on a child
+ *               bus, with the alias assigned to it. The driver must
+ *               configure the hardware to use the alias.
+ * @detach_addr: Notify the driver of a device getting disconnected. The
+ *               driver must configure the hardware to stop using the
+ *               alias.
  *
  * All these functions return 0 on success, a negative error code otherwise.
  */
 struct i2c_atr_ops {
-	int (*attach_client)(struct i2c_atr *atr, u32 chan_id,
-			     const struct i2c_client *client, u16 alias);
-	void (*detach_client)(struct i2c_atr *atr, u32 chan_id,
-			      const struct i2c_client *client);
+	int (*attach_addr)(struct i2c_atr *atr, u32 chan_id,
+			   u16 addr, u16 alias);
+	void (*detach_addr)(struct i2c_atr *atr, u32 chan_id,
+			    u16 addr);
 };
 
 /**

-- 
2.47.0


