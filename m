Return-Path: <devicetree+bounces-306420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H1IOCb1UIGoJ1QAAu9opvQ
	(envelope-from <devicetree+bounces-306420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:22:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AD87E639AB7
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:22:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AaSOfaIe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306420-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306420-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A317F3091ABB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70D723DC4D0;
	Wed,  3 Jun 2026 16:18:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636E739901C
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 16:18:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780503530; cv=none; b=opbjouHuCy/c9yCF/JO0EYl54+LLRPpcbDiqyHhm1PupQKkc5XSM7UQMBuw8BLyfyi+FnabYnRztQPkVgS+MMUfZdHonUa2Eigi7gvPHb7G8zYTS5RQRSoyasdaRNMKhWFK4R3/efDcao2FUBXTJ15HfF7duRj50+Xlg2pQ0f9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780503530; c=relaxed/simple;
	bh=qXbmyNiDAuWOZ/oRic9GVvJXWnD4XIWhUjTuhj1GetQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VaWSUE081GMx4ghkO9aMzVCv5w+V/G+p35GI6fsta+dCaQNoUl/kAG2vYMPsaaBMA+7+Fdx4pQr8PUaj1cdaWob3PwRx59uwXc2DnozJxDc27Qqz2moCYBU3vFrlf8glqfSz5/tWhaMjnP1AWnsBC+HPltFYsX+vfx0d/EtEs3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaSOfaIe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A501F00893;
	Wed,  3 Jun 2026 16:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780503529;
	bh=33ZbVOrnOiAZAVJnipEHOynCDZG919cacA48GN1/+z4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AaSOfaIeolF+JsMu/y5o8hj+h14Exhk1ombtCpZL4z8czsjA/bic7SmV2EFTBnL4O
	 hVJWDLS/cFu0Od9SdZ1w3G6TdcC4Zjq4G5e2PKAkYE83iQMkRN5XRu5XyZKd9HOJPV
	 XR/8dRGUrGaAUR9PDyql7XotM20AJgje3eu4jZd5c+yQIZLe3Xz2LcR4c5ewztYahm
	 0Woezv1L1nBHtqOa9G9V7fDgAC4kz5YusCbMrlR6yvI8YP35zLyz7gYgIZXSBEQjUx
	 SnJ/tUTG08EGacKV2IJCj1QkN3juy+Ku/XIZOpUG7UAf3Jw7NcT7/21WjksaWMckLH
	 vd3rdCTILsKcQ==
Date: Wed, 3 Jun 2026 17:18:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: imsics: Add Tenstorrent Atlantis
 compatible
Message-ID: <20260603-dwindle-absence-33c1b4386799@spud>
References: <20260603074222.593243-1-joel@jms.id.au>
 <20260603074222.593243-3-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eNmyYxHv+ceGvXNS"
Content-Disposition: inline
In-Reply-To: <20260603074222.593243-3-joel@jms.id.au>
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
	TAGGED_FROM(0.00)[bounces-306420-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp,jms.id.au:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD87E639AB7


--eNmyYxHv+ceGvXNS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 05:12:14PM +0930, Joel Stanley wrote:
> Add compatible for IMSICS in Tenstorrent Atlantis SoC.
>=20
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

And here.
pw-bot: changes-requested

> ---
>  .../devicetree/bindings/interrupt-controller/riscv,imsics.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv=
,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv=
,imsics.yaml
> index feec122bddde..442b8870f9c5 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics=
=2Eyaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics=
=2Eyaml
> @@ -49,6 +49,7 @@ properties:
>        - enum:
>            - qemu,imsics
>            - spacemit,k3-imsics
> +          - tenstorrent,atlantis-imsics
>        - const: riscv,imsics
> =20
>    reg:
> --=20
> 2.47.3
>=20

--eNmyYxHv+ceGvXNS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBT5AAKCRB4tDGHoIJi
0mOwAQCUIqcOKEr7b6o5N4NpNmDG4x26QKL+gmatvWqDqkkHDQEAwOCOPR6yasBu
MKEmaHwbdFP3sfQqcnbj+ck6nNi/0As=
=NZjA
-----END PGP SIGNATURE-----

--eNmyYxHv+ceGvXNS--

