Return-Path: <devicetree+bounces-308453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1bS9CmYGJ2pdqQIAu9opvQ
	(envelope-from <devicetree+bounces-308453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:13:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 790DA65996C
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:13:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LNZfioV6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308453-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308453-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C935F30DDCDC
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23701352C52;
	Mon,  8 Jun 2026 17:38:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4773644C5;
	Mon,  8 Jun 2026 17:38:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940293; cv=none; b=dxxHzPjzFCeQoKrWC9QEJxqcnAWipmJqC4bboP8IQ9bpF+93O8yUW6Qc2l5Mh5uPotk2YpMstU5ngxFdaD5SWVzklSCWsWvqWZE0NlxFQPiQiuHhx2f7R5vVDJv0B7XYzJe3XwDEWYWg2Y/kDJABGanve0XHVtvWkCuTkZVK2vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940293; c=relaxed/simple;
	bh=mtvsyRnKfyoEzfSqlInNenv9JGaRcMcZQVm/gTLc0ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RgEstVL1hvK5quLj8U5ui3mJUk3MZ8bsPlujLFsRwl+QwhqvDRKA0E8FhrXgH9SwOQ+Q26hn8I1VLCF7Z2lNdwck/MFi7wTMJD2c+uBXMQ+SnSMywnC6q/jbrXwYltOj2+omrghdEkZRbGEdPeO0szhrgS/rLVdmEsIy0qpzS54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNZfioV6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E6F41F00893;
	Mon,  8 Jun 2026 17:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780940291;
	bh=U/pjmW4nNKfJXZiL8TPZ7CNa0CqaniLM8nnU3rLS8gI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LNZfioV6JPrXMW1zDnDKf23p5HtxpjyQJ1/USEtXJ6NPpkoO93AcSvedNgjZwXlZW
	 gn+Ecv5vN2nSGydclInfCssBw1Nc4kOYG9fK1dnyZ4DAMYOEphCxNaysniA1jAF/iY
	 tnXKwpRIdI1MgjFbl54PYp0B8RFyxu1mVID8bj/JODR4xTo97HdxnKfcBDbxDEBg6N
	 kDLQdVHAq+OocB8oLuzOht5k5XeqWhH2Fp3GNVNqgYdQWn4niYHdLwlnxZlTPR+1tW
	 Odzg4zYTyvgcUa8XQDahsDCbCj20mWHZzFjV1GEd82nfdzdAPXmMqhqYVFupn8Wd4U
	 SzH6mgxgTWhvQ==
Date: Mon, 8 Jun 2026 18:38:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/8] dt-bindings: input: microchip,cap11xx: Add CAP1114
 support
Message-ID: <20260608-broadly-reunion-09fc8eca5e87@spud>
References: <20260606150458.250606-1-jerrysteve1101@gmail.com>
 <20260606150458.250606-8-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MuqtILYrLlq2z2p1"
Content-Disposition: inline
In-Reply-To: <20260606150458.250606-8-jerrysteve1101@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308453-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:url,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 790DA65996C


--MuqtILYrLlq2z2p1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 06, 2026 at 11:04:00PM +0800, Jun Yan wrote:
> CAP1114 is a 14-channel capacitive touch sensor with 11 LED outputs
> and hardware reset support.
>=20
> Add the compatible string for CAP1114, include its datasheet URL,
> and update the maximum count of LED channels and linux,keycodes entries.
>=20
> Add description for microchip,input-threshold: CAP1114 only provides eight
> threshold entries, which does not match its total channel count.
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  .../bindings/input/microchip,cap11xx.yaml     | 21 +++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index e307628350c2..08233386a433 100644
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
> @@ -62,7 +64,7 @@ properties:
> =20
>    linux,keycodes:
>      minItems: 3
> -    maxItems: 8
> +    maxItems: 14
>      description: |
>        Specifies an array of numeric keycode values to
>        be used for the channels. If this property is
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
>      required:
>        - reg
> @@ -199,6 +203,19 @@ allOf:
>              reg:
>                maximum: 1
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,cap1188

I don't understand this restriction, shouldn't this be
if: properties: compatible: not: contains: microchip,cap1114
so that the constraints before your change are retained?

Also, you don't add a new constraint for linux,keycodes, so now it is
permitted to have > 8 entries for existing devices.

pw-bot: changes-requested

Thanks,
Conor.

> +    then:
> +      patternProperties:
> +        "^led@":
> +          properties:
> +            reg:
> +              maximum: 7
> +
>    - if:
>        properties:
>          compatible:
> --=20
> 2.54.0
>=20

--MuqtILYrLlq2z2p1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib+AAAKCRB4tDGHoIJi
0ol7AQCI/HJtqg0dmwEO0I49AO4x3tp+W5+SwAHU80uTtuYG7AD+KpVjeqYJUYCV
R/Ye7802DGcWyiPUUKR93wHtfBtvCws=
=SEWu
-----END PGP SIGNATURE-----

--MuqtILYrLlq2z2p1--

