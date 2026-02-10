Return-Path: <devicetree+bounces-264424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCLbEkw4i2neRgAAu9opvQ
	(envelope-from <devicetree+bounces-264424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:53:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B863311B7A8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:53:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8914C3063AD7
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5BF367F28;
	Tue, 10 Feb 2026 13:51:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E0B364E89
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731482; cv=none; b=O+BokwGOjOxQx4mIADlazduiMV/B/lZBEvnFxeKnbiGyw8XkOuh6Gh701SSoP9zmFtjqRd0b5Sgf/kGZEa1A/w+kXjAcXBvd21kaHrJSgR9iuCmkrEQyrAzhwPn2r7aRoDgZjNZ+sZ8DmVHoBIzPRYINRqOg/1s+g/r5+vaCIG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731482; c=relaxed/simple;
	bh=d3XTjJj/yPkqHIsG+VCWmRMELS7yty9PSgNqiwQiRow=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j6aUW/dqF6fFYQCyU0ONXYCoUQ/X3IJDuhU4wtsztN/20dZ0zz6fKrcnUxCvLCvPzDfz9SUe9QLDzoWgUKWQwoxDQpe6TNMfR2E6phZryuYliAqZVIXjrr1QPoJjP+arBnFezHNiNDV49Sk4GXjb7XUSeJ6THGKx63JsTkPhhkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo93-0005dD-HX; Tue, 10 Feb 2026 14:51:13 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo91-0005cw-35;
	Tue, 10 Feb 2026 14:51:11 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vpo92-00000008VN1-2hom;
	Tue, 10 Feb 2026 14:51:12 +0100
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
Subject: [PATCH v6 00/12] iio: dac: ds4424: add DS4402/DS4404 support and scale
Date: Tue, 10 Feb 2026 14:50:58 +0100
Message-ID: <20260210135110.2027073-1-o.rempel@pengutronix.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-264424-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B863311B7A8
X-Rspamd-Action: no action

changes v6:
- rebase on top of iio/fixes-togreg
- drop "iio: dac: ds4424: reject -128 RAW value", already included

This series extends the ds4424 IIO DAC driver and its devicetree binding
to support the DS4402 and DS4404 current DAC variants.

DS440x devices share the same register map as DS442x but use a different
resolution (5-bit vs 7-bit) and a different full-scale current formula.
The full-scale current depends on external Rfs resistors connected to
the FS pins, so a new optional DT property is added to provide the
per-channel Rfs values and allow the driver to report a correct IIO
SCALE (mA/step).

While adding DS440x support, a few related issues were addressed:
- Port to regmap
- Reject -128 in RAW writes on DS442x, which cannot be represented with
  sign-magnitude encoding and could silently program an unintended
  output.
- Preserve preconfigured values on probe.
- Ratelimit read error logging and use device context.

David Jander (1):
  iio: dac: ds4424: add DS4402/DS4404 device IDs

Oleksij Rempel (11):
  iio: dac: ds4424: refactor raw access to use bitwise operations
  iio: dac: ds4424: ratelimit read errors and use device context
  iio: dac: ds4424: sort headers alphabetically
  iio: dac: ds4424: rename iio_info struct to avoid ambiguity
  iio: dac: ds4424: use device match data for chip info
  iio: dac: ds4424: use fsleep() instead of usleep_range()
  dt-bindings: iio: dac: maxim,ds4424: add ds4402/ds4404
  iio: dac: ds4424: support per-variant output range limits
  iio: dac: ds4424: convert to regmap
  dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
  iio: dac: ds4424: add Rfs-based scale and per-variant limits

 .../bindings/iio/dac/maxim,ds4424.yaml        |  42 +-
 drivers/iio/dac/Kconfig                       |   1 +
 drivers/iio/dac/ds4424.c                      | 375 ++++++++++++------
 3 files changed, 287 insertions(+), 131 deletions(-)

--
2.47.3


