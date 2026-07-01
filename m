Return-Path: <devicetree+bounces-318419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sgl6M7P+RGrs4goAu9opvQ
	(envelope-from <devicetree+bounces-318419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:49:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8EF6ECF8B
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:49:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OUYTSL6n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318419-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318419-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E90893013029
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41D8E478E3D;
	Wed,  1 Jul 2026 11:49:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E0226CFE;
	Wed,  1 Jul 2026 11:49:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782906545; cv=none; b=lEJItMVmh0LEfnoFg6j+p+wQfiAfPAQvOysiPWWxKm2g/T8F1WJIpyRPPheK5zbBTLgHQzpNlZ5wrIYKmUC7mDjD5GYq6S/mogm9+P6OHeQZBf4CiJcMzIJoS1a+jimwLfWaFcpNv0LoCoG2mBUCRd4vEgxZC5KPFf/FJ06lvcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782906545; c=relaxed/simple;
	bh=Ne25Eb6hfiwFz29OTK617AXvzuu7M9hFTX1/pZmdnQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7ioChLSVrR4+Z37imSyi2vGo/hwuY7z32QK4MArqQp310Bb09ETdxjXM5r8617mGsrM/KsDY7CJPZmuTt9pKX9NCQcF6OgedxWOiTl2FxwuTECIssSn2Kq2JqZo6W5TwKhey3PaorqbE9pkzNLO7hps0f+Xz1bAMaq7vn7OwOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUYTSL6n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B45AB1F000E9;
	Wed,  1 Jul 2026 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782906543;
	bh=esUM6XiE9H9/VDV25mzx0G8FhbMIdZGBvt/U6SFGFso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OUYTSL6nxV/Ah7RowxkS1kK45aEmSLlDmVOHKWf8eRGnc3kc5iOki0HSxPP2I5U5+
	 0fHFct57n39066Xh+lJiEtFDLURZ8tL7PDwLABKqbK8XDjmWPw8cMXCVtdbC+em8Qe
	 WXoSp1XcDkFplnbYrlJBd+0yfkt8JMWqJATy9weYXg8O1T83xKrZbfWPlYnHCEQCuM
	 HCLi6L6zADAh1yATEY2inxpmK1DqB8Zj3c9aX8cU2hmtT+mCqSPKmPKPgFNjYHtIOH
	 XfxRnqSEVfE1jVFIobGQTmYccajHWq4Th/LfAiDPjPLPzYobyNW5sbUrNO6p479YAl
	 I4yODRsmUybuQ==
Date: Wed, 1 Jul 2026 12:48:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v3 6/9] ASoC: loongson: Add Loongson-2K0300 CTCISZ
 Forever Pi sound card support
Message-ID: <c9361380-b28a-4f7d-9ae5-a00042189b79@sirena.org.uk>
References: <cover.1782439646.git.zhoubinbin@loongson.cn>
 <ed1314e1d3275fd20aff47397345a88fad6e9368.1782439646.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nvCzlV8SN6qnzl1W"
Content-Disposition: inline
In-Reply-To: <ed1314e1d3275fd20aff47397345a88fad6e9368.1782439646.git.zhoubinbin@loongson.cn>
X-Cookie: Do unto others before they undo you.
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
	TAGGED_FROM(0.00)[bounces-318419-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:keguang.zhang@gmail.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-sound@vger.kernel.org,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:keguangzhang@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD8EF6ECF8B


--nvCzlV8SN6qnzl1W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 26, 2026 at 10:27:27AM +0800, Binbin Zhou wrote:

> The Loongson-2K0300 audio card uses a different DAI format compared to
> existing Loongson platforms.

>  	},
> @@ -177,6 +189,10 @@ static int loongson_asoc_card_probe(struct platform_=
device *pdev)
>  	if (!ls_priv)
>  		return -ENOMEM;
> =20
> +	ls_priv->cfg =3D (const struct loongson_card_config *)device_get_match_=
data(dev);
> +	if (!ls_priv->cfg)
> +		return -EINVAL;
> +

Does this do the right thing on ACPI systems?  I'm not seeing anything
that'd get us match data there.

--nvCzlV8SN6qnzl1W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpE/qkACgkQJNaLcl1U
h9DwJwf8Dqs0X2LW9Q5jMZrgRxIKUIRNqzHQNFQaPYgHJ/S+xZqZvvZls6dyM48n
OWeXEllmQv4oEZiXMhEwASAz+bhbaESbIE3FqWuTj2GN0P84dNHKMdG2UHogg85x
Ivsz5rTYO4vwRWud9E1KfAZo8aCi/srpKeA4y9oTfZi2xLAvCgMCIknGmTgp4L7w
6uVk5s1goARtkbhmRjeSxVtumtnJwvH9tFduronxWnHeF69CgljZDa0PrDgOUCed
D6m86zSz6wX00NZcik8BChTc98+vbGAdibKIznxak7WV5M0oUkYSyKq10YucsaYb
XO75xavWoyxkQIkY7CHEPV3j7yALJA==
=nVdn
-----END PGP SIGNATURE-----

--nvCzlV8SN6qnzl1W--

