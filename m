Return-Path: <devicetree+bounces-153731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1242BA4DA39
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A91393B00F4
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAAFB2036E3;
	Tue,  4 Mar 2025 10:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WpnEslFe"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF552202982;
	Tue,  4 Mar 2025 10:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741083659; cv=none; b=NdhYFgbx8EfF7ZCH17tfumTVBGta1A5GpcDY7e+HClZtbNkOc4q80lABFJ51FgJbjpPO4OND9Q0cioZRImNOYrY54Nivj0f8Gfj25/0AMhbLgVPv5Xi96ARneXRuiqqI996PdUZ3UMVUE52/gu82Kl7X3BJmFrgrmF/K0ElKh88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741083659; c=relaxed/simple;
	bh=JizC8OycRPdQzu+vx9yihfoa5C9FrhHAgZKQtEX9720=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NlsTOeSDrkTuK2gVYc6DVFKJHoc90iK90Mg5pPdQ5WoVuHeuN06/DTHbC6rr8meOxg4zSmotKhjECIsdEuPEvJ3Sk5zmX4OqXlV3J4HGry6qxm3dnVHaUU7Xf2pSgWq/k4Fo4i7EPBh0mS/l29lA8fHDSN4GDCgOqsSdmiyPL24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=WpnEslFe; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id D932444212;
	Tue,  4 Mar 2025 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1741083655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ilgtJWZhGsFdBDo14YPTLmX3PYjElvwGjn5HH9KCEMc=;
	b=WpnEslFebFQLV5PnTs1skSBOwIzKD4m4A1/OxQ7HDnvLuwQn6H/EI0Y+b+kIS2gFVu3wBm
	/lMSVstOBGA6ENKTt1fLbl86J8JpW/nwYEyl9K8A34USOzRbDu+rS3QOoU9SlptUBq+rNf
	9QJGLqvv0+2WOnRFtx/T8tpEmRdzNVWmly9OU/SUICtr537jkXAbj7chNszGZNvuGl6DbQ
	kx7OlNwkhuSdbfr1FcXo6RioP09pObJuZ5XQ6m8h21gff+4K1VRHUfigz3qgP6Ob2M77/a
	Y9gTL6JsAG/S7m8KPkkujsoMwWp6plEA3wqh2RMBikwIEgLVjOpfGU/7VcpIQA==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Tue, 04 Mar 2025 11:19:00 +0100
Subject: [PATCH net-next v6 11/12] net: pse-pd: tps23881: Add support for
 static port priority feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-feature_poe_port_prio-v6-11-3dc0c5ebaf32@bootlin.com>
References: <20250304-feature_poe_port_prio-v6-0-3dc0c5ebaf32@bootlin.com>
In-Reply-To: <20250304-feature_poe_port_prio-v6-0-3dc0c5ebaf32@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Oleksij Rempel <o.rempel@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jonathan Corbet <corbet@lwn.net>, Donald Hunter <donald.hunter@gmail.com>, 
 Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Simon Horman <horms@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>, 
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Kory Maincent (Dent Project)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.15-dev-8cb71
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddutddujeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtredtjeenucfhrhhomhepmfhorhihucforghinhgtvghnthcuoehkohhrhidrmhgrihhntggvnhhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeevgfdvgfektefgfefggeekudfggffhtdfffedtueetheejtddvledvvdelhedtveenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpeelnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplgduvdejrddtrddurddungdpmhgrihhlfhhrohhmpehkohhrhidrmhgrihhntggvnhhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvjedprhgtphhtthhopehthhhomhgrshdrphgvthgriiiiohhnihessghoohhtlhhinhdrtghomhdprhgtphhtthhopehmrgigihhmvgdrtghhvghvrghllhhivghrsegsohhothhlihhnrdgtohhmpdhrtghpthhtoheptghorhgsvghtsehlfihnrdhnvghtpdhrtghpthhtoheplhhgihhrugifohhougesghhmrghilhdrtghomhdprhgtphhtthhopeguvghnthhprhhojhgvtghtsehlihhnuhigf
 hhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhgvrhhnvghlsehpvghnghhuthhrohhnihigrdguvgdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthh
X-GND-Sasl: kory.maincent@bootlin.com

From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

This patch enhances PSE callbacks by introducing support for the static
port priority feature. It extends interrupt management to handle and report
detection, classification, and disconnection events. Additionally, it
introduces the pi_get_pw_req() callback, which provides information about
the power requested by the Powered Devices.

Interrupt support is essential for the proper functioning of the TPS23881
controller. Without it, after a power-on (PWON), the controller will
no longer perform detection and classification. This could lead to
potential hazards, such as connecting a non-PoE device after a PoE device,
which might result in magic smoke.

