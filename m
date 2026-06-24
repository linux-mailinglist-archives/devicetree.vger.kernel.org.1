Return-Path: <devicetree+bounces-315261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MTcNKijmO2o7fAgAu9opvQ
	(envelope-from <devicetree+bounces-315261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:14:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 082936BEFFD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:14:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="WXpb/PAs";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315261-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315261-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D386301602E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516323BD653;
	Wed, 24 Jun 2026 14:13:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536DD3BBFC1;
	Wed, 24 Jun 2026 14:13:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782310401; cv=none; b=Rs3w09NN/eHMrJIsXwlyLUbHKNwFmbNAz1dtosQ0Z73velgRhhJVREzrIydGfWO+AMie21nt33JS4yeLPvfxYFGCE7sWZDFKlmh8Og5kKv4DNemgXPl0lZNRhb0L5sVCJqh1a/ib0DIaR2xfuZ8mwpJk7T9+iKExyFq6tKg/f10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782310401; c=relaxed/simple;
	bh=1Bgtq4BsQ7hTy1grWuGoQ9yee8XLe7MR7og7NIjsshs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mt7s1SrlF70BnW7mhOjD0pOaKV6XXpFKV46UyP02czEMmKIeaFT4Fx7hLZH1QtV9MSWdEVO74L+yfamDs5EIQiR7+YxWoWPpU6KuK1CfGaBG4TCBtgjdYIt0NactXEPzCfYXPoSyzEu2wE5Hj+NOSqBsKUQhqjbclVCQOztu69E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXpb/PAs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 967111F000E9;
	Wed, 24 Jun 2026 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782310400;
	bh=6mBorzsoZa+2A/EZnHT2rnOkQ7W6iA3I45tZLtv8JN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WXpb/PAsZ0CyC4OTNRXXzCk6GEnfFikMIBL6P35MVYm6mU7gd+oBrD0/7Hd4AcK30
	 s07t5AwaJnidbaJvI2RFYqAXKT1KyDuqcK2lX82Zhmh0mveq6eUxzBbq8eNAxOtMMr
	 LemKBMwhOU2l9BQ5ZRJ4ZCweZe45hZhyMr/oGwKs/pBGXArMr/83q6VpYZSBFzwwFP
	 Noq05xK5Hb8W6zRImzSYVupFtVX/fGLPjgNiUFG1dc01oPfhk7EBSoAG83YQ/dND4v
	 /QxX57HHjMvhYX96Wi+/QdGbGR8s66L7VDmGr8b52BaKHlgl5X4/4vFnou0Ldlb+Zj
	 QMGe538Lzkohg==
Date: Wed, 24 Jun 2026 15:13:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Message-ID: <878f8f38-2294-4097-9d08-2aa04bfe773b@sirena.org.uk>
References: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
 <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de>
 <20260624130613.GA4054894-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8/LbZwSsjzxiTXv4"
Content-Disposition: inline
In-Reply-To: <20260624130613.GA4054894-robh@kernel.org>
X-Cookie: Your password is pitifully obvious.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-315261-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:otto.pflueger@abscue.de,m:lgirdwood@gmail.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[abscue.de,gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,abscue.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 082936BEFFD


--8/LbZwSsjzxiTXv4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2026 at 08:06:13AM -0500, Rob Herring wrote:
> On Sat, Jun 20, 2026 at 10:54:00AM +0200, Otto Pfl=FCger wrote:
> > Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> > PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
> >=20
> > Signed-off-by: Otto Pfl=FCger <otto.pflueger@abscue.de>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > ---
> >  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++++=
++++++++
> >  1 file changed, 44 insertions(+)

> Applied for rc1 to fix the warnings.

Warnings?

--8/LbZwSsjzxiTXv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo75foACgkQJNaLcl1U
h9CQmwf/RNtdWaymgja/0sFA0V4J09vMkN31Ux0AY5EBFK//Iar6369dyGL8XSrQ
P9nAbv/8lQJarM5XUxqNsCWswrl1W6FBHNbMjgusf0ljYaKOj8b+lwrrjzVPCrnd
gkoqgwnoK9DiwYe2zu6Z54JLVp8mpChVr00P3hhFakC/X7NgHT445NX/mDM3R9zd
Cq4QmVuCZ7y770EIoSFfp+N03P32aLqnOFqfvMrNNZN9JPzDNkmtMwv94g3QaE4q
uMHg7JuUJoO9EMh50wOay1bzxvEI2vQ7+lGdAoATdF0jq2XKO/XNxnEudBdCyvCG
e3PG+RM0oiDtGAdPJhZP/NufEOk+bg==
=dqK8
-----END PGP SIGNATURE-----

--8/LbZwSsjzxiTXv4--

