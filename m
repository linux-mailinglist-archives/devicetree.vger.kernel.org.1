Return-Path: <devicetree+bounces-311045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /myONmoxLGqeNQQAu9opvQ
	(envelope-from <devicetree+bounces-311045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:18:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7278F67AD22
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:18:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A00KX9x1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311045-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311045-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 611AC30451C2
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F9AD3839AC;
	Fri, 12 Jun 2026 16:15:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DBC37107E;
	Fri, 12 Jun 2026 16:15:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280906; cv=none; b=NF5LelY1a8UXdmyhxahFBfHIqag+JXWocQojqlO6UDqrLi6tQf8sjMYFGkS7pY7cj1IVr30gLPBjhfer13UY61YGca/0uHHP0PfzHlMGrdFS3Z0DpYtJam/4fANOkfLj1F4STu70nTtz8oDjtl9ccBGJakDZM3q0EYcjZm+QDQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280906; c=relaxed/simple;
	bh=biIWEvYbSvqDli50YUbmnbINrkUz+SpKao0vDXqXwNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UlADw0cKpSBvmM8DkF5c+hfRYy8kk5WekU2VxB95ie7tZECn2SxJ2fAdqND+I2HBcwrMw595TIolaRDR6k2FlMBpiv47v1BBdBVbJgM5tqtvLthZfLSKyFza75/aRyWSp4v6aOxIP26Lod1l/qjTLSuNwv1IcmNaDjI5Ruk2vAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A00KX9x1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0941F000E9;
	Fri, 12 Jun 2026 16:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781280905;
	bh=vmJHpHup/3GEqj07+RkeoL6sgj3aHcR2EOd/A9QSKOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A00KX9x1so8YVFffInDiqAywZ+iG6yk9FsmpyLMkYmzsV5ZTsWnUkv4jEmhweMYXY
	 K4xGUOfbaWpUfFJWfET4qMllBn3yaXmgSkSKqKniWjAgm1Y19IqSLgyWbKmX2YbAfx
	 vBbnb6sG9qagxYb8yqNCpylOy7EmKXiVwD1sdLs2i/DL7b7LO62zuVY4V4x/ChQUJJ
	 vaTjFq//W+kdK4BT46Mgratg+HoSWQ7/dX438phhC+B1jP68LQ4jr/dFFTzs2sy0FD
	 s3K8Pqgk6LzFWKR4KPqA7/xYuMIsmdXBT0dTJy5mepOlgVnsdRn7yPkU3Qqw3tnw9A
	 9NrALVzH6e+SA==
Date: Fri, 12 Jun 2026 17:15:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/9] dt-bindings: input: microchip,cap11xx: Add
 CAP1114 support
Message-ID: <20260612-plethora-debatable-d00cb679277b@spud>
References: <20260612072237.1177304-1-jerrysteve1101@gmail.com>
 <20260612072237.1177304-9-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CeNL0+D+aRrdqU+2"
Content-Disposition: inline
In-Reply-To: <20260612072237.1177304-9-jerrysteve1101@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311045-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7278F67AD22


--CeNL0+D+aRrdqU+2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2026 at 03:22:14PM +0800, Jun Yan wrote:
> CAP1114 is a 14-channel capacitive touch sensor with 11 LED outputs
> and hardware reset support.
>=20
> Add the compatible string for CAP1114, add its datasheet URL,
> update the maximum of LED channel reg, and add constraint for
> linux,keycodes.
>=20
> Previously, the LED reg property had a default maximum of 7 for CAP1188.
> With the addition of CAP1114, the default maximum is now 11.
> An if-then constraint is added to limit the LED count for CAP1188.
>=20
> Update description for microchip,input-threshold: CAP1114 only provides
> eight threshold entries, which does not match its total channel count.
>=20
> CAP1114 does not support microchip,signal-guard and
> microchip,calib-sensitivity.
>=20
> Add CAP1114 to the unsupported enum list.
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  .../bindings/input/microchip,cap11xx.yaml     | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index 778ec6d659a8..0e9a1a8a3f3e 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> @@ -12,6 +12,7 @@ description: |
> =20
>    For more product information please see the links below:
>      CAP1106: https://ww1.microchip.com/downloads/en/DeviceDoc/00001624B.=
pdf
> +    CAP1114: https://ww1.microchip.com/downloads/en/DeviceDoc/00002444A.=
pdf
>      CAP1126: https://ww1.microchip.com/downloads/en/DeviceDoc/00001623B.=
pdf
>      CAP1188: https://ww1.microchip.com/downloads/en/DeviceDoc/00001620C.=
pdf
>      CAP1203: https://ww1.microchip.com/downloads/en/DeviceDoc/00001572B.=
pdf
> @@ -26,6 +27,7 @@ properties:
>    compatible:
>      enum:
>        - microchip,cap1106
> +      - microchip,cap1114
>        - microchip,cap1126
>        - microchip,cap1188
>        - microchip,cap1203
> @@ -122,6 +124,8 @@ properties:
>        is required for a touch to be registered, making the touch sensor =
less
>        sensitive.
>        The number of entries must correspond to the number of channels.
> +      CAP1114 is an exception where channels 8~14 reuse the eighth entry=
's
> +      threshold, so counts differ.
> =20
>    microchip,calib-sensitivity:
>      $ref: /schemas/types.yaml#/definitions/uint32-array
> @@ -149,7 +153,7 @@ patternProperties:
>        reg:
>          description: LED channel number
>          minimum: 0
> -        maximum: 7
> +        maximum: 10
> =20
>        label: true
> =20
> @@ -178,6 +182,18 @@ allOf:
>        properties:
>          reset-gpios: false
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,cap1114
> +    then:
> +      properties:
> +        linux,keycodes:
> +          minItems: 14
> +          maxItems: 14

Sashiko complaint here is valid.
You need to increase the outer constraint to max 14, and only set the
min here.
Then you need to add an else that sets maxitems to 8.
pw-bot: changes-requested

Cheers,
Conor.

--CeNL0+D+aRrdqU+2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiwwhQAKCRB4tDGHoIJi
0vZqAP9oIdDu1zFnVXl57TMzqz2FqHVSYstv9DT73krR6G/G7gD/YsoyJXyo2NRY
pbbrBMlhZmtmc/u+Y4jwF/eyq9Mgwwc=
=Hq3l
-----END PGP SIGNATURE-----

--CeNL0+D+aRrdqU+2--

