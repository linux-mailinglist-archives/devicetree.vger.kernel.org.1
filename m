Return-Path: <devicetree+bounces-138865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF802A12B1B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 19:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FB361667CC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 18:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394881D54F4;
	Wed, 15 Jan 2025 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LugFm7/9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1115B1AA783;
	Wed, 15 Jan 2025 18:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736966663; cv=none; b=VvM9ywtKho1R1u+cEMS/N6PBzUcP7sS3YK1JUth3Oh0yNv3/h9+LIcJqKycfdZMrnVJLWM/YJ0g136Vt61+91iC2slrhMNN+q6Yus/l7zrp+LXhyXp49mZSRt43HWCwUHkTmaYsudNesukq2JmRSnbCWhNbosZdIg5PrRvp3DQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736966663; c=relaxed/simple;
	bh=G4PzYBU8G9Uar4bPlnrhRRps7QPD3CQ7Vc8IyR3W9OM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dhCVIoC4NNyAxg02SuaR4ZyWO+cWDa4tmZhvHYFCxi1rG5C/pc4pbJRWzrqb8iOPT9VWepjJmvqb/hWvshB+jKuJ/BFPeciR/ome383aND6HBwc4DnWlKJg/E85ddN1ar2rEN8Ugo/fO2AEDdROKE+hHWFGn1RrcdZfBhx+3pzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LugFm7/9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D768C4CED1;
	Wed, 15 Jan 2025 18:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736966662;
	bh=G4PzYBU8G9Uar4bPlnrhRRps7QPD3CQ7Vc8IyR3W9OM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LugFm7/95m0CLhvMD/7uWtivH5QpL+9k0pqN+JjWvb3Z2IQZ4mukW8/TzB40NF1a7
	 9DHfE1gVk5X9+b0ogSrhsvRxQE5urfgmti2EcbpRHJKvHE1XBCHzbFUQ49xTOb5OuI
	 DgMuZ9eRVFndwnIHklT0WqHIBrqXbtqTXDT70vsPt/hWFk3Iz3WKAuDMBKWOChH/IX
	 bRGLotsQE7RksHsd/TVpwapJ9oBzvFr45J1YZXwLLwCXLqDC/zHHJ/1qHe2a+4KPC2
	 xuyGF1B4x8zTCKS2og7mKnR0gSSDhKlIV9zmtUc+6/4CQ3LIPRqRGdvZragFR9qdPY
	 +SsaQ5ZXGd73Q==
Date: Wed, 15 Jan 2025 18:44:17 +0000
From: Conor Dooley <conor@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree <devicetree@vger.kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-mediatek <linux-mediatek@lists.infradead.org>,
	kernel <kernel@collabora.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: add mt8370-evk board
Message-ID: <20250115-preformed-lilac-15ccb03e7119@spud>
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
 <ef8bbe7a-64fa-4e51-86f3-4f7fc0bb3760@collabora.com>
 <20250114-lily-defensive-3383449a7945@spud>
 <19469767d9c.d70b2edd1099115.3136795565203045474@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vpJ7qZAU57snQZoU"
Content-Disposition: inline
In-Reply-To: <19469767d9c.d70b2edd1099115.3136795565203045474@collabora.com>


--vpJ7qZAU57snQZoU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2025 at 11:16:00AM +0100, Louis-Alexis Eyraud wrote:
>  ---- On Tue, 14 Jan 2025 18:54:54 +0100  Conor Dooley  wrote ---=20
>  > On Tue, Jan 14, 2025 at 11:32:47AM +0100, AngeloGioacchino Del Regno w=
rote:
>  > > Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
>  > > > Add bindings for the MediaTek mt8370-evk board, also known
>  > > > as the "Genio 510-EVK".
>  > > >=20
>  > > > Signed-off-by: Louis-Alexis Eyraud louisalexis.eyraud@collabora.co=
m>
>  > >=20
>  > > Reviewed-by: AngeloGioacchino Del Regno angelogioacchino.delregno@co=
llabora.com>
>  >=20
>  > Can either of you explain why there's a fallback here to the mt8188?
>  >=20
>=20
> The mt8370 SoC belongs to the same family as the mt8188 and mt8390.
>=20
> It is a less powerful variant of mt8390, with less A55 and Mali G57 cores=
 as main differences, and like the mt8390, its hardware register maps are i=
dentical to mt8188.
> That is why I added a fallback on mt8188.

Seems fine then,
Acked-by: Conor Dooley <conor.dooley@microchip.com>


--vpJ7qZAU57snQZoU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4gCAQAKCRB4tDGHoIJi
0vNJAP9hRxZkfQhseHe1QQ9f6Z5WQKGw1EgiIuWo5Aq35jBUZwD/S+nJx4NxwpUN
ZvVMB0l5bDODSLpz1FaMo24PT6XN0Ac=
=UM9R
-----END PGP SIGNATURE-----

--vpJ7qZAU57snQZoU--

