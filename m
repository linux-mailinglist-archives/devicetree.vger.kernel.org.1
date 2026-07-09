Return-Path: <devicetree+bounces-323934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MWSdA6zWT2oQpAIAu9opvQ
	(envelope-from <devicetree+bounces-323934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:13:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72069733C04
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:13:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Cj1cxUz5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323934-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323934-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CA2331A57DA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F18835E940;
	Thu,  9 Jul 2026 17:03:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565A054763;
	Thu,  9 Jul 2026 17:03:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783616582; cv=none; b=g92yuk/WvKeH3FQFoobdOM566ZpK0OdgzQp1Gm5k6qdot7QTblV+eDQIQtzpkwKET1Rf7UwRok6oEUnS4iwTWrzmwFBJBduywSQPtNv2IIVANqgCQQWDrjMvSOaTKhJ6LA0ztxTCAsf3SsJD458ozrhmp6lLWYaVD9Qq+cqRbhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783616582; c=relaxed/simple;
	bh=52jKHtT1XZGBL5e1U/p67xDiOFb5GODzF27Ojx/YLNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KnLH8Zc9wKVRsec+rz6vwkYP9dm2kiEuBsPwGXTeCDUl7Qc3yNrJrn+ytmYudw4PNXIG/Yf/JdvmnG0vPcJlQLB0qcizmsqiuIhZ1fgT23PM1TGVZooNsdQNdkvmWtuk0f2FKYjce1Kp2gnOiKUeRv9XHIwqbYIBO9GIzl17j6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj1cxUz5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D43F1F000E9;
	Thu,  9 Jul 2026 17:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783616581;
	bh=UVkkjoNKar1bKEFl70ZGs5fxx8dbVm/2T5bxUQx0tUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Cj1cxUz5oG/M7XEUM9vVfenhMHKPRWC/atZiSuQeeXhO87JofRGHiC+TaO10WJOwM
	 qRHDyveSsC4sJFa0Ls1QNgWDo+LIqtbCYouJIaRV7J+cA0HtGpi3DgMfgsyawVSarU
	 6C5G6HbW0Ds/FUI5os7TA3xqU/QlXmEXh/ciTDWCikY7t2uv3uErabsdoO6GP8Ydxb
	 +Jqh7PuDMt4jcYuD+Aw+2sWRCQ3m2//tPVRBsAv7a5rRZ0ymFX0/GP/qIO7Ncu3pcK
	 M6ZB+q87UeiV+ElPK4b5JuA40s6KBpDpz28VA31/H4t9KujLw4Vy/tPyNNL69XguUV
	 9x+3NRM7+G2XQ==
Date: Thu, 9 Jul 2026 18:02:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Robert Marko <robert.marko@sartura.hr>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
	tudor.ambarus@linaro.org, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, daniel.machon@microchip.com,
	luka.perkov@sartura.hr
Subject: Re: [PATCH v2 1/5] dt-bindings: spi: Document LAN969x QSPI
Message-ID: <20260709-headache-cycle-45c2225c0790@spud>
References: <20260709112006.390742-1-robert.marko@sartura.hr>
 <20260709112006.390742-2-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z43iSHOCmPRnJrDS"
Content-Disposition: inline
In-Reply-To: <20260709112006.390742-2-robert.marko@sartura.hr>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:robert.marko@sartura.hr,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:tudor.ambarus@linaro.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323934-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sartura.hr:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 72069733C04

--Z43iSHOCmPRnJrDS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 09, 2026 at 01:19:07PM +0200, Robert Marko wrote:
> LAN969x has 2 QSPI instances, so document their compatible.

Please include a note about why a fallback cannot be used.
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: changes-requested

>=20
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
>  Documentation/devicetree/bindings/spi/atmel,quadspi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml b/D=
ocumentation/devicetree/bindings/spi/atmel,quadspi.yaml
> index 30ab42c95c08..36c698ced99b 100644
> --- a/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
> @@ -22,6 +22,7 @@ properties:
>        - microchip,sama7d65-ospi
>        - microchip,sama7g5-qspi
>        - microchip,sama7g5-ospi
> +      - microchip,lan9691-qspi
> =20
>    reg:
>      items:
> --=20
> 2.55.0
>=20

--Z43iSHOCmPRnJrDS
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak/UQAAKCRB4tDGHoIJi
0q12AQCqOC1foKPOE/gQ7/s2w+zCzF2E4w8cNWR39G1o0ExYQQD/akv4nw11e6Bq
SKavyJN5B57wZJXLCGgyg3+mgptIJg0=
=VKZu
-----END PGP SIGNATURE-----

--Z43iSHOCmPRnJrDS--

