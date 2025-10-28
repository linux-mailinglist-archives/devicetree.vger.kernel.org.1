Return-Path: <devicetree+bounces-232017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA2BC13B4F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 027573B34F1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A5A2F6932;
	Tue, 28 Oct 2025 09:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="S0eW/f9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A92B2F618F
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642447; cv=none; b=obt0iDo0sbFxa5rbhEVtZzjCswCMWjSex6jooLK7HGGH1f5dMf+6DghX0DqJ2zAH05pjStc7X6BgFKEMdhJYh49nKK9FViH5CpYHHwZI6fR0lnWYFiOw8XOWgK0HVPZUDiOU1jl2Z/fSDbzhGc+qQceVDNgggZiVPRUrF7BrCsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642447; c=relaxed/simple;
	bh=ogfGDK7FerH6aANEa3sajifcX5aOLqxXa6oDsjUzPAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=elmyW255BbUk4GdtnyKA/PSDMguxk7iu9nw4fO9+K72SWfRhMLNAtJmZ0syZyKHU6FtYZD6catGZkrarL1BAFwYIbs3t/Y/KBHiuYx1NxWjGIuiYnEd2x/aodO6bb83vzhp9w1MLIiT+DVamtZSUQSsKFelO8UYxF6/WQy8j/ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=S0eW/f9U; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=ogfG
	DK7FerH6aANEa3sajifcX5aOLqxXa6oDsjUzPAQ=; b=S0eW/f9U4hJ5dD0lE4im
	BSwSGulkov/dZL9IHAMq1BQJ211SPZ9GzaSVLVQ/EMIXlPA7NQBnJDMjTE7IXmJ9
	KoD5YGHkLc+4b+xruIa5aaMOkoT2zMxZf75ka+D/ImgUswxEh48cwVp+vOrrzrIo
	LKrX/BDcdvUAh1/FxGGVWRW8tHYRB6Zd4dgKS9Mv6VGTOLBYdYXSOUdx83OgPGiF
	N8DOsSRWl7nR9d0oTTcwPr7mDDd/V9Ah1RLHODaJthoPQcsN8lHoxqZ3DhnlOBn/
	Xb2KKxFXTy8vNk9Ci51ERHMsyBQFngZm0bdx+jTeKFGoCcPB2ws1vxQxI8Xmqf+D
	kQ==
Received: (qmail 3948069 invoked from network); 28 Oct 2025 10:07:18 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Oct 2025 10:07:18 +0100
X-UD-Smtp-Session: l3s3148p1@wUe4VzRCtuQujnsk
Date: Tue, 28 Oct 2025 10:07:17 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Hoan Tran <hoan@os.amperecomputing.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Saravana Kannan <saravanak@google.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Phil Edworthy <phil.edworthy@renesas.com>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Pascal Eberhard <pascal.eberhard@se.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v6 8/8] ARM: dts: r9a06g032: Add support for GPIO
 interrupts
Message-ID: <aQCHxTeP6M94oo7B@ninjato>
References: <20251027123601.77216-1-herve.codina@bootlin.com>
 <20251027123601.77216-9-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QxPk/9fThloBmEh/"
Content-Disposition: inline
In-Reply-To: <20251027123601.77216-9-herve.codina@bootlin.com>


--QxPk/9fThloBmEh/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 01:36:00PM +0100, Herve Codina (Schneider Electric)=
 wrote:
> In the RZ/N1 SoC, the GPIO interrupts are multiplexed using the GPIO
> Interrupt Multiplexer.
>=20
> Add the multiplexer node and connect GPIO interrupt lines to the
> multiplexer.
>=20
> The interrupt-map available in the multiplexer node has to be updated in
> dts files depending on the GPIO usage. Indeed, the usage of an interrupt
> for a GPIO is board dependent.
>=20
> Up to 8 GPIOs can be used as an interrupt line (one per multiplexer
> output interrupt).
>=20
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--QxPk/9fThloBmEh/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmkAh8UACgkQFA3kzBSg
Kbb3UxAAkKPTJ+QMFlgkn2kIIoOvsRAtxJDgb4wfu0pyjlAu3xihs6hvh9rwSQSE
RTzbRuZAC5gQBK0SLkZwogHQEsC+xw2h5bo/n/1M8SzGEtYvr0DEYF9Gi9Vr0dlp
1M4aX3mm8M7VMsX7bOiZ+DcdEs0UGvVXiWEdRfpb/zv2IS8P9rfusreydtHk5jFE
00UtRFPqr04FBizidV2qGysuTSZgfIV/oEf6xWZCfUwMyGZn+RFmqYyG+9XwcwzX
gi52wkiSMaxodl44SvgDnPgDD3HcMh6kdvzPDTY1/Lm1lw7rrBM3Jleg697ScNWK
quwakJnUik6gFbjNQo7NR+dM7iqU7GzhhSnSWwJTjrBc36omX0BIM7lPFpAPTnqV
7w/ie+5MkxvLt0QqFY36/vmoygcd8XoCR0CuFiyPJc2N4LcbFwVA5PrVqtkN1H0C
C/R0p0p1hq/Ckd3+C8vhxCnebBdB6XnUUvSmKgDz5wtRdyyg6czo0f+CnALbIQJo
TYdt2EqjsnqjrUsu8mo/M0SHKnq0TrKlP//PvRzNB86x7XNjpAmOQIggDruuXrbc
XPuDY6f66FpuiK2zBRjGk/X3qznlV6T9CBnGGKEkWuNJwXPqp1q9O6Ir2yq8AAEy
uNXg1Oi6lmwd1EwbA5Z+nD+FUbc3u0r9EdkZ4CVa9yELUROR92Q=
=t4W6
-----END PGP SIGNATURE-----

--QxPk/9fThloBmEh/--

