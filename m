Return-Path: <devicetree+bounces-260494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFFVMYMuemlq3wEAu9opvQ
	(envelope-from <devicetree+bounces-260494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:42:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C27A4462
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02455301E320
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0641A2F0C7F;
	Wed, 28 Jan 2026 15:38:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A462DAFD5
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614721; cv=none; b=W8GqexOca8sn8HnDbe0V48Qw4RVUk+IfXGjAgqsC0yt7X5S0S9jDoHwwDa35KZ6GtroVcIBJsWkgKvRpd1TbXGptE2exzBljNcOWlO4sglg5fjMgkGIlpD4mLL5CSLKZd1Jr1mEp7lZ8FTL+xLyaYqQaZnaFqQ1/Zz5hQThhJus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614721; c=relaxed/simple;
	bh=nCBX2+JdcOPR0tpAfla1hv9A6gt7UgAonRy4rQW5REw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fk9ivsiDBznuiv5MSPwVtQGoVPj6vcwfMHOM1nxze9wgO3sF2Af6Eug6y+4f8+J0s12+eRP4Lvm+WiEF7O2KqLpWzVn4ssP4efnXeqS9QwTmLPUObRAl2ltmjbBnha9Lq7FumnIlzI7lxJfmsMBfCPTiB2wBB19gEHd6hbGmQpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0003ou-Nf; Wed, 28 Jan 2026 16:38:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-002wSU-2x;
	Wed, 28 Jan 2026 16:38:26 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0000000FRAZ-0ZUC;
	Wed, 28 Jan 2026 16:38:26 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
Subject: [PATCH v3 6/8] iio: dac: ds4424: add DS4402/DS4404 device IDs
Date: Wed, 28 Jan 2026 16:38:22 +0100
Message-ID: <20260128153824.3679187-7-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260494-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,protonic.nl:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A5C27A4462
X-Rspamd-Action: no action

From: David Jander <david@protonic.nl>

Add I2C/OF IDs for DS4402 and DS4404 and set the correct channel count.
Follow-up changes add per-variant scaling based on external Rfs.

Co-developed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: David Jander <david@protonic.nl>
---
changes v3:
- Reset author to David Jander and added Co-developed-by tag for
  Oleksij Rempel to clarify roles
changes v2:
  - No changes.
---
 drivers/iio/dac/ds4424.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index c03051dc763e..f340d491fcc1 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -35,6 +35,8 @@
 }
 
 enum ds4424_device_ids {
+	ID_DS4402,
+	ID_DS4404,
 	ID_DS4422,
 	ID_DS4424,
 };
@@ -237,6 +239,12 @@ static int ds4424_probe(struct i2c_client *client)
 		goto fail;
 
 	switch (id->driver_data) {
+	case ID_DS4402:
+		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
+		break;
+	case ID_DS4404:
+		indio_dev->num_channels = DS4424_MAX_DAC_CHANNELS;
+		break;
 	case ID_DS4422:
 		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
 		break;
@@ -278,6 +286,8 @@ static void ds4424_remove(struct i2c_client *client)
 }
 
 static const struct i2c_device_id ds4424_id[] = {
+	{ "ds4402", ID_DS4402 },
+	{ "ds4404", ID_DS4404 },
 	{ "ds4422", ID_DS4422 },
 	{ "ds4424", ID_DS4424 },
 	{ }
@@ -286,6 +296,8 @@ static const struct i2c_device_id ds4424_id[] = {
 MODULE_DEVICE_TABLE(i2c, ds4424_id);
 
 static const struct of_device_id ds4424_of_match[] = {
+	{ .compatible = "maxim,ds4402" },
+	{ .compatible = "maxim,ds4404" },
 	{ .compatible = "maxim,ds4422" },
 	{ .compatible = "maxim,ds4424" },
 	{ }
-- 
2.47.3


