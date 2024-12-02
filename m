Return-Path: <devicetree+bounces-126212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2439E0910
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 358B116EDED
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20521DDC0D;
	Mon,  2 Dec 2024 16:35:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367021DC734
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157346; cv=none; b=key69d/88x9KDjS44YDhdNWXpp7+XxsDI5YejKac2BgUiyKv/RgehmYgn+SoJ2lQxoHWyXU1zy1+bj/4QWrBN8rABpkI3E0DAcrEr6AkAkNksDtjUcYihaa/VqDPg5kl5wba2iQGPJbety6HQOkVsjZ7oYQEhV+0XLPJQNKHTGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157346; c=relaxed/simple;
	bh=4Znxh2vezX6ykUQvILB+ITgVuJR4RNnDtKVTVonUfCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bTltvpQOjcBWTMT8ItEuC1OwEpQEKbNNvpiMJQP0SlHzZes30HF5chzdp9Zi6yQ5ib1M5EvRcXPAiD42aPgyYKX9N0ZXmU9EOuL/7sdhvyf9pjcV/QGW5brzLIii6Dac7oOjIl12L6HsZGMe+ozFs75BgtnspnF14uhrf9v8DyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tI9Od-0004Mi-9G; Mon, 02 Dec 2024 17:35:39 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 02 Dec 2024 17:35:22 +0100
Subject: [PATCH 3/3] mtd: mchp48l640: add support for Fujitsu MB85RS128TY
 FRAM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-mb85rs128ty-v1-3-a660b6490dc8@pengutronix.de>
References: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
In-Reply-To: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1626; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=Urh+tFnbGE+nh11saAIXFyyQDAFGEwL1Wkf7BzXgzas=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3fXgzdP6VVf5/r4Q8v5EWVvvFfdKX60tZebdavct8c
 m2d32pmho5SFgYxDgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEPi5kZDj+7dDCEw6upvy1
 zg66lTx/2/VXVdtVF/9IkDV3fdfr2MTwV1533eQ50pqf9Do0MkPDZjWyhR1cc23eqhldnhIPHJz
 jGAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

The Fujitsu FRAM chips use the same command set as Microchip EERAM.
The only differences are that the Fujitsu FRAM chips don't really have a
page size limit, nor do they automatically reset the WEL bit.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/mtd/devices/mchp48l640.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mtd/devices/mchp48l640.c b/drivers/mtd/devices/mchp48l640.c
index 4cdd24aaed416fc7e40a8060b5c7eaf6684fc6d5..7584d0ba93969d79ba3d9c7a97bc63bd0e5ef327 100644
--- a/drivers/mtd/devices/mchp48l640.c
+++ b/drivers/mtd/devices/mchp48l640.c
@@ -303,6 +303,12 @@ static const struct mchp48_caps mchp48l640_caps = {
 	.auto_disable_wel = true,
 };
 
+static const struct mchp48_caps mb85rs128ty_caps = {
+	.size = SZ_16K,
+	.page_size = 256,
+	.auto_disable_wel = false,
+};
+
 static int mchp48l640_probe(struct spi_device *spi)
 {
 	struct mchp48l640_flash *flash;
@@ -361,6 +367,10 @@ static const struct of_device_id mchp48l640_of_table[] = {
 		.compatible = "microchip,48l640",
 		.data = &mchp48l640_caps,
 	},
+	{
+		.compatible = "fujitsu,mb85rs128ty",
+		.data = &mb85rs128ty_caps,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, mchp48l640_of_table);
@@ -370,6 +380,10 @@ static const struct spi_device_id mchp48l640_spi_ids[] = {
 		.name = "48l640",
 		.driver_data = (kernel_ulong_t)&mchp48l640_caps,
 	},
+	{
+		.name = "mb85rs128ty",
+		.driver_data = (kernel_ulong_t)&mb85rs128ty_caps,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(spi, mchp48l640_spi_ids);

-- 
2.39.5


