Return-Path: <devicetree+bounces-124441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9E39D8C43
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 19:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7467828487C
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 18:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3231B81B2;
	Mon, 25 Nov 2024 18:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0ynx1E/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D461531C1
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732559673; cv=none; b=uzGr5+bXkuUICZA+3ZUHkxMtAZan5YuE4yezKI22EEoppuecWHMw+7hUk540TjPLvGMPDRRE6TadTib8kTosRZofsECyM4kZ5NtxNn9WQXCA65+fJfRfYwo/NeO/x0kMtnLtWT80hqcz329UEt4td2JsehUBB0I2eEOWbutdlQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732559673; c=relaxed/simple;
	bh=JlD8cOO1Yjm2yGyyTDVEs+BQCZaC+W9ZTw/SyE3P7q4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rGXhDIVHg4McpZZo82amHFs1Y92WpamDtSYhwdX+CGS1WOJ/HscPyeLfl82TIZQGP9JODXjdnV8qDmrwN5DtWxZF3Hf9QRLlu/uoyQkXc1VzGszKdQ9Z5fQtD0qmJS1tlBq8loc3Xw4luTv0gdVJQKsy5WiwUMVQl5LKi41ojbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0ynx1E/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6216C4CECE;
	Mon, 25 Nov 2024 18:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732559673;
	bh=JlD8cOO1Yjm2yGyyTDVEs+BQCZaC+W9ZTw/SyE3P7q4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p0ynx1E/us39O/NKjbBoX2iW7NgQq5slVY5bvWwklfBD5F0aeIJjWsKiI4QIKu278
	 wusA9VPa60doThLFtHVqHoc9sIr/tOxGf4wzihNZawoztdL5gXSIQBENoCh1IWIze1
	 n5RVeMfrtMe/Q5Gd/Kv124pR5HUyEQq2chm2iGwl2/MP4WHOz3JF0+FQeZRtuj6YkB
	 0LwQojEIZPJPLQpF3oB5YnxGbZmDFr06lZmTi4+XmAy9r0SHocLF18xLsQ/dgIBuvf
	 3XBJlxO/nMl4bueD4TrfH/tGolncGWrYgpjeGx7aRWxeVCX65qS7LK2O5ri1+1EzIn
	 CxdJTe3qoSf2w==
Date: Mon, 25 Nov 2024 18:34:28 +0000
From: Conor Dooley <conor@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno
 Technology MI0700A2T-30 panel
Message-ID: <20241125-scrambler-deflate-94d3d8287dae@spud>
References: <20241125013413.160725-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="er50jnaB09MzuKld"
Content-Disposition: inline
In-Reply-To: <20241125013413.160725-1-marex@denx.de>


--er50jnaB09MzuKld
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 25, 2024 at 02:33:35AM +0100, Marek Vasut wrote:
> Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel
> compatible string.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--er50jnaB09MzuKld
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ0TDNAAKCRB4tDGHoIJi
0t+BAPwJK3sTtY0Ga9f59jbW26X1wmXT3KOYrwebq7Er4STrwgEAuax7ZtUusMoU
xQTNnrutqcE48mD9J8OGL31h2IZZrwQ=
=/V7M
-----END PGP SIGNATURE-----

--er50jnaB09MzuKld--

