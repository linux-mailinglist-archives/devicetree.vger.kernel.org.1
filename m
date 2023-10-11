Return-Path: <devicetree+bounces-7879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9427C5F09
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79D1282407
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59ED11F17C;
	Wed, 11 Oct 2023 21:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeuXDh0P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F7A12E5E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:21:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A91DAC433C7;
	Wed, 11 Oct 2023 21:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697059300;
	bh=AVRwgDQBx8JR4FI59OdGoNJiJ8cIUcgjj4IXSMlvioQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FeuXDh0Pe588U/HI3BCDaX6/Siicbxz/VlUUPwNzcB1plpChg61yRxaACWVX/bjSC
	 nE+bO3Enh9zLr1XTmn8fs3TB86TrpmoJitanCKs7mKDUtfwu4NVWMpZKg4UYSjJ6PR
	 iKOXjQH5t3NmEXPQk0drsmr9nEvgsXE0u3AOh9r0kNXveyTarxxueqkiNNLq7JU3jk
	 3HiJONE5kHoL17J76por3LVwuqyLpztPecYx2kZCVzeOMZbpN7FQ43vmu9rHskAXu2
	 Dxkib8VXSvqRiYme9D+JO6GhZ8TLtx/LGd0RqSFvGjXzJGVF9yMOFPGD5QH4uAweK9
	 1VfwaI6sLQqWw==
Date: Wed, 11 Oct 2023 22:21:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com,
	nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: sound-card-common: List DAPM
 endpoints ignoring system suspend
Message-ID: <f639c88d-371a-4c72-a906-47d643b24ca8@sirena.org.uk>
References: <20231011114759.1073757-1-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BGyLCGLG2m53YbE3"
Content-Disposition: inline
In-Reply-To: <20231011114759.1073757-1-chancel.liu@nxp.com>
X-Cookie: What an artist dies with me!


--BGyLCGLG2m53YbE3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 11, 2023 at 07:47:58PM +0800, Chancel Liu wrote:

> +  lpa-widgets:
> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> +    description: |
> +      A list of DAPM endpoints which mark paths between these endpoints should
> +      not be disabled when system enters in suspend state. LPA means low power
> +      audio case. For example on asymmetric multiprocessor, there are Cortex-A

I suspect that the DT maintainers would prefer that this description be
workshopped a bit to remove the Linux specifics.  I think the key thing
here is that these are endpoints that can be active over suspend of the
main application processor that the current operating system is running
(system DT stuff is an interesting corner case here...), and the example
is probably a bit specific.  Other bindings use "audio sound widgets"
rather than "DAPM widgets".

We also shouldn't see that these endpoints "should not be disabled"
since that implies that they should be left on even if they aren't
active which isn't quite the case, instead it's that we can continue
playing an audio stream through them in suspend.

--BGyLCGLG2m53YbE3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUnEdwACgkQJNaLcl1U
h9D14gf+M9bhmpfCPDRUmqCUaPutP6E3jikRfcnDJMN9NCqZQlZqmvNPDkZwflpC
0ANUsCcytMbUuzBoQIYoSCtfFDer2msQyvVQxVsM9P1zwX7Qfbal8vTlZGk4ysr7
p81AT1+S+qs9386uzQSK+WFqMoEEZYzgOY8GDvdEZFl2I1JlfB6+f47nyxYwYylv
GD1iiiRKguqj0FMRWINIxBRehf+/SSZ2dLu6lYVAl2ZlGkKZgtJAylmDGVVHWAiG
YWYHw1UUmuTqUtdcsHd0h5Yz1fv5QWhhOSaGSLrrzg58vMBhsC/JfP+ntn7pF5eD
Wi4I4SBZmZibAjPsU4MD29pkvvjasQ==
=c0uT
-----END PGP SIGNATURE-----

--BGyLCGLG2m53YbE3--

