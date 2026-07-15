Return-Path: <devicetree+bounces-326969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1p50A918V2r8GAAAu9opvQ
	(envelope-from <devicetree+bounces-326969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C027575E1B7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=eWjIJNJ4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326969-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326969-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E645230324F8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6A0946AF31;
	Wed, 15 Jul 2026 12:27:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106113.protonmail.ch (mail-106113.protonmail.ch [79.135.106.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774F047798B;
	Wed, 15 Jul 2026 12:27:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118474; cv=none; b=s5tnqhwd0atayhIgKME1Pp9HZof1tQtTH+hqbXSfYjAzyXWgBt+8RYTwe9H55EPLsePOWlDRRn+JovfrzLK48q9YewtJwBcyQjqKuLv5z+hV6PoWImEdf8hTz5Xmmouqgy1W3SaRZbPRjKbCBWGPDqBpBMjCSJN4CiTJqnfeBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118474; c=relaxed/simple;
	bh=dm9nW2iDC7Blmz0joKHenTSW6fNAAaYJo3/DVFapXIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pkqQmjUHAVxzfahePtPXI+wwugwQspZBD6aAX/TEhqBzj0Qr3aHTmNTGjHEePSyyH4Q3gGUKb46nIcPE8eWNoMBHyB3EbMauqB97x6tPMuYqXlb3z+xEHYEjs8mCvPeYzKil+XbytWOvrQoKIGh0+wfLA180QAD8GTgjGff6Qfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=eWjIJNJ4; arc=none smtp.client-ip=79.135.106.113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118469; x=1784377669;
	bh=4txtrKsUBGLy0L51a+7SG+rC6dcravOeIwVdezpahkc=;
	h=From:Date:Subject:Message-Id:References:In-Reply-To:To:Cc:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=eWjIJNJ4p+ARsZSDSHgfm40F5QxSLm6tJ0+ImSUc3HKeC9TCwFSgEMYgW1815akil
	 KML0ia1Ob0JHtwxJg311BQ3+4UD67amiE4OxTysmaYhweLs5Q0I7AzsF4vjp4oTlCN
	 1QyiatlJQm+QEuRtM2OKWyrbUcd/rw0QeUmwksTHYyznMEcmf4O5Hf2NO4aGPSY5qH
	 tOseTPqteCeaOHee+eAMg2gaPNobxGysM8OZ0C78Irb+aUbDNoOtPOSsXD+BRNY4Qh
	 PTiOURVjMHmDX7iL7We932SWXqo9Y9P8MmZHw2JoRGnMJwNWonRyG5+s8nCUwy0q5Q
	 M0H1Hq2WoxlPg==
X-Pm-Submission-Id: 4h0b6X0DNxz1DFDy
From: Esben Haabendal <esben@geanix.com>
Date: Wed, 15 Jul 2026 14:27:26 +0200
Subject: [PATCH v2 4/4] iio: light: ltr501: Power down chip if request irq
 fails
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-liteon-ltr329-v2-4-d18af55edab5@geanix.com>
References: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
In-Reply-To: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nikita Travkin <nikita@trvn.ru>, 
 Maslov Dmitry <maslovdmitry@seeed.cc>
Cc: Esben Haabendal <esben@geanix.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <jic23@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784118460; l=718;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=dm9nW2iDC7Blmz0joKHenTSW6fNAAaYJo3/DVFapXIM=;
 b=T/VRQqT4oI8j04k00nlKb0rWxgksPtiTaFn4spKAZbU2YUgcxIfXMB5Ua2gu/qqy40cDwvXQQ
 lSiho35B4YQBzkpgzC1KdKdp0J58q4C4bEZII/l311sY1X9gUVR8Ngs
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326969-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:esben@geanix.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[geanix.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DNSWL_BLOCKED(0.00)[2600:3c09:e001:a7::12fc:5321:from,100.90.174.1:received,79.135.106.113:received];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,79.135.106.113:received];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DWL_DNSWL_BLOCKED(0.00)[geanix.com:dkim];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,geanix.com:dkim,geanix.com:email,geanix.com:mid,geanix.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C027575E1B7
X-Rspamd-Action: no action

In case request irq failed, we were leaving the chip powered instead of
powering it down again.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/iio/light/ltr501.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
index 379e57ac5f5b..9d4de798e5ab 100644
--- a/drivers/iio/light/ltr501.c
+++ b/drivers/iio/light/ltr501.c
@@ -1571,7 +1571,7 @@ static int ltr501_probe(struct i2c_client *client)
 		if (ret) {
 			dev_err(&client->dev, "request irq (%d) failed\n",
 				client->irq);
-			return ret;
+			goto powerdown_on_error;
 		}
 	} else {
 		indio_dev->info = data->chip_info->info_no_irq;

-- 
2.55.0