Signed-off-by: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
---

We may need a fix for the interrupt support in old version of Linux.

Change in v4:
- Fix variable type nit.

Change in v3:
- New patch
---
 drivers/net/pse-pd/tps23881.c | 204 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 194 insertions(+), 10 deletions(-)

diff --git a/drivers/net/pse-pd/tps23881.c b/drivers/net/pse-pd/tps23881.c
index 1226667192977..6012c58b47e8a 100644
--- a/drivers/net/pse-pd/tps23881.c
+++ b/drivers/net/pse-pd/tps23881.c
@@ -19,20 +19,30 @@
 
 #define TPS23881_REG_IT		0x0
 #define TPS23881_REG_IT_MASK	0x1
+#define TPS23881_REG_IT_DISF	BIT(2)
+#define TPS23881_REG_IT_DETC	BIT(3)
+#define TPS23881_REG_IT_CLASC	BIT(4)
 #define TPS23881_REG_IT_IFAULT	BIT(5)
 #define TPS23881_REG_IT_SUPF	BIT(7)
+#define TPS23881_REG_DET_EVENT	0x5
 #define TPS23881_REG_FAULT	0x7
 #define TPS23881_REG_SUPF_EVENT	0xb
 #define TPS23881_REG_TSD	BIT(7)
+#define TPS23881_REG_DISC	0xc
 #define TPS23881_REG_PW_STATUS	0x10
 #define TPS23881_REG_OP_MODE	0x12
+#define TPS23881_REG_DISC_EN	0x13
 #define TPS23881_OP_MODE_SEMIAUTO	0xaaaa
 #define TPS23881_REG_DIS_EN	0x13
 #define TPS23881_REG_DET_CLA_EN	0x14
 #define TPS23881_REG_GEN_MASK	0x17
+#define TPS23881_REG_CLCHE	BIT(2)
+#define TPS23881_REG_DECHE	BIT(3)
 #define TPS23881_REG_NBITACC	BIT(5)
 #define TPS23881_REG_INTEN	BIT(7)
 #define TPS23881_REG_PW_EN	0x19
+#define TPS23881_REG_RESET	0x1a
+#define TPS23881_REG_CLRAIN	BIT(7)
 #define TPS23881_REG_2PAIR_POL1	0x1e
 #define TPS23881_REG_PORT_MAP	0x26
 #define TPS23881_REG_PORT_POWER	0x29
@@ -177,6 +187,7 @@ static int tps23881_pi_enable(struct pse_controller_dev *pcdev, int id)
 	struct i2c_client *client = priv->client;
 	u8 chan;
 	u16 val;
+	int ret;
 
 	if (id >= TPS23881_MAX_CHANS)
 		return -ERANGE;
@@ -190,7 +201,22 @@ static int tps23881_pi_enable(struct pse_controller_dev *pcdev, int id)
 				       BIT(chan % 4));
 	}
 
-	return i2c_smbus_write_word_data(client, TPS23881_REG_PW_EN, val);
+	ret = i2c_smbus_write_word_data(client, TPS23881_REG_PW_EN, val);
+	if (ret)
+		return ret;
+
+	/* Enable DC disconnect*/
+	chan = priv->port[id].chan[0];
+	ret = i2c_smbus_read_word_data(client, TPS23881_REG_DISC_EN);
+	if (ret < 0)
+		return ret;
+
+	val = tps23881_set_val(ret, chan, 0, BIT(chan % 4), BIT(chan % 4));
+	ret = i2c_smbus_write_word_data(client, TPS23881_REG_DISC_EN, val);
+	if (ret)
+		return ret;
+
+	return 0;
 }
 
 static int tps23881_pi_disable(struct pse_controller_dev *pcdev, int id)
@@ -223,6 +249,17 @@ static int tps23881_pi_disable(struct pse_controller_dev *pcdev, int id)
 	 */
 	mdelay(5);
 
+	/* Disable DC disconnect*/
+	chan = priv->port[id].chan[0];
+	ret = i2c_smbus_read_word_data(client, TPS23881_REG_DISC_EN);
+	if (ret < 0)
+		return ret;
+
+	val = tps23881_set_val(ret, chan, 0, 0, BIT(chan % 4));
+	ret = i2c_smbus_write_word_data(client, TPS23881_REG_DISC_EN, val);
+	if (ret)
+		return ret;
+
 	/* Enable detection and classification */
 	ret = i2c_smbus_read_word_data(client, TPS23881_REG_DET_CLA_EN);
 	if (ret < 0)
@@ -918,6 +955,47 @@ static int tps23881_setup_pi_matrix(struct pse_controller_dev *pcdev)
 	return ret;
 }
 
