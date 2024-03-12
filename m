Return-Path: <devicetree+bounces-50106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24269879A41
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC2D51C21CE3
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD9013AA31;
	Tue, 12 Mar 2024 17:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWlQBO2E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671C713AA2A
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710263172; cv=none; b=In2STZK+/GX/VTvoeXysRIFicFO6darvHQMu6TgnpDL9f4pne87eXowFxDiCpNETG3Bw79TZ9SrfwrqR2yV3E8F/2AJa/cD3rr5EnlmcGDxNROK+WqUlOpJzgNFU9tNbMddIA4VFJdJmz0HJnNM5PzlMhBuiXLHs+3pwb90o5c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710263172; c=relaxed/simple;
	bh=Uf8cg6osnMFBO1t7rBso5/vOFhBOjgmGncJZngxzjd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAy2e/eb0AUmVdsXAbmKe4PBdKlePPw+kFxNORKgSxzYI7a1sOI30zz4REoAQIFAihLmBcZo/bWzgmDMQGfR/DVOOER3hzbpveTgSmBlILRwausbOL42uQyjiRh3sYS2VLJ1cEsSP381gu7WsJRYNQy9/BNgftrgW5ObU+aHpk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWlQBO2E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D81B7C433C7;
	Tue, 12 Mar 2024 17:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710263172;
	bh=Uf8cg6osnMFBO1t7rBso5/vOFhBOjgmGncJZngxzjd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CWlQBO2E9oi3J8WUGd90L9LO2vDZLFT+81t05eP656l7cBjK3l6oWS9y5NKtS1R7X
	 U6wMfU1LQOVNb9i7DeYX6419qcMQvciG6vlfHXLuXqZRkVM7ig4HffyFj5v32KYiyt
	 wG6krudxbbtJ0WCKYPGCMzA9aLV/ZIOYRUoGtoU+MnDU0Cl5LZvm0hrwbUsf5URGXq
	 1DSj5XKVHBouzyRGExUR3KFxl+ebHxWwVeTOXFyYUDAg9uyR/iJ76c8d5GNX7NeWm+
	 SaZE6RIp2VkOBzVQcfGo1Sjng0/fBMpMNwXeSYGf+lINPhAIW2CuCFb/p9v27D9jNq
	 VgJ6NzjxAebig==
Date: Tue, 12 Mar 2024 17:06:06 +0000
From: Mark Brown <broonie@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
Message-ID: <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
 <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
 <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qzyKJgoXE2W54kV4"
Content-Disposition: inline
In-Reply-To: <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
X-Cookie: Neutrinos have bad breadth.


--qzyKJgoXE2W54kV4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 12, 2024 at 05:29:25PM +0100, Jerome Brunet wrote:

> Mark, I suspect the boards you have (like the libretech Alta/Solitude or
> the kvim3 maybe) will show the same thing.

I don't have the kvim3 but I can try with the other two (modulo pain
with u-boot), it'll be tomorrow now though.

> I can't really test right now, sorry.
> I can check and test further later this week.

Ack - so long as someone looks into it.

--qzyKJgoXE2W54kV4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXwi34ACgkQJNaLcl1U
h9B7/Qf8Dc4u7Q+xnQLjQXA481ZwsFRElrEC9u+wbJQEdPez1XIjaGTq7sLnf1HR
mEEJprcCx0y4lwZI6kfgLAy8P8eOSJycRM6EASGbevwvANWDsKpkxrGPwVKVdHCI
NgJcX9ULB+RliBq8x+syp0tWLhqo6OzqJ55xNHJTothmmfZgFH0oRdcBNE6kiqbH
vMB7NhBlzq76bsorOHdKZDlCjOzPgYBElMWxEGPyRMBdTzgPVKzkSefrFmKZlxIR
16Z1XZKpKTCIasuRhCSmyubAYXk9/Tg26kyfK2IVxFUgVYUNnm6pTeHp2wX/BgDO
jkgP/TkCFXRJT+deLdtTysoWkQC4yw==
=Y0PH
-----END PGP SIGNATURE-----

--qzyKJgoXE2W54kV4--

