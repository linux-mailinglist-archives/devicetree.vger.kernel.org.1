Return-Path: <devicetree+bounces-313819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qCPDFdlONWrvsAYAu9opvQ
	(envelope-from <devicetree+bounces-313819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:14:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E62996A6574
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:14:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B3gNGWZP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313819-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313819-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F66F300A32D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B94137BE95;
	Fri, 19 Jun 2026 14:14:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111E0286D7D;
	Fri, 19 Jun 2026 14:14:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781878485; cv=none; b=H9VJnbs+454tsfzh/Xt/VBIZugwL1Vspr26ZIlKJpoaO0srvTN8JBykWLHDKbqidYsj/+1OgcMW8GqiypupTKGuMeD9QkAnVhgt4pzMLiIFLGKkcBqfoYS8WM1sHnGgeipNtZGTaSykVfiZsWDqewX/0eOtjpFFvsN7HgrdOKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781878485; c=relaxed/simple;
	bh=+PSkzE6L10WY//MsxVc6Aap7zuhxMee5XrdWKnXnAoI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a4McykmC8diNYI+4kWLOBmQNbg/Vv4tzI+Q2QV5f3j0rJqu3Zj1VyleuKxhxtV4ALcJuwH+C0jXvvv61LLlPBIVNDuwrz/8JHlAmlW29zdgg3XkR0LD2VwxJN2neXxDURG07YgBfESHC2JPJk+mZ/BVCrCCojuImkA7kHFL3lPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3gNGWZP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6E1F1F000E9;
	Fri, 19 Jun 2026 14:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781878483;
	bh=R0w4Zq3ERQYGlksBbtPmaONp08srayc1nhrlWTe4MLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B3gNGWZPcQAFB2b8IXEZPaIa6FM3u3grGg/KLcls3M7rOtA11ZF9qMNknapqAhJ3U
	 aflgOybE+7XCapUfv54cp1/iUAQfWu550kRKTshb5OcFm/TO/E9SqEsvQFEx2oOwD7
	 P2bVAXF64+UXaJK0IwNG9p3xJoT57t0JZl41FDgHYpm+K8gihsLdLvZdPeFlTxkygb
	 fVzBd+crx5VHHNm/Yu9oHmZlI8oIsQ0cHXcC4wMpVgweApqklWfm50XHPzC1q2U+CD
	 gqoKWXwHCznpUbxC7zzvonSGr0/d3TGHBUlDeSB4FyCLZXkvlQ8RWSPAPK+9QFYv/5
	 AyTXwTgjsf0Cg==
Date: Fri, 19 Jun 2026 15:14:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Kurt Borja <kuurtb@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: iio: adc: Add reference-source
 property
Message-ID: <20260619-proton-distract-de92d6b9b600@spud>
References: <20260618-new-channel-props-v1-0-963c1b5cf40a@gmail.com>
 <20260618-new-channel-props-v1-1-963c1b5cf40a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d4cQJOWEbjVl10Wz"
Content-Disposition: inline
In-Reply-To: <20260618-new-channel-props-v1-1-963c1b5cf40a@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313819-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E62996A6574


--d4cQJOWEbjVl10Wz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 18, 2026 at 07:33:01PM -0500, Kurt Borja wrote:
> Some ADCs have configurable voltage reference sources for each channel.
>=20
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documen=
tation/devicetree/bindings/iio/adc/adc.yaml
> index b9bc02b5b07a4c..c74c2084fdb68c 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -73,6 +73,16 @@ properties:
>        device design and can interact with other characteristics such as
>        settling time.
> =20
> +  reference-source:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 2
> +    minItems: 1
> +    description:
> +      Indicates the voltage reference source or sources for this channel.
> +
> +      This array describes either a single reference source or a positiv=
e and
> +      negative reference sources.

I have no idea from this description what this actually refers to. Is it
a pin? A supply? A channel?

> +
>  anyOf:
>    - oneOf:
>        - required:
>=20
> --=20
> 2.54.0
>=20

--d4cQJOWEbjVl10Wz
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajVOzwAKCRB4tDGHoIJi
0gILAP0WMWNAzsh8VtkBeHRsr/gMjHd6oG3KNqwiizWGzXMQYQD/dSdDeclA2BpB
p2MN1I+zFB6h2Ryz97/+F35nUXtiOAc=
=+bkH
-----END PGP SIGNATURE-----

--d4cQJOWEbjVl10Wz--

