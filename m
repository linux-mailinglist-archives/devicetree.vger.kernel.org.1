Return-Path: <devicetree+bounces-258092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCmDD+cpcWniewAAu9opvQ
	(envelope-from <devicetree+bounces-258092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:32:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D830E5C3C1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4B23A80E563
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5853AE712;
	Wed, 21 Jan 2026 18:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdkvMrGt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024C36403D;
	Wed, 21 Jan 2026 18:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769020198; cv=none; b=AjDm07xbOfkWnzlgOs6qIVMccoJI9S9hmvkLiK9Pm2KWqVSY41KFh4Axbv7lIGCwibkGGJPuII9Cudtm7BElrTbjkbmy/4Nm94FBglYmzLKljzkoQZJaONwJugY+sKJ94JBCT63g5+puM4h55QSPpbIrc4inYCq8779AKYhn9+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769020198; c=relaxed/simple;
	bh=A9iFQyDjkX8R2m6UVbB5a36WzIw35jJ1Nqub1xql68g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S4Nc62T1WW3pi0f+u/QR6GklYMOwqn3gr9lHgQ4c12C0B7rqVZcUWk7AVMKyG+gs+ZD/T3oVzHUeGNOwZ5QZnJRbitEQ1OqTbSdS77I2ScEyz0yiLl67Q6awRdCMgJncjHDy2JVGRFq3sJ5zMERR4cdLL/X3AZD+aMouw9IlSbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdkvMrGt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74684C4CEF1;
	Wed, 21 Jan 2026 18:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769020197;
	bh=A9iFQyDjkX8R2m6UVbB5a36WzIw35jJ1Nqub1xql68g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IdkvMrGtglXO2dIZOiccSBhRo1TWnfGmKcfwxg29mSJemHWZYflnJwk6Vutq738w7
	 v388NZvzdQJzWHRXiR/I9/apnrr8VFvDNvdU5HSJ/PpmKXdNDtWER6SDS5r6d/nxn0
	 FEXYQw8nz8Hijt+DwcmZI6lZh7q9JQdZ9mrN753QKkcoA2GW2cQiqtYc/QFM6oTuYI
	 bn55zoz6KXVWlOgqLpV4s+Y3d39QNSdZ+TkrP1t+GkF6/1LaFwFey5jPvLgGHS54T9
	 4mF5/5m/p1dX/2TkN6iz3JfHjhFp4VRKR7Q7eWtdk4ceMxl2RRHgJ78NjOJDAy19GC
	 1Ynw836fJoIYQ==
Date: Wed, 21 Jan 2026 18:29:54 +0000
From: Conor Dooley <conor@kernel.org>
To: "Ng, Tze Yee" <tze.yee.ng@altera.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: altera: document Stratix 10 eMMC
 compatible
Message-ID: <20260121-unawake-unhealthy-773444c3a80c@spud>
References: <cover.1768916730.git.tzeyee.ng@altera.com>
 <cbfe8eb6547b6fcd815712ad637e061229ed63cd.1768916730.git.tzeyee.ng@altera.com>
 <20260120-factsheet-jurist-ddacd788d23c@spud>
 <6e2d08cd-758a-4e18-b00c-57f9a917ad84@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="78J5lV1/bRa248qh"
Content-Disposition: inline
In-Reply-To: <6e2d08cd-758a-4e18-b00c-57f9a917ad84@altera.com>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-258092-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D830E5C3C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--78J5lV1/bRa248qh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 21, 2026 at 08:39:47AM +0000, Ng, Tze Yee wrote:
> On 21/1/2026 3:46 am, Conor Dooley wrote:
> > [You don't often get email from conor@kernel.org. Learn why this is imp=
ortant at https://aka.ms/LearnAboutSenderIdentification ]
> >=20
> > [CAUTION: This email is from outside your organization. Unless you trus=
t the sender, do not click on links or open attachments as it may be a frau=
dulent email attempting to steal your information and/or compromise your co=
mputer.]
> Hi Conor,
>=20
> Just to confirm I understand correctly, would you like me to update both:
>=20
> 1. The binding schema (altera.yaml) to split the Stratix 10 boards into=
=20
> two patterns, with the eMMC variant having a fallback chain?
>=20
>        - description: Stratix 10 boards
>          items:
>            - enum:
>                - altr,socfpga-stratix10-socdk
>                - altr,socfpga-stratix10-swvp
>            - const: altr,socfpga-stratix10
>=20
>        - description: Stratix 10 SoCDK eMMC variant
>          items:
>            - const: altr,socfpga-stratix10-socdk-emmc
>            - const: altr,socfpga-stratix10-socdk
>            - const: altr,socfpga-stratix10
>=20
> 2. The device tree (socfpga_stratix10_socdk_emmc.dts) to update the=20
> compatible property
>=20
> from:
> compatible =3D "altr,socfpga-stratix10-socdk-emmc", "altr,socfpga-stratix=
10";
>=20
> to:
> compatible =3D "altr,socfpga-stratix10-socdk-emmc",
> "altr,socfpga-stratix10-socdk",
> "altr,socfpga-stratix10";
>=20
> Please let me know if this is the expected approach, or if you had=20
> something different in mind.

Yes, that's effectively what I had in mind.

--78J5lV1/bRa248qh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXEbIQAKCRB4tDGHoIJi
0iGeAP9mXPMCRqNbCu87rfRagUCjjgByJHj3i+HiWnxYXeBgwQEA/jGeUyI672Wa
C6vTuCZbmjm/Xo3fge4HYcx5654FRwo=
=Ptu7
-----END PGP SIGNATURE-----

--78J5lV1/bRa248qh--

