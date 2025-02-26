Return-Path: <devicetree+bounces-151464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA244A45E08
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 12:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC6A31689AC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C51121504E;
	Wed, 26 Feb 2025 11:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pM9ENW+c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F1C20FA9B
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 11:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740571170; cv=none; b=prxGBkUxPLPNUL9G1FlbuCbnF/orBvHHP8eQGY55rgK+S2HTfpjG8zWtBeXf8XTxjpFSGUsYkS81L0jyqkgDReEAIo6BtZzyvmA+acinnnr1TEJNVfB35NM28hFMoGuPrTzuAa6ERG4xQ4qG6cP3mnjyaR1ODkItGEeafLD+FZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740571170; c=relaxed/simple;
	bh=6dTjEjzwITJxc+ijuTdiYBOJS1zgFDmOcRqRR+TbFlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uMN6NcN+X1MI+DiZKGD384FoR0K4GSTddGeU9/hXyvuaAOp8SzXV9AnLPmpYlufOM1D1bLBK5lyT8WvTwcEkXgeEtepO+tMJ0LZoO7M8Ldto+9Nz/WUKUyGRP6AYyN1rF29pUoS0vZugjA5F3NNEdZ5zoK3u+EXomC7fBqT0GPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pM9ENW+c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12778C4CED6;
	Wed, 26 Feb 2025 11:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740571169;
	bh=6dTjEjzwITJxc+ijuTdiYBOJS1zgFDmOcRqRR+TbFlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pM9ENW+cL91DrXo/Ih3BWT9GJ3gzprZipP8pZHlatkd2D7kjzxdzzsiRokFhRWOJJ
	 J00EeMUzvYLQC4qAPMBqm8j9W25PLP/1SqsexGT3mEbiaOfwMXAMzIkHTJJm0gvUSq
	 /uIQmhkK1GVD07qy+QO0L4yCuCnxycbN02kWmygl+iaJLzduk/YTKBeUZntPVxJrCg
	 ezz1Kzcba48A7pcU6rcCQtLwVJd7wzEDe8U+CfxAUxS0MxbMrcUGxwcvRVB30nBEuq
	 u5+bfQSYCrQYIw8VvNvhvoFQHpUqBrnmwN7UKutfHR3zzLGMLz8AY+jTgnek3iGKxT
	 AMnpZw6VQFu8g==
Date: Wed, 26 Feb 2025 11:59:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Message-ID: <121dfc8e-56b1-4653-9490-4e70e5bbef6e@sirena.org.uk>
References: <20250226104949.16303-1-zhangyi@everest-semi.com>
 <20250226104949.16303-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7N6MJBqn3QPaTryX"
Content-Disposition: inline
In-Reply-To: <20250226104949.16303-3-zhangyi@everest-semi.com>
X-Cookie: I've been there.


--7N6MJBqn3QPaTryX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2025 at 06:49:49PM +0800, Zhang Yi wrote:

> +- everest,adc-slot:
> +- everest,dac-slot:

We have the set_tdm_slot() operation for this.

> +- everest,dmic-enabled
> + The property selects the PDM interface of ES8389

Is this a choice between PDM and something else?

--7N6MJBqn3QPaTryX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAme/AhwACgkQJNaLcl1U
h9DdWQf+ItjisOtDd+HmfnnPsYcEKDmvANin0VKHniMHv2dzCsPy6C99UcJO33Id
HkPGtRvaAs95rY2TxfBH+d9uPoNfd+S5BLCd5qDLtVtTsLQsT7IgmFWJELfAVoZ/
ezkQO7yOFgtUBhea/h5hB5sFN6T0YWAF0oGiP4YVkaQa93jQc4eosXZYx9M1fYdm
p5VGL30R0MzZljtYT+CPT5vuin15sLnjwFwuXTGrchVzXPzSJJjsAqpEp+2mXS+i
ORiHUxSrVGA95mBFvUVsWBf0IR6x0sq2kYTvQQY1MLDoJuF4V8pIYA5n8lGXMNIJ
55/4pizovQjVPlNfwF4wSXh5053UfA==
=0jmK
-----END PGP SIGNATURE-----

--7N6MJBqn3QPaTryX--

