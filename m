Return-Path: <devicetree+bounces-257047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D62D3B5BD
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 206C5305CB0D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2D23803E3;
	Mon, 19 Jan 2026 18:24:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49B236E496
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847083; cv=none; b=kgVf8nwkcEOr6A5ScH2TY1g9uIZV3aOc2tcCRpMKPHQBcBQE5FxlqpbAo23b3OUl6vIuFBBqZ3in/Q1RHDHp+2CjA3fP7qh6LehjOpTEh40+ukbnKRQXWt3yXdEmBDhQn+2BJ6yfVl3kdEkrLr0LD/tXZKOQiyHtctjk7eJebn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847083; c=relaxed/simple;
	bh=Xfoi+lem2nLxE7UAyO/lJ6F52/txLPDbokgn0yZNdFs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ujGqYKRoDpmOEBMDj0Su+RfNVBHEHkdmfQ5Y6j5/YH7Web1B7xlKcVrgElnNT49w92iUbv+4E/GBnMOV4nlVFTo7eFVyYf/AeaOXYSEaguAloO6o/qn6VNwDgPpzZDeBL6PrnFjRlOcT7Gc3YkCb5w8/z972Br+DLBkl5TnPRt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-0004SR-7d; Mon, 19 Jan 2026 19:24:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-001SUp-1X;
	Mon, 19 Jan 2026 19:24:25 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvN-00000006y2U-2r3l;
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
Subject: [PATCH v1 7/8] iio: dac: ds4424: ratelimit read errors and use device context
Date: Mon, 19 Jan 2026 19:24:23 +0100
Message-ID: <20260119182424.1660601-8-o.rempel@pengutronix.de>
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

Replace pr_err() with dev_err_ratelimited() in the RAW read path to avoid
log spam on repeated I2C failures and to include the device context.

Use %pe to print errno names for faster debugging.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/iio/dac/ds4424.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 2d299a52cede..13acb427d43b 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -148,8 +148,9 @@ static int ds4424_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_RAW:
 		ret = ds4424_get_value(indio_dev, val, chan->channel);
 		if (ret < 0) {
-			pr_err("%s : ds4424_get_value returned %d\n",
-							__func__, ret);
+			dev_err_ratelimited(&indio_dev->dev,
+					    "%s: ds4424_get_value failed %pe\n",
+					    __func__, ERR_PTR(ret));
 			return ret;
 		}
 		raw.bits = *val;
-- 
2.47.3


