Return-Path: <devicetree+bounces-317494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id boRrJQ9+Q2ooZQoAu9opvQ
	(envelope-from <devicetree+bounces-317494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:27:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A646E1A69
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:27:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317494-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317494-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19BAA3013851
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4083976BE;
	Tue, 30 Jun 2026 08:27:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5950E2D0C82;
	Tue, 30 Jun 2026 08:27:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782808075; cv=none; b=cgWPyAcHOcLxz4AEOQBa5bexgIq4K9idm77H8pXhUio4+oiZXE9HhpX9/2oYmRaBTVirwTDxdzSLUlGlh0v9BDYnscC7WJGxjyTVONX3AL7qiIXQiKCTcRyPtXUE7vj/cVzSdth+11byDhCrBAk5HnvrsGA8dDTxiAcUaBm6+hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782808075; c=relaxed/simple;
	bh=oRhyV5noi8Q/w0aCeUKEONjgKn1IUDCoCQz2t9jyoFU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Epl3JKNO6GBxCIedVWoOlMvP/nRwnDCeFAcROwR4Zlw05m2i7VmjySrwCziYpIhrPfGMfIiJ37K5XThdu4mycBFKRnAHAf9TTD0OImD/Faz6q7br8PQx3vOrsH/qMgdL/+0he8d1pngt9zFAixJ+mNaj8rxf0VoKOU9OSEVy94g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=fail smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1C28A20066B;
	Tue, 30 Jun 2026 10:27:50 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1weTos-005Nla-06;
	Tue, 30 Jun 2026 10:27:50 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1weTor-0000000049m-418Y;
	Tue, 30 Jun 2026 10:27:49 +0200
Message-ID: <c59fab242716c80250a66707d7ccaaf243a85aac.camel@pengutronix.de>
Subject: Re: [PATCH RFC v5 05/12] clk: zte: Add Clock registration
 infrastructure.
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Stefan =?ISO-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,  Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Brian Masney	 <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Tue, 30 Jun 2026 10:27:49 +0200
In-Reply-To: <20260628-zx29clk-v5-5-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
	 <20260628-zx29clk-v5-5-79ff044e4192@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317494-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,pengutronix.de:mid,pengutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14A646E1A69

On So, 2026-06-28 at 22:59 +0300, Stefan D=C3=B6singer wrote:
> The next patches will implement the regmap clocks and PLL driver. The
> actual hardware specific clock listing will live in a separate module.
>=20
> Signed-off-by: Stefan D=C3=B6singer <stefandoesinger@gmail.com>
>=20
> ---
>=20
> Version 5:
>=20
> *) Pass the static clk data instead of calling get_match_data to prepare
> for operating as an MFD child.

I think the MFD driver is unnecessary overhead. Can't you just keep the
reset controllers as auxdev and use of_platform_populate() to create
devices for clock-controller child nodes such as syscon-reboot?

> *) Don't use devm_kzalloc to allocate the auxiliary_device
> structure. I guess Sashiko is right, and that's what "Because once the
> device is placed on the bus the parent driver can not tell what other
> code may have a reference to this data" is trying to dell me.

Not using devm_kzalloc() for the auxdev is correct, but it looks like
you could simplify its creation a lot by just using
devm_auxiliary_device_create().


regards
Philipp

