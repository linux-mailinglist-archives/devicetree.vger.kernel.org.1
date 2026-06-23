Return-Path: <devicetree+bounces-314927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZytUD9nBOmoIGAgAu9opvQ
	(envelope-from <devicetree+bounces-314927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:26:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A866B909A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:26:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RotgOa4N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314927-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314927-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A4DF304607F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D8038B12B;
	Tue, 23 Jun 2026 17:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBD6311968;
	Tue, 23 Jun 2026 17:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782235606; cv=none; b=lkjqM9R2TC9i8km6bZbxjkH5EikwyKiNNSAgBaDnDVEGFAcZOf0JtSPS8KNngNGIDBCa8v6SvyM4OBKhR30UAup+mbKOKtH1eS9Kft31ZT9kAAbQShw0itsVA8THaiR8KiJbiLRJemhowrMOSl2fnF/WCgua6gg8vDXiYsqFdxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782235606; c=relaxed/simple;
	bh=775RyjAhTi/Y0SVRpHHuxL2qSH0D28OpgK//YNzq75I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fI0AQRFKELKNHDPjL4b4a0oAGUpQW0yv+ZHOBD5qLAqw2XbGhK2l6J04VGCyfZsCuYAqup/TOSidCRYyjSVwgKY50wXy1yVKtGEUlpOt/vNRNzmZHDqUFyKDhxUP5EkxLqSdrUhv50lPYgr28H2+dc9wyDOACLevnYVkBQQ3aP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RotgOa4N; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E441F000E9;
	Tue, 23 Jun 2026 17:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782235605;
	bh=n0OabhRPaKb8ZtVjW0dZ5Ep+A9j/jCXntRyyMO7DeCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RotgOa4Nm+9+wWbya9PzPZu80TPtMmKQw3Ui0AbTe1Plw2UPSJtnyTGmyxBx8aznh
	 4t3ZDIexYyM/VGwZEzX7d8VLmp17AImurWuIb0LGjdY/4JT4cU1l5bakML3JuBxLBx
	 wcIogjysKhSxCeL1bHMgMtEdLbaZhy9umzw7/He+nrmR63d531dKFP58qghuhe4Oss
	 NPDehHsd+rvmgI69mBbESvL7sK+sJmszYiDPur2xfOH828T3uYAwc5UZf3aN0OHQDt
	 MotKIK39Vpdq7iSbBxlMX5oOWAO5ITAJUNJTWTsgacDBnHPavKcD/PmUFuaV3N10EI
	 acaI2aPflr+5w==
Date: Tue, 23 Jun 2026 18:26:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: ehristev@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, srini@kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 01/12] dt-bindings: iio: adc: at91-sama5d2: document
 sama7d65
Message-ID: <20260623-swiftness-catering-6884c3a58715@spud>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
 <20260623105944.128840-2-varshini.rajendran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bWWrdvlOUOdbawuY"
Content-Disposition: inline
In-Reply-To: <20260623105944.128840-2-varshini.rajendran@microchip.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@linaro.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314927-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:email,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85A866B909A


--bWWrdvlOUOdbawuY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 23, 2026 at 04:29:33PM +0530, Varshini Rajendran wrote:
> Add dt-binding documentation for sama7d65 ADC.

Commit message is missing an explanation of why a fallback is not
suitable.
pw-bot: changes-requested

Thanks,
Conor

>=20
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.=
yaml b/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml
> index 4817b840977a..e8a65fdcd018 100644
> --- a/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml
> @@ -15,6 +15,7 @@ properties:
>        - atmel,sama5d2-adc
>        - microchip,sam9x60-adc
>        - microchip,sama7g5-adc
> +      - microchip,sama7d65-adc
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.34.1
>=20

--bWWrdvlOUOdbawuY
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajrBywAKCRB4tDGHoIJi
0jM6AQDUdgx+Qm+a5ugJzb/Gn79+XAaFjUqEMNYBMSFtptCA6gEAj82jix8YsxqH
fgYFWhFEg5ve5yF6iKFTwp5ik+Oj8AM=
=HOgm
-----END PGP SIGNATURE-----

--bWWrdvlOUOdbawuY--

