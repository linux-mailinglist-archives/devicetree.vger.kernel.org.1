Return-Path: <devicetree+bounces-306747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Vr1OTRPIWoiDAEAu9opvQ
	(envelope-from <devicetree+bounces-306747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:11:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA8E63EDD4
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:11:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=fSFyhpA+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306747-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306747-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 840CE305E194
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BE8376479;
	Thu,  4 Jun 2026 10:06:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound8.mail.transip.nl (outbound8.mail.transip.nl [136.144.136.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E922F069D;
	Thu,  4 Jun 2026 10:06:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567593; cv=none; b=VxKhkBOzzkAveQAZqkUPvHCWhAQNAdsj4N+1KMcEA9D1tVxfASZnUYhyVgnca6AIl+5xpzC9U0m9a6AUcQmNVTjJKFsFod+qdq6YEDNC3JF3MUUUJQOWYqdi44jSLMTJKHJfcCUcFcoduKqPQgH+6OX518hiF0Wdt5EwwRRcqd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567593; c=relaxed/simple;
	bh=8/R1xH/1u5C7+If5wBxKvUwojFV7On6+CJuVfgKhiPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F1IYQG+PgVqIGDcMvGvFMbGauNVibAgUexLvmm1HCO8IBzNkkL1A5WDnhC/e9HlrrNdSTqFY1Dd1A5L3r1cqgZ/4Rlws2nzoyNlYAOobGrvyrHjQa3VYfwuOsJZzoH1XcNpsr18+KHL8GopeoHsS3Ua5lJnjZoQiqc/1LD9sF4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=fSFyhpA+; arc=none smtp.client-ip=136.144.136.8
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound8.mail.transip.nl (Postfix) with ESMTP id 4gWKwD1cNRzY76hL;
	Thu,  4 Jun 2026 12:06:20 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission11.mail.transip.nl (Postfix) with ESMTPA id 4gWKwC4FQNz3R3nyt;
	Thu,  4 Jun 2026 12:06:19 +0200 (CEST)
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
Subject: [PATCH v3 2/3] dt-bindings: iio: light: isl29018: add isil,cover-comp-gain
Date: Thu,  4 Jun 2026 12:06:16 +0200
Message-ID: <20260604100617.3486541-3-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604100617.3486541-1-github.com@herrie.org>
References: <20260604100617.3486541-1-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780567579; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=RCX5QQtXEBvtBWLLFqzdraDn9aAETLjRcUQQZV1kx+A=;
 b=fSFyhpA+wsc90ssyKSTAx1O8nlX3ddHD4AArSzsVIsglw72x2FrqtvIjIjXtevDa/GqyU/
 Xvy11LJD7JotCyWsZ/l+NYSbnqs1hxlhnkcDPLWDHBd0dSZJHbEuh4CFJ7pAGItUom2MJg
 Xtr54/V3aDjW4pGR2EP0dfHhv9u9kph4Y4utDut57mqnXqmWG0pinLcEC4Op/CQQ9OSVcu
 Db7mabGK4YNDo8u1+3bx5XlQlvk1y64FM/CBc6xcyR5eSPnh+fx9DpQp+4GSdTjkQtiU/H
 xuaK9A23pP8lG2P90RSBxq0xRQJeyTO/hGnyWFz18FUWi+fK3KG8Jw023EBpNg==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306747-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:github.com@herrie.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[herrie.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,onstation.org,vger.kernel.org,herrie.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[herrie.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4BA8E63EDD4

Document the new optional property that seeds the ISL29018 calibration
scale factor at boot from firmware, allowing boards with tinted cover
glass to ship with correct luminance readings without a userspace helper.

The value is a positive integer (minimum 1, maximum 65535) that is
multiplied with the raw lux reading.  Userspace can still override it
at runtime through in_illuminance0_calibscale.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/isl29018.yaml b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
index 0ea278b07d1c..92ea2742bbd3 100644
--- a/Documentation/devicetree/bindings/iio/light/isl29018.yaml
+++ b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
@@ -34,6 +34,19 @@ properties:
   vcc-supply:
     description: Regulator that provides power to the sensor
 
+  isil,cover-comp-gain:
+    description: |
+      Multiplier applied to the ambient-light reading at startup to
+      compensate for optical loss in the board's cover glass. Boards
+      that mount the sensor under a tinted or coated window typically
+      need a value between a few and a few hundred. The value seeds
+      in_illuminance0_calibscale, so it can still be retuned at
+      runtime through sysfs.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 65535
+    default: 1
+
 required:
   - compatible
   - reg
-- 
2.43.0


