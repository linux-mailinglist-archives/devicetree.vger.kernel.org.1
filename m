Return-Path: <devicetree+bounces-295661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPCkLOz8AWomnAEAu9opvQ
	(envelope-from <devicetree+bounces-295661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:59:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A32511B61
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F1CE3060F3D
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 15:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17AC406264;
	Mon, 11 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVqorgbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4592DF13F;
	Mon, 11 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778514753; cv=none; b=kyFcvTkXQ5N7VKxDmWv7EP2Lj73KwUYmaragM572pxaoOlXC391HaNKEDQJMbce9cRG4qxnKbVwBNrgTP+EoCR6uF2Zrye53brx19Wzs8XcE5eezF0EGhTg5emlaHQmrYlzDTD5gB8qIgck5CqsNpwVCtZYOt2pTMvKarLmYTZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778514753; c=relaxed/simple;
	bh=CuZWZE/CqP/FQMtts7oBbK4vUvv9Sw3KWWjnKZ6EY5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MuBSAdirRMoqcn1Pucf2y7AuPM/ksUENUJDeCeTWSqeWCU6YqYsGGnBifAwIC+x7MI5xtzjYze8/yWwiSnJGCNRDmxtOWm2ZsRrn+dHGJzz7nRqDccKg2lt0jPsBf8Scea5Bdh8q8uokTlCFGCSz95aT5+K03bjcHu6t3eMbrF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVqorgbZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 900A2C2BCC9;
	Mon, 11 May 2026 15:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778514753;
	bh=CuZWZE/CqP/FQMtts7oBbK4vUvv9Sw3KWWjnKZ6EY5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iVqorgbZILQ13dDiUOlrOi1t31Xr5yp+dvOo8xi82o/olLv1/90BOU60ySGhhc3SB
	 i/2kb1KF7L6HTrWGUzUDuVbJti8/qE8yEkldLKHa8SxDRDF7zPHin/xm92leGDRIc6
	 FTaIPDj94rHhEvE7lhN0+KcNgORVqx4YSCpNFyPmMZeJ9T8FZ8CKQaYnPop/o0ZTyS
	 QGNKleRo24EQp+aQMDRoKQY7UjIgCDCkNymN+kwiN+GbULEfWA/wQA5dpVxaUR0HlB
	 ubQu4ELpYu39sSBVeM7ekqFo1GkPrC7ChkhTZt5SFTlnicqwXoQrtb1PtlwnOtnhQU
	 dkaLsB6Nyi5CA==
Date: Mon, 11 May 2026 16:52:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Sander Vanheule <sander@svanheule.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: realtek,otto-wdt: add
 compatible for RTL9607C
Message-ID: <20260511-alienate-guidable-d503194e6a93@spud>
References: <20260509163101.722793-1-adilov@disroot.org>
 <20260509163101.722793-3-adilov@disroot.org>
 <20260509-rebuild-snowboard-e82a3adc5a27@spud>
 <94a75930847c2b7a221736c41a1da67d@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CjOOWizSNEAiRWCk"
Content-Disposition: inline
In-Reply-To: <94a75930847c2b7a221736c41a1da67d@disroot.org>
X-Rspamd-Queue-Id: 75A32511B61
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295661-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,disroot.org:email]
X-Rspamd-Action: no action


--CjOOWizSNEAiRWCk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 10, 2026 at 08:19:09AM +0000, Rustam Adilov wrote:
> Hello,
> On 2026-05-09 18:13, Conor Dooley wrote:
> > On Sat, May 09, 2026 at 09:31:00PM +0500, Rustam Adilov wrote:
> >> Add the realtek,rtl9607-wdt compatible to the Realtek Otto watchdog
> >> binding.
> >>=20
> >> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> >> ---
> >>  Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>=20
> >> diff --git a/Documentation/devicetree/bindings/watchdog/realtek,otto-w=
dt.yaml b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
> >> index 1f5390a67cdb..ac9db40b12dc 100644
> >> --- a/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
> >> +++ b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
> >> @@ -30,6 +30,7 @@ properties:
> >>        - realtek,rtl8390-wdt
> >>        - realtek,rtl9300-wdt
> >>        - realtek,rtl9310-wdt
> >> +      - realtek,rtl9607-wdt
> >=20
> > Please explain in your commit message why this new device is not
> > compatible with the existing ones, particularly given the driver patch
> > implies that it would be.
> > pw-bot: changes-requested
>=20
> Is the fact "RTL9607C is different SoC compared to the others in the list=
" not
> enough of a reason to include even though the all of them have an identic=
al watchdog
> timer device? But yes, i can use any other compatible just as fine.

No. And to be clear, I'm not asking you to use one of the other
compatibles. I'm asking you to use one of the existing ones as a
fallback.

> Maybe its just difference in maintainers because the RTL9310 [1] was acce=
pted and
> had the identical case to this one.
>=20
> [1]- https://lore.kernel.org/linux-watchdog/84d873d7dd375cd2392f89fa6bd9e=
0fe5dda4e1c.1656356377.git.sander@svanheule.net/

Probably the same feedback should have been provided there.

--CjOOWizSNEAiRWCk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH7OQAKCRB4tDGHoIJi
0rumAQDI3U5CjDsU+2tNAsXkZxZi07nfUWWUfEb4Q9dY5UYuNgD/XMJyHoQdZeDu
+aMMn9Boq0jMooO1OUG/nruJyx8UbAE=
=l2xp
-----END PGP SIGNATURE-----

--CjOOWizSNEAiRWCk--

