Return-Path: <devicetree+bounces-276115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LLxHOTmt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:17:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D08C1298947
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 418F130048CE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01CC1280A21;
	Mon, 16 Mar 2026 11:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BltvFN1k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC8527FD43;
	Mon, 16 Mar 2026 11:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659599; cv=none; b=p+hKhXaV+A8EHD4EXLc36theZUeY8jlL1ThkFZ3IEhtUM31ks/k2y/DaeC5XHrURoPgfc8aUcDMxlpV9kM6q63Rs45IDoJG/87LgUzKUePDdH5OuZVIpP5n4KLHo4yowlItH2POSvOFLkIAv9Kk86LpnE/pjE/SMv0weQsOBDUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659599; c=relaxed/simple;
	bh=ttOBY1+LrKDtMEh7+kux+ZEKohpNBTus9g20z7+qt34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7adDzDIB5wYCJrC6SIFFmsUgjmtf0vp5oaHBDbhL0Vw1wzaFgzIxqahouNj2jVh6bOlBuJi2q6LaQOS56eMzGzWNUG3Zl9bplIPyih6DE7ALSfQYguI0x49Xp+o9zCl47mpxXOND8GE/ljo8B6Ut5cFP10qQRmuvrfR30I2z3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BltvFN1k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51199C19421;
	Mon, 16 Mar 2026 11:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773659599;
	bh=ttOBY1+LrKDtMEh7+kux+ZEKohpNBTus9g20z7+qt34=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BltvFN1kAqOYkAZ9PZs5iDmL6fjieyQbR/EL1CYHa64jyARZryULP2q4CerR8WvVZ
	 lKRfsJjb+Jp5HJtfdTvJGvXdseiFAz8RPuEmZ+xypJ/zhcq+puJbfyrtFjeiIB9MOt
	 8ZMLvMP7PHbskhZatAHKtIpDEwrElqTMqMnvU8slFPIj8lxOlELKxldj8Ybq7kL2rr
	 1PAc3/HjsMEobxGgEafd0Ncq59ZcXAT8iUHRtKygQGg1jc3YaPcijLFjXJNvKvlkgm
	 JHFEqcHaM5Xkuk1JX/DHAbai6NpppaX2Z2bImEF391Hm1ZyBjnQkR/ntbXCn/FkMGg
	 aevduLaUiDxgQ==
Date: Mon, 16 Mar 2026 11:13:15 +0000
From: Conor Dooley <conor@kernel.org>
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com, krzk+dt@kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	marex@denx.de, mingo@kernel.org, tglx@kernel.org
Subject: Re: [PATCH v2] dt-bindings: input: touchscreen: ti,tsc2005: Add
 wakeup-source
Message-ID: <20260316-refusal-disband-54161c7b96e0@spud>
References: <20260316034606.11304-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ucQASI5NdIgitFQ6"
Content-Disposition: inline
In-Reply-To: <20260316034606.11304-1-phucduc.bui@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	TAGGED_FROM(0.00)[bounces-276115-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D08C1298947
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ucQASI5NdIgitFQ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2026 at 10:46:06AM +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
>=20
> Document the "wakeup-source" property for the ti,tsc2005 touchscreen
> controllers to allow the device to wake the system from suspend.
>=20
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml  | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc20=
05.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.ya=
ml
> index 7187c390b2f5..c0aae044d7d4 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
> @@ -55,6 +55,9 @@ properties:
>    touchscreen-size-x: true
>    touchscreen-size-y: true
> =20
> +  wakeup-source:
> +    type: boolean

wakeup-source: true

> +
>  allOf:
>    - $ref: touchscreen.yaml#
>    - if:
> @@ -97,6 +100,8 @@ examples:
> =20
>              ti,x-plate-ohms =3D <280>;
>              ti,esd-recovery-timeout-ms =3D <8000>;
> +

Remove the blank line please.

pw-bot: changes-requested

Thanks,
Conor.

> +            wakeup-source;
>          };
>      };
>    - |
> @@ -124,5 +129,7 @@ examples:
> =20
>              ti,x-plate-ohms =3D <280>;
>              ti,esd-recovery-timeout-ms =3D <8000>;
> +
> +            wakeup-source;
>          };
>      };
> --=20
> 2.43.0
>=20

--ucQASI5NdIgitFQ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabflywAKCRB4tDGHoIJi
0gTQAP4oJY7Vq176j3U9tbFna47XaqNEQpEKxipH8IyCrhXS0QEA56czwGdGvaC4
jQtQBJvz+z+YeFA9MOb2q3H+panO+A8=
=dCep
-----END PGP SIGNATURE-----

--ucQASI5NdIgitFQ6--

