Return-Path: <devicetree+bounces-66720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CCB8C4562
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7D1A1F213F7
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5591A29A;
	Mon, 13 May 2024 16:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq5gLPf1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0769E18C3D
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715619318; cv=none; b=EHW4loRx5qvXF/2lYWGbFQqdxFzKLWizMYetXq0hwtNm7hPWakUKcLIgazfPxDFfkDEDWpV8CJdWJS/YLX766LLvesiquQK2jifj+JErHh1p8jU3zhTGDoGbuFCdS94OTrui1DqLSCKLUJaXXS0RN3rNUoddnxAcIhC9287G4Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715619318; c=relaxed/simple;
	bh=JfOR0ctoB05ZBwCTPmwc6W7jvbWwMcL3sGdG4s/MpMY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qS7HxGJYDYCqlXfApYLKT8XyZefz5Y3xaVGrxgkkTXPT56bevn/rcXo/9U7aGNfMymOri+qmihOd4B9o9dEKtKzj3NX/scfIDRfTeo67shs9WRUXhspFVg05GnTysbjuF6T4YbxSXBQbqdoi6ZqhWx/KwKJwqKB8NUJGaqIIrWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq5gLPf1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D061C113CC;
	Mon, 13 May 2024 16:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619317;
	bh=JfOR0ctoB05ZBwCTPmwc6W7jvbWwMcL3sGdG4s/MpMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jq5gLPf1ajdgqvK3czxj/fd5t/l+jnxvPYm1DFK3d+UFCsaKXuqkwojepWezUmKCH
	 lLX8kU2ZbTH+sjKBEMmTPlWDcLUuPJ5bZGHTM8KJZoVSGWeBQC2TASoEsvNOkW5tUL
	 HbvVZXmS8rgQayF0tHcRDNjEF7nkDsb5aiOyVCScOPmQK4Y651Gpq0aW1vJcGcbQ10
	 cltPjGHIrl7Fpbkg+jgxL9LNK5MfmNn7qAX7iOO0rAZI0a8blKpjjvXioz627GxWw2
	 Rsv3+XgVYdIZ8PhQ7rzBvgWumXXka6Z2Tz4CWwRlGQIoB/+yYDV8EiKSc1y9fZnFZV
	 KiDnTgb8yab3A==
Date: Mon, 13 May 2024 18:55:14 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, nbd@nbd.name,
	john@phrozen.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org, upstream@airoha.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
Message-ID: <ZkJF8gAKIGGjJgz7@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
 <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
 <20240513-earshot-droop-d40f08bffd91@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hRJZAjtksdcRzbb4"
Content-Disposition: inline
In-Reply-To: <20240513-earshot-droop-d40f08bffd91@spud>


--hRJZAjtksdcRzbb4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon, May 13, 2024 at 03:14:59PM +0200, AngeloGioacchino Del Regno wrot=
e:
> > Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
>=20
> > > +description: |
> > > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/G=
en3 port.
>=20
> Additionally, the | here isn't needed cos there's no formatting to
> preserve.

ack, I will fix it in v2.

Regards,
Lorenzo

--hRJZAjtksdcRzbb4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJF8QAKCRA6cBh0uS2t
rBD4AP4k66zTusaYtOYlV8NwLNLh7//cGPtcmlwAAwTN95DLsQEA59p/rzC22WY8
WH42PDRAYRnGX+9c9TPHRYPW6gsr5gk=
=InZ0
-----END PGP SIGNATURE-----

--hRJZAjtksdcRzbb4--

