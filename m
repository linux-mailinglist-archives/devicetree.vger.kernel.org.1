Return-Path: <devicetree+bounces-308448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nU48MVT8JmrppAIAu9opvQ
	(envelope-from <devicetree+bounces-308448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:31:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5941B659425
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:31:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IFX7P8Td;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308448-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308448-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E65F83019805
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D67B31F990;
	Mon,  8 Jun 2026 17:30:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035D52D23B9;
	Mon,  8 Jun 2026 17:30:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780939855; cv=none; b=CjaA49f0GHkvAB5s0TtZP6k5KisKlMugi1Ny+k1kw8kii2g5mT9h5avF9zoHM0GLoX6N/Rx0gYnOL9nib+bw5dv4eLExf6gdrovk6SL797FMJ0JIfvcYBnTP2qebN4/VGnYzkzfSlEeWIHhr3WvGHqVne3tA1lCZj1RaR6f5lIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780939855; c=relaxed/simple;
	bh=xaRCLUeeFiQVw1R7X3Bk4L9sca5W65yPaPkHtSqVsm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EN6R8LEE4fyfhLRpbzlv/utFeBioQnxcGqMwadeb0SxJHQCG+Cs2VE8i1/KreXCnLzvqYaS1A6GylPc224frvHbQvD/j7Gzq86uQVWE2LlGDLd6oWtnoOMXSIpWU/XO4hw9XPRqGHveTgy8LLxq6WO1BmXnO+6nz7F9EsFqKXTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFX7P8Td; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 176791F00893;
	Mon,  8 Jun 2026 17:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780939853;
	bh=wj1z2Ftw+sgGKRj+NIWl5o3RU5HdxjtVfe2qpfcSpww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IFX7P8Td2ZSOEvbUyS6A7OJIJch01lZAd1jPEDGeA+xy9oVLdA48JNkDgSHfkShK2
	 UQhoTYGmyfLT6SMangP0KPTpSty485sOs5dLJ9bE5rpsgmozIYp3SpeLjTmE49cFgz
	 fGPn/+7oxtzvwXnrgTT7HkKZhVOoP7u94s7nsiyFHIE+EJXGAzp4CgD/IzzNcA85D3
	 hGR4RWVRvnM/9BCCuqLAF5kC0UZMCASEwkwf1UYcT4lJDOxGFKCGLmTwFgZO58o5xT
	 t/agY/nSOjwb2wZOdNZOfnz4WthgLcguYJl2938UUmTC31j0wpdz0zfEfhyxx6BNRb
	 0ZUCGRMAD+QLg==
Date: Mon, 8 Jun 2026 18:30:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, marcelo.schmitt@analog.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	mike.looijmans@topic.nl, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jorge.marques@analog.com,
	antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
	jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz,
	wens@kernel.org, sakari.ailus@linux.intel.com, linusw@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: iio: adc: Update title and enum
Message-ID: <20260608-leverage-taunt-54a5164eb128@spud>
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
 <20260607183542.368184-2-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xrTrwg6zCyeujvaw"
Content-Disposition: inline
In-Reply-To: <20260607183542.368184-2-jakubszczudlo40@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-308448-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,analog.com,topic.nl,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid,vger.kernel.org:from_smtp,topic.nl:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5941B659425


--xrTrwg6zCyeujvaw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 07, 2026 at 08:35:40PM +0200, Jakub Szczudlo wrote:
> From: jszczudlo <jakubszczudlo40@gmail.com>
>=20

$subject: dt-bindings: iio: adc: Update title and enum

This should read "dt-bindings: iio: adc: ti,ads1100: add support for $newde=
vice".

> Add ads1110 into title and enum compatible for ads1100 driver.

And so should this.
Additionally, please explain why this device is not compatible with
existing ones.
pw-bot: changes-requested

>=20
> Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>

Probably your signoff should be "Jakub Szczudlo <jakubszczudlo40@gmail.com>=
".


Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml b/=
Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
> index 970ccab15e1e..4c43996b7ec6 100644
> --- a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/iio/adc/ti,ads1100.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> =20
> -title: TI ADS1100/ADS1000 single channel I2C analog to digital converter
> +title: TI ADS1100/ADS1000/ADS1110 single channel I2C analog to digital c=
onverter
> =20
>  maintainers:
>    - Mike Looijmans <mike.looijmans@topic.nl>
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - ti,ads1100
>        - ti,ads1000
> +      - ti,ads1110
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.47.3
>=20

--xrTrwg6zCyeujvaw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib8SAAKCRB4tDGHoIJi
0jbiAQDtpOcmvzAjJs3mf+y1iPz7xRduDUkpc8oSOJuo2OzBEQEAkfzmVRYrf9w/
Vjt6toU83B93ihJKpBrIc5kG6KW23AE=
=IKcT
-----END PGP SIGNATURE-----

--xrTrwg6zCyeujvaw--

