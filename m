Return-Path: <devicetree+bounces-73245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B69828FE548
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBEFF1C214B0
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA37F19539A;
	Thu,  6 Jun 2024 11:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHjCTexM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B82160865
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 11:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717673076; cv=none; b=jBsS6w9zBBgMt5AiAD/t41GESwo9CZxxTx4+VzipmxcZDnjdM434/VKHK8pVF3cEhakZJa87oMVOUf4pdMNwTZo+jnj8nXlNFgzrBox0UW5Z7EQsGPNBzlj0vIET/yi47vHuKvVB8jZcikKgLlmd27d1sxxpzkHuX75lQXvl1/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717673076; c=relaxed/simple;
	bh=EprWFy3aYUojw4OTl8/VwOUOB5Tyzhr6DTqvYaeWGjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p0zVldlyDMO1J/bHlN89ghrCuteoQoxRJWmBaLxehACc1fFbjNQqDSz82zRelU/UCpjUesWfrhyY6seHQa+HFDak5K0MyqtTm0JaRZrF1z6+elSOVbRhNwu/i+CceUCIsABpNrJ3UmIefpX2jXHSTraKE0wI7uFh53S/kTXj/mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHjCTexM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D0ABC3277B;
	Thu,  6 Jun 2024 11:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717673076;
	bh=EprWFy3aYUojw4OTl8/VwOUOB5Tyzhr6DTqvYaeWGjo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bHjCTexMgqLG0q0NJRNeShSQmav2UtEpe925GMyn/H2y6borAA4EnJ2KSPXwrMMoe
	 IhCKaZAToEAOaZPKPL6e5yKV9xd/HeHxAX80BqtOm9PMJa5PxPO2PoNSw+enhvoTta
	 YKWCKmUwGeLQ1yB7FywnaE7oXZXiO9b3lVGuG94DVknvDG+bmH/QO2RrhdH+AUyeJ+
	 zEqzvh+yEehEYBv/UIM4RjFGJ96FF/iVqxaIpsJRU1Fl5NJl43290j8y6mASzk/yeo
	 V3qhyQPH25Vmxz0kLRu7InFF58QW2OObaL/GxYboxvZTo+lS2oWsceKj0QUz0hkXqs
	 kD+awhUitceog==
Date: Thu, 6 Jun 2024 13:24:33 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Chris Morgan <macroalpha82@gmail.com>, Andre Przywara <andre.przywara@arm.com>, 
	John Watts <contact@jookia.org>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240606-smooth-industrious-cormorant-27a076@houat>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <7d9492ba-5285-471a-9ce7-c2148a388b41@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="bvohql5n7i5suwn4"
Content-Disposition: inline
In-Reply-To: <7d9492ba-5285-471a-9ce7-c2148a388b41@app.fastmail.com>


--bvohql5n7i5suwn4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 06, 2024 at 09:48:54PM GMT, Ryan Walklin wrote:
> On Thu, 6 Jun 2024, at 9:32 PM, Maxime Ripard wrote:
> Hi Maxime, thanks for reviewing.
>=20
> > Where has this consensus been found?
>=20
> As Neil notes Conor suggested it [1], and we did consider Hironori's
> suggestion [2] of using anbernic as the vendor prefix, although my
> (not strong) feeling at the time was because Anbernic is not the panel
> vendor, just integrating an unknown OEM's panel into their devices, so
> at the time I fit was not quite accurate to say Anbernic was the
> vendor.
>=20
> Some discussion was also had on IRC at #linux-sunxi [3]. Admittedly
> not a *broad* consensus, but all offered opinions were taken and the
> patch was accepted subsequently.

Respectfully, #linux-sunxi isn't the persons you should be discussing
this with.

Maxime

--bvohql5n7i5suwn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZmGccQAKCRAnX84Zoj2+
dl+VAX9eg/E0P6Bb9OoWI6pbYAccX0gP/c7q9X4FwvFkKKUQ68EQQl/RfsEFOJqQ
rop/JjYBgNrgCOiAuVSEtgL4WDHKYTVmXiNTWzi7dtKVe/mbsj7ugeX51wEQONR7
XCaMzwMaCA==
=23AD
-----END PGP SIGNATURE-----

--bvohql5n7i5suwn4--

