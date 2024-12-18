Return-Path: <devicetree+bounces-132403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AB29F6EA2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 21:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03B191890EE2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C761FC0F2;
	Wed, 18 Dec 2024 20:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKC5F1n+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1561F63EF;
	Wed, 18 Dec 2024 20:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734552043; cv=none; b=jKvDei6QtmLvfxhPAnKay6ExCag0QFjwuGlIdsceAAOpKMO5hT6ujIywHiWuJsclHOEmKxBmm01A/MafUn2+DeY2C71ss5GOrpqkYsomBkXoXpIRmM4/u3dmelWygELnOHJyPm9WVj6+AW5jCgn9Qeu1NirSMxRRkdOFoiiochE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734552043; c=relaxed/simple;
	bh=JPjkC9ixo0p0OQ4xF5QDTe6XYviGLjI18Dy1ONZAv4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gFDy5m+TLLOKJJ3lfpGCNAZHKKSH0WQWuUo1C+b/F8NesBzadPOR2eyI5M1FG9N2jRiUH2r/xiGfMr6hRoSsH+39IrOuUbzXpLuiXBJ6sUmW/PE7U0vI4X5f16wn78M/kG6NYUxsSTfZtKUrwvWQSwa7aBK3ReUToPBL+SaZsJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKC5F1n+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF570C4CED7;
	Wed, 18 Dec 2024 20:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734552042;
	bh=JPjkC9ixo0p0OQ4xF5QDTe6XYviGLjI18Dy1ONZAv4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKC5F1n+dy4NdvzUseOai2OK/5ShAvZs/t1VGrkMmxI56wcoJdFW43CYtM9CCarfS
	 79zsAA0jwtXMkSdVDiFv6u7bIgGwZcRghch8cS6abi8/0Cqu66ttx4T19662lh3k+v
	 YwNnl/f8w6C8Gn+8DMsVpTPTlV2aESJKzhaDWQs5O8KA6fa6o55W1FctuCZKL5sa7u
	 By3pshXpkYW7uqebDqFYJDyuhiwtakig9F/Layq7VBMZTh/7qwL/1AR2ZkZsMxx3P8
	 ZqgTA9FGMb9Oqg2+YyGZC6z8PQxCfN8mpHT0AA7nwmTnNf33dlHyqqVNNisVWrOZRV
	 2/YOqJyc4qbWA==
Date: Wed, 18 Dec 2024 20:00:37 +0000
From: Mark Brown <broonie@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] regulator: rename regulator-uv-survival-time-ms
 according to DT binding
Message-ID: <d5ea96bd-5a72-4fa1-9813-e95184bcf424@sirena.org.uk>
References: <20241218-regulator-uv-survival-time-ms-rename-v1-1-6cac9c3c75da@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+/mGXFAJG3O7e01R"
Content-Disposition: inline
In-Reply-To: <20241218-regulator-uv-survival-time-ms-rename-v1-1-6cac9c3c75da@pengutronix.de>
X-Cookie: The heart is wiser than the intellect.


--+/mGXFAJG3O7e01R
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 08:54:53PM +0100, Ahmad Fatoum wrote:

> Let's therefore rename the property in the driver code to follow suit.
> This will break backwards compatibility, but there are no upstream
> device trees using the property and we never documented the old name
> of the property anyway. =C2=AF\_(=E3=83=84)_/=C2=AF"

We should clearly have the new name, if someone needs the old name we
can always re-add it as a fallback.

--+/mGXFAJG3O7e01R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmdjKeUACgkQJNaLcl1U
h9Bi0Qf9F1Ke5iHpqDgJtL3BkB9ThtjDfyJJuXYgmT+MmWE8HBr6aTwTtgFHCtU+
zTonBSAtRyCLBxfjLnpbIVlzpX7fEUUCKj+h9DfaEeerD4EpGxxl1vrMILSZOFBY
GapSeksl0JGVMCRpqUPYkZ7+b60fyvWgRiAiD7vNa1Z6+Yht5ugP9RcZ1p9cWm+V
LQRPcjWARhtIy1TG9ucc7TCjkccsdpaxLGW3reL0PZACBzddqSLwJrALSKt6/kmx
MsTx5Sn2RtD6Lx8NGmTFtVYcmDo0sAAsTI+YkbEgrrPKZ9dUXhr5qh4h222z5lm7
7eCgJrCNUcUvZUW3/qM83JzTSK1DUw==
=JOCI
-----END PGP SIGNATURE-----

--+/mGXFAJG3O7e01R--

