Return-Path: <devicetree+bounces-265911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AUJJMaZYk2k73wEAu9opvQ
	(envelope-from <devicetree+bounces-265911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:49:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD68146C71
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F41D83016EEB
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4113129AAF7;
	Mon, 16 Feb 2026 17:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dby00tjW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F13770B;
	Mon, 16 Feb 2026 17:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771264162; cv=none; b=tIBI4dwz+QRlpJS8gycByTLPcOhiiYi/t25zYxTG7z1mvIYP026oR30AWYqfdbwgxEMn/ofGf47Zizm8tg4jXw1gdi62ceE5rVDKEIq7KwwvfiOobmVeDD1K9twqvktE2H7VJvnU+RaEAcM9lpT2n/a52ghupe+By/V5HBs+bhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771264162; c=relaxed/simple;
	bh=j2JRRvBFBpNjZbE21GgntzBOAY0OPpor4fkKfZn1s5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ngGzofeUpz6vXkHNFYDlxKd9zV/qbTHvEvENhsCWSPCjPZbtrhSYNLgQNKRi78nF8GpFNap0Ch4AElihAqNDe19JPg9H3smUgGGVk59UDGVIvDvenBQxBnfE09EI9vX1UbKwY2SE2ciRN0Vsa5ETTHGhuOGM/aV2xqYco5H4aZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dby00tjW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64C45C116C6;
	Mon, 16 Feb 2026 17:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771264161;
	bh=j2JRRvBFBpNjZbE21GgntzBOAY0OPpor4fkKfZn1s5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dby00tjWEcvr+brA4a3bCwMlN8l2CVRvVDt8ZYET/0+ier+7zlvzKWYNyFDl/4Iy2
	 5uU9U9KS71z4tmjZ9ju01aVxPQTA+csqlTbLNDo37Gy3Ad8nr9ss36/+fZLFTQFOa0
	 uNY/MmpmWAPAJb6hOPyfkHM2jz80cg5TGr+rPHC+iVWOUAjMlRPR9G+SqXTlRkXwUO
	 jotkhq7ttGjYO84B8OazOCm6NEsD6Q65czm0c2H3tkc5cPUOSb5OqVNh215IhVqFV2
	 8h2bIm8alkAx6ylgphXw3sqOI+pc/FG4onHPoLtelK9+TRQrs6PfOWR8Arm1sdkL8R
	 G4s8360FY8MBQ==
Date: Mon, 16 Feb 2026 17:49:16 +0000
From: Conor Dooley <conor@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com, dev@kael-k.io,
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	dianders@chromium.org
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor: add taiguanck
Message-ID: <20260216-appendix-recipient-1836ea619cf6@spud>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
 <20260214085409.3489057-2-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Nqp8U5/h/2erVZ8+"
Content-Disposition: inline
In-Reply-To: <20260214085409.3489057-2-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265911-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1CD68146C71
X-Rspamd-Action: no action


--Nqp8U5/h/2erVZ8+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 14, 2026 at 04:54:07PM +0800, Langyan Ye wrote:
> Add the "taiguanck" vendor prefix for Shenzhen Top Group Technology Co., =
Ltd.
>=20
> The prefix is derived from the vendor's website domain:
> www.taiguanck.com/en/, which uses "taiguanck" as the primary

This website doesn't exist it seems. I get an ERR_EMPTY_RESPONSE.

> identifier of the company.
>=20
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index fc7985f3a549..1856e455f7e6 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1598,6 +1598,8 @@ patternProperties:
>    "^synopsys,.*":
>      description: Synopsys, Inc. (deprecated, use snps)
>      deprecated: true
> +  "^taiguanck,.*":
> +    description: Shenzhen Top Group Technology Co., Ltd.
>    "^taos,.*":
>      description: Texas Advanced Optoelectronic Solutions Inc.
>    "^tbs,.*":
> --=20
> 2.34.1
>=20

--Nqp8U5/h/2erVZ8+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZNYnAAKCRB4tDGHoIJi
0sbAAP9vGuy56Aa5sPepBXtSKSwOkocBKX4NYhUfhm9/h+mHIgEA/TYxkJoXjKoI
iEae4Up9VToCpWUD6IqVT2Bnqa8dwAI=
=6iXg
-----END PGP SIGNATURE-----

--Nqp8U5/h/2erVZ8+--