+static int tps23881_power_class_table[] = {
+	-ERANGE,
+	4000,
+	7000,
+	15500,
+	30000,
+	15500,
+	15500,
+	-ERANGE,
+	45000,
+	60000,
+	75000,
+	90000,
+	15500,
+	45000,
+	-ERANGE,
+	-ERANGE,
+};
+
+static int tps23881_pi_get_pw_req(struct pse_controller_dev *pcdev, int id)
+{
+	struct tps23881_priv *priv = to_tps23881_priv(pcdev);
+	struct i2c_client *client = priv->client;
+	u8 reg, chan;
+	int ret;
+	u16 val;
+
+	/* For a 4-pair the classification need 5ms to be completed */
+	if (priv->port[id].is_4p)
+		mdelay(5);
+
+	chan = priv->port[id].chan[0];
+	reg = TPS23881_REG_DISC + (chan % 4);
+	ret = i2c_smbus_read_word_data(client, reg);
+	if (ret < 0)
+		return ret;
+
+	val = tps23881_calc_val(ret, chan, 4, 0xf);
+	return tps23881_power_class_table[val];
+}
+
 static const struct pse_controller_ops tps23881_ops = {
 	.setup_pi_matrix = tps23881_setup_pi_matrix,
 	.pi_enable = tps23881_pi_enable,
@@ -930,6 +1008,7 @@ static const struct pse_controller_ops tps23881_ops = {
 	.pi_get_pw_limit = tps23881_pi_get_pw_limit,
 	.pi_set_pw_limit = tps23881_pi_set_pw_limit,
 	.pi_get_pw_limit_ranges = tps23881_pi_get_pw_limit_ranges,
+	.pi_get_pw_req = tps23881_pi_get_pw_req,
 };
 
 static const char fw_parity_name[] = "ti/tps23881/tps23881-parity-14.bin";
@@ -1100,12 +1179,83 @@ static void tps23881_irq_event_over_current(struct tps23881_priv *priv,
 					   ETHTOOL_PSE_EVENT_OVER_CURRENT);
 }
 
