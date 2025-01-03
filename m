Return-Path: <devicetree+bounces-135436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF26A00F53
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 22:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 878EF3A4A56
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B051C460C;
	Fri,  3 Jan 2025 21:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="aLnq6EuG"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8566F1C3C0E;
	Fri,  3 Jan 2025 21:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735938832; cv=none; b=OdGPc1vgXYRq+7VW/TUvV1DkgMLchzOiIWIe2YTkiYbutzQGrnbtY0/xKCKf9J+pA0iVImui7U6KJwEAwA9nL/fE37GTJccE90tmnz/wct+vd5pczxc1uHspTkbLDIgOIcyracQWxqBx+Le4IW2oHyJS9/nLmvxA0UAQ3C+V2mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735938832; c=relaxed/simple;
	bh=EbBmW+sGtWQtjPQ7uuyg+hgXxqbtFizY4G5Jubet8fo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L5KBB/1MmqZVbrSh4jsziH0whWBmAUizzHhMvgBmf7vwRrw7Hhj0eVC3WMXYK0r8bmvjlF5Gc5vch7fXxa4li8joU0S3cPaRpsZf97x+J8aahhjFRhu3fnD5S5srXxxtBhtWscKJNJl6P0bn05ZNvd5yB5Vs4VaUwvZ1kvOWW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=aLnq6EuG; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DB960FF803;
	Fri,  3 Jan 2025 21:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735938827;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e9V+5mtf1f1VX9g2GVoEUsapn+bE/n44SoxKTO1Xuio=;
	b=aLnq6EuGhnnB9RvTqpMxxsUuqtTjEU6VXAyQXo4GeWy3uiaJ5JE6z+oJoSwJMIeNlDkGVK
	N+Xf0ClyByP5OazVa+/1byPVKBF+AgBnqBkDKtkDSagk9hrAo9K21NinEFr5UhhJlfoVQq
	uNnVQlmzOWatCIqsHtGhuUAaqItp/C8vseU2ilyqMydSux7oyAzgV3wcGax+wiHkUFR+94
	RYjnG8O++aeoRDA3WquznLTp5VjPDYAwO49pePGxq9QGuMPO2RiLNEMsRnA+iLaO+fsZyg
	uzYsGtkSwXdRQ4u7yazxz9/E7cE+vZhTMHMVmXFeg0B4lQtElqx5XrlJy4/UZA==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Fri, 03 Jan 2025 22:12:55 +0100
Subject: [PATCH net-next v4 06/27] net: pse-pd: tps23881: Add missing
 configuration register after disable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-feature_poe_port_prio-v4-6-dc91a3c0c187@bootlin.com>
References: <20250103-feature_poe_port_prio-v4-0-dc91a3c0c187@bootlin.com>
In-Reply-To: <20250103-feature_poe_port_prio-v4-0-dc91a3c0c187@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Oleksij Rempel <o.rempel@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jonathan Corbet <corbet@lwn.net>, Donald Hunter <donald.hunter@gmail.com>, 
 Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Simon Horman <horms@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>, 
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 devicetree@vger.kernel.org, Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.15-dev-8cb71
X-GND-Sasl: kory.maincent@bootlin.com

From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

When setting the PWOFF register, the controller resets multiple
configuration registers. This patch ensures these registers are
reconfigured as needed following a disable operation.

Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---

Change in v3:
- New patch
---
 drivers/net/pse-pd/tps23881.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/net/pse-pd/tps23881.c b/drivers/net/pse-pd/tps23881.c
index 4a75206b2de6..b87c391ae0f5 100644
--- a/drivers/net/pse-pd/tps23881.c
+++ b/drivers/net/pse-pd/tps23881.c
@@ -130,6 +130,7 @@ static int tps23881_pi_disable(struct pse_controller_dev *pcdev, int id)
 	struct i2c_client *client = priv->client;
 	u8 chan;
 	u16 val;
+	int ret;
 
 	if (id >= TPS23881_MAX_CHANS)
 		return -ERANGE;
@@ -143,7 +144,34 @@ static int tps23881_pi_disable(struct pse_controller_dev *pcdev, int id)
 				       BIT(chan % 4));
 	}
 
-	return i2c_smbus_write_word_data(client, TPS23881_REG_PW_EN, val);
+	ret = i2c_smbus_write_word_data(client, TPS23881_REG_PW_EN, val);
+	if (ret)
+		return ret;
+
+	/* PWOFF command resets lots of register which need to be
+	 * configured again. According to the datasheet "It may take upwards
+	 * of 5ms after PWOFFn command for all register values to be updated"
+	 */
+	mdelay(5);
+
+	/* Enable detection and classification */
+	ret = i2c_smbus_read_word_data(client, TPS23881_REG_DET_CLA_EN);
+	if (ret < 0)
+		return ret;
+
+	chan = priv->port[id].chan[0];
+	val = tps23881_set_val(ret, chan, 0, BIT(chan % 4), BIT(chan % 4));
+	val = tps23881_set_val(val, chan, 4, BIT(chan % 4), BIT(chan % 4));
+
+	if (priv->port[id].is_4p) {
+		chan = priv->port[id].chan[1];
+		val = tps23881_set_val(ret, chan, 0, BIT(chan % 4),
+				       BIT(chan % 4));
+		val = tps23881_set_val(val, chan, 4, BIT(chan % 4),
+				       BIT(chan % 4));
+	}
+
+	return i2c_smbus_write_word_data(client, TPS23881_REG_DET_CLA_EN, val);
 }
 
 static int tps23881_pi_is_enabled(struct pse_controller_dev *pcdev, int id)

-- 
2.34.1


