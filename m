Return-Path: <devicetree+bounces-262672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A3oOKpSg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:07:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E88E6DBB
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFE5B309A1E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9F627BF7D;
	Wed,  4 Feb 2026 14:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8C22B8B6
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213652; cv=none; b=sQjmob4xgdLkai4dBWnYO82Z70GOto5p8MlSKFrbIJJHXO3teRdsMfEeZs8lbyeVQNx3RYyIkoRQqGsOdl0RV5pFSLvf8WC93nhglWD0N56Bdp2SNTrB5VFS3SsvpWBTcu6cyPIKM1IMn/89148Heko77X9agdWpPyW0ixPDNUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213652; c=relaxed/simple;
	bh=KPyl+E7X8lDAkOeGDx8okHH2biVyEgv208LhOOy+I48=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kbTZGYxodHLJTXx43Q0cW7kKIrn7+Ba9qy6dUzgrkS4b4wZ2Gwsqa6ZX7yWJU4QRTGGn0rD0UUuE3jLZEMZoUQomBXUE6KcXlt8IRoAwRR8VE0kosyy397qjBdWUQke7zCydM0ZLc1LP+P26DGdO4KNiCwj/JXXTdrwOSu923ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0001Qg-HO; Wed, 04 Feb 2026 15:00:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0045FD-10;
	Wed, 04 Feb 2026 15:00:46 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR0-00000001dfK-2M6R;
	Wed, 04 Feb 2026 15:00:46 +0100
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
Subject: [PATCH v5 00/13] iio: dac: ds4424: add DS4402/DS4404 support and scale
Date: Wed,  4 Feb 2026 15:00:32 +0100
Message-ID: <20260204140045.390677-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262672-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 74E88E6DBB
X-Rspamd-Action: no action

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

Oleksij Rempel (12):
  iio: dac: ds4424: reject -128 RAW value
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
 drivers/iio/dac/ds4424.c                      | 367 ++++++++++++------
 3 files changed, 281 insertions(+), 129 deletions(-)

--
2.47.3


