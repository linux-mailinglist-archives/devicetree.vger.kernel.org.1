Return-Path: <devicetree+bounces-66706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 617C78C44DD
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:11:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D0D81C21034
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F36F155335;
	Mon, 13 May 2024 16:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu8sGF0e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DD155331
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715616674; cv=none; b=qU3duRll2X1VlG3bHAjsyQ/cr+jQSglN/RW8+4OfwuPuCTCKRJoyI/uiK6OLkTSw0Crcp9STDkv/dDooEfoKINlBLLFVTDutSlZ3B4TSYzhdYbQiw5G2lQUmfCQ+sD4Ztf3Q3Po+nV20VeaCIkuqVHTTEbz5OvzUU5k4iKMkUOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715616674; c=relaxed/simple;
	bh=wamjo4rgMEQsLuy9WD5G2bl0wrjLfRxmuTFvySd4ncU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttQqTQbGXt0AjcHQ49jpG2qhhIqorX67ZjPepMcOwrSAcjSw3GHyiYrw88wObvHjwX24iVw0v41Nn0ockdUnP6z9gvBnJeacLtJRMJfMXo6cI5a3jIe0Aeh8Dro4ELE63yaf2S4b7mO28zda3gUDFUBoxQ58ywkdPP3MsCRJ8A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu8sGF0e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 705FEC113CC;
	Mon, 13 May 2024 16:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715616673;
	bh=wamjo4rgMEQsLuy9WD5G2bl0wrjLfRxmuTFvySd4ncU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uu8sGF0enUNtw1n2VotNS5v+B92L8Rl1p3jKi/CK42AFQ7rQLAbpFx+LEfonP+Qz3
	 4O/q/jwBUgmLBYougfGwTKoFNAWdOpmpeJSkfxj9OLymYwZ7bkNn2qq3fcCcOQ1yEr
	 ZK2uCLatjhZcW3yJTXX/npKX+7kLusPYPm9syL6ntGKuTIII+0BfwK7aRm6DUHsfhX
	 688TSeqe3aZQbgsXS45MvVXhdAfMCaVu4nyyHnur4sy6zV4eoXSQzBQ66yNpwomUQR
	 FY0DjZODsA9CAVuT/eF1sxJ/Z0ThqzJhVKVpAUomVZu+hCju3xXLqwzhHYTWVAgYL3
	 lHMLMfuLIL4lA==
Date: Mon, 13 May 2024 17:11:08 +0100
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org,
	vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
Message-ID: <20240513-earshot-droop-d40f08bffd91@spud>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
 <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LZYb/vQuS16VCRSs"
Content-Disposition: inline
In-Reply-To: <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>


--LZYb/vQuS16VCRSs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2024 at 03:14:59PM +0200, AngeloGioacchino Del Regno wrote:
> Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:

> > +description: |
> > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.

Additionally, the | here isn't needed cos there's no formatting to
preserve.

--LZYb/vQuS16VCRSs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZkI7nAAKCRB4tDGHoIJi
0jd3AP9YqOlQCRHsUq/MyEN8CC7c7hqNhrvbWluk4DB5YSRcawEAr0D+ibHGOS7J
3fdgm/crwqXRZmTo9KzeKIqkQ4XYJQ4=
=KRu2
-----END PGP SIGNATURE-----

--LZYb/vQuS16VCRSs--

