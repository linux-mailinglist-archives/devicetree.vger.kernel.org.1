Return-Path: <devicetree+bounces-12089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DFE7D7E16
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:07:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35126B21116
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 08:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E6B18644;
	Thu, 26 Oct 2023 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4BZUaWN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF1D883B
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 08:07:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C32C433C8;
	Thu, 26 Oct 2023 08:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698307663;
	bh=MRgZsiUVmIfZKqCwNfNZ0a7KfMg57CWlHCRug7dRYiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h4BZUaWNpPw0JlhG/Aqlkb6iJ3x6gBmrkWVdvfMKm1Vcpsx5D2OFmlCecVVOI60pS
	 MPEMTlRIOMTF+mBiaE1Kkjwm6SPOPTJzk7p18x/eSJOtErkRe986WGLnOOiT7j42No
	 J2WvuZscQ3o9v89HAWZpvH+SRgCprj9P55k1XTNCKICa39ZENF+0lFSwT3IISmBi7H
	 pkL87DzM9AOHRtDt5HgVxkXv74Q2K8zYYnRCc107VAY40bm/myYUM3IqHF/9GfYBtZ
	 RJ0YUxhTJdrGN8uP0MC3FE+Rt/4/7h6yprElSn+8KGiRYr2g/JfZ3LHj7wusiScWrG
	 zEUttswk1AJJg==
Date: Thu, 26 Oct 2023 10:07:40 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Keith Zhao <keith.zhao@starfivetech.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
Subject: Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
Message-ID: <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com>
 <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2pgpleihh7nbgyu"
Content-Disposition: inline
In-Reply-To: <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>


--l2pgpleihh7nbgyu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > +static int starfive_hdmi_register(struct drm_device *drm, struct starf=
ive_hdmi *hdmi)
> > +{
> > +	struct drm_encoder *encoder =3D &hdmi->encoder;
> > +	struct device *dev =3D hdmi->dev;
> > +
> > +	encoder->possible_crtcs =3D drm_of_find_possible_crtcs(drm, dev->of_n=
ode);
> > +
> > +	/*
> > +	 * If we failed to find the CRTC(s) which this encoder is
> > +	 * supposed to be connected to, it's because the CRTC has
> > +	 * not been registered yet.  Defer probing, and hope that
> > +	 * the required CRTC is added later.
> > +	 */
> > +	if (encoder->possible_crtcs =3D=3D 0)
> > +		return -EPROBE_DEFER;
> > +
> > +	drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> > +
> > +	hdmi->connector.polled =3D DRM_CONNECTOR_POLL_HPD;
> > +
> > +	drm_connector_helper_add(&hdmi->connector,
> > +				 &starfive_hdmi_connector_helper_funcs);
> > +	drmm_connector_init(drm, &hdmi->connector,
> > +			    &starfive_hdmi_connector_funcs,
> > +			    DRM_MODE_CONNECTOR_HDMIA,
>=20
> On an embedded device one can not be so sure. There can be MHL or HDMI
> Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.

On an HDMI driver, it's far from being a requirement, especially given
the limitations bridges have.

Maxime

--l2pgpleihh7nbgyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZToeTAAKCRDj7w1vZxhR
xQohAPsE2kzpXlr9RqQPDtJRNj8AtNNrqzpApALpLI553biaLgD/RpyXbzEyRIo3
cDu23rmpQ4eOQdldwjqobLYIqhayago=
=B4HD
-----END PGP SIGNATURE-----

--l2pgpleihh7nbgyu--

