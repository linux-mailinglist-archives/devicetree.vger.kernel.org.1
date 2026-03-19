Return-Path: <devicetree+bounces-277912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI5qKJQrvGn4twIAu9opvQ
	(envelope-from <devicetree+bounces-277912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:00:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A28652CF451
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A1F2A3051E01
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790133806B3;
	Thu, 19 Mar 2026 16:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljg/R4bb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F4D202F71;
	Thu, 19 Mar 2026 16:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773939039; cv=none; b=RqsbiP/kn8xkgHVgLpN8qCChszhrXNlOcLA1A2oHs3k+OXgQR7cZ3gAS3rGBhe/G52tg3edWmcZ+YaPiJK6OB6h1uiYgX2eq24ORnr4jRr6a16AnKBNCnkGyVvBaf7f+j2nO7LaJwBapLMnJ3LHJAsr7xWGS9qCrPjFaInWrN5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773939039; c=relaxed/simple;
	bh=D77Ddz8qw4n1xbohbw2VGFHt286qHhhuOUnGY/tnSmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C/yDHYCAYBxSxKKhYN8FiOj90Hq4+GHN18SMffq0ejx7ZvSKvzfsWzwBbwIClrohnhLaeEWifZj/mSxnTvXQ2um7fjH78f/ihFz9EGmz9jm9cmwocBe/xsH+eFm+8kpVGNtN4dF5e6MYvPJsdWF+TG+ivXbdQyuP/5wlG1r57cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljg/R4bb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A612C2BCAF;
	Thu, 19 Mar 2026 16:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773939039;
	bh=D77Ddz8qw4n1xbohbw2VGFHt286qHhhuOUnGY/tnSmk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ljg/R4bbBSiaM3KzZCNF04vLF0LtaB5TTp5JofndPK859nkZhiQIYOXp7lRbcq+Xn
	 XSUTDHJ7UXb5VS5oGodmddZvcnD2xLyh9jZzRhRmtVJl8shsQdHPs5m6aiBrVMcUaT
	 WKHdrpjLVB+HP0K/d130LSEZCnYzHfeS5KVri7LyrvGiR5wK9H0vjDuA5BEIjhq8l6
	 SKnuZEFSFwp1i2IxXai9Mnk+kIsiBL/6XpH7RLbh9AqcHdKYbh4Xnt8sahw8lRkmVG
	 iLmaS9uwiovoWvzMUkZ3OUj8onDSeV6da53FeLDMyTRyKGj5YwtJ2u7eyjdxniI2CI
	 MTgjW5CpYZXAw==
Date: Thu, 19 Mar 2026 16:50:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Vyacheslav Yurkov <uvv.mail@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: Add clock guard DT description
Message-ID: <20260319-yearly-wrongful-883f7fd86a69@spud>
References: <20260318-feature-clock-guard-v1-0-6137cb4084b7@bruker.com>
 <20260318-feature-clock-guard-v1-2-6137cb4084b7@bruker.com>
 <20260318225510.GA639444-robh@kernel.org>
 <7c7034a7-686a-42c2-bdba-6f31b5179f7c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oewIK0RQAgPXmJv9"
Content-Disposition: inline
In-Reply-To: <7c7034a7-686a-42c2-bdba-6f31b5179f7c@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277912-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.958];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A28652CF451
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--oewIK0RQAgPXmJv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2026 at 06:50:52AM +0100, Vyacheslav Yurkov wrote:
> On 18.03.2026 23:55, Rob Herring wrote:
> > On Wed, Mar 18, 2026 at 05:43:40PM +0000, Vyacheslav Yurkov wrote:
> > > Describe device tree binding for virtual clock controller guard.
> > No idea what this means. Please explain how I would identify this h/w.
> >=20
> > We generally don't do bindings for virtual devices and we don't do
> > single clock bindings (other than some we are stuck with).
> >=20
>=20
> I described a use case in my cover letter (PATCH 0). Perhaps our approach=
 to
> tackle the issue is not correct in the first place. The term "virtual clo=
ck
> controller guard" is something we named it, but it's literally just a clo=
ck
> provider which combines several other clocks and input GPIO signals in or=
der
> for the consumers to check whether they are allowed to probe already or h=
ave
> to wait until the input clocks are enabled.

Can you explain how this is different to gpio-gate-clock? AFAICT, you're
trying to support clocks that are enabled by a gpio, and that's what it
is for.

>=20
> So in essence it's like a helper driver to simplify consumers probe
> procedure. Does it make sense? If you don't do bindings for virtual HW, h=
ow
> else would you approach this?

--oewIK0RQAgPXmJv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabwpWgAKCRB4tDGHoIJi
0mS1AQCyfP+fyjGDQgMM0Ynzsf4cG2N0hvkv75PMmo5yKprjkwEAok9cVR3iRzxh
QIQXM6kQ9Q1ooh/QME9VlGL6Bftgxg8=
=9Lod
-----END PGP SIGNATURE-----

--oewIK0RQAgPXmJv9--

