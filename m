Return-Path: <devicetree+bounces-306748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JLnVI1RPIWoxDAEAu9opvQ
	(envelope-from <devicetree+bounces-306748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:11:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E38E063EDFF
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:11:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=gyzlTErd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306748-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306748-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6040F3075C20
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A59737C105;
	Thu,  4 Jun 2026 10:06:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound11.mail.transip.nl (outbound11.mail.transip.nl [136.144.136.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AF3326D4A;
	Thu,  4 Jun 2026 10:06:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567594; cv=none; b=UpEqapaPhftTcN4eCF/TEt6NulMRCCgL+CKFO4q0904vXHBTGv4kKTgmml1OW0oVoLbIOotO0G6wWAS8xSBKR8VkHPP6Z7tVbGXMQgL42dXPu2Bhje2QwimYE4jNOUsC4WuXwigEB08hLl4leqgMNCpd1Hy0iYvF6jwm6my3stQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567594; c=relaxed/simple;
	bh=Y4B6fqi/48NK9GYV1BBgrVjgx7MvJuxjKSvFfsI0q1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e7XQHNcL8gqg8x0YEV+j1zwHVC2e2a4+/QvxszOXYDv7sNCRRp1uaDjyp88tx+If6GQ1TXd/KdM7HhKblKb3C1aRkuWpLKywQMX9XDautb3dHL2cOaPyIcJ/gR4P3wtvkMvWm8SlOelsk7g9hDwlytzp0BFQHIZSICgqe/3w43Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=gyzlTErd; arc=none smtp.client-ip=136.144.136.18
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound11.mail.transip.nl (Postfix) with ESMTP id 4gWKwC43fszkQNlV;
	Thu,  4 Jun 2026 12:06:19 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission11.mail.transip.nl (Postfix) with ESMTPA id 4gWKwB5zMyz3R3nyx;
	Thu,  4 Jun 2026 12:06:18 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: jic23@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tomasborquez13@gmail.com,
	masneyb@onstation.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH v3 1/3] iio: light: isl29018: fix overflow and precision in isl29018_read_lux()
Date: Thu,  4 Jun 2026 12:06:15 +0200
Message-ID: <20260604100617.3486541-2-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604100617.3486541-1-github.com@herrie.org>
References: <20260604100617.3486541-1-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780567579; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=Zco13UcFpBMtSlK+E0umut/oSGpyst/ctTl6uNj/hGw=;
 b=gyzlTErd4Ct0K37EjRfkq+cFC02kM+DikE/+z9ED8rLQFaWzWwqvfuO3cPReVnWtzk+SDt
 BUZdreNcDLqBjSDynS/WLVwgCkFYSxCkuHlTAipD00FPtJ+By+m09hCvTGsnEkxNBtpvag
 KbBRkDuBRta8txuWiKZo3Vy4XwE7noQj84T/OAAu25m3i9KMbS8GiTRD9txLRWtea5GQAw
 vnARtjXjnoafISGxmp2HAka6JBXCvoJRIzC4l87rl1mnLH7Wy2MtLwKUXLlsTjfMnNL2MI
 DYK/2ptWkGwzQIzI/JOh5G3slJpda8wpr6jJwu5Dr16sU0m1YgtpO2oOTojRIg==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306748-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[herrie.org];
	FORGED_SENDER(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:github.com@herrie.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,onstation.org,vger.kernel.org,herrie.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[herrie.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E38E063EDFF

The intermediate calculations in isl29018_read_lux() use 32-bit
arithmetic throughout, which overflows in two distinct ways:

1. lux_data * chip->scale.uscale — at 16-bit integration time and the
   1000 fc range, scale.uscale is 976562.  A full-scale 16-bit reading
   (65535) gives 65535 * 976562 ≈ 64 billion, far beyond UINT_MAX.
   The value wraps before the /1000000 division can save it, producing
   a wildly wrong data_x_range.

2. data_x_range * chip->calibscale — even after a correct data_x_range,
   multiplying by a calibscale of a few hundred (reasonable for a deeply
   tinted cover glass) pushes the product past INT_MAX, causing *lux to
   wrap negative.

Additionally, dividing lux_data * scale.uscale by 1000000 before
applying calibscale discards the fractional-lux remainder.  For low
ranges where scale.scale is zero, any reading below 1000000/scale.uscale
counts truncates to a data_x_range of zero, so the calibscale
multiplication cannot rescue it.  This creates a dead-band at low light
levels that is especially visible when a large cover-glass compensation
gain is in use.

Fix the overflows by widening the intermediate variables to u64 and
using div_u64() for the divisions (plain 64-bit division emits
__aeabi_uldivmod on ARM32, which is not available in kernel builds).
Preserve the uscale remainder across the first division so that the
calibscale multiplication captures the sub-lux contribution.  Clamp
the final result to INT_MAX before storing it in the signed int *lux
out parameter.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 drivers/iio/light/isl29018.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/light/isl29018.c b/drivers/iio/light/isl29018.c
index b6ab726d1dae..f3312ad670d9 100644
--- a/drivers/iio/light/isl29018.c
+++ b/drivers/iio/light/isl29018.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/delay.h>
+#include <linux/math64.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
@@ -193,17 +194,22 @@ static int isl29018_read_sensor_input(struct isl29018_chip *chip, int mode)
 static int isl29018_read_lux(struct isl29018_chip *chip, int *lux)
 {
 	int lux_data;
-	unsigned int data_x_range;
+	u32 uscale_rem;
+	u64 uscale_term, data_x_range, result;
 
 	lux_data = isl29018_read_sensor_input(chip,
 					      ISL29018_CMD1_OPMODE_ALS_ONCE);
 	if (lux_data < 0)
 		return lux_data;
 
-	data_x_range = lux_data * chip->scale.scale +
-		       lux_data * chip->scale.uscale / 1000000;
-	*lux = data_x_range * chip->calibscale +
-	       data_x_range * chip->ucalibscale / 1000000;
+	/* Retain the uscale remainder so calibscale captures sub-lux precision. */
+	uscale_term = (u64)lux_data * chip->scale.uscale;
+	data_x_range = (u64)lux_data * chip->scale.scale +
+		       div_u64_rem(uscale_term, 1000000, &uscale_rem);
+	result = data_x_range * chip->calibscale +
+		 div_u64((u64)uscale_rem * chip->calibscale, 1000000) +
+		 div_u64(data_x_range * chip->ucalibscale, 1000000);
+	*lux = (int)min_t(u64, result, INT_MAX);
 
 	return 0;
 }
-- 
2.43.0


