Return-Path: <devicetree+bounces-257040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B205D3B5AC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCAA23013BF2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFBC83921D0;
	Mon, 19 Jan 2026 18:24:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBE738E136
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847079; cv=none; b=nhYtMgAQhKRP3FcKBIzboUYhCNEA5vhCMUqbYnNOCqOs+eScQFazUdGXhP4X6wiGU47w0idy0YwttozwC0qpeVbyB3+PueoRV8O15zNHzYU3PGn6aoXtsrDvqtogAASs3Ebexgq8xkH/vAGjexegzT0UDz69Q9T3KhmnhyegZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847079; c=relaxed/simple;
	bh=Vjn6/7sVL2PRX0fnsG7PEGcF6n99+IlYZKmpZI6Qq3g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B29/M/g9wdeb7scbX0hy3Ipx1jds3hFbWZaIVqTpYWLglChGrSkFx2+8BT2lmpo1rYTUvI5loZCcrZzSVEk1TUGuW18zAJmdYIfi9CicQHYrLlNBk7qLIzhTcndMF3VbWRi72/SQmqxmtvam/b++P3utRewZ18j9V24LdlbQ6D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-0004SQ-7b; Mon, 19 Jan 2026 19:24:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-001SUn-1R;
	Mon, 19 Jan 2026 19:24:25 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvN-00000006y2J-2lo9;
	Mon, 19 Jan 2026 19:24:25 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: [PATCH v1 6/8] iio: dac: ds4424: clear outputs on probe
Date: Mon, 19 Jan 2026 19:24:22 +0100
Message-ID: <20260119182424.1660601-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260119182424.1660601-1-o.rempel@pengutronix.de>
References: <20260119182424.1660601-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The DS44xx devices have no reset pin or reset bit, so output registers
may retain preconfigured values across reboot or warm reset.

Also, the driver suspend/resume path restores from data->raw. When the
device is first probed, data->raw is zero-initialized and may not match
the actual hardware state. A later suspend/resume can therefore change an
output from a preconfigured non-zero value to 0 mA.

Initialize all channels to 0 output current during probe to ensure a
deterministic baseline and consistent suspend/resume behavior.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/iio/dac/ds4424.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index a0c60eb89717..2d299a52cede 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -220,6 +220,20 @@ static int ds4424_verify_chip(struct iio_dev *indio_dev)
 	return ret;
 }
 
+static int ds4424_init(struct iio_dev *indio_dev)
+{
+	int i, ret;
+
+	/* Set all channels to 0 current. */
+	for (i = 0; i < indio_dev->num_channels; i++) {
+		ret = ds4424_set_value(indio_dev, 0, &indio_dev->channels[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int ds4424_setup_channels(struct i2c_client *client,
 				 struct ds4424_data *data,
 				 struct iio_dev *indio_dev)
@@ -397,6 +411,11 @@ static int ds4424_probe(struct i2c_client *client)
 	if (ret)
 		goto fail;
 
+	/* No reset pin/bit: clear any preconfigured output on probe. */
+	ret = ds4424_init(indio_dev);
+	if (ret)
+		goto fail;
+
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ds4424_iio_info;
 
-- 
2.47.3


