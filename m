Return-Path: <devicetree+bounces-257046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A00D3B5BF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5DEFB305D483
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F52C3904D1;
	Mon, 19 Jan 2026 18:24:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C2136CDE9
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847083; cv=none; b=lFwpDEHLi8FoADw+bU8wNveoUVnQsasO5sw+k8QTscMZJiGit53mFJSNn8f7CnBNWb5c6EZ8TNQp3N3vYqngQlT+MdEgKUM+3/RUUQqrlHVXnwwWLUKc95JGKpfFAyz2LiYGZyHbO7hAXdMUc9z7+9BJVjdG8Cs6Tm8fCOMWjG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847083; c=relaxed/simple;
	bh=gKdxgCeUIfsMv9ke4Upzqo22FIpf6SCbXM4wJZi9nto=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fY9pXlAv/4PRxKua8EK2FyGoqLBV6RMqe0XF3yMcUOEW4suMBv2WEECOvmalKHo2hIbrRMQwCkYAaQP0yotW31PfJj4TZmSaPavO3FoJ6wwhTTKsrlJDAQQpORSRDzedFncoEbyyafcvMoOJYn7OsOlP5tqhr6qBhp9YUoFEckg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-0004SS-7c; Mon, 19 Jan 2026 19:24:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-001SUr-1Y;
	Mon, 19 Jan 2026 19:24:25 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvN-00000006y2f-2wCL;
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
Subject: [PATCH v1 8/8] iio: dac: ds4424: document output sign and probe verification
Date: Mon, 19 Jan 2026 19:24:24 +0100
Message-ID: <20260119182424.1660601-9-o.rempel@pengutronix.de>
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

Document that a zero output value is encoded with a don't-care sign bit
and that the driver verifies device presence via a readable register
since the hardware provides no device ID.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/iio/dac/ds4424.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 13acb427d43b..2ccac674878e 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -194,6 +194,7 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
 		if (val < -max_val || val > max_val)
 			return -EINVAL;
 
+		/* Canonicalize 0 to sink; datasheet treats sign as don't-care. */
 		if (val > 0) {
 			raw.source_bit = DS4424_SOURCE_I;
 			raw.dx = val;
@@ -213,6 +214,7 @@ static int ds4424_verify_chip(struct iio_dev *indio_dev)
 {
 	int ret, val;
 
+	/* No device ID; verify presence by a readable register. */
 	ret = ds4424_get_value(indio_dev, &val, 0);
 	if (ret < 0)
 		dev_err(&indio_dev->dev,
-- 
2.47.3


