Return-Path: <devicetree+bounces-283393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG8pDLPmzGk/XwYAu9opvQ
	(envelope-from <devicetree+bounces-283393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 11:34:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9218B377BA2
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 11:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53337305D2DB
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 09:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363E13D16EE;
	Wed,  1 Apr 2026 09:26:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E2F3B895E
	for <devicetree@vger.kernel.org>; Wed,  1 Apr 2026 09:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775035581; cv=none; b=r+uXvOMvBUcr9BgVUioosRLANgktv9ceKyTs/KIfGB6+kggEb2niz5u0V9nmtKbQCyl5sanGqizJCcYGVPQCHQ7+HdMXPZnNv2xCHpJxRUV/qnYdNgbwDgwS/y6zJvDIIVgFyxJtDdN4c6M6UJtiOBFVvEaixvVBnx7kM/QJJvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775035581; c=relaxed/simple;
	bh=1ZzhXfoR62bjPUAvPDpbOr6kvGwlk9a0xMMI3cXMjC4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CzmS4HiByFMZL9sOSQ/vSgf18aXRZAIpUL56M3IuC2lN/JvsohzW2LeKZ8ySENFL3bxzrHs5qXnN2DYccJE/z24hYLjdinkVpN07OWDWOX3l+5kRN9X+/5pBHlfkvABk1Wpvb2eI+ZPQk6ul76MCbzBaSpFpV7NZfI5Pm8IaUmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7rph-0000mN-Dd; Wed, 01 Apr 2026 11:25:53 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7rpg-003BY8-1X;
	Wed, 01 Apr 2026 11:25:52 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7rpg-0000000080F-1atZ;
	Wed, 01 Apr 2026 11:25:52 +0200
Message-ID: <7b5c5300921c9d7c931389400cdf6fb2b74ae3ea.camel@pengutronix.de>
Subject: Re: [PATCH v9 5/6] reset: rzv2h-usb2phy: Convert to regmap API
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, peda@axentia.se,
 linux-renesas-soc@vger.kernel.org, 	biju.das.jz@bp.renesas.com, Fabrizio
 Castro <fabrizio.castro.jz@renesas.com>,  Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven	 <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Josua Mayer <josua@solid-run.com>, Ulf
 Hansson	 <ulf.hansson@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 01 Apr 2026 11:25:52 +0200
In-Reply-To: <aczhCMdmi9cpkGkM@tom-desktop>
References: <cover.1774601289.git.tommaso.merciai.xr@bp.renesas.com>
	 <0259040014396ea03d58a87c2ce2a3f9eff2b0b6.1774601289.git.tommaso.merciai.xr@bp.renesas.com>
	 <283a6336658045be8906ee219620c994e85c7fb8.camel@pengutronix.de>
	 <aczRo8HVUFqXKfG_@tom-desktop>
	 <0bad9579a953cc069e17a7075a45c9eb9c7a6d8d.camel@pengutronix.de>
	 <aczhCMdmi9cpkGkM@tom-desktop>
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
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-283393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,axentia.se,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,glider.be,linuxfoundation.org,solid-run.com,linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.876];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:mid]
X-Rspamd-Queue-Id: 9218B377BA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mi, 2026-04-01 at 11:10 +0200, Tommaso Merciai wrote:
[...]
>=20
> Then we can have:
>=20
> static const struct reg_sequence rzv2h_init_seq[] =3D {
> 	{ .reg =3D 0xc10, .def =3D 0x67c },
> 	{ .reg =3D 0xc14, .def =3D 0x01f },
> 	{ .reg =3D 0x600, .def =3D 0x909 },
> };
>=20
> static const struct reg_sequence rzv2h_assert_seq[] =3D {
> 	{ .reg =3D 0xb04, .def =3D 0x303 },
> 	{ .reg =3D 0x000, .def =3D 0x206, .delay_us =3D 20 },

This will call fsleep(20), which maps to usleep_range(20, 25).
Please comment on why the delay is changed in the commit message.

regards
Philipp