+static void tps23881_irq_event_disconnection(struct tps23881_priv *priv,
+					     u16 reg_val,
+					     unsigned long *notifs,
+					     unsigned long *notifs_mask)
+{
+	u8 chans;
+
+	chans = tps23881_irq_export_chans_helper(reg_val, 4);
+	if (chans)
+		tps23881_set_notifs_helper(priv, chans, notifs, notifs_mask,
+					   ETHTOOL_C33_PSE_EVENT_DISCONNECTION);
+}
+
+static int tps23881_irq_event_detection(struct tps23881_priv *priv,
+					u16 reg_val,
+					unsigned long *notifs,
+					unsigned long *notifs_mask)
+{
+	enum ethtool_pse_events event;
+	int reg, ret, i, val;
+	unsigned long chans;
+
+	chans = tps23881_irq_export_chans_helper(reg_val, 0);
+	for_each_set_bit(i, &chans, TPS23881_MAX_CHANS) {
+		reg = TPS23881_REG_DISC + (i % 4);
+		ret = i2c_smbus_read_word_data(priv->client, reg);
+		if (ret < 0)
+			return ret;
+
+		val = tps23881_calc_val(ret, i, 0, 0xf);
+		/* If detection valid */
+		if (val == 0x4)
+			event = ETHTOOL_C33_PSE_EVENT_DETECTION;
+		else
+			event = ETHTOOL_C33_PSE_EVENT_DISCONNECTION;
+
+		tps23881_set_notifs_helper(priv, BIT(i), notifs,
+					   notifs_mask, event);
+	}
+
+	return 0;
+}
+
+static int tps23881_irq_event_classification(struct tps23881_priv *priv,
+					     u16 reg_val,
+					     unsigned long *notifs,
+					     unsigned long *notifs_mask)
+{
+	int reg, ret, val, i;
+	unsigned long chans;
+
+	chans = tps23881_irq_export_chans_helper(reg_val, 4);
+	for_each_set_bit(i, &chans, TPS23881_MAX_CHANS) {
+		reg = TPS23881_REG_DISC + (i % 4);
+		ret = i2c_smbus_read_word_data(priv->client, reg);
+		if (ret < 0)
+			return ret;
+
+		val = tps23881_calc_val(ret, i, 4, 0xf);
+		/* Do not report classification event for unknown class */
+		if (!val || val == 0x8 || val == 0xf)
+			continue;
+
+		tps23881_set_notifs_helper(priv, BIT(i), notifs,
+					   notifs_mask,
+					   ETHTOOL_C33_PSE_EVENT_CLASSIFICATION);
+	}
+
+	return 0;
+}
+
 static int tps23881_irq_event_handler(struct tps23881_priv *priv, u16 reg,
 				      unsigned long *notifs,
 				      unsigned long *notifs_mask)
 {
 	struct i2c_client *client = priv->client;
-	int ret;
+	int ret, val;
 
 	/* The Supply event bit is repeated twice so we only need to read
 	 * the one from the first byte.
@@ -1117,13 +1267,33 @@ static int tps23881_irq_event_handler(struct tps23881_priv *priv, u16 reg,
 		tps23881_irq_event_over_temp(priv, ret, notifs, notifs_mask);
 	}
 
-	if (reg & (TPS23881_REG_IT_IFAULT | TPS23881_REG_IT_IFAULT << 8)) {
+	if (reg & (TPS23881_REG_IT_IFAULT | TPS23881_REG_IT_IFAULT << 8 |
+		   TPS23881_REG_IT_DISF | TPS23881_REG_IT_DISF << 8)) {
 		ret = i2c_smbus_read_word_data(client, TPS23881_REG_FAULT);
 		if (ret < 0)
 			return ret;
 		tps23881_irq_event_over_current(priv, ret, notifs, notifs_mask);
+
+		tps23881_irq_event_disconnection(priv, ret, notifs, notifs_mask);
 	}
 
+	if (reg & (TPS23881_REG_IT_DETC | TPS23881_REG_IT_DETC << 8 |
+		   TPS23881_REG_IT_CLASC | TPS23881_REG_IT_CLASC << 8)) {
+		ret = i2c_smbus_read_word_data(client, TPS23881_REG_DET_EVENT);
+		if (ret < 0)
+			return ret;
+
+		val = ret;
+		ret = tps23881_irq_event_detection(priv, val, notifs,
+						   notifs_mask);
+		if (ret)
+			return ret;
+
+		ret = tps23881_irq_event_classification(priv, val, notifs,
+							notifs_mask);
+		if (ret)
+			return ret;
+	}
 	return 0;
 }
 
@@ -1169,7 +1339,14 @@ static int tps23881_setup_irq(struct tps23881_priv *priv, int irq)
 	int ret;
 	u16 val;
 
-	val = TPS23881_REG_IT_IFAULT | TPS23881_REG_IT_SUPF;
+	if (!irq) {
+		dev_err(&client->dev, "interrupt is missing");
+		return -EINVAL;
+	}
+
+	val = TPS23881_REG_IT_IFAULT | TPS23881_REG_IT_SUPF |
+	      TPS23881_REG_IT_DETC | TPS23881_REG_IT_CLASC |
+	      TPS23881_REG_IT_DISF;
 	val |= val << 8;
 	ret = i2c_smbus_write_word_data(client, TPS23881_REG_IT_MASK, val);
 	if (ret)
@@ -1179,11 +1356,19 @@ static int tps23881_setup_irq(struct tps23881_priv *priv, int irq)
 	if (ret < 0)
 		return ret;
 
-	val = (u16)(ret | TPS23881_REG_INTEN | TPS23881_REG_INTEN << 8);
+	val = TPS23881_REG_INTEN | TPS23881_REG_CLCHE | TPS23881_REG_DECHE;
+	val |= val << 8;
+	val |= (u16)ret;
 	ret = i2c_smbus_write_word_data(client, TPS23881_REG_GEN_MASK, val);
 	if (ret < 0)
 		return ret;
 
+	/* Reset interrupts registers */
+	ret = i2c_smbus_write_word_data(client, TPS23881_REG_RESET,
+					TPS23881_REG_CLRAIN);
+	if (ret < 0)
+		return ret;
+
 	return devm_pse_irq_helper(&priv->pcdev, irq, 0, &irq_desc);
 }
 
@@ -1261,17 +1446,16 @@ static int tps23881_i2c_probe(struct i2c_client *client)
 	priv->pcdev.dev = dev;
 	priv->pcdev.types = ETHTOOL_PSE_C33;
 	priv->pcdev.nr_lines = TPS23881_MAX_CHANS;
+	priv->pcdev.supp_budget_eval_strategies = ETHTOOL_PSE_BUDGET_EVAL_STRAT_STATIC;
 	ret = devm_pse_controller_register(dev, &priv->pcdev);
 	if (ret) {
 		return dev_err_probe(dev, ret,
 				     "failed to register PSE controller\n");
 	}
 
-	if (client->irq) {
-		ret = tps23881_setup_irq(priv, client->irq);
-		if (ret)
-			return ret;
-	}
+	ret = tps23881_setup_irq(priv, client->irq);
+	if (ret)
+		return ret;
 
 	return ret;
 }

-- 
2.34.1


