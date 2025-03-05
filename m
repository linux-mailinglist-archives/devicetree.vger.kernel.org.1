Return-Path: <devicetree+bounces-154400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FBBA4FFFE
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 14:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18A753B6447
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 13:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255B924E00D;
	Wed,  5 Mar 2025 13:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTexpU7l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0030524EA96
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 13:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741180022; cv=none; b=MBa1paVn+qwYEX4JHzs3yIQNgf0UBdUB+1Qx3AJySaP9+YaTbbkDYafiSfWzx4rJhDERhh79NYAvA8glIfpW+0RkA0jMGz+vkiF9e5JRHHCzpGI6GfjXMmuZ7podNyhoOzQ6VQev3K0G94Z+rI76SZZfy+HUJq+hpJN0MREgqU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741180022; c=relaxed/simple;
	bh=rRLh86cLFLqmNG+T9Rd6VrXKmn/xHimWelzpVRHuNdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UrBRDU0qzls9WKBQ862c5HSc+toL1pALfn2QyjeYqPPId9hHlq6akepyNg/j0FFZOAxoguMoSt0Z7ufvF96wF4BMQ1DIJTVBXzsbaTNu0++djkoDGpYY6Gx8jf327Va4WxCRE9LmkDoRqsqQqs4oIkB7YF2dUn2BWoEBwYnEjko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTexpU7l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A7CC4CEE7;
	Wed,  5 Mar 2025 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741180021;
	bh=rRLh86cLFLqmNG+T9Rd6VrXKmn/xHimWelzpVRHuNdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FTexpU7l/PbhsIurlyD8VSoGVgjPlyNTy6nPpW1AnFmov0caF41Jf7gbOJ05x7bGz
	 By4ZYuW9sShoEDy0o+h/bGouElGEmLrq7KbP1Wx+sM2QNqZ5U3vnNxN4vxclMISyEU
	 PH2eGnimZFToswmg70C9j+2SoFsXGjY8t9XPvi8e2btt9y842Mho9dN6+EF8e3s6Z8
	 0hEjToguGOWXwWdb2K0jRZXKmaAhx/GzZ+ZcjiZb84ZdhUPBDEAKZntWczcY4LJRiM
	 IkVax+Orcq+PHlmzVwWSrS1yhAmtkMzjaRUzqdvNcsrBCTjeS4MAgUhePjQTuoh5eA
	 uHPdE+3VFlFUQ==
Date: Wed, 5 Mar 2025 13:06:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Message-ID: <77f040bb-a1ff-4eca-831b-ab10bf79e6bc@sirena.org.uk>
References: <20250305025610.58476-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="odRdCbb20AVtN+qv"
Content-Disposition: inline
In-Reply-To: <20250305025610.58476-1-zhangyi@everest-semi.com>
X-Cookie: Everybody gets free BORSCHT!


--odRdCbb20AVtN+qv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 05, 2025 at 10:56:10AM +0800, Zhang Yi wrote:

> > set_tdm_slot()

> We will register multiple codecs inside a single dai_link and differentia=
te these
> codecs by of_node. And the adc_slot and the dac_slot may be different, th=
ey can=20
> be decided by the user.If we use set_tdm_slot,the adc_slot and the dac_sl=
ot will
> be same.

No, the machine driver should be configuring different TDM slots for
each device - that's the whole point of the API.

> > > +		ret =3D clk_prepare_enable(es8389->mclk);
> > > +		if (ret) {
> > > +			dev_err(codec->dev, "%s, unable to enable mclk\n", __func__);
> > > +			return ret;
> > > +		}
> > > +	}

> > Making the use of a MCLK depend on the configuration of a TDM slot for
> > the ADC seems *very* unusual, what's going on there?

> Because we are associating multiple codecs under a single dai_link, we wi=
ll be
> executing probe and init many times during initialization.But MCLK only n=
eeds
> to be used once.So we decided making the use of a MCLK depend on the conf=
iguration
> of a TDM slot for the ADC=20

No, each device should just get and enable the MCLK itself - the clock
API does reference counting so there's no problem with this, it's normal
for a clok to have multiple consumers.

--odRdCbb20AVtN+qv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmfITHAACgkQJNaLcl1U
h9DKdgf/dA3DFm9sVUPZw2kDFYD0y+gP8Zdn23GsRYrB8PFUCETklJpv8/5dVyqO
IMfmmCdh7iNUgqPOnYSD3Xc9td9gAaiNN6Bn23fe2bMaLqfRw9Nu5evZsag/LM1I
K+b4s2MvX7N0hR3AGPvyiqerfOMT1BQaC7PILBIPIVfVx6KlIqNYgc1F/c8qNhg4
6TYrGVhzrGfQ8UCDKv06o7Kf4UI12yoT14700f5bii1mz7fSqnExlQbXo6sExsib
aCkrak88ekZCVHdtP9wWZ3ZFtr8A9lE/cimo3C5KfYbLFssfUMvv7zLUBwbQF62x
C9jHK18q3PotRcMDmoJJrr593qrHKQ==
=U/iY
-----END PGP SIGNATURE-----

--odRdCbb20AVtN+qv--

