Return-Path: <devicetree+bounces-305747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AvxzLW8HH2rRdgAAu9opvQ
	(envelope-from <devicetree+bounces-305747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:40:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 272A863049E
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:40:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Z037idkp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305747-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305747-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BAB930998BE
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5AAE378D9A;
	Tue,  2 Jun 2026 16:33:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05A037646E;
	Tue,  2 Jun 2026 16:33:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418033; cv=none; b=Yj7jLauI+4ALoFj+15ypsyyrZz3OeWEJRkoy0OvMnW0rTseWaLKZ0AM0sG58giKWLSQ5OOaV9G745Ofjs59Xce018YFNr1yaGTySKnYLVrDQuv0ZS0uqfCn3xweZ5IwMTFoKvDSN8zEYDANueDuEJ5BLUcdVMc7kftpK8uh+0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418033; c=relaxed/simple;
	bh=QE+/x50PUWPgUMng+TCd6vpNljqfCkNnE/cAuToKq/M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aMeHyG1nupoOwcfxH1Ej7rVdci9M3uuKG76OvsjmZHKXlnli3rrYIOADT/bjDdgzQ0mgpmy5oRTz2dnbXoQeGNPVP6EKdpzdjUFn5Ej8Va1o1CnquKedJZFIc3emQFmO3Qcy/lhg/NxvMRJY+cJw0Sx75AsDBM7inrsFBl9bYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z037idkp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED00C2BD01;
	Tue,  2 Jun 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780418033;
	bh=QE+/x50PUWPgUMng+TCd6vpNljqfCkNnE/cAuToKq/M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Z037idkpLKdH7+sgn7WQEv6RNj4koW7SMkxDN3JTDtILEjVBUwkOSktaDTZtay9mr
	 SiILa1b4I0Nvl7YePRzPZ9wVbAS0Qwvm63TT3K7lLoACA4yF2wKVW2+c/n4Zk8I/x+
	 mnINTxiNBfM3S8C5cWMUEVf4i1njanTR5u+XHdUhv5BXZA8RXGSIJHo2+LPqgvak7J
	 pdefOQKtyr+pQaPuh0QjQhZZ3upHZCZ4+FAJmDtZAVuamFf2yduM5yIuafBldxK8Ug
	 8ZUkmRT1MTgp0bVKpRge8KvDRHpEoClaNX0KwqM3HaxJFQrRHxuxqnZ1lN8UQrmGpb
	 WZQsTKZ79y9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D9ACD6E60;
	Tue,  2 Jun 2026 16:33:53 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Tue, 02 Jun 2026 17:33:58 +0100
Subject: [PATCH 11/12] iio: dac: ad5686: write_raw: use guard(mutex)()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-ad5686-new-features-v1-11-691e01883d27@analog.com>
References: <20260602-ad5686-new-features-v1-0-691e01883d27@analog.com>
In-Reply-To: <20260602-ad5686-new-features-v1-0-691e01883d27@analog.com>
To: Michael Auchter <michael.auchter@ni.com>, linux@analog.com, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780418030; l=1337;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=Dsy9fOpmU3g/1YFf/mAz4rjj8yKEcDVwiot3KZLm8lo=;
 b=Z++v0ifycOhzyxjvxvLeFAeSaxTfoRkG8LMACbMzeuYcqTqw65mZ+E2ow4UJgaT+YzxnNwsSX
 LVlg0xlP/VuCspodmAggEavmNlboJdT6mbyfbOdkv1eOU7/q9/x30D7
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-305747-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:rodrigo.alencar@analog.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:mid,analog.com:email,analog.com:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 272A863049E

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Use guarded mutex lock to facilitate code review when adding new
attributes. This will allow for early returns, avoiding error-prone
locking and unlocking in error paths. Gain-control support will add
the scale attribute.

Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/dac/ad5686.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
index 5052df44ab1c..54b953018cfa 100644
--- a/drivers/iio/dac/ad5686.c
+++ b/drivers/iio/dac/ad5686.c
@@ -205,23 +205,19 @@ static int ad5686_write_raw(struct iio_dev *indio_dev,
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



