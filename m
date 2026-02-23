Return-Path: <devicetree+bounces-267595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPcdIfmYnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:14:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A153317B5B0
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E928A3068F57
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE01F33C1B4;
	Mon, 23 Feb 2026 18:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MMkbp3hX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B2933C195;
	Mon, 23 Feb 2026 18:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870100; cv=none; b=dYUaMtpxI4E+JI2wIYNICSFD0nmePFBxvC9rnq7nz6o2WjcAPGj0cTRMBVpobjq4dcHVytae4rgwcStTdrOyUQXKxds+b1ish/YOCe32bB9kvZgb/6iyPl4LMP+qO9HuoaigLu/ZiKVNzCYl4OOnDIDp+AzlmqcPq90xIhpIbXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870100; c=relaxed/simple;
	bh=mXUJNuq5MZV4lzOVyrHqHb/9m9zvmP1n50whNHu4wnI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sp7ruXayes6XzXzKM8spdsDj//u09BWVmIxt0OP9UfQe+QATgFhjPb+YWW+OakPQNlM9Rsm/4Fn0hJP2Pli2JfSK3ZCV+7yZYS/pN0SHs3B82/Z3CdHKm+vN4PkRp4ypJ8FL6KZh9a84/bnNO8Xi2fO+dQMF6te1gtX67mhgEnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MMkbp3hX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771870097;
	bh=mXUJNuq5MZV4lzOVyrHqHb/9m9zvmP1n50whNHu4wnI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=MMkbp3hXvXzB7Z/ppOc9jY0jBj8hR8eaJ38n/PoZp75pKKwU5YlGRsJo8t1a4WiFc
	 2n/QkSVw0YHlWowI/CmqLPINaxP/WdjApT7hj5WKMwq/B0HZNQGTRtPl2LA68wdhd0
	 LcnoqnnAyxKudkJkyganRCxGVfkaV86UNWVceP0txRKuFRwbYng9iZowRVj9IoKdtU
	 7sWaNxQLALIdjXonPPaGzeMtY6WtFaneFPi5hgXwgZ7zd3n+Y6DDBR1NNxhVvSKqTg
	 TSpAxKHIt4hJVWuj6WXbb85n8r1WQfWWKR+HyaMAlSsqXKqa66sMfqEd35KMkfRckV
	 XSoCW7ITN/91w==
Received: from [IPv6:2606:6d00:15:210e::5ac] (unknown [IPv6:2606:6d00:15:210e::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 71C3417E03E5;
	Mon, 23 Feb 2026 19:08:15 +0100 (CET)
Message-ID: <6e20d6cdaebdfe89b4066db9f1d6f1216403b091.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Diederik de Haas	
 <diederik@cknow-tech.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova	 <detlev.casanova@collabora.com>, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Feb 2026 13:08:12 -0500
In-Reply-To: <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com>
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
	 <aZxkDGzEQCCLKR-M@venus> <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
	 <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Organization: Collabora Canada
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-h8XPhJ/XXmCZWhSQFgHf"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267595-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.dufresne@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,27b00000:email,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: A153317B5B0
X-Rspamd-Action: no action


--=-h8XPhJ/XXmCZWhSQFgHf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 23 f=C3=A9vrier 2026 =C3=A0 19:07 +0200, Cristian Ciocaltea a =C3=
=A9crit=C2=A0:
> On 2/23/26 4:39 PM, Diederik de Haas wrote:
> > On Mon Feb 23, 2026 at 3:31 PM CET, Sebastian Reichel wrote:
> > > On Mon, Feb 23, 2026 at 02:25:05PM +0200, Cristian Ciocaltea wrote:
> > > > When building device trees for the RK3576 based boards, DTC shows t=
he
> > > > following complaint:
> > > >=20
> > > > =C2=A0 rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg):
> > > > /soc/video-codec@27b00000: simple-bus unit address format error,
> > > > expected "27b00100"
> > > >=20
> > > > Provide the register blocks in the expected address-based order.
> > > >=20
> > > > Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video
> > > > Decoder on rk3576")
> > > > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com=
>
> > > > ---
> > >=20
> > > This fixes this warning, but instead creates a new one, because the
> > > reg-names order is fixed in the DT binding:
> > >=20
> > > =C2=A0=C2=A0 reg:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 minItems: 1
> > > =C2=A0=C2=A0=C2=A0=C2=A0 items:
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: The function conf=
iguration registers base
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: The link table co=
nfiguration registers base
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: The cache configu=
ration registers base
> > > =C2=A0=20
> > > =C2=A0=C2=A0 reg-names:
> > > =C2=A0=C2=A0=C2=A0=C2=A0 items:
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: function
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: link
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: cache
>=20
> Oh, right, missed to check the binding.. :-(
>=20
> >=20
> > See also the prior discussion wrt this:
> > https://lore.kernel.org/linux-rockchip/edabca63-594e-44ae-8a3d-0f60987a=
8664@collabora.com/
>=20
> That's interesting, I'm also not able to trigger the warning on RK3588.
>=20
> Regardless, the binding can be easily adjusted with the patch below.=C2=
=A0 Hence
> I'm
> going to handle this in v2, unless there's a reason against moving furthe=
r.
>=20
> Thanks,
> Cristian
>=20
>=20
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -34,10 +34,12 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: The cache configurati=
on registers base
>=20
> =C2=A0=C2=A0 reg-names:
> -=C2=A0=C2=A0=C2=A0 items:
> +=C2=A0=C2=A0=C2=A0 oneOf:

Is there a better keyword for that, cause picking 3 of a one of is clearly
confusing to read.

Nicolas

> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: function
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: link
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: cache
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - items:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: link
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: function
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: cache
>=20
> =C2=A0=C2=A0 interrupts:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1

--=-h8XPhJ/XXmCZWhSQFgHf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaZyXjAAKCRDZQZRRKWBy
9Cl7AP9uFA0M8s14cMDKn/c8m/v7c1b87q8uL0M5asRQkNJA0QD+PM6qZs8Bemvu
c2FjgV2IQvpCj71b3BlzpveDwoOPZwE=
=L29t
-----END PGP SIGNATURE-----

--=-h8XPhJ/XXmCZWhSQFgHf--

