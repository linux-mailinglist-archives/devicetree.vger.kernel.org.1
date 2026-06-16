Return-Path: <devicetree+bounces-312363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KDywLBYIMWpsagUAu9opvQ
	(envelope-from <devicetree+bounces-312363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:23:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5124568D216
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:23:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ByGAJe+F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312363-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312363-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1FE0309B78A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBCF421A1C;
	Tue, 16 Jun 2026 08:21:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481254218B5;
	Tue, 16 Jun 2026 08:21:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598073; cv=none; b=PUkYQPYvGbANfc/Tmaqkmry/TsFIucoyniw56j7V+DI5e7KgkvUtCAeex0VNueZqiVv6yiWJULuVwrgIrW+sDoM7i6rI/tfbsf9rgrJyC+aSnZnnDVNIZKYCSingZLbhBNd57prr2qmS6dJR5RNsiXqxzqFt3KEs/OvXVVHdc64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598073; c=relaxed/simple;
	bh=L0fBefQQKHaGvBn3RQgN28YS/4RD9+k1x5g5yxjjz9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XGPk/z/JjXIy6YxKZjMzmk3ZjTTRrog+XBvEjipwYGcSJ2I4YeeH4dARdmceKSauwrb4I4gTBJbdrArMa0iaM+14pHZSb7it0iLR/qSL+ERrB65EH7QfrdNh5ytOnxrz4THuluAW0521txt5SDXpXx17xVvFmjNOr/UvjmUMehg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByGAJe+F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D97CC4AF10;
	Tue, 16 Jun 2026 08:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781598073;
	bh=L0fBefQQKHaGvBn3RQgN28YS/4RD9+k1x5g5yxjjz9g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ByGAJe+FwW0HZtAXoREZxm3iJz1KXY0OqFRq/BndTBb+lDd47m/mPDfaNftx6lVF7
	 /J5IHlPBvWL5YHlE2rRkz4v2YW6llzooaRcfTyJ4N2FMZN41AUJZy3nstzf9tRopIW
	 g2L3hbfGGfXoQ25ufSnpS2p/0UtDv95l+4RzznYHWf63cQtC3KRSAB2HsUUsDbYitB
	 tFN9D/x+9cgCOBAg4ehYURgzicqT74bmZar6AsMe3Oa175l4KYbWiP/LkKr39oZ+xr
	 4EAy3990cDctZgNh/Huo1pZqAOfi2GkQpyXj1be5mMc2+2ihpZqjXi0d198yBJnqhI
	 Arfg0qpV02UWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04580CD98CF;
	Tue, 16 Jun 2026 08:21:13 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Tue, 16 Jun 2026 09:21:17 +0100
Subject: [PATCH v3 11/12] iio: dac: ad5686: read_raw/write_raw: use
 guard(mutex)()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-ad5686-new-features-v3-11-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
In-Reply-To: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
To: Michael Auchter <michael.auchter@ni.com>, linux@analog.com, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>, 
 Maxwell Doose <m32285159@gmail.com>, 
 Joshua Crofts <joshua.crofts1@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781598070; l=2132;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=FMQdYD+iNI3Tssm26/NaB9++r5wDvQxzAaZwAETIyxw=;
 b=FphHMixH+cuLkN/qq5akO+q1Nsc9EbVMeJ31/DQ76EP3yDIf+M3Xt3z06DDIEeag1Ii7c6yCT
 vElEnr2NeebDqPmw6NKg+DEd73hCxEQnLB88SHUH5xi7l8EJbZjeSW7
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312363-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	FORGED_RECIPIENTS(0.00)[m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:rodrigo.alencar@analog.com,m:m32285159@gmail.com,m:joshua.crofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,baylibre.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:replyto,analog.com:email,analog.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5124568D216

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Use guarded mutex lock to facilitate code review when adding new
attributes. This will allow for early returns, avoiding error-prone
locking and unlocking in error paths. This also adds missing include
linux/cleanup.h. Gain-control support will allow the scale attribute
to be configurable.

Reviewed-by: Maxwell Doose <m32285159@gmail.com>
Reviewed-by: Joshua Crofts <joshua.crofts1@gmail.com>
Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/dac/ad5686.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
index 9e8a014e5ac3..6ae788f665b4 100644
--- a/drivers/iio/dac/ad5686.c
+++ b/drivers/iio/dac/ad5686.c
@@ -8,6 +8,7 @@
 #include <linux/array_size.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
+#include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/dev_printk.h>
 #include <linux/errno.h>
@@ -181,11 +182,11 @@ static int ad5686_read_raw(struct iio_dev *indio_dev,
 	struct ad5686_state *st = iio_priv(indio_dev);
 	int ret;
 
+	guard(mutex)(&st->lock);
+
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
-		mutex_lock(&st->lock);
 		ret = ad5686_read(st, chan->address);
-		mutex_unlock(&st->lock);
 		if (ret < 0)
 			return ret;
 		*val = (ret >> chan->scan_type.shift) &
@@ -206,23 +207,19 @@ static int ad5686_write_raw(struct iio_dev *indio_dev,
 			    long mask)
 {
 	struct ad5686_state *st = iio_priv(indio_dev);
-	int ret;
+
+	guard(mutex)(&st->lock);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		if (val >= (1 << chan->scan_type.realbits) || val < 0)
 			return -EINVAL;
 
-		mutex_lock(&st->lock);
-		ret = ad5686_write(st, AD5686_CMD_WRITE_INPUT_N_UPDATE_N,
-				   chan->address, val << chan->scan_type.shift);
-		mutex_unlock(&st->lock);
-		break;
+		return ad5686_write(st, AD5686_CMD_WRITE_INPUT_N_UPDATE_N,
+				    chan->address, val << chan->scan_type.shift);
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-
-	return ret;
 }
 
 static const struct iio_info ad5686_info = {

-- 
2.43.0



