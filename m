Return-Path: <devicetree+bounces-80391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A891879D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6B071C20BD3
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9DE18F2EE;
	Wed, 26 Jun 2024 16:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWDPMpsh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AF218F2E1
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719420073; cv=none; b=N92lA0rTBouZ+T2djFDyeAlM/D7H4fLEon1BekwoRgJKE4kxhS11YMscC4Vdav8CCkkryovWgQny6dXZKYSUVREoqLZR21fIYy8+k7PEKcTP/FzUbywYYp0mzzmIrmfsTnhHVWhD4euTTv7jDnCTiIQeHSiG4cbASjL6xVsX520=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719420073; c=relaxed/simple;
	bh=c/aFHg+7fVsTXBrtC3LliLBWjCoT79TCbohtFpCUxd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uLToF4uQexI8/qdj6YjbAOwe4WxDfA47uxx/0wqc5kBSofbljEso1OomPlUuPYzkTLEgiceKmuuz/eK5E41XPv63J7VZFc8MFjbaYWkETw3ngvki6uMCBK9qhmoLz2MPVoXs7iudlKPYfYyISO2cPVfSR5X35NXOvGnbiWn6uPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWDPMpsh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6EA7C4AF09;
	Wed, 26 Jun 2024 16:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719420073;
	bh=c/aFHg+7fVsTXBrtC3LliLBWjCoT79TCbohtFpCUxd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OWDPMpshFywTZNmr4eIoAZCXmJdByqIBeTNiO/pIVmbM+6Fh5BYeSyEPRmMzLts8o
	 iyVee5FKhnjN83Gvs/zefXBdt41O7spPEfNo7vJQIBEc//hdLZVavhYjSA2x87IhuT
	 m193PVT0A9MiJKRpGZh8/hPuTTf4Hk2JeH8RqIU4WIuIjZ1Jxw3IQABQFhP/eaNTYQ
	 Qj4xbL6fq+GS2UDnT0oytyVLp7kbH7YCszvM77j4muby0VblBBrJyTIrQbxm9UNudH
	 hHnBn0RavMj07vAnJ8wcm8rDfAj040uDOcBkJB634Nzx/m9H7KGyM7kkS6uQOqKUOm
	 JT5mDglJ83qmQ==
Date: Wed, 26 Jun 2024 17:41:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org, Maxim Kochetkov <fido_max@inbox.ru>
Subject: Re: [PATCH v2 1/5] ASoC: audio-graph-port: add link-trigger-order
Message-ID: <f243545d-5298-4634-bbbc-e87fdcd7140f@sirena.org.uk>
References: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
 <87sexizojx.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EM/5sgkJE17t5/u2"
Content-Disposition: inline
In-Reply-To: <87sexizojx.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: Results vary by individual.


--EM/5sgkJE17t5/u2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 12, 2024 at 06:02:26AM +0000, Kuninori Morimoto wrote:

> Sound Card need to consider/adjust HW control ordering based on the
> combination of CPU/Codec. The controlling feature is already supported
> on ASoC, but Simple Audio Card / Audio Graph Card still not support it.
> Let's support it.

I'm really not thrilled about putting this in the DT bindings since it
feels like something which is likely to change depending on what the OS
is doing, at least sometimes.  OTOH I can't think of anything better
other than quirks and there are some cases where we just need a specific
order.

--EM/5sgkJE17t5/u2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZ8RKQACgkQJNaLcl1U
h9BLqwf9FZePsD2QMltQBU6D+2Mi9CxBcap3E+/fhcqWp3giaRn1jaSi3mFGhPS7
1Nf/Q1asOhePg35L1eODPndStM8Pf2Dq8LgNR+UbFxT59VcIiNH3mYNLlH6HTlZs
oE1QLs8zUsGUwAusjB9Y9E5/5DXfMlFNmEP7ECCq76v3nu6F86AkVnPWN+hnTKkG
R8zGi5BfwpSfvRoDuBt+hqkEJKHsUrRKOJ4scNXfs/URp+b+A0psZM4geg1SEcpB
MhPG7HPS5uPd9dNt8MeYYzPR1dje4N8cYwjx9oScj+/sDPRsPFEfxuERh86HsHtA
/VfC/inrCiEzKaIBP2fiw0PwKPweBA==
=Hkyu
-----END PGP SIGNATURE-----

--EM/5sgkJE17t5/u2--

