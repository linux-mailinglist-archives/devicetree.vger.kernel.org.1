Return-Path: <devicetree+bounces-82910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4CA92651A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 17:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04D69286BF2
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 15:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416F7181B9D;
	Wed,  3 Jul 2024 15:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdNtc0oj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5B5181325
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 15:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720021145; cv=none; b=CKnlpQs/G5X1IWUZtrZDPoydxl3zAUipFsGZOlh9Jyr/PVJyaaA4uTR1wfIU0BwF9tNtjP5YD/0whlYnbElRlW3K5feVYAb/UtouVcqaKjMLoUDn6OXdBZbIov0arXzS5JJZv2BsSk4B2hUFlSz4WlVEErpv//V71ScBGXS3WFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720021145; c=relaxed/simple;
	bh=AAX3Z9qKXX6pCk5hoyj4TQaQ10/3VlDd1N2fKFMii1c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lkgacmUCnyUwyWH4YbXbW9ehOg/4EpZODv9i3MDr8piAn7521Q7NWVVRoyaSBQ6cq2/7fyZJfDJ3ziA51wGa6taCF91dEzmyfQjCceSqBFnoAuf6CwX3p/u9txX+Mam1M4BJovoPMPWg90EOBuJmmsOxvj1a+/Vviy/0safrBJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdNtc0oj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91F6FC2BD10;
	Wed,  3 Jul 2024 15:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720021144;
	bh=AAX3Z9qKXX6pCk5hoyj4TQaQ10/3VlDd1N2fKFMii1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tdNtc0ojh1GNdXct6tj8gKB1FBS/E/p9NzDXoFw3t1PA243S/cbK1AD0Bjm8J5BX1
	 6h63QoToM6KsFnwQKrNjZ935Q1KVhXCtROmx5EcGez6jpMRWbXNPVKvL8kUjxmDPb5
	 Z4LJ3J8iPzMqC834XQh39N2iD39mma8x5u5kvbKAMu2Le1FWKehWtK06y0Hld6RcMz
	 uG8YKkCTnuy3W1cO2fPYHRIHmuME04KMwK1zt10EfpJqsVD3jR8rwCGDsr7blh2B8D
	 b+wU7eNfnQlQd2hu2lyZVmPjVVZUaWewo/bTkVBFtFpX7hKrsQHLOtTuVf+uhhmdcM
	 mcX3DUHMG1kRw==
Date: Wed, 3 Jul 2024 16:38:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
Message-ID: <20240703-dynamite-monsieur-6d026ccb979b@spud>
References: <20240703103710.31169-1-ryan@testtoast.com>
 <20240703103710.31169-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tF1aKqlVgejw4feN"
Content-Disposition: inline
In-Reply-To: <20240703103710.31169-2-ryan@testtoast.com>


--tF1aKqlVgejw4feN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 03, 2024 at 10:31:44PM +1200, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> OEM used in a number of handheld gaming devices made by Anbernic.
> Previously committed using the OEM serial without a vendor prefix,
> however following subsequent discussion the preference is to use the
> integrating device vendor and name where the OEM is unknown.
>=20
> Alter the filename and compatible string to reflect the convention.
>=20
> Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--tF1aKqlVgejw4feN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZoVwkwAKCRB4tDGHoIJi
0jEPAQC/80YDu9SBIC9n7gCzVDjm5fGbTUgsDl3yz56idKPYrQD/ch6xUHkRL1ip
24opH0VBBd9Ga00ZPyzUtY3PXWgt/gk=
=O1yN
-----END PGP SIGNATURE-----

--tF1aKqlVgejw4feN--

