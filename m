Return-Path: <devicetree+bounces-306412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9QlICrFbIGp11wAAu9opvQ
	(envelope-from <devicetree+bounces-306412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:52:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B8F639EEA
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:52:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="VUSO/A7x";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306412-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306412-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 614AF3166F1C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AB633E1696;
	Wed,  3 Jun 2026 16:08:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697C13AD52B;
	Wed,  3 Jun 2026 16:08:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780502893; cv=none; b=N2uAdcrjs6EOEfQODopsgfrCwZvQivGhcgUWH6sqKkcYzOGeEv3mK8ylfayjxFK34mFe+b+wL3gjGk3yRr9aAa54aIrZnntEa+sKJXMlIuBadqZYgLaePcUdRIy1YpB5duNX6klvjNv9q5Z98IRbkkNi0VHB5fsAcztJPp3mpE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780502893; c=relaxed/simple;
	bh=FA0xQoILQqub+rvtajqFi3ePzhMoUg83iC4gxCGEUDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tYseWrxx5qt/5rp7pDVN+1aaAozi5S6OTwDuCLQ4VnuMCrekakjqAQXOUW53e4ntZMYANr0oUXTHCdvwagiq+5NrdIbCQiB8VCVXsEQvRMLJyBFZaz9iB6MkW2udTpqJKwYfuBmZFvRC2DNdd3D9dxXVqo4d/wyKCqlxSzhiM/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUSO/A7x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C14AD1F00893;
	Wed,  3 Jun 2026 16:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780502892;
	bh=F3mD29aDqfpJd7nw1lljndcL5wp80gSNpUcOx+2pKgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VUSO/A7xKYz+1rOAXkU1k3JZTgN8sbe+hTxg+YLKB8OuwYpN2Yz47ZhD+ZxND99wK
	 yw/OGRIOvBtis38calrE5rSwDHhVWHwyWvbQd8oxv4ShYT5uRSnTHbyWllS0uAKSeA
	 BD1y/0EZevBdLD0q1Sw8zcwVbdj2xNI2htPaDOm6cMKSF9yNPJeXq+c9LlyGJg3VLo
	 nbW9q2QoQpFzWDp3Tvq/7kZHiJpIQsGKWlKheAStOsrnOy6nC9iaMVULH23g5XHUeN
	 uQBCffBhpyIHWVsSwe6Lx6GdVuKHxqVL1gSemFjix68nZ5gb8xpKdCF9daTdR+fQlX
	 JQlQ2V7sg1Oxg==
Date: Wed, 3 Jun 2026 17:08:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@amd.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: clock: versal-clk: Fix mio_clk index
 range in clock-names pattern
Message-ID: <20260603-parasite-hefty-8da6d54deb0a@spud>
References: <cover.1780499520.git.michal.simek@amd.com>
 <5662c24a9e65310fc6520afc95f1a639fe6d221e.1780499520.git.michal.simek@amd.com>
 <20260603-catlike-uncrushed-b98b66dc92c1@spud>
 <c33b3684-bf96-4c2f-8251-9ac7c1444c3f@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4BagllEPKb3euRk"
Content-Disposition: inline
In-Reply-To: <c33b3684-bf96-4c2f-8251-9ac7c1444c3f@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306412-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:linux-kernel@vger.kernel.org,m:monstr@monstr.eu,m:git@amd.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mturquette@baylibre.com,m:robh@kernel.org,m:shubhrajyoti.datta@amd.com,m:sboyd@kernel.org,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73B8F639EEA


--l4BagllEPKb3euRk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 05:35:37PM +0200, Michal Simek wrote:
>=20
>=20
> On 6/3/26 17:33, Conor Dooley wrote:
> > On Wed, Jun 03, 2026 at 05:12:07PM +0200, Michal Simek wrote:
> > > The clock-names pattern "^mio_clk[00-77]+.*$" was intended to constra=
in
> > > the MIO index to the valid range 00..77 (ZynqMP has 78 MIO pins),
> > > but a regex character class cannot express a multi-digit decimal rang=
e.
> > > Replace the bogus character class with an explicit alternation that
> > > enumerates the two-digit decimal values 00..77.
> > >=20
> > > Fixes: 03d4a1004053 ("dt-bindings: clock: versal: Convert the xlnx,zy=
nqmp-clk.txt to yaml")
> > > Signed-off-by: Michal Simek <michal.simek@amd.com>
> > > ---
> > >=20
> > > Changes in v3:
> > > - New patch in series
> > >=20
> > >   Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.=
yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> > > index bef109d163a8..d843d95801b5 100644
> > > --- a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> > > +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> > > @@ -116,7 +116,7 @@ allOf:
> > >               - const: pss_alt_ref_clk
> > >               - const: aux_ref_clk
> > >               - const: gt_crx_ref_clk
> > > -            - pattern: "^mio_clk[00-77]+.*$"
> > > +            - pattern: "^mio_clk(0[0-9]|[1-6][0-9]|7[0-7])+.*$"
> >=20
> > What am I missing that prevents 0[0-9] and [1-6][0-9] being merged?
>=20
> correct it can be put together [0-6][0-9].
> Was playing with [0-9||[1-6][0-9] or with leading zero and decided to use=
 00
> as was intention in past.

Ah, right. In that case,
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--l4BagllEPKb3euRk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBRZwAKCRB4tDGHoIJi
0kPDAP0bzLSAEF9NzU/d4L2MiiDBNCaRVDo6n4KAjWuF1yW1OAD+JOTJnYNp75Zv
6zPL2XVrogdE+lNiBwltDexh9yyQSAk=
=Mmmy
-----END PGP SIGNATURE-----

--l4BagllEPKb3euRk--

