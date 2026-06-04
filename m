Return-Path: <devicetree+bounces-307010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xiBHGnqwIWoyLQEAu9opvQ
	(envelope-from <devicetree+bounces-307010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:06:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E452D6422CF
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:06:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="F2dyPB/F";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307010-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307010-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D4AE30065E8
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 17:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A288480333;
	Thu,  4 Jun 2026 17:01:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405CC492524;
	Thu,  4 Jun 2026 17:01:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780592474; cv=none; b=ZmuGMmMGb/aauSBuTn2fvMA86Fr0IKqPHwAgNWZgkwhq6MCTpjRgWSU6QwAXFgZ/LxcWF0F22z5u9zTQBIjZkcUdrTiHTXtul0CT9RCrQVJtmFUPTFI5CZxVhXaT2NNZvitRX175a1LgN+RiideOhgmdwm56srp1ECosm22JN7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780592474; c=relaxed/simple;
	bh=+BlxCRgNH3u7nStg9Z71l3gaHgjYYSd39YI0Virheew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k8SWf1icORKWAAZkmO4smU6Hqlk3rsAnVWEI926z2aKYSMZvEIlV5GWWckieZv6T+BSZpz0eKTzH0ev6psaufQJYcGukzHCSlzwvybI/JFLJElNoqJhFunssujndvWMLhYfRqIk3o+rdqQIHhE+jjOyus8Ij519SSIXJqD0Kll0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2dyPB/F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF221F00898;
	Thu,  4 Jun 2026 17:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780592472;
	bh=zo7NxCFrqWFJbpefGm5G+h7P84t3MKDvVTy1thUw/s4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F2dyPB/FDAzz3093kQnOx2CDxOZ8nKR8/1EL101JMsGmOn89GX+jvBjaJMIPrZt8S
	 uZNveRepTx17F/0JXfFT89P/BwEsYO1jb1V9KnGneykAIIN7K6WHZOPjgg6HZ9IeAu
	 9ZEwGpZFl5dNRxL70IyuExiCtNbXkx2eMizqHTwUtSX/4mCtCRduyxUUviQTvrJy83
	 Q/w6vqi1QDPocmD7KG4hzji6pbmJBgPUbNqD0VxKRWLGMgxMvth3S84r0DwwzCsHro
	 5R3G8w4uhHN1pWwlUHj8jThq1Bwu1u66LDAYXPhs2SZ+86r2ULXqrjYFBjl5NTYVA3
	 aQgfqpXzPR/GA==
Date: Thu, 4 Jun 2026 18:01:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, tomasborquez13@gmail.com,
	masneyb@onstation.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: light: isl29018: add
 isil,cover-comp-gain
Message-ID: <20260604-energy-lid-e7949164431a@spud>
References: <20260604100617.3486541-1-github.com@herrie.org>
 <20260604100617.3486541-3-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lYCZ/yJx6FKzo7En"
Content-Disposition: inline
In-Reply-To: <20260604100617.3486541-3-github.com@herrie.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,onstation.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email,spud:mid,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E452D6422CF


--lYCZ/yJx6FKzo7En
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 12:06:16PM +0200, Herman van Hazendonk wrote:
> Document the new optional property that seeds the ISL29018 calibration
> scale factor at boot from firmware, allowing boards with tinted cover
> glass to ship with correct luminance readings without a userspace helper.
>=20
> The value is a positive integer (minimum 1, maximum 65535) that is
> multiplied with the raw lux reading.  Userspace can still override it
> at runtime through in_illuminance0_calibscale.
>=20
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/light/isl29018.yaml b/=
Documentation/devicetree/bindings/iio/light/isl29018.yaml
> index 0ea278b07d1c..92ea2742bbd3 100644
> --- a/Documentation/devicetree/bindings/iio/light/isl29018.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
> @@ -34,6 +34,19 @@ properties:
>    vcc-supply:
>      description: Regulator that provides power to the sensor
> =20
> +  isil,cover-comp-gain:
> +    description: |
> +      Multiplier applied to the ambient-light reading at startup to
> +      compensate for optical loss in the board's cover glass. Boards
> +      that mount the sensor under a tinted or coated window typically
> +      need a value between a few and a few hundred.

> The value seeds
> +      in_illuminance0_calibscale, so it can still be retuned at
> +      runtime through sysfs.

Delete this, driver implementation stuff isn't relevant to the
devicetree binding.

With that gone,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: changes-requested

Cheers,
Conor.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 65535
> +    default: 1
> +
>  required:
>    - compatible
>    - reg
> --=20
> 2.43.0
>=20

--lYCZ/yJx6FKzo7En
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiGvVAAKCRB4tDGHoIJi
0rIWAQDWlyDrOt8uhrKtpf+5aC0+lGxRyqDpugzHKEJRq6RGswD+NLoJZhp8Joas
UEHm9xeDdfhKYIXJjFOlTxfy9RRg8w4=
=QQp2
-----END PGP SIGNATURE-----

--lYCZ/yJx6FKzo7En--

