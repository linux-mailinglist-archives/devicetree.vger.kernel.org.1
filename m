Return-Path: <devicetree+bounces-48772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B615873696
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 13:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE9201F22794
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 12:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C5485C74;
	Wed,  6 Mar 2024 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW234R1e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8333C7FBC0
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709728617; cv=none; b=rAOyhTd3xLaIKKxJRrfGoN2gBz0fYCY7u4biTXqUpC3oqhXrWdSmP7MFoD1oPQMzpJD6GAlIaDaX3AgsJ5eL1QVcpiVS4NqMJ+MjvylblAt2aXZ7CBmEiE2dy7bHyk89Jvlnlh5JpTm/7Mcgk1TCEDJG3aaMflBqNwi7t6BWUQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709728617; c=relaxed/simple;
	bh=d4E2haOnRYF7r/QzXy6LMlj95Kx1FRP+AF+bF3xJ1nY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m3LZEqI1Ru7o1nvQA+4UV8PK4RTtdF1zIvFBMcSts56V+dM5zFFiPm/Ex+5LQzdTxL8Rl8PZDLnWeQGpK2CNQwbHw1FHL0LOdWTa5xfNfqbQhYUbefQ/PqDNhfqKZOTakMAsh9v6vpB32gLXYr6OqTEGIgsbVBm4r/C8OY0p3FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW234R1e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E530C433F1;
	Wed,  6 Mar 2024 12:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709728617;
	bh=d4E2haOnRYF7r/QzXy6LMlj95Kx1FRP+AF+bF3xJ1nY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uW234R1eQEX9Fq/qSxNk3zjH5KWRJjNmZPB5sqVY1FuIxU99sJShbEs7dP1jMaJR8
	 U/9uAsJA90u71XoYrVjyf9JCruf0y3hD3fCGHkjBWF15e8+EN8WtRo2dSDk49+zIgS
	 r2yOiskCANjVOu0s83Zwv+pTVhJUULI1Qi2I99fa7k8jyba2XZpWEEJDh7LnKC+dkp
	 7kCc1gjWZmCSJJNCdl5V5glS/664f3xmcrMgTbnL5RW3d4Sbat1DB56bcG8+OSa1Ql
	 FDoobp10Uh2EIvPHfydFphoutQjYk7gSliW3wM8a3dLIsvE66L3qh4TcMPlDIlSFXZ
	 T1hmTzD4LNR+w==
Date: Wed, 6 Mar 2024 12:36:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com
Subject: Re: [PATCH v1 2/2] ASoC: codecs: ES8326: change support for ES8326
Message-ID: <bf4651f8-279c-429a-8337-2211ce0b89ed@sirena.org.uk>
References: <20240306013414.18708-1-zhangyi@everest-semi.com>
 <20240306013414.18708-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xCO48n/cNnBQKXU"
Content-Disposition: inline
In-Reply-To: <20240306013414.18708-3-zhangyi@everest-semi.com>
X-Cookie: Have at you!


--3xCO48n/cNnBQKXU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 06, 2024 at 09:34:14AM +0800, Zhang Yi wrote:
> Removed mic1-src and mic2-src. and changed default value
> of interrupt-clk

We could do with a better changelog here.

> -  everest,mic1-src:
> -    $ref: /schemas/types.yaml#/definitions/uint8
> -    description:
> -      the value of reg 2A when headset plugged.
> -    minimum: 0x00
> -    maximum: 0x77
> -    default: 0x22
> -
> -  everest,mic2-src:
> -    $ref: /schemas/types.yaml#/definitions/uint8
> -    description:
> -      the value of reg 2A when headset unplugged.
> -    minimum: 0x00
> -    maximum: 0x77
> -    default: 0x44

This will make any DTs using the properties instantly buggy.  I believe
there's a way of marking properties as deprecated, you should use that
instead.  Or we could just leave the properties there and ignore them at
runtime.

--3xCO48n/cNnBQKXU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXoY2EACgkQJNaLcl1U
h9COWQf+Mw2+SsHAMAEDXcF26DBzoe8jXSTTR1Z4LQoAwN+UqjZGkSQsfAJWLKUE
09R/MApJdDDpDpDneBtkLbuzUbOrUwWG9pn6rPOQOfORhDEiIG0xTZdnOphemKip
5WbdcCpe4BtJ1Vt0+gn/ppV0JVIKYnoJFvsD3DQQHdM2kY2ME2d2Efxd0sRO7gCn
oaZmYwyyuBAZhHStI7AtnsCNw3N8PL5tD4C62Ufmmfcj7auVUlt5+1K+SWo+EVaj
dS2QlXpuzVy9vsu+IaMMZz6p+jvjU0nIFR81RbwUSeUSkqHvymOvLdVb/fu+LuPr
n9nprGxzAHZc2tBKlnt1n2qwZhbOMw==
=vqCj
-----END PGP SIGNATURE-----

--3xCO48n/cNnBQKXU--

