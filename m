Return-Path: <devicetree+bounces-22640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3346E8084DB
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1183283402
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1D335263;
	Thu,  7 Dec 2023 09:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETxJbbta"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532291E4B1
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 09:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E1FDC433C7;
	Thu,  7 Dec 2023 09:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701942089;
	bh=Y3CgmiwT0nwbzFuDeivLJTvO+yngal+TXRGUMoTsXPU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ETxJbbtaTcAlVygNymX7fa0IBfzVOw9h7RMRHsVrgMJFO7/DHXEU3p3oom2RCJ7nB
	 DTvXd/3xXSrX6AqQ/D2HFanevLa8heMRQTHls/M5iC05CULgq2qIp4VuEvnaYA1+Cq
	 IrSHdWT8H72lI5VlF07dpKZHgvmeJnLx1ZsoH7v6TNxJrGLQElGu7vyhZFUew1/r9B
	 lTFVH5XVuMJnL9MYrV4UQq/WAfrh8T7k/UNBc82JPHz+5qqfDi6QQiI3coWf0cU7I1
	 MDxfdYQKsXpOP0af4lwEOtmfrxNIzKuO5UshxuV27+9qpZ5zyDvjiYFItSNjmG8w9d
	 oLtwNBwfx7H5A==
Date: Thu, 7 Dec 2023 10:41:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Dario Binacchi <dario.binacchi@amarulasolutions.com>, linux-kernel@vger.kernel.org, 
	Amarula patchwork <linux-amarula@amarulasolutions.com>, michael@amarulasolutions.com, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 07/10] dt-bindings: display: panel: Add Ilitek ili9805
 panel controller
Message-ID: <3tddld7exqsjaulhblyrp3x52sxgnmt3tn3elqv23dihlro27u@zi5w5tpmpo3l>
References: <20231205105341.4100896-1-dario.binacchi@amarulasolutions.com>
 <20231205105341.4100896-8-dario.binacchi@amarulasolutions.com>
 <20231206143345.GA2093703-robh@kernel.org>
 <a437b0d7-5669-45c1-b54d-ce028a57efdb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="glic6emmr37gh3aw"
Content-Disposition: inline
In-Reply-To: <a437b0d7-5669-45c1-b54d-ce028a57efdb@linaro.org>


--glic6emmr37gh3aw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 07, 2023 at 10:29:12AM +0100, Krzysztof Kozlowski wrote:
> On 06/12/2023 15:33, Rob Herring wrote:
> > On Tue, Dec 05, 2023 at 11:52:54AM +0100, Dario Binacchi wrote:
> >> From: Michael Trimarchi <michael@amarulasolutions.com>
> >>
> >> Add documentation for "ilitek,ili9805" panel.
> >>
> >> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> >> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >=20
> > Where's Krzysztof's Reviewed-by?
>=20
> If only there was a tool which would solve problem of collecting tags...
> Easy to use one command for applying tags from mailing list, so one's
> review will not be lost thus people will not waste effort doing review
> second time. How was it? a4? b4? c4?

FWIW, a lot of people still don't know about b4, or a relying on
features/workflows not supported by b4.

Maxime

--glic6emmr37gh3aw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXGTRgAKCRDj7w1vZxhR
xdd2AQCabCWZ6Xj4jdOlLg8F46quQFKp6kMwULbiCwnB4i00LgEA2eD7fEPp6v6d
1bPIomhtjcluNkZkByoriyToApxs5Q4=
=tGcR
-----END PGP SIGNATURE-----

--glic6emmr37gh3aw--

