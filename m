Return-Path: <devicetree+bounces-260495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMhYGp8uemlq3wEAu9opvQ
	(envelope-from <devicetree+bounces-260495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:43:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55101A44C9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 370F8301E7FC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C2A23EAB7;
	Wed, 28 Jan 2026 15:38:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5032E2663
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614721; cv=none; b=oSMGHKwnmKHJIQvE/NewiCcRR86jViVUEvPC5vDl/a0n0mSxWdyXYiznZ0WOKtVoSpi8NZM+CjWBcqtvz5B3obKaRldVEwyMdgvapEPXcQEgk+KpLAhiux0iUU1LQVfSufcXbIKQNEElu2ijvlkD2JEz3m1Tzc9uiBy0kJM01fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614721; c=relaxed/simple;
	bh=cLW8SrWmi7lpQKdnvAFnJeRFfADLLP7ovJP67HXlncc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PND5Wyato+TZWc2oAGPwhbR0mAPE5aHAFqXWpwIhEZd/fFOPjQSlaM+ynArhqyFr6Rj+R/cLpCpjFLtYCji0ChRvXehsbV7NgBi9UjY8EYKwO0qKTL6HEDdXwD9YNtxQ8gmAv5JOJfIHXqlPJtblgYd/z3WyfJe/YYNRwyxhr1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0003oq-Ng; Wed, 28 Jan 2026 16:38:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-002wSL-2U;
	Wed, 28 Jan 2026 16:38:26 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0000000FR9u-06sZ;
	Wed, 28 Jan 2026 16:38:26 +0100
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
Subject: [PATCH v3 2/8] iio: dac: ds4424: ratelimit read errors and use device context
Date: Wed, 28 Jan 2026 16:38:18 +0100
Message-ID: <20260128153824.3679187-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260128153824.3679187-1-o.rempel@pengutronix.de>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260495-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 55101A44C9
X-Rspamd-Action: no action

Replace pr_err() with dev_err_ratelimited() in the RAW read path to avoid
log spam on repeated I2C failures and to include the device context.

Use %pe to print errno names for faster debugging. Use the parent
device context to identify the physical hardware causing the error.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v3:
- Use indio_dev->dev.parent to reference the physical device.
- Remove redundant space in error message: "channel %d: %pe".
- This patch now precedes regmap refactoring.
changes v2:
- Update error message
- Rebase against regmap refactoring
---
 drivers/iio/dac/ds4424.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 596ff5999271..36286e4923af 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -100,8 +100,9 @@ static int ds4424_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_RAW:
 		ret = ds4424_get_value(indio_dev, &regval, chan->channel);
 		if (ret < 0) {
-			pr_err("%s : ds4424_get_value returned %d\n",
-							__func__, ret);
+			dev_err_ratelimited(indio_dev->dev.parent,
+					    "Failed to read channel %d: %pe\n",
+					    chan->channel, ERR_PTR(ret));
 			return ret;
 		}
 
-- 
2.47.3


