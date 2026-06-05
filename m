Return-Path: <devicetree+bounces-307265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gJgRDb+SImqVaQEAu9opvQ
	(envelope-from <devicetree+bounces-307265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:11:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5AB646BA2
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:11:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=xIR0WfQb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307265-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307265-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D65EB304D45D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 09:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AE94B8DEE;
	Fri,  5 Jun 2026 09:01:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC034BC020
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 09:01:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780650111; cv=none; b=MCQ4UX4eEyc9jL3huDQscyiXWZ1rQcW08GIX1yWTPfl66xwAU2zz+LRAOOVG+Z5xZ9ChIHMIKCA522vLyPYaN44pf8wS49TjMi5yyDA+QbuVJAbAYRUSn+vZCEkpz7EPyN3my15FYLJUdLdlaKUw+RByzqKdWkjA4aw+wETwLd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780650111; c=relaxed/simple;
	bh=GoNuSPuQX8Kg6A443oXWmi/EnA7QK5n+kuzB4KFEMo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qc0dPsXpxXWZnSE+7YGjH8Nf+ZkcXlT+7+PAcFTOz0wVb4+NFIekwPW6Xsm0cq6uDyIUQXRACwis80teLFXz2FPxBXV6NTQMpaepE+lHRMVrGNynD3IF9R9+YPbHNQuzLhmXP1JW/bYCC24BB7Z6VaG5NTYyAyQBwX6Hn8YFf+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=xIR0WfQb; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 6D28E4E407B2;
	Fri,  5 Jun 2026 09:01:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 41F485FED1;
	Fri,  5 Jun 2026 09:01:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 67777106A2030;
	Fri,  5 Jun 2026 11:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780650106; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=SFPHV5zqk3B2y4LcmnDnbzwpHGrfnESbOruQVDwdaHQ=;
	b=xIR0WfQbHvv0QfCez1FHz3peZ5U3YmCYfqcogE1wtVqECrhYC2BcR9uMzGYbD7MTWsbBHX
	rLFrXM8du1p7r/VHYHGi8ff3aDbO4T64PcBKu0geEUSxjnM4lEUIGMGlsgrvm/gPOUqPAq
	v/dSSqo/7ezjJCDE0zx5qhbmYm03DYqZDompj+BTiRJgG8doS7YYybAaunPk6Ct5clP8J4
	g6NKEpn5LsmS7nipedVKpXIe4D2sZDul6GOBTii9ufHtQhAF8OROG6Asqe1WyNFIT9G2tu
	+P7v4BwgTtGPTVPqjSozulPSrEGG68WupxxrP0D9iKL4E4lF135FQrM4QvpinQ==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Fri, 05 Jun 2026 11:01:35 +0200
Subject: [PATCH 1/2] dt-bindings: iio: ti,tmp117: add binding for the
 TMP119
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-tmp119-v1-1-349f45f17d12@bootlin.com>
References: <20260605-tmp119-v1-0-349f45f17d12@bootlin.com>
In-Reply-To: <20260605-tmp119-v1-0-349f45f17d12@bootlin.com>
To: Puranjay Mohan <puranjay@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:url,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F5AB646BA2

The TMP119 has the same register layout as the TMP117, and a better local
sensor accuracy.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
index fbba5e934861c..9f3b74274b16e 100644
--- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
@@ -7,10 +7,11 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: TI TMP117 - Digital temperature sensor with integrated NV memory
 
 description: |
-    TI TMP116/117 - Digital temperature sensor with integrated NV memory that
-    supports I2C interface.
+    TI TMP116/117/119 - Digital temperature sensor with integrated NV memory
+    that supports I2C interface.
       https://www.ti.com/lit/gpn/tmp116
       https://www.ti.com/lit/gpn/tmp117
+      https://www.ti.com/lit/gpn/tmp119
 
 maintainers:
   - Puranjay Mohan <puranjay12@gmail.com>
@@ -20,6 +21,7 @@ properties:
     enum:
       - ti,tmp116
       - ti,tmp117
+      - ti,tmp119
 
   reg:
     maxItems: 1

-- 
2.54.0


