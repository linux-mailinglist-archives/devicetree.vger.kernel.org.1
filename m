Return-Path: <devicetree+bounces-326745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ARsUGipEV2phIQEAu9opvQ
	(envelope-from <devicetree+bounces-326745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:26:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5601275BD9A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:26:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=tB7mvfhf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326745-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326745-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 09D8D3028137
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60DEB3CD8B8;
	Wed, 15 Jul 2026 08:24:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43172.protonmail.ch (mail-43172.protonmail.ch [185.70.43.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C343CC323;
	Wed, 15 Jul 2026 08:23:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784103842; cv=none; b=l/kgvqDz9tkJy+qAUjb6EksWiSTU8UvD7+bwo7LHPCFPaCgPwRudY3fTpkgIALldC8VIBbQBKPy4gyTgrm8jMs2zfxzM2Sq9/jB5l9DJe0n7YITeTlrxyw62bLGMIwieqmrlBdIBBqsWCYTvOsyHUbo5JbrcR5ZtcgsIRmSjwls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784103842; c=relaxed/simple;
	bh=ISJBKGJ7uSFseLhyCH5QRJqorkE7h+r0Ey2aHLG/b9Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lbI7obTEsgQy1hJkdRdE31CAN3rN4AVR0xbkA7tC0UMZB+jnTs3Seucvkd6awFU6hLAdBzNG1xY2a+0s3Q/aoWwISfPKSBDCHpUVGfY+E+uRa+ZHUystL1zALj97CvoecZr86hGw0q02Wt8UWSzE7xMk2c7tHHVdbu4fnV097VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=tB7mvfhf; arc=none smtp.client-ip=185.70.43.172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784103831; x=1784363031;
	bh=unDUrRWYn3Y987s3XbMj+BF1h22T+O5Je+Wh+r3sqXs=;
	h=From:Subject:Date:Message-Id:To:Cc:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=tB7mvfhfItEK+LX8UNjZtIhVIn+I1DuyuzSAH/Yi5W06p664hWPtTAtLbSGTsYysg
	 H3u2YJ750TrnV+Kqs2AZ69Ez695GLLQ/NK0VS7ooqTP1TvYcu+2IQmmOWCY6HYQyi8
	 8u3sQMK2aozww2Vv06PnPBB+tY9PkSrSntEgRJLd+vh2kEKVHBNoHWjDDBz8n8f48e
	 /pskK+IEff41/exX0BIwzRUVCtMNLmbZmeB8JDzVCESG2Wj/PbvjIt3kDphxxSBrnD
	 iGU0zRdb0C+9jrIIBAY0OlyGhpHU8RTt6UO/hMi3L6kNYHlT8ZO+YMPLXu/wwVTX+h
	 G889lpqf0zK3A==
X-Pm-Submission-Id: 4h0Tj12L3Hz1DFDy
From: Esben Haabendal <esben@geanix.com>
Subject: [PATCH 0/3] iio: light: ltr501: Add ltr329 support
Date: Wed, 15 Jul 2026 10:23:47 +0200
Message-Id: <20260715-liteon-ltr329-v1-0-31f027051594@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ5AMBBA4avIrDUxJfVzFbFQBiNS0pZIxN0Vy
 2/x3gWOLJODKrrA0sGOVxOAcQTd1JqRBPfBIBOpkhxRLOxpNWLxNpWlaFPSKDPMCqUgNJulgc/
 vVze/3a5n6vw7gft+ACSCfFxxAAAA
X-Change-ID: 20260711-liteon-ltr329-a3eb12414866
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784103828; l=764;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=ISJBKGJ7uSFseLhyCH5QRJqorkE7h+r0Ey2aHLG/b9Y=;
 b=15+tw1F66c9jJ9BzSEZHWHsr1nvGfQGkTuGr+/uoTvdVCFK+itYLyzacKbJiK5ryQwaYPdS04
 R6SHbn1mMcKA/CybZH5PNUxn8MRnbdYNHz5KidOnhH02rYovE2NZIbw
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326745-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,geanix.com:from_mime,geanix.com:mid,geanix.com:email,geanix.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5601275BD9A

The LiteON LTR-329ALS-01 chip is similar to the LTR-303ALS-01, except for
interrupt support and related registers, which LTR-329ALS-01 does not have.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
Esben Haabendal (3):
      dt-bindings: iio: light: ltr501: Add missing ltr303 compatible
      dt-bindings: iio: light: ltr501: Add ltr329 compatible
      iio: light: ltr501: Add ltr329 driver support

 .../bindings/iio/light/liteon,ltr501.yaml          |  2 ++
 drivers/iio/light/ltr501.c                         | 31 ++++++++++++++++++++++
 2 files changed, 33 insertions(+)
---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
change-id: 20260711-liteon-ltr329-a3eb12414866

Best regards,
--  
Esben Haabendal <esben@geanix.com>


