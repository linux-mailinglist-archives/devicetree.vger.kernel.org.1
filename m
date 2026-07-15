Return-Path: <devicetree+bounces-326744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D39TIylEV2pgIQEAu9opvQ
	(envelope-from <devicetree+bounces-326744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:26:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8C75BD99
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:26:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=ApxJG099;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326744-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326744-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C4AC930760AF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DAC83C872C;
	Wed, 15 Jul 2026 08:23:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106111.protonmail.ch (mail-106111.protonmail.ch [79.135.106.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191C73644A4;
	Wed, 15 Jul 2026 08:23:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784103839; cv=none; b=nDy4CpPLBCOpd8KNHXkDcDupNTpq+qaYDR0NeAllxyJOQivJCbxUIgL9k5Cs/+ov2VQNH4/FiLjMt7FV9Y1PUe7PtceaCZ9ljIAym/SOjhbvgNu4aF0WqO1jYewXH/2Bj48AOgSm9KNPDhzA4B1tZtwv9BTkh9W/coav24nFgfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784103839; c=relaxed/simple;
	bh=ptiLm+CNIzLah7x8+408IhZd1o2PQjYIBj4oQIDGZjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RrTFW18xIub2K6p/WbJzVNBcDeBi5T6OEBLN9PYQQ15yHc9AwVFo1lvc5HdmxZLsDolN4YprS4kuPHiFDTPnw7GUFUTcZbPQYm05FnRgbSAZBftrzi2447F7XjWg44v0PP+9dxxuHeUNJF6PX938hKge/Ql+V0qUzawSkJ23ukk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=ApxJG099; arc=none smtp.client-ip=79.135.106.111
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784103832; x=1784363032;
	bh=RIOQ5ssVhDJTh9QFgn+Z93atKpzQKchC8CMgcI3Y4aw=;
	h=From:Date:Subject:Message-Id:References:In-Reply-To:To:Cc:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ApxJG099PjrTcPDO8Hpnv4iZr6dV+hM+jVoHrLiRsPK2GWp0sgjofdIZXnsN0ndK+
	 n4hKpvzp2+G0WME2q+NH+H4mtKwkHNepb8CyfGx55OncHmbXrXP0rDaAd3uQut/CYW
	 gQtncNdPV5WiG5OLAMquvu35T+Ceayv1H4ttGqcvEjVJnMnW+vwXORmLKQBNbGkYMp
	 fjLjDfNz7trGE4y8RSMiqg73PhZ+B7yLMVlosImmnHE4tN7OT9bqdzhkRC4yU5lLRv
	 +YE/cb8uIn9Aq9CnI3o21EIKL3ZP519vJXGKLo48UWRmpKSSlbW6yTgb80uWvjbl04
	 ta5b0s+xIJ/Mg==
X-Pm-Submission-Id: 4h0Tj30JDPz2ScqT
From: Esben Haabendal <esben@geanix.com>
Date: Wed, 15 Jul 2026 10:23:48 +0200
Subject: [PATCH 1/3] dt-bindings: iio: light: ltr501: Add missing ltr303
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-liteon-ltr329-v1-1-31f027051594@geanix.com>
References: <20260715-liteon-ltr329-v1-0-31f027051594@geanix.com>
In-Reply-To: <20260715-liteon-ltr329-v1-0-31f027051594@geanix.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nikita Travkin <nikita@trvn.ru>, 
 Maslov Dmitry <maslovdmitry@seeed.cc>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Esben Haabendal <esben@geanix.com>, 
 Jonathan Cameron <jic23@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784103828; l=832;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=ptiLm+CNIzLah7x8+408IhZd1o2PQjYIBj4oQIDGZjk=;
 b=U4lutJHRFAErP2cjsFTVXVXBnQSKPFnhMVU9lxOuFyvs7uPARZOD5Dy9eJH1VpXhqK9WGgVyt
 r0hPbO23jSRBjhZw+12wZYKHhVXzUGorny3yj/G7lngpgppwyE+Lxue
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326744-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:esben@geanix.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,geanix.com:from_mime,geanix.com:mid,geanix.com:email,geanix.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBC8C75BD99

When support for ltr303 was back in 2021, the bindings documentation was
not updated accordingly.

Fixes: 7d71d289e1ba ("iio: light: ltr501: Added ltr303 driver support")
Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml b/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
index c8074f180a79..ab9bb68dd736 100644
--- a/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
+++ b/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
@@ -18,6 +18,7 @@ properties:
       - liteon,ltr501
       - liteon,ltr559
       - liteon,ltr301
+      - liteon,ltr303
 
   reg:
     maxItems: 1

-- 
2.55.0


