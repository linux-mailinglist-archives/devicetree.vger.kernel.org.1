Return-Path: <devicetree+bounces-306859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q15RB2WEIWpfHwEAu9opvQ
	(envelope-from <devicetree+bounces-306859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 15:57:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EE1640985
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 15:57:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306859-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306859-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FD8F30B138A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 13:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F70147DF96;
	Thu,  4 Jun 2026 13:44:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3EF47DD65
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 13:44:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780580678; cv=none; b=Ykqt1zvHvSYlVGpsN8a1rH0UpzU9f2/wsU0TFrAlo0EmHUNOKhD6dSFfpjIyI67rPso7U61puNkv1WMzfNSQEDd6lUaLRqr7rItq1TB0HgW93XFJtiRCTPUTmkGa91wKyfNivuv21+Z7fGaA5TuAVz/5hVElfhkb8pBy4w3eUUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780580678; c=relaxed/simple;
	bh=JAYNoi9z2XrkP30NSWWkWVNm0tZX6tGRbCpHrwaHTcI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Hx5nGVa2nK1s7ZYKFoIvOrkuX2pUe9NL4S6AWm0NXsP970lf46P80Eo7JRHtehOPulKc1QS9mfI9W1nERpAEpHX0kFbIiWaGwQGatgwe6N3Zd5zeghTaHOlb782AeY9RBt4yY3lH9TscCw6pasJPMTlG7ggq7ZCi8We/TuqsSTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV8Mz-0000Us-9i; Thu, 04 Jun 2026 15:44:25 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV8Mz-0015UZ-0i;
	Thu, 04 Jun 2026 15:44:25 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wV8Mz-00000000AB7-0Z7A;
	Thu, 04 Jun 2026 15:44:25 +0200
Message-ID: <15ab692f367e9fb607324a3d648ae9fd0b5a5af9.camel@pengutronix.de>
Subject: Re: [PATCH RFC v3 3/5] clk: zte: Introduce a driver for zx297520v3
 top clocks and resets.
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Stefan =?ISO-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,  Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Brian Masney	 <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 04 Jun 2026 15:44:24 +0200
In-Reply-To: <7973709.EvYhyI6sBW@strix>
References: <20260529-zx29clk-v3-0-c7fe54ea388f@gmail.com>
	 <20260529-zx29clk-v3-3-c7fe54ea388f@gmail.com>
	 <99743c29fe81a90d3c1f51889d42ef9d4766de3c.camel@pengutronix.de>
	 <7973709.EvYhyI6sBW@strix>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306859-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,baylibre.com,kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:from_mime,pengutronix.de:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68EE1640985

On Mi, 2026-06-03 at 23:49 +0300, Stefan D=C3=B6singer wrote:
> Hi,
>=20
> Thanks for the comments!
>=20
> Am Mittwoch, 3. Juni 2026, 12:14:21 Ostafrikanische Zeit schrieb Philipp=
=20
> Zabel:
>=20
> > Is this delay long enough for all potential users of reset_control_rese=
t()?
> > Are there actually any at all?
>=20
> You mean drivers that are in use on this SoC that call reset_control_rese=
t?=20

Yes.

> Afaics not, they all call reset_assert/reset_deassert, or only ever deass=
ert a=20
> reset that is set on boot. It isn't called at runtime and the only driver=
=20
> calling it that is in use on zx297520v3 is stmmac, which only calls it if=
=20
> assert/deassert aren't available.
>=20
> I implemented the reset() callback because other drivers had it and grabb=
ed=20
> the magic usleep(100) from ZTE's USB code. It looks like I should just /d=
ev/
> null it.

If it is not used, please just drop it.

The .reset callback exists for self-clearing resets [1]. It's ok to
emulate those in software for the benefit of consumer drivers that have
to work with both types of reset controllers, but I'd like this to be
limited to those case where it's actually needed.

[1] https://docs.kernel.org/driver-api/reset.html#c.reset_control_ops

>=20
regards
Philipp

