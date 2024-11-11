Return-Path: <devicetree+bounces-120853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DDF9C466C
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 21:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD64E281ECA
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 20:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742C21A2653;
	Mon, 11 Nov 2024 20:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHsVV3WU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF4A15533B
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 20:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731356121; cv=none; b=BdHsXH4h4QKVwNZhlycqbnNMrmn8DlWbdW06R+PVBAIp2m+qbf7w4SX0CQVBlF4/DEN+IH+bgC9V6nXeolrrW5DeGLufdP18BZ9HlUYsZr8cNkK+OB689fGkCD3lNwbXP2buZwtRsRiqSySGCoiRxhScfCe1inY30hgG7V88aUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731356121; c=relaxed/simple;
	bh=aiKvwrtTrJ0YB7W0NmjeDDdzE5hHsJ4Nb2c3nZtzNvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mYldJh/t6E119V8LbWnaewO8xWIC3Usn2w8REyv3ZCwH1J2DlYrEo6+QrjD3GYYQLLeJZcIrjOHIxBDcinEJO9DXPXDoVHlonjC1e9wP6RWE+K0mpFRUG8EnXPwLo57RocyXaPGCKsywbY59poPVFOW4dD/upxI0XcfiOivuB2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHsVV3WU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CCEC4CECF;
	Mon, 11 Nov 2024 20:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731356120;
	bh=aiKvwrtTrJ0YB7W0NmjeDDdzE5hHsJ4Nb2c3nZtzNvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LHsVV3WUFY+iOv+WkGKICY4Buc1z2XqejSWteivdHFUqqBIb2oinJ2ZSdqk4hLFkU
	 bjDSN/I4PUJxOV9l8zu/80aQjSiteWXgAbidWelBQi51MK/N/WmAawppevIc/rwl5y
	 ZlxwhdGlAAEJ2bSJv844gELPmeeoamTBTUhloEGOicvlYuyvKdpOzXE6/521zAg3BF
	 g07+oc90LFPlEVh1wpn+Uojs3rpyxdJLPMv2vJKuEbSjKRrSSCXAK7rOOJlkHqqt6o
	 1SHWPq+RBK+3WhPgyc+Y1izwmzEn7G95XJ5psiGAiYdiGiQMz2lGdZstYTRCXDUv+h
	 HDV/IvchZfU9A==
Date: Mon, 11 Nov 2024 20:15:16 +0000
From: Conor Dooley <conor@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi
 5 Max
Message-ID: <20241111-status-reaffirm-c00e7a6f7240@spud>
References: <20241111045408.1922-1-honyuenkwun@gmail.com>
 <20241111045408.1922-5-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3yHonPgt7DdqftVb"
Content-Disposition: inline
In-Reply-To: <20241111045408.1922-5-honyuenkwun@gmail.com>


--3yHonPgt7DdqftVb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 10, 2024 at 10:53:25PM -0600, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Max board.
>=20
> The Orange Pi 5 Max is a single board computer powered by the Rockchip
> RK3588 similar to the Orange Pi 5 Plus.
>=20
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--3yHonPgt7DdqftVb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzJl1AAKCRB4tDGHoIJi
0uw8AP458XwimgHVrn7gO//5n/RSwrWa9lCbkyXLZJP7JBZVjAEAkaa6Pi3KkTzd
NMsKQECdrz06LBCT0NasZp/yGotx5AQ=
=dHrm
-----END PGP SIGNATURE-----

--3yHonPgt7DdqftVb--

