Return-Path: <devicetree+bounces-13482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FED7DE315
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:36:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BB0F1C20BEF
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85CD91428A;
	Wed,  1 Nov 2023 15:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoJpP3g3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6977CCA73
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA1A9C433C8;
	Wed,  1 Nov 2023 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698852989;
	bh=ErDN5TGrf82/1e3WSBuxJ8Uwcx5pZO0mfLHGxApPH9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qoJpP3g3Xc50XgkT727p3w1Uw0bduzyGMMVFAwCS01GSz8AnKJL4TohyJNhngDdNm
	 QG1fvGTDDtYj7x7XbY9kjPdSUQuBQFgnaAvUT1mFG9bREb38EbjUoh6S1opeaPJo6c
	 b8saLZ95nsEKj5XUPUO9kBUwVcvMe9bUFYWCPvjdfQdorF0/xOGrjvlZpyd+bKDA9Z
	 zBaXX3nccA8kwN/Hzzfjegl+zrOHpk7mmzoodODxWHeCSdgNqXXww+cAlk36UZ/5ou
	 G67BUMFZjbHwIZ6RugYeZaSjWHZgX5FpKX77bsL3cu6wC61u4OwpyslNi6eMJ/pVAd
	 It5TcDOx1Fptg==
Date: Wed, 1 Nov 2023 15:36:23 +0000
From: Conor Dooley <conor@kernel.org>
To: =?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>
Cc: Iago Toral Quiroga <itoral@igalia.com>, dri-devel@lists.freedesktop.org,
	Emma Anholt <emma@anholt.net>, Melissa Wen <mwen@igalia.com>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v3 3/4] dt-bindings: gpu: v3d: Add BCM2712's compatible
Message-ID: <20231101-whinny-observer-d0cae8d8d7c0@spud>
References: <20231031073859.25298-1-itoral@igalia.com>
 <20231031073859.25298-4-itoral@igalia.com>
 <d3ed80e5-b3a1-e9ba-48eb-7c6fc58ef3f9@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sKuyd3vh441A/Ew6"
Content-Disposition: inline
In-Reply-To: <d3ed80e5-b3a1-e9ba-48eb-7c6fc58ef3f9@igalia.com>


--sKuyd3vh441A/Ew6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 02:53:35PM -0300, Ma=EDra Canal wrote:

> I would like to ask the device tree maintainers if you are willing
> to take this through your tree or should I push the entire series
> through drm-misc/drm-misc-next.

dt-binding patches almost never go through Rob's tree, usually that only
happens as a last resort if subsystem maintainers let them fall through
the cracks.

Cheers,
Conor.

--sKuyd3vh441A/Ew6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJwdwAKCRB4tDGHoIJi
0jPJAP9aRVPsF33zF9+FSJjfCZPt69Z4e+uhPfQRnzhHZt0MJgD9GKPs7nkQVYGh
aY8i+yXw3l4Q8S1CVlbXYIOHIQXqFgY=
=A4c3
-----END PGP SIGNATURE-----

--sKuyd3vh441A/Ew6--

