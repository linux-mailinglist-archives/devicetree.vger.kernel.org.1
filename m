Return-Path: <devicetree+bounces-318640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1DYLEn8ZRWrt6woAu9opvQ
	(envelope-from <devicetree+bounces-318640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:43:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB06EE44A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:43:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emailprofi.seznam.cz header.s=szn1 header.b=S+BGghOZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318640-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-318640-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6C39430B3904
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1257A481AA0;
	Wed,  1 Jul 2026 13:16:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxb.seznam.cz (mxb.seznam.cz [77.75.78.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2620481643;
	Wed,  1 Jul 2026 13:16:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911800; cv=none; b=K63KCQ3r4UcmniYAG4AxHPewToCZ+0hvx4AcF8uI+df0ZyDFaYe5C6nVT8y+SrXeCGXw7uWexFF41hnxoIPwwUQNEBXdplHzZWSlO47hfkDxdTvaoNBqCADu7ehdDOtYxBFRgMbvTEeAJ+G89lbadgcb9o2/LqBtUjbm/GNpa+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911800; c=relaxed/simple;
	bh=J2Tfr0KuUi9JJbAl5PXWWq9Fi5eRMYMqNrcCwoqL//k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=QfbGT73q52bx1fK/TBe3QgPQsabfOyg0xHcfkCAG8m+aXvVFgtJxloyhF+CkVanqYF2+bpcZBTRGKWUjtb1XbZE/Rcy4JbrOcdUR0ns3wCz+LuM29/qFj6CAgYjihdbjFyBlP3ZLIzI1OKqx+KRGcJFjFXsnxb7R2IjWoYvfaeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz; spf=none smtp.mailfrom=loebl.cz; dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b=S+BGghOZ; arc=none smtp.client-ip=77.75.78.89
Received: from email.seznam.cz
	by smtpc-mxb-7dd54556bb-mmpkq
	(smtpc-mxb-7dd54556bb-mmpkq [2a02:598:64:8a00::1000:90e])
	id 140260b20f90ed6610e7d930;
	Wed, 01 Jul 2026 15:16:35 +0200 (CEST)
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn1; t=1782911795;
	bh=xENII8EZaJdwQWpJhr6djRtFKqHREofsbn+6lT7eUXo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=S+BGghOZtlViIN8JzVsWMWdnuf7/QSckbRWvDG7HyVlH26ohSVUKBvulvpf4+RWJk
	 D3CoOs23Wza7OnAjdCnNSsXm1eSy3kuNfa6qwig8YD21AkVhNZjuNp+h3noXkn9KUN
	 qkIGYamIf3+v9r3lZw4sZdfNVr6WGcst9BZKoX36c1uajUexY6xs8ivOCI74Mk5bme
	 RfRFhKo08pETF5DI6HRryxtr4TW8BghqpkspipaGSh3vcjduKYgyDIWklShpQrgiAI
	 Skdx8aMungoq4sh0KVcyjRKVqIGLBRyTGAU/NPR9qwQeTzP7I+hEkabNy1pfuS2YYI
	 ZmfQCE7Y9+M6Q==
Received: from localhost (109-81-118-98.rct.o2.cz [109.81.118.98])
	by smtpd-relay-f8b496c7c-7h56j (szn-email-smtpd/2.0.76) with ESMTPA
	id ee0831a5-5829-4d63-afdc-25c2ca5f626b;
	Wed, 01 Jul 2026 15:13:48 +0200
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	=?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH 0/2] Add support for Si549 programmable clock
Date: Wed,  1 Jul 2026 15:09:24 +0200
Message-ID: <20260701130927.3858536-1-pavel@loebl.cz>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[emailprofi.seznam.cz:s=szn1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318640-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:pavel@loebl.cz,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[loebl.cz];
	FORGED_SENDER(0.00)[pavel@loebl.cz,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavel@loebl.cz,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[emailprofi.seznam.cz:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,emailprofi.seznam.cz:dkim,loebl.cz:mid,loebl.cz:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36EB06EE44A

This adds support for Si549 programmable oscillator. It's almost the
same as already supported Si544, except it uses different internal
oscillator frequency.

So new compatible strings are added, and driver data is extended
to carry both maximum output frequency and internal xtal frequency.


Pavel Löbl (2):
  dt-bindings: clock: si544: add si549 compatible
  clk: si544: add support for si549

 .../bindings/clock/silabs,si544.yaml          |   8 +-
 drivers/clk/Kconfig                           |   6 +-
 drivers/clk/clk-si544.c                       | 100 +++++++++++++-----
 3 files changed, 84 insertions(+), 30 deletions(-)

-- 
2.53.0


