Return-Path: <devicetree+bounces-6923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8DF7BDAFF
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 14:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACEAC1C208F0
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 12:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFF318C35;
	Mon,  9 Oct 2023 12:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL/8Qzyc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A8718C23
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88E38C433C9;
	Mon,  9 Oct 2023 12:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696853619;
	bh=ke6sTlUKSmVQ0a5qedfoFbaCYIiQvcyteCIyXEEIudM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QL/8Qzyc89GE4xV5JFy/S7VnuIJEioucHbEZclSHKfTSpRvphdMqVklZcrpLi/Rq6
	 h1GryvHE8hSNNm85kGO8ZNGAYW7phe3nczFMmsERFxzXP7TZLnoH845U9MBbr4uuQY
	 jqa4rrC+CdPLBEFoSlcTETBPpvDiWVf8PkooTaw6IpP2h71X/LZM8gUt1ZKcNFH/q8
	 4mNzAQiI7lHjZ1YeU9LYx6YL84kAUGH5n8BVQmHwZPf+tEsUzuvmNQWMno3oovxjlf
	 ipGSr+IPQ2uVvKnA8D42yPFe/QUZlSCrUi3L60UqRqOMf1/XTd2UCpwWxyYFqsORe4
	 7Z4dgRx8xUuAw==
Date: Mon, 9 Oct 2023 13:13:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	patches@opensource.cirrus.com
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: cirrus,cs42l43: Update values for
 bias sense
Message-ID: <fbf2fe38-eab9-4324-ad46-1bf0322841d8@sirena.org.uk>
References: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oNQzh54kikk3NsAM"
Content-Disposition: inline
In-Reply-To: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
X-Cookie: Avec!


--oNQzh54kikk3NsAM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 05, 2023 at 02:55:58PM +0100, Charles Keepax wrote:
> Due to an error in the datasheet the bias sense values currently don't
> match the hardware. Whilst this is a change to the binding no devices
> have yet shipped so updating the binding will not cause any issues.

This doesn't apply as a fix, please check and resend.

--oNQzh54kikk3NsAM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUj7m0ACgkQJNaLcl1U
h9CE7Qf8DPVPK+xTM+MBobASpj3R6gTPMl7qWGCu6ccjQzD7Q0q4MXJSoJqnBySU
bKG2S0WViByP733P3BAxRILV6d9J09POOQMQwiXXuaqfmSNR7zz72Ua9AubTzSky
ivoRaYlgnRzroFBo4zr/cQS4omsKY9Un8Zpph/3E7x2bsBZiH8rN2ssLGeVqo262
jppb0hnSZl3wbtZIyx61R5Cscl6o8s1kpBC+yfNf9DPBs7j0D4NtK9ML+wP74UwB
yGhzm19sHgX9F/9GMtCJm4uUat1CtNsNFUaOgjWXADRrmrSGyVwqSaI5/itjdMXe
pkSwlXWF39WvIWdIKJzA7KG4V1G0OA==
=ay8w
-----END PGP SIGNATURE-----

--oNQzh54kikk3NsAM--

