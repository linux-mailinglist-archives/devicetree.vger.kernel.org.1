Return-Path: <devicetree+bounces-326987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0/mDJ9t/V2q2TQAAu9opvQ
	(envelope-from <devicetree+bounces-326987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:40:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0797375E451
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:40:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=QJRhwzv6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326987-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326987-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92C8031C3CEC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C857B477E27;
	Wed, 15 Jul 2026 12:33:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43172.protonmail.ch (mail-43172.protonmail.ch [185.70.43.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4441543B3CB;
	Wed, 15 Jul 2026 12:33:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118823; cv=none; b=ukA+iBNUhN8VxZqWFJNcFom+4sO9bTVwl5IzBaHj1LKyHNjWlblzhsTYRd9fA2v9jiipK4+p8Gd2WWKhc54EQ6U9Ge8DZrHUEFx8Fs6L4xkkk2dALdpFaChCNWbXrrFlx8k6HZi8rLC6CX48oIEyez4tBJmbQl9G8vg/hwflIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118823; c=relaxed/simple;
	bh=6qSTrUvFoQpzHMu9UB1C/X7u+Uvg4QnliIJn2ES26V0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HsEp294DKokvIC3yldvrInIlLcpXy232GIcTn+gLhj9Mg/LfwdV+skDIL+oofyxZR0j3zDru61Hqc2T4saC2YA8krDgXTSJYD/zsJXAXynzt8zkoLyynNbr++uRNGNo8EhAyABkyYAsTQGb1QATwXVyIVBZ4w1oXpjn12o+qHgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=QJRhwzv6; arc=none smtp.client-ip=185.70.43.172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118820; x=1784378020;
	bh=m6moQCYBnu8QTM7vejDJipQ1bYlwLXWyq1Wkmw7JC0E=;
	h=From:Date:Subject:Message-Id:References:In-Reply-To:To:Cc:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=QJRhwzv6b9LeKl7IOdIDQypQd+qjnQs36OYDsg7NwaoHZLkJ+dPeMHAEwgrYlkmak
	 7RYRHF0rm4JUpLLN2bUjQhae3R2+Y8EyDjLf+T7Rmsq64dAdv1IMJrOoph0SyoTK5Q
	 rCQhUM/b2GNZN76sgxpWDOB6SJTC267oytk3C+2Wsa7J2nqNQJeXKpcOJoZ2ELb+tN
	 5n72cvfyFWDH7seemZH3v50S7oEQE6xVY/wwXIFGXZE6aCjr2oLK+3MCFd9jV2IDsb
	 hs3GVY+pdHAcVaOI/5I9FiFEMw8nel38dm2kyiMIfmpughLUmgeOEdHdIUzKgKtLoS
	 5PVXyys+MwWEg==
X-Pm-Submission-Id: 4h0bFG540Pz2ScXM
From: Esben Haabendal <esben@geanix.com>
Date: Wed, 15 Jul 2026 14:33:29 +0200
Subject: [PATCH v2 3/3] iio: accel: mma8452: Optimize struct mm8452_data
 member orders
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-mma8452-open-drain-v2-3-95be9f5f4795@geanix.com>
References: <20260715-mma8452-open-drain-v2-0-95be9f5f4795@geanix.com>
In-Reply-To: <20260715-mma8452-open-drain-v2-0-95be9f5f4795@geanix.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>, 
 Sean Nyekjaer <sean@geanix.com>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Martin Kepplinger <martin.kepplinger@theobroma-systems.com>
Cc: Esben Haabendal <esben@geanix.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784118811; l=909;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=6qSTrUvFoQpzHMu9UB1C/X7u+Uvg4QnliIJn2ES26V0=;
 b=XxJV/wJj3hb5C7EdFcLUhpdQbTGn6llFIL00e5BiciReKdA1T2i5c71jY20MjJ8w6d4cUajPW
 LsBbHH4jyj3APCjhIeuubPQ7Khvvuo5mHhipI0GwtfLyOY96Y3XLDSM
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326987-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:esben@geanix.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[geanix.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[geanix.com:dkim,geanix.com:email,geanix.com:mid,geanix.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0797375E451
X-Rspamd-Action: no action

Reorder struct mma8452_data members to avoid holes.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/iio/accel/mma8452.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
index fdf7364d7fed..537263085215 100644
--- a/drivers/iio/accel/mma8452.c
+++ b/drivers/iio/accel/mma8452.c
@@ -108,11 +108,7 @@ struct mma8452_data {
 	struct i2c_client *client;
 	struct mutex lock;
 	struct iio_mount_matrix orientation;
-	u8 ctrl_reg1;
-	u8 data_cfg;
-	bool open_drain;
 	const struct mma_chip_info *chip_info;
-	int sleep_val;
 	struct regulator *vdd_reg;
 	struct regulator *vddio_reg;
 
@@ -121,6 +117,11 @@ struct mma8452_data {
 		__be16 channels[3];
 		aligned_s64 ts;
 	} buffer;
+
+	int sleep_val;
+	u8 ctrl_reg1;
+	u8 data_cfg;
+	bool open_drain;
 };
 
  /**

-- 
2.55.0


