Return-Path: <devicetree+bounces-239526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD15C65EF0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 54B974F1514
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18296339B24;
	Mon, 17 Nov 2025 19:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa0UQhjD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5481338F2F;
	Mon, 17 Nov 2025 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406954; cv=none; b=YCO7X1JoVHCA1f8JqmSuYpcVIyaNJeD/TLyzGhXHgP0enEjrYwqMvC59V1l1z9otlgG1W1iWYWxPEg7o5IB4u0NCC6RENela+uOosGzUPAbDy0PdAjZty7XpXcYGAWRZBqcxJQMeshjSxjNU9M2A58cd8EsbGaNrtzyjEDpNFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406954; c=relaxed/simple;
	bh=9h7aMePGTw2hAOGVQwXVKkA86yjwv6edTcHB1dgntSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EqXOtnpezFndCwpdC1mNP3a2C7zQEtqeQuagq2PEDpLM0a72aKRgIeS4iFL/dxzm5dkhWH1gwpyRBOAklgNeodFTRZbnE0FSH0/q4dmC8T6uPB1fM2c+Vx2/gVox9SC0ykLv5AHAUnkeJO6TQcyYyMgyqjhhBXmqiUVqVXjuxto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa0UQhjD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E22C5C4AF0E;
	Mon, 17 Nov 2025 19:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763406954;
	bh=9h7aMePGTw2hAOGVQwXVKkA86yjwv6edTcHB1dgntSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wa0UQhjDKUDXaKXudOrZc+nla4jDiz9mWRJbJA5lbvLR/RiLKnsKF05iP4q5H+6PD
	 fsN8UgtGoZbiz61G0G4nObVFz1JlvezYikrJqwTuLNIOoherhcgSgnpSboEuG4Dhiu
	 rMPxTCiAAJJGNaB2xfbUu0oObC7efzpJZR9FublIw+dY8GoCuMd5C1ilORI9CdbJkt
	 CoFuqanF6i/iPunJzJh3LGM8fkbw741MqwP5vLECwZ+08ViLVq03YuHdf+UbK6fzN6
	 VNssN65jyWx/6/dDeXkFx1hxfTOiwrnd/Vxq7KwGIWepONq03tRZGDFW6orvN0XqaS
	 sH9hK01PwYBew==
Date: Mon, 17 Nov 2025 19:15:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gnss: fix timepulse description
Message-ID: <20251117-excretory-spyglass-a09ccfc43b6b@spud>
References: <20251114150628.777-1-johan@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DxX/i1k4/Fz+pMVF"
Content-Disposition: inline
In-Reply-To: <20251114150628.777-1-johan@kernel.org>


--DxX/i1k4/Fz+pMVF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--DxX/i1k4/Fz+pMVF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRt0ZgAKCRB4tDGHoIJi
0pEKAPsGUjsUVW9Vchlw5r0ETE6AM2B4dqrAHAEvv0b7JJufxAEAzuc/L7aKS8mm
2ya6nf2Prnh3LJbTcD4C9sJMPk+BqQ4=
=82G7
-----END PGP SIGNATURE-----

--DxX/i1k4/Fz+pMVF--

