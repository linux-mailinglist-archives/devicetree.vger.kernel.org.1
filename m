Return-Path: <devicetree+bounces-295676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL87EAEFAmpEnQEAu9opvQ
	(envelope-from <devicetree+bounces-295676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:34:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DB6512401
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1DFD631FEBC8
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB3336F42D;
	Mon, 11 May 2026 16:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcyoECn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6987842316D;
	Mon, 11 May 2026 16:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515688; cv=none; b=ikEKE1QFLfuhFWvEuhC52HZJfecHpjrigr4tyt8Sq7ZTxuOyoOpNp9XeEuQvVlZtP58GTlqCO477hn+qTgW/ZJTjLmKRHakKpMYdjeSovkGRD1avuaCzMCs70/pwoAnlCwykw/c9ETvQXedu+TvLwTk9TcrSKeabHtVok9uEp6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515688; c=relaxed/simple;
	bh=4+YVwqftH/V2MQCzm5/4uWvWWj0IF+tYzH9cTaeGnB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VGr/LB1Oc7KVo3dyiK3KJtdpx5q3AOPnC+Sz3uKq0k2ncDU6NuZuccaEl7VTMsP5mVYBveJT0NVnIwptnwTanngwFmH1ElMBKszB2piNYNysdqljeA29ERznaq1LjQco0sXP+vK/gzGQCC3TEeVvHyWKEc8lSQyWCiHoUTyJas4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcyoECn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC861C2BCB0;
	Mon, 11 May 2026 16:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515688;
	bh=4+YVwqftH/V2MQCzm5/4uWvWWj0IF+tYzH9cTaeGnB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bcyoECn3uwj9icUZTdLM2oZLlxskv9hv3vwvurnDLBm17tgRhl4zjK9k7Xupv/OeF
	 6ZbpVJpK2A3mdTEzz3chZWb45kSRcLk+9yXKwes2pMojxoVfz8MIgr/NFKmDeuhJuy
	 TcdtszJuL2xnu9t4pmEhzH3Qsbkl3TATQk5ZvrDsUxCFxvKLyAXhY6TrHQVKjnLuZa
	 xvbZQrdzYeqdBJpvK8BSx0uWjuuDwA9fe5WeJJXLLtb0kx+ccAiOTNOO30hMt887U/
	 5B+8w7Dx91qIm7lC+gBNC/ytMrvSxI5VEZVqCWNv+mI1LMfORMckifnoki1wygF0Sr
	 r5MljoMs26PTQ==
Date: Mon, 11 May 2026 17:08:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add Baijie HelperBoard
 A133 compatible
Message-ID: <20260511-stock-elitism-f1f703bee1a3@spud>
References: <20260510201644.4143710-1-alexander.sverdlin@gmail.com>
 <20260510201644.4143710-3-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CPp9akVKR9jELSsV"
Content-Disposition: inline
In-Reply-To: <20260510201644.4143710-3-alexander.sverdlin@gmail.com>
X-Rspamd-Queue-Id: C3DB6512401
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--CPp9akVKR9jELSsV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 10, 2026 at 10:16:39PM +0200, Alexander Sverdlin wrote:
> Baijie HelperBoard A133 is a development board around their A133 Core
> board. Introduce a compatible for both the Core and the development
> boards.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
>=20
> Changelog:
> v2:
> - introduced baijie,helper-a133-core compatible for the Core (SoM) board
>=20
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index e6443c266fa1..d7b9dec81165 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -96,6 +96,17 @@ properties:
>            - const: allwinner,ba10-tvbox
>            - const: allwinner,sun4i-a10
> =20
> +      - description: Baijie Helper A133
> +        items:
> +          - const: baijie,helper-a133
> +          - const: baijie,helper-a133-core
> +          - const: allwinner,sun50i-a100
> +
> +      - description: HelperBoardA133 Core
> +        items:
> +          - const: baijie,helper-a133-core
> +          - const: allwinner,sun50i-a100

Does this make sense? Can the core board be used without a carrier?

> +
>        - description: BananaPi
>          items:
>            - const: lemaker,bananapi
> --=20
> 2.54.0
>=20

--CPp9akVKR9jELSsV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH+4wAKCRB4tDGHoIJi
0mW6AP9DvfuKHTGqz4JjMkDtxaKdGP8hPEdcpm8cQNXqDnoTQQD9G1ABhg2nfzHt
F+3oiyL/9EdspccM1fzQwf1GeYZDWQ8=
=s5Ca
-----END PGP SIGNATURE-----

--CPp9akVKR9jELSsV--

