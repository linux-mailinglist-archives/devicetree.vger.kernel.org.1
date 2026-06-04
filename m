Return-Path: <devicetree+bounces-306625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UHJyIVQgIWpl/QAAu9opvQ
	(envelope-from <devicetree+bounces-306625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:51:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C10163D577
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:51:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=hDUivU0t;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306625-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306625-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8ED33063A90
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 06:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD8D3D79FD;
	Thu,  4 Jun 2026 06:49:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound10.mail.transip.nl (outbound10.mail.transip.nl [136.144.136.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9F3C3451;
	Thu,  4 Jun 2026 06:49:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780555783; cv=none; b=Xz4Nup9PIfibpTawNxLve+GPE3Zv6R9fQefMnTnAFzMJNAPat6cDPH/eFz/rUs5lao5NJ3Ya/RYBffF3KgXxbAI5UYDubABNgwwaToTMGCsmk4D1/AwRVwZhejj84WyzC3oW9jJ0vqJf45UnI8+xgtcTxakqCNqqVvdt5qitazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780555783; c=relaxed/simple;
	bh=oywdSivV/NpQN1wXKSdQq5Wu/6uQhRyMY9gM5iiPf/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jYjUzqlKBQd8X8krCYUEMW3yc6RSYiYy0PJbjVDvVqeFltRK8gAq7zBjUR3DyMf8vgp0jFZnE7BqAvwFbvI/UIq/p7l7DxTXvFQ6FFQs0QiR1lAGmpFDme66rxm1Sje5eDY3xYJOmokmrDFMbi0KCajlEtMgtB1ix5CZ5Wkc42I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=hDUivU0t; arc=none smtp.client-ip=136.144.136.17
Received: from submission3.mail.transip.nl (unknown [10.100.4.72])
	by outbound10.mail.transip.nl (Postfix) with ESMTP id 4gWFY33DrrzTPNX4;
	Thu,  4 Jun 2026 08:49:27 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission3.mail.transip.nl (Postfix) with ESMTPA id 4gWFY26TGhzf52bR;
	Thu,  4 Jun 2026 08:49:26 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH v2 1/2] iio: light: isl29018: fix 32-bit overflow in isl29018_read_lux()
Date: Thu,  4 Jun 2026 08:49:24 +0200
Message-ID: <20260604064925.3097108-2-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604064925.3097108-1-github.com@herrie.org>
References: <20260604054723.2983181-1-github.com@herrie.org>
 <20260604064925.3097108-1-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: ClueGetter at submission3.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780555767; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=4cYIfd0/w5cJoCAlF9Q80FADB/3Lqf1vY5KVb3NzNwk=;
 b=hDUivU0thqMMyOL2nmhKeCorFEqJvBw2gpm8qI5GrYvmbpnB6do9GtyBjXifwaMFJtH4Lf
 sfCpSt6SINgV4t6ls3bOzHXey+9EZAbcC+M0E5C1vu/5TDehcN+8j8H5cLh7wc9RDG0NZB
 o14mk3zL/2ETAd1X4oNzkuV6KNLxW6jIBBUV+E5smuFiynILWD9jnpdFasKtEk6QsMu4dE
 Ap/RgBZPDOYoy72X6q54IvKpoFUs46amxa7MG6NF00I05ynuW/PCx5TSh+dIj5JOtMrbjV
 zDWWCjet6IIJbfzXrlpgnMdiz3MGc1mCVbndBg+HaBRpyh7wZNO0O/lRzjUkVQ==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306625-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[herrie.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:github.com@herrie.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[herrie.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,herrie.org:mid,herrie.org:dkim,herrie.org:from_mime,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C10163D577

The intermediate calculations in isl29018_read_lux() use 32-bit
arithmetic throughout, which overflows in two distinct ways:

1. lux_data * chip->scale.uscale — at 16-bit integration time and the
   1000 fc range, scale.uscale is 976562.  A full-scale 16-bit reading
   (65535) gives 65535 * 976562 ≈ 64 billion, far beyond UINT_MAX.
   The value wraps before the / 1000000 division can save it, producing
   a wildly wrong data_x_range.

2. data_x_range * chip->calibscale — even after a correct data_x_range,
   multiplying by a calibscale of a few hundred (reasonable for a deeply
   tinted cover glass) pushes the product past INT_MAX, causing *lux to
   wrap negative.

Fix both by widening the intermediate variables to u64 and clamping the
final result to INT_MAX before storing it in the signed int *lux out
parameter.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 drivers/iio/light/isl29018.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/light/isl29018.c b/drivers/iio/light/isl29018.c
index b6ab726d1dae..eafdfd9c4635 100644
--- a/drivers/iio/light/isl29018.c
+++ b/drivers/iio/light/isl29018.c
@@ -193,17 +193,18 @@ static int isl29018_read_sensor_input(struct isl29018_chip *chip, int mode)
 static int isl29018_read_lux(struct isl29018_chip *chip, int *lux)
 {
 	int lux_data;
-	unsigned int data_x_range;
+	u64 data_x_range, result;
 
 	lux_data = isl29018_read_sensor_input(chip,
 					      ISL29018_CMD1_OPMODE_ALS_ONCE);
 	if (lux_data < 0)
 		return lux_data;
 
-	data_x_range = lux_data * chip->scale.scale +
-		       lux_data * chip->scale.uscale / 1000000;
-	*lux = data_x_range * chip->calibscale +
-	       data_x_range * chip->ucalibscale / 1000000;
+	data_x_range = (u64)lux_data * chip->scale.scale +
+		       (u64)lux_data * chip->scale.uscale / 1000000;
+	result = data_x_range * chip->calibscale +
+		 data_x_range * chip->ucalibscale / 1000000;
+	*lux = (int)min_t(u64, result, INT_MAX);
 
 	return 0;
 }
-- 
2.43.0


