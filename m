Return-Path: <devicetree+bounces-262684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LWnLpFRg2kalQMAu9opvQ
	(envelope-from <devicetree+bounces-262684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:02:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC89E6CB0
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D764300861F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF00740FDA2;
	Wed,  4 Feb 2026 14:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C7740FD9B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213655; cv=none; b=ib2h8h7clJ8kmxBzg3rxnqVFXHB6Zj+iwdKSRSFdnnRClTguX+cDFjIN5TClkcJ96n3qeaql/GqMtPBVlYGWyNEc8gw9BlqVlKaFFNDJo9ESz7FYiugKUnp3Bcpdm13iCcrF53YcD0IgM8quM583Yq1/6R2KCci84cmpB7IUVVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213655; c=relaxed/simple;
	bh=NvSrpqULKEWS417VNdvn4S0I/pq7a6OoH3YBuKUYOSU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YVCOk+BxK8aB1unjG5TizJHOZ7EEfZl0zPmx2yhY7j9z88/JoL5yrcoqb01HUhLAvyVH8c5d9EsrBlwFVh1b2Pm/f9DTjn1YiXawZZsaxwfAaarbE6mTz1n1hEAhwb8mFe1HZd6LmGhyLZdIFwvphbSeb4cZiqV48YKgw6v243I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0001Qs-HM; Wed, 04 Feb 2026 15:00:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR1-0045FR-2G;
	Wed, 04 Feb 2026 15:00:47 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vndR0-00000001dgp-3Gfl;
	Wed, 04 Feb 2026 15:00:46 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
Subject: [PATCH v5 09/13] iio: dac: ds4424: add DS4402/DS4404 device IDs
Date: Wed,  4 Feb 2026 15:00:41 +0100
Message-ID: <20260204140045.390677-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260204140045.390677-1-o.rempel@pengutronix.de>
References: <20260204140045.390677-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262684-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonic.nl:email,intel.com:email,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: DAC89E6CB0
X-Rspamd-Action: no action

From: David Jander <david@protonic.nl>

Add I2C/OF IDs for DS4402 and DS4404 and set the correct channel count.
Follow-up changes add per-variant scaling based on external Rfs.

Co-developed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: David Jander <david@protonic.nl>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
changes v5:
- no changes
changes v4:
- no changes
changes v3:
- Reset author to David Jander and added Co-developed-by tag for
  Oleksij Rempel to clarify roles
changes v2:
  - No changes.
---
 drivers/iio/dac/ds4424.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
index 00a719d43a17..0ff034634fd1 100644
--- a/drivers/iio/dac/ds4424.c
+++ b/drivers/iio/dac/ds4424.c
@@ -39,6 +39,14 @@ struct ds4424_chip_info {
 	u8 num_channels;
 };
 
+static const struct ds4424_chip_info ds4402_info = {
+	.num_channels = DS4422_MAX_DAC_CHANNELS,
+};
+
+static const struct ds4424_chip_info ds4404_info = {
+	.num_channels = DS4424_MAX_DAC_CHANNELS,
+};
+
 static const struct ds4424_chip_info ds4422_info = {
 	.num_channels = DS4422_MAX_DAC_CHANNELS,
 };
@@ -284,6 +292,8 @@ static void ds4424_remove(struct i2c_client *client)
 }
 
 static const struct i2c_device_id ds4424_id[] = {
+	{ "ds4402", (kernel_ulong_t)&ds4402_info },
+	{ "ds4404", (kernel_ulong_t)&ds4404_info },
 	{ "ds4422", (kernel_ulong_t)&ds4422_info },
 	{ "ds4424", (kernel_ulong_t)&ds4424_info },
 	{ }
@@ -292,6 +302,8 @@ static const struct i2c_device_id ds4424_id[] = {
 MODULE_DEVICE_TABLE(i2c, ds4424_id);
 
 static const struct of_device_id ds4424_of_match[] = {
+	{ .compatible = "maxim,ds4402", .data = &ds4402_info },
+	{ .compatible = "maxim,ds4404", .data = &ds4404_info },
 	{ .compatible = "maxim,ds4422", .data = &ds4422_info },
 	{ .compatible = "maxim,ds4424", .data = &ds4424_info },
 	{ }
-- 
2.47.3


