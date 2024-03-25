Return-Path: <devicetree+bounces-53116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6F288B0A4
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 20:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C238B45C66
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D54914AB8;
	Mon, 25 Mar 2024 19:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpcGgUwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4903411737
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 19:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711394740; cv=none; b=SdnnZeMTmG8CsEnGJZXYx3ntI3gpx4sZZxydkDi964ECZXGBw1E27urLzKJjcmVDl/oVDMYK5PVUt3dzIa4Q4dWYTrjNI+H74odgZ1cfN5L3opIkiDfQYo8rId67uSTjXaOBpbngYQIE/k7NooGCYTCQCYAS21zV06ZZz+X4j+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711394740; c=relaxed/simple;
	bh=rGP9xGOCge4nOY4nP6+eD+Sot3eKPSA1nfD7xBY8HuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RmjetW3uVIVRodGQkinxc2SVReYz9/azm/YyJlRS/i9ylk7zPFa32+raAHEFdqS/Vk873+raq/ZcNRpjo+Vc34CqA0lfwfN/lpdBFli3U2zduIcyzbzanw/T8EiCQPETXGVFDUrNLtvsGKaabapxpc5/v3uyPjU1iTMs49Gtfw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpcGgUwQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C93C433C7;
	Mon, 25 Mar 2024 19:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711394739;
	bh=rGP9xGOCge4nOY4nP6+eD+Sot3eKPSA1nfD7xBY8HuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IpcGgUwQLJDxpwGavp3EWJSHSGGpSh43ClVKZdCepyL2x6DEMu6xhMu1JliLYuHVR
	 xZH81cfISok7RPbsgaJa0GSH5Qc2/V7i+mDILratepRARi1BVJ8JP6O0vSb0swti56
	 uJCfwsbe68XKo7a8qhnjBtfErCCyxSDnEoqoDCXrn4t0h5M8mFCwpP3sDlVRHvQRS0
	 FdIqTaFPkf1CGrd7rcXh3dOiFbF9aul9l7W5LUOiaVzilPHJGfLCPNwFkdbUpsVuds
	 arPDD0K64SLFrW2xDrdl3QxMht8sYYdGDK4QhIBy7EOCBDKqYn81IgKO6G6n7bwOUa
	 VD9zn+xrJBEzw==
Date: Mon, 25 Mar 2024 19:25:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org, megi@xff.cz, kernel@puri.sm,
	agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add GameForce Chi
Message-ID: <20240325-applied-abrasion-b68d2aa02854@spud>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kp/qOKYudTbPvI5Q"
Content-Disposition: inline
In-Reply-To: <20240325134959.11807-5-macroalpha82@gmail.com>


--Kp/qOKYudTbPvI5Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 25, 2024 at 08:49:58AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The GameForce Chi is a handheld gaming device from GameForce powered
> by the Rockchip RK3326 SoC.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Kp/qOKYudTbPvI5Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgHPrgAKCRB4tDGHoIJi
0hXbAP0dnSKtnfuf20yVSQvh0ORpJmBb6ZmEQNdHjanit5KNUwD/a00lfQf1GCpH
P5So6w6aKTED83lB5k0K931e2RpNUww=
=ktDR
-----END PGP SIGNATURE-----

--Kp/qOKYudTbPvI5Q--

