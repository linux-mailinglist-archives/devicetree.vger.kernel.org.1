Return-Path: <devicetree+bounces-122507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A19D0E19
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 11:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBA8B282C2E
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 10:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5A11991A1;
	Mon, 18 Nov 2024 10:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LxruCMwx"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43FE1922F2;
	Mon, 18 Nov 2024 10:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731924802; cv=none; b=eTQmSWDPa+x5KLBzRFYCCvk027MRsd2iy8Ttf6JrKQ+6t+4JOQzxNeMaSQWHuzkZTAerabpOKLYC7hQdeStPOCyKAZ1SRf9w+b9JPZE7ihgHW66UFDYsSuqF8zFqxFspuLN3Bzch86v0y0kog4Aiyj1cUg7jdAvrxld51WYNSO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731924802; c=relaxed/simple;
	bh=0UI7/fLHKcX0p3XbFYY9tt17q1z2hrScWfZKi46Mzbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQvXm29mVttOHnjAxXyuguzcTF9x4B0zC70UvPM13ZEnEj0qpSBjslMKQVZRp6Vvgb9rJFS5oE/45uGzp7ZaXpwac/yLmBpag1FmkJQjPZLlfnBO1jzAFxYx3r3CDHtbF63f6PqBgKzMoGN3UlsSxvVIzeR8g5gJY41MJH6WBDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LxruCMwx; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id BFA611BF207;
	Mon, 18 Nov 2024 10:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1731924798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iJgfCjnvNvvTwyd/QBAk+QnMdb9ttUUXMA4mNlEtL4o=;
	b=LxruCMwxnY1HAEI8M6hWwIMOXmCBVrpWOtOyw/YW7H0/QODQIhCUGRBxapUsuq0YtNV2LL
	EyMPFqr6F6kLsYA5Nf9GXcXqEfowLHWCAD0o8kVLiQu6BMawPsBZ2OSm3hDVEXLiNWey/F
	J1rB2lURBl7SBlwZ9BS5o2d/RB4+33tyf+QAEuZm1w+GjwPE+Pk45E56q2Kh/PC/G7wL/l
	ZI3gKjlfgp9HR/W46xip7oP98KLe1HSJlQ/+YPfOgRHDSbJJGMJixGPJuXCW2J+rwnfWuM
	WtK3p+mN/3JKmnQSFbJadi2kTYi1eYVR5ELEniRnDXhETcLowWarWsDLyUjsWg==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 18 Nov 2024 11:13:05 +0100
Subject: [PATCH v2 6/9] i2c: rename field 'alias_list' of struct
 i2c_atr_chan to 'alias_pairs'
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241118-fpc202-v2-6-744e4f192a2d@bootlin.com>
References: <20241118-fpc202-v2-0-744e4f192a2d@bootlin.com>
In-Reply-To: <20241118-fpc202-v2-0-744e4f192a2d@bootlin.com>
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

The "alias_list" field of struct i2c_atr_chan describes translation table
entries programmed in the ATR channel. This terminology will become more
confusing when per-channel alias pool support is introduced, as struct
i2c_atr_chan will gain a new field called "alias_pool", which will describe
aliases which are available to the ATR channel.

Rename the "alias_list" field to "alias_pairs" to clearly distinguish it
from the future "alias_pool" field.

No functional change is intended.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 drivers/i2c/i2c-atr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/i2c-atr.c b/drivers/i2c/i2c-atr.c
index c873fe52288175151040a4c32e6ed07735586004..84d82c09708ae39cf5501a1fb67e8f2af2bb5446 100644
--- a/drivers/i2c/i2c-atr.c
+++ b/drivers/i2c/i2c-atr.c
@@ -56,7 +56,7 @@ struct i2c_atr_alias_pool {
  * @adap:            The &struct i2c_adapter for the channel
  * @atr:             The parent I2C ATR
  * @chan_id:         The ID of this channel
- * @alias_list:      List of @struct i2c_atr_alias_pair containing the
+ * @alias_pairs:     List of @struct i2c_atr_alias_pair containing the
  *                   assigned aliases
  * @orig_addrs_lock: Mutex protecting @orig_addrs
  * @orig_addrs:      Buffer used to store the original addresses during transmit
@@ -67,7 +67,7 @@ struct i2c_atr_chan {
 	struct i2c_atr *atr;
 	u32 chan_id;
 
-	struct list_head alias_list;
+	struct list_head alias_pairs;
 
 	/* Lock orig_addrs during xfer */
 	struct mutex orig_addrs_lock;
@@ -192,7 +192,7 @@ static int i2c_atr_map_msgs(struct i2c_atr_chan *chan, struct i2c_msg *msgs,
 	for (i = 0; i < num; i++) {
 		chan->orig_addrs[i] = msgs[i].addr;
 
-		c2a = i2c_atr_find_mapping_by_addr(&chan->alias_list,
+		c2a = i2c_atr_find_mapping_by_addr(&chan->alias_pairs,
 						   msgs[i].addr);
 		if (!c2a) {
 			dev_err(atr->dev, "client 0x%02x not mapped!\n",
@@ -262,7 +262,7 @@ static int i2c_atr_smbus_xfer(struct i2c_adapter *adap, u16 addr,
 	struct i2c_adapter *parent = atr->parent;
 	struct i2c_atr_alias_pair *c2a;
 
-	c2a = i2c_atr_find_mapping_by_addr(&chan->alias_list, addr);
+	c2a = i2c_atr_find_mapping_by_addr(&chan->alias_pairs, addr);
 	if (!c2a) {
 		dev_err(atr->dev, "client 0x%02x not mapped!\n", addr);
 		return -ENXIO;
@@ -380,7 +380,7 @@ static int i2c_atr_attach_addr(struct i2c_adapter *adapter,
 
 	c2a->addr = addr;
 	c2a->alias = alias;
-	list_add(&c2a->node, &chan->alias_list);
+	list_add(&c2a->node, &chan->alias_pairs);
 
 	return 0;
 
@@ -401,7 +401,7 @@ static void i2c_atr_detach_addr(struct i2c_adapter *adapter,
 
 	atr->ops->detach_addr(atr, chan->chan_id, addr);
 
-	c2a = i2c_atr_find_mapping_by_addr(&chan->alias_list, addr);
+	c2a = i2c_atr_find_mapping_by_addr(&chan->alias_pairs, addr);
 	if (!c2a) {
 		 /* This should never happen */
 		dev_warn(atr->dev, "Unable to find address mapping\n");
@@ -621,7 +621,7 @@ int i2c_atr_add_adapter(struct i2c_atr *atr, u32 chan_id,
 
 	chan->atr = atr;
 	chan->chan_id = chan_id;
-	INIT_LIST_HEAD(&chan->alias_list);
+	INIT_LIST_HEAD(&chan->alias_pairs);
 	mutex_init(&chan->orig_addrs_lock);
 
 	snprintf(chan->adap.name, sizeof(chan->adap.name), "i2c-%d-atr-%d",

-- 
2.47.0


