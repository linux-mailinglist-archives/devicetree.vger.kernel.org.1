Return-Path: <devicetree+bounces-97098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0B960B7B
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 15:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EAFC1C22690
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 13:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B871C0DE7;
	Tue, 27 Aug 2024 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuFtNbHd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFAB1C0DE2
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724764222; cv=none; b=L5GGNnbYb0c/xLEEi6d1ModqrIko8ncl8bYRMpDa8XQixGrmCl5be5IGMm9kT9w30XZaMDNRNzGxv6E2YjlyNUry63vWQGulhK4JIXP8cLPb/Vpw/RQjhnmEd4BbgwT/87Ae4nE4UfwZ8EL0d1XealIDjbBiLJDMSrcFvzgVjzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724764222; c=relaxed/simple;
	bh=5OdpWp2toBhBU4WiZZkZyU0CSsGAOTFhIgqBBr3Gf08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XnV/NWr1nWTYxLzIe5G1AM1DzGz1NhV5nBLMa+9QU//jj48tL2zx0Pdhd6LUBgS7/83CyGkikgnfnI/B1LEHg58/oIR7I39047gc0VhojYKG9OLI9Rn9Cmtb8Xbl/kNYcTfZ/lbEf9Up1Z+zKAEKZ1Zly0GMjOnXt1CZ6MCGpF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuFtNbHd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 901F5C61048;
	Tue, 27 Aug 2024 13:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724764222;
	bh=5OdpWp2toBhBU4WiZZkZyU0CSsGAOTFhIgqBBr3Gf08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FuFtNbHdx3SZEei1GEAIMUJ4wuCBV4B7FWlGvusTjhuOlggK9s7nmn3DlivoEy6Q2
	 9G/ZaIgtYTtVNHa8BUJMwwwW6L6CnrZvRChrNmr2NhWPkNl4rShgK7hnlyip3Mf28D
	 6uZOczQKhpMF0v7HKeT8W5HYtbEVH2Fh/Vx55zVn+8tf83KRauN4TkOpTw5VWEJYld
	 YhtPD6373ai0jeL8N4ofVHJW889s3OWbQRNeYzFwgUkl9grQgtNtvpZpQi0+EFgU28
	 z3sb1GidZQ3turUSf5kHSBaJRk4dMmS1Kubqat2zaFEErFv5R3VlhTdqaVAbdtZq1V
	 pVot1GEj4Tzig==
Date: Tue, 27 Aug 2024 15:10:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hironori KIKUCHI <kikuchan98@gmail.com>, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 0/3] Correct WL-355608-A8 panel compatible
Message-ID: <20240827-rose-tuna-of-science-4d0812@houat>
References: <20240626112005.248576-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ssshyrjley2mfxjz"
Content-Disposition: inline
In-Reply-To: <20240626112005.248576-1-ryan@testtoast.com>


--ssshyrjley2mfxjz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 26, 2024 at 11:17:47PM GMT, Ryan Walklin wrote:
> The previous patch adding support for this panel [1] referred to previous=
ly by its serial number only. As discussed after the patch was committed, t=
he preference is to use the integrating device vendor and name in this circ=
umstance.
>=20
> This series corrects the panel compatible to reflect the vendor (Anbernic=
, already in the vendor prefix table), updates the NV3052C panel driver wit=
h the new compatible, and lastly adds num-chipselects and sck-gpios to the =
DT binding example, identified by make dt_bindings_check as required for bi=
t-banged SPI over GPIO lines.

Where are we on this?

The 6.11 release comes dangerously close now.

Maxime

--ssshyrjley2mfxjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZs3QNgAKCRAnX84Zoj2+
dk3fAYDWAKctf+llbgLTK6fI/TBSYkj9E0xKs1oZVzwr4vDTQxE2IDjrlArAHLag
e7UvZvYBgKzeGYOtmiqfnedlIIclS6gozCtHbuvjaBKzmubRIJwL6Lg8GmUGtnnO
Ha1qhyGYOw==
=vIPI
-----END PGP SIGNATURE-----

--ssshyrjley2mfxjz--

