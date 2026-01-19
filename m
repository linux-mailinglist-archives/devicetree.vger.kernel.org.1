Return-Path: <devicetree+bounces-257048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDDAD3B5B4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 07FCC300FBDC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22E51393404;
	Mon, 19 Jan 2026 18:24:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF13E378D73
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847084; cv=none; b=BH9sg8Kh/pvJy0TT1OdygV4BYkcoq0DBMSZPfuW/4sqS4LfjyPjv/B3Zr+1UQQ1dv8dQo02KSORTKfip0Hb3dhwRNAB5XBqVlcYuHaclnoc2Ap5gxpIFHwkFOXq+ktxS350WBtEFxykDrM1WTzHPpMSJG07pnQBk647YCHp75k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847084; c=relaxed/simple;
	bh=+fIrNbS98U6SMuroy+VdbUC5CeLGD15R1yYgVv4GsBw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BGFj0aJf1zJox6i61JCmebljXTQF/rvxgXWr09YyoZQjbeYJPkYMR+gxp0bPUoOabfkM8leInki1LJweC7fFMKxQOrcwNfMNLgJVKH6MTQwtYilKIeThTlvrXc/KDLhBypVwP1R15Dgn2/dQ6kVt8Srl6j1QXaVLyNcLMdkI8C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-0004SK-7e; Mon, 19 Jan 2026 19:24:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvO-001SUd-0n;
	Mon, 19 Jan 2026 19:24:25 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vhtvN-00000006y1K-25lJ;
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
Subject: [PATCH v1 0/8] iio: dac: ds4424: add DS4402/DS4404 support and scale
Date: Mon, 19 Jan 2026 19:24:16 +0100
Message-ID: <20260119182424.1660601-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
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

This series extends the ds4424 IIO DAC driver and its devicetree binding
to support the DS4402 and DS4404 current DAC variants.

DS440x devices share the same register map as DS442x but use a different
resolution (5-bit vs 7-bit) and a different full-scale current formula.
The full-scale current depends on external Rfs resistors connected to
the FS pins, so a new optional DT property is added to provide the
per-channel Rfs values and allow the driver to report a correct IIO
SCALE (mA/step).

While adding DS440x support, a few related issues were addressed:
- Reject -128 in RAW writes on DS442x, which cannot be represented with
  sign-magnitude encoding and could silently program an unintended
  output.
- Clear outputs on probe to avoid retaining preconfigured values across
  warm reset and to make suspend/resume behavior deterministic.
- Ratelimit read error logging and use device context.
- Add small comments documenting sign handling and probe verification.

Oleksij Rempel (8):
  dt-bindings: iio: dac: maxim,ds4424: add ds4402/ds4404
  dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
  iio: dac: ds4424: add DS4402/DS4404 device IDs
  iio: dac: ds4424: reject -128 RAW value
  iio: dac: ds4424: add Rfs-based scale and per-variant limits
  iio: dac: ds4424: clear outputs on probe
  iio: dac: ds4424: ratelimit read errors and use device context
  iio: dac: ds4424: document output sign and probe verification

 .../bindings/iio/dac/maxim,ds4424.yaml        |  18 +-
 drivers/iio/dac/ds4424.c                      | 175 +++++++++++++++++-
 2 files changed, 184 insertions(+), 9 deletions(-)

--
2.47.3


