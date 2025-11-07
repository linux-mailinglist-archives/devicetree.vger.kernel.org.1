Return-Path: <devicetree+bounces-236197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A25C41095
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 18:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABF2F3A7D6D
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 17:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E014328B79;
	Fri,  7 Nov 2025 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzAvUWk8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336252BD5B4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 17:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762536383; cv=none; b=NV17DbQVoeDZI5zD3fs49eRdAfUwM1qw5wtR8/zHaIITaphq9IpXK0R2Fmdxb6JcRb/eCKvBxWKlSMnc3CB/kOPa7JTdcldpH7aZsoDHbDP29cgZQzFv8x7EAFScf6dUezx2425LxMenQ66z0F8d7HyrPKxDmMb3/Jk11Vc/7g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762536383; c=relaxed/simple;
	bh=CG3sp03scUguoBw/Rgi9tbhANOp5T1t4Ii9zLGB26UU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P9p4XydKUNjLSewy7/KYfWM0iFO9OkLYhVdwODW2b9HkmSxD4MNjef40MrNAdO/WuWtecZ/QMbqb6/pV2SPeWVsz97Vu6ThjtY8RmHlWWyBzB2SKBs7lITK8Wf4PW4aeID4tmvfFmbbkutx/6D1dMfypRBH+HDH4LXMx0oS3scs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzAvUWk8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6269C113D0;
	Fri,  7 Nov 2025 17:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762536381;
	bh=CG3sp03scUguoBw/Rgi9tbhANOp5T1t4Ii9zLGB26UU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gzAvUWk8x8FBe1LtHXxG1aRk04wwvE3F08YIXAmXwOCs+6cLJQBvszupU0s1V5L+P
	 aELjti1enD4epEJ6iym2408P+xvhlLVI5NYsreYRzvVAcCrWQXnsdBJBtaRMBL8eDk
	 VykIE3J4BzuQevfvteuIoPYZxnhrB+5DTDhHwcPIMGd3X557rmGMrBySXKjPeiEfxw
	 cyT76EXUQEPBF+QswNKyoZ1dMMOzinx+CSdHZADWHKRsBxGtYhUUbdmOK06gO9QZkI
	 qzEUQrzDFjpLXSNOvy7C46ga7CYh9sNHa5ryAwCnbNRFD3xmnFNKAKfsv1y7I1mY7e
	 kwsqLAfvYotdg==
Date: Fri, 7 Nov 2025 17:26:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com,
	rfoss@kernel.org, neil.armstrong@linaro.org,
	andrzej.hajda@intel.com, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, tzimmermann@suse.de, mripard@kernel.org,
	andy.yan@rock-chips.com, heiko@sntech.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: Add no-hpd for
 dw-hdmi-qp controller
Message-ID: <20251107-salutary-flatbed-0a9d343ea233@spud>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nv5aRATXfvkz/qx9"
Content-Disposition: inline
In-Reply-To: <20251106180914.768502-2-macroalpha82@gmail.com>


--nv5aRATXfvkz/qx9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 06, 2025 at 12:09:12PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
> This is used to describe implementations where the HPD pin is not
> connected or used for other purposes, such as in the RK3588S based
> Gameforce Ace which repurposed the GPIO for an additional face
> button.
>=20
> The "no-hpd" option was chosen to be consistent with other devices
> which already define this parameter for broken or missing hpd
> functionality.

Glad you mentioned this, so we could avoid the "why have you no vendor
prefix" conversation :)

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--nv5aRATXfvkz/qx9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQ4rtwAKCRB4tDGHoIJi
0uPcAQCQYx52aKQ9WBWwYIfanyKVna1IMoK9mSl5rQD2kACGUgD/Z92gV37yqP21
NuwDcsmdPlMhKmsGtM52wv5NRkPf5Ak=
=/cD2
-----END PGP SIGNATURE-----

--nv5aRATXfvkz/qx9--

