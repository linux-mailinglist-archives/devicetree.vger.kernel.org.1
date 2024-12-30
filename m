Return-Path: <devicetree+bounces-134741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D099FE65E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 632777A13CC
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6681B3F30;
	Mon, 30 Dec 2024 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Dw7EyHxA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E411AA1D9;
	Mon, 30 Dec 2024 13:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735564953; cv=none; b=DkW3uwOt4fm/eF2ckNQaaahmwujQPl/jZWxDYrfvLrstexfEIRga3TfTmzYW7NKUVN1NTVMO62OADP9Hw93py8WQNXImfi99GlsK13NZTFeCFJGeFOpHLLNp13f6kVy3+KzWv2CX8HUy1hsWln9g5sWyL05NSKxCtvt3Lwkr/6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735564953; c=relaxed/simple;
	bh=Zlwg82ihfxku4eX1AGIv7QBX7yJUlB4SpafhECHnKdo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LYZTlQ+a0LkzssXIqs+j7NPzVB3RnP6Fq2jHm31dQnA2cTt4G8Rr3qI5xEAXTi+VDn5HAGxwB5OBDkYZOOKm2iH4TQZ1yFvhv96kiNW82B10q/o4Kw/h4N7cJfZuR7FPaHlIZ9gLNfdjTOLfB5ncMhvTh4Htd3OmguNrg7TL5dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Dw7EyHxA; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DC8284000E;
	Mon, 30 Dec 2024 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735564941;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ArJmBTdwxyXPc5pO+LU8aqRoYuD2cdEQ+qKssHyQIbw=;
	b=Dw7EyHxAhwzDeW5KxAPqC+jmePStQvPeUvLic1k14PAITW0YgEivMpM0BJeVQ5+g/C4q4P
	QyvKtp1xazg3YrmTaeIOVRZ8iO2WuNGqVygxyFqjcOSfFgx4vGgONGX2ATwBxYQFahR7S2
	HbfvxF5Cze1tu0+F2uxRhBnctsm8z/FUjn84g0AXwvwNqc6UXTCKvDXXjanhGldotTdPLd
	0Ir9giWzxs1QoucwI2uowqEfa3srMyFAENvhxq6KGUWC7A2QHEKBrXxE72ZOFbmIB3oxw9
	YvjdHaFmjmM5pwB/WaQLxW5KGJY+qorfLrrckcZIqtLRjFhjOzxhWzI7Y8aGyg==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 30 Dec 2024 14:22:06 +0100
Subject: [PATCH v4 4/9] i2c: use client addresses directly in ATR interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-fpc202-v4-4-761b297dc697@bootlin.com>
References: <20241230-fpc202-v4-0-761b297dc697@bootlin.com>
In-Reply-To: <20241230-fpc202-v4-0-761b297dc697@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Kory Maincent <kory.maincent@bootlin.com>, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
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
 drivers/media/i2c/ds90ub960.c | 24 ++++++++++----------
 include/linux/i2c-atr.h       | 20 ++++++++---------
 3 files changed, 41 insertions(+), 55 deletions(-)

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
index 0510427ac4e9214132bcdf3fa18873ec78c48a5e..52d6879986ed4fcbe8ce3d75e04018b336beabf9 100644
--- a/drivers/media/i2c/ds90ub960.c
+++ b/drivers/media/i2c/ds90ub960.c
@@ -1025,8 +1025,8 @@ static int ub960_ind_update_bits(struct ub960_data *priv, u8 block, u8 reg,
  * I2C-ATR (address translator)
  */
 
-static int ub960_atr_attach_client(struct i2c_atr *atr, u32 chan_id,
-				   const struct i2c_client *client, u16 alias)
+static int ub960_atr_attach_addr(struct i2c_atr *atr, u32 chan_id,
+				 u16 addr, u16 alias)
 {
 	struct ub960_data *priv = i2c_atr_get_driver_data(atr);
 	struct ub960_rxport *rxport = priv->rxports[chan_id];
@@ -1047,23 +1047,23 @@ static int ub960_atr_attach_client(struct i2c_atr *atr, u32 chan_id,
 		goto out_unlock;
 	}
 
-	rxport->aliased_addrs[reg_idx] = client->addr;
+	rxport->aliased_addrs[reg_idx] = addr;
 
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ID(reg_idx),
-			   client->addr << 1);
+			   addr << 1);
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ALIAS(reg_idx),
 			   alias << 1);
 
 	dev_dbg(dev, "rx%u: client 0x%02x assigned alias 0x%02x at slot %u\n",
-		rxport->nport, client->addr, alias, reg_idx);
+		rxport->nport, addr, alias, reg_idx);
 
 out_unlock:
 	mutex_unlock(&rxport->aliased_addrs_lock);
 	return ret;
 }
 
-static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
-				    const struct i2c_client *client)
+static void ub960_atr_detach_addr(struct i2c_atr *atr, u32 chan_id,
+				  u16 addr)
 {
 	struct ub960_data *priv = i2c_atr_get_driver_data(atr);
 	struct ub960_rxport *rxport = priv->rxports[chan_id];
@@ -1073,13 +1073,13 @@ static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
 	mutex_lock(&rxport->aliased_addrs_lock);
 
 	for (reg_idx = 0; reg_idx < UB960_MAX_PORT_ALIASES; reg_idx++) {
-		if (rxport->aliased_addrs[reg_idx] == client->addr)
+		if (rxport->aliased_addrs[reg_idx] == addr)
 			break;
 	}
 
 	if (reg_idx == UB960_MAX_PORT_ALIASES) {
 		dev_err(dev, "rx%u: client 0x%02x is not mapped!\n",
-			rxport->nport, client->addr);
+			rxport->nport, addr);
 		goto out_unlock;
 	}
 
@@ -1088,15 +1088,15 @@ static void ub960_atr_detach_client(struct i2c_atr *atr, u32 chan_id,
 	ub960_rxport_write(priv, chan_id, UB960_RR_SLAVE_ALIAS(reg_idx), 0);
 
 	dev_dbg(dev, "rx%u: client 0x%02x released at slot %u\n", rxport->nport,
-		client->addr, reg_idx);
+		addr, reg_idx);
 
 out_unlock:
 	mutex_unlock(&rxport->aliased_addrs_lock);
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
2.47.1


