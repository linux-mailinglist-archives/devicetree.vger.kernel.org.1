Return-Path: <devicetree+bounces-295671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO+oDM0GAmp2nQEAu9opvQ
	(envelope-from <devicetree+bounces-295671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:41:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 922BD5127A2
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:41:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AABC31B6CA2
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0584E4279E0;
	Mon, 11 May 2026 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2UX9yx9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DCD421F12;
	Mon, 11 May 2026 16:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515342; cv=none; b=aKN+07nbtQ/xJeWt8Z8u/gqC04nYXinFZWVCDm4hYhsVdCkfmXM+pi7GlhqT+wzLWkT2NdrCR/+/jq2nknEVD7xMcouOyTg/dZfuNqfglh9mL+JusNR98H0dudzhZ6PeKG2zQbGWimrlfu83fe+khvfsQLTjluuDGx4y5sZZgeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515342; c=relaxed/simple;
	bh=uznNZeBvkQNFwgstmmxLx35Y58HlJI7x/00h6NLAsFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTmFpdF6rmvwBNyy3b7xpKHmuBciu0TzvUZP+oNIH2Yv+0z4x/mu6nl1+F6Z5L01g+CXOwplNHXeRDSFkmm7H4OMDfbjj/IAyxNdAmDHEfVkx+x/JbkChNNkBp/m3A/2kk4waIKP0+dbshzNVkhq72gmEl2XT5kPGZxmyw48Kc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2UX9yx9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCFD5C2BCB0;
	Mon, 11 May 2026 16:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515342;
	bh=uznNZeBvkQNFwgstmmxLx35Y58HlJI7x/00h6NLAsFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i2UX9yx9XuOSw0NbAmyJJnddOcPRj8LGLdBV8iH2RihMb9hT6taGFgNzwAlWkGzup
	 swaJBuE4P4caIU7aQgJ2e8hi0yD7n3C7xM00RyNmIlk/cgQUfcIA3zjXaTVucKygbJ
	 wUw5iCMt4wncNQVa15Qucj4GwRCf93qBuUwhafh+UeSEliIumpsvEguiRmtC8cwHSi
	 jBAnz1y/n/9bXj03ovoQMSwE0+hsHQwthPrzjetPX4pyAIA+iw75Ryd66Ntchej6IM
	 1JK59P7jj0IVvlGIfnnjnH9N98zgmtaQA1E4qOQHHeazoJdPmhpRiW/BI21Lr9ndJ8
	 9pPHy2gfDJS/g==
Date: Mon, 11 May 2026 17:02:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: i3c: dw: Add apb reset
Message-ID: <20260511-amnesty-afoot-84537aafc02c@spud>
References: <20260511031945.3228-1-jszhang@kernel.org>
 <20260511031945.3228-3-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CfZp+rhr9WmPbCrF"
Content-Disposition: inline
In-Reply-To: <20260511031945.3228-3-jszhang@kernel.org>
X-Rspamd-Queue-Id: 922BD5127A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295671-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--CfZp+rhr9WmPbCrF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 11:19:44AM +0800, Jisheng Zhang wrote:
> Add dt-binding for support of apb reset which is to reset the APB
> interface.
>=20
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Please squash both dt-binding patches.

> ---
>  Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yam=
l b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> index 613dce7757bc..2575442b28ff 100644
> --- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> +++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> @@ -38,10 +38,12 @@ properties:
>    resets:
>      items:
>        - description: Reset signal
> +      - description: APB interface reset signal
> =20
>    reset-names:
>      items:
>        - const: core_rst
> +      - const: apb_rst

Drop the _rst here please, not as if these can be anything other than a
reset!

pw-bot: changes-requested

Cheers,
Conor.

> =20
>    interrupts:
>      maxItems: 1
> --=20
> 2.53.0
>=20

--CfZp+rhr9WmPbCrF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH9igAKCRB4tDGHoIJi
0j/AAQCY7CZ3OJqPaerq0V45HxlhuImAWjnvZaxXnnw27iRhPQEAlYjvac2dz21i
83ktp/UsrKOZqGB0Did72sYL+5huWwE=
=L3cQ
-----END PGP SIGNATURE-----

--CfZp+rhr9WmPbCrF--

