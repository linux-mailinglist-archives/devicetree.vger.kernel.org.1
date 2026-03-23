Return-Path: <devicetree+bounces-279353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOBMBOqXwWkuUAQAu9opvQ
	(envelope-from <devicetree+bounces-279353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 20:43:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 133E22FC836
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 20:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D0F03015FCD
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 19:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46163BA22C;
	Mon, 23 Mar 2026 19:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul/BYAwj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE00E390C8B;
	Mon, 23 Mar 2026 19:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774294909; cv=none; b=JnKRovwadYxPOLmnKsULR0K+gSGYICfHqUIvFMBP/F/2YWpDmL/8DaWODdalC4aNGMIp+/DthdPu+7p47qNrmr9hrKzTidHU+9WlWxFkPqmG6/Wkiocx65UzlA5k5RyJHq16dzIh8vR9j+370IAOC/TWvtccmkidb70Iout027Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774294909; c=relaxed/simple;
	bh=XHvZkuQSHGadK6IJyyoHKtds+0+8fGnVO/0hW+LCfkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hlStQCEmmBYtzYPeL8wKHfmvFiE3ltZXVPUwj/YMzgpkxDLT2gPYkQilUS27qaXb//7wYHE3Y3TJcU3G5L6vji/MAY6f9tqxRDhTOnKBPfgfFXs7XYQzX/hfaNgtug52SN1Yq/dKLE9cyehyWbuf6H+GegM7qjtO1oarI176YrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul/BYAwj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C561AC4CEF7;
	Mon, 23 Mar 2026 19:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774294909;
	bh=XHvZkuQSHGadK6IJyyoHKtds+0+8fGnVO/0hW+LCfkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ul/BYAwj9IUz9XALPgRGIFXSXzjVOo97eMEWnwff5skt29JsFkSX5Wbc1VyalYC0P
	 wNiW4DRp5tHf2eabSF1NhqN7+l00LcGk+l5OCW0roIrs7vI+IWgRX+AnlAx68IIXZw
	 Jpldn4oCmf1FrDaoJ9da9t7sqHSz94dFtu4toR/WX/mXDTpVReRVLaxeFqT3JL8XfA
	 zRmSlCu8RLdCt+qOiotBPDH4Rz3f9VMGhCmp0D3hlGqah1i23+5ooB9a67VB/TrZ7S
	 5uQVzogkNrg+MpFwn+Npo52J2qvkU83FlrRK+DRfE9Ckl6pJmS3KA9MCJRYh56BvRN
	 noisucFEEnEMA==
Date: Mon, 23 Mar 2026 19:41:45 +0000
From: Conor Dooley <conor@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/8] dt-bindings: i2c: realtek,rtl9301-i2c: extend for
 clocks and RTL9607C support
Message-ID: <20260323-stash-contend-ea5974195eac@spud>
References: <20260323071337.15410-1-adilov@disroot.org>
 <20260323071337.15410-6-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EsRIo3u5oPaEi/ur"
Content-Disposition: inline
In-Reply-To: <20260323071337.15410-6-adilov@disroot.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279353-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,disroot.org:email]
X-Rspamd-Queue-Id: 133E22FC836
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--EsRIo3u5oPaEi/ur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 23, 2026 at 12:13:34PM +0500, Rustam Adilov wrote:
> Add the "realtek,rtl9607-i2c" compatible for i2c controller on the
> RTL9607C SoC series.
>=20
> Add a clocks property to the properties to describe the i2c reference
> clock and make it available for all the compatibles. This i2c reference

Why? I can see that you're doing that, and it's good to know that that
is intentional, but why is it being done? Need to explain that all of
these devices actually do have this clock etc.

> clock is assumed to be coming from switchcore region via Lexra bus as
> the other SoC peripherals.
>=20
> RTL9607C requires the "realtek,scl" and "clocks" to be specified
> and so handle it under separate if check for "realtek,rtl9607-i2c".
>=20
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  .../bindings/i2c/realtek,rtl9301-i2c.yaml         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
> index f9a449fee2b0..5873cfdc5b3e 100644
> --- a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
> @@ -15,6 +15,8 @@ description:
>    assigned to either I2C controller.
>    RTL9310 SoCs have equal capabilities but support 12 common SDA lines w=
hich
>    can be assigned to either I2C controller.
> +  RTL9607C SoCs have equal capabilities but each controller only support=
s 1
> +  SCL/SDA line.
> =20
>  properties:
>    compatible:
> @@ -34,6 +36,7 @@ properties:
>        - enum:
>            - realtek,rtl9301-i2c
>            - realtek,rtl9310-i2c
> +          - realtek,rtl9607-i2c
> =20
>    reg:
>      items:
> @@ -51,6 +54,9 @@ properties:
>        The SCL line number of this I2C controller.
>      enum: [ 0, 1 ]
> =20
> +  clocks:
> +    maxItems: 1
> +
>  patternProperties:
>    '^i2c@[0-9ab]$':
>      $ref: /schemas/i2c/i2c-controller.yaml
> @@ -81,6 +87,15 @@ allOf:
>      then:
>        patternProperties:
>          '^i2c@[89ab]$': false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: realtek,rtl9607-i2c
> +    then:
> +      required:
> +        - realtek,scl
> +        - clocks
> =20
>  required:
>    - compatible
> --=20
> 2.53.0
>=20

--EsRIo3u5oPaEi/ur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacGXeQAKCRB4tDGHoIJi
0lklAQDCDXGYDV0Jc1ynS3YLxK9VgTrniDsg3jUih5oYwjBPdwEAiyT5qiFN1Qhx
sLCoZ+0uc/2f5Wqrh0uX0jez1jLHegQ=
=JKDV
-----END PGP SIGNATURE-----

--EsRIo3u5oPaEi/ur--

