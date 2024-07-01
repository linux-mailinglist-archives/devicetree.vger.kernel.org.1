Return-Path: <devicetree+bounces-82019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5043B91E355
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E189DB25D91
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6880816EB42;
	Mon,  1 Jul 2024 15:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ro/RLUyE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EAE16E89C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719846256; cv=none; b=ewatjse9r+jniC0rZBdDCeQyg95OX5Un7o1Mb+2xx6tyQHhBTR3n7MuLD//SZ3rXeC1mxNW2jrhXX9FFyhlQ5HRm1MSstF/5bOcm15CsXIpDvkFK0TTc+cdmUYnMIKmPCZvHB7K8+dXCGQ01txkNB1x6oV76wU4Is1NTgXPI+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719846256; c=relaxed/simple;
	bh=1827LFemuiUVmYMPnNFZh664roipuU0O0f2WDmUYEwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i1SdGk4fHZ+KdqMdeA7bViVA/RvWOF5dED1+BXeF/ZudERwR4dR0xXmYdkFbqiNnY9ojoLmS5dmfaQiQJoQjmt2aeHt7j7peeXOgdE5YcvwODZ8R29PUdXNBjL+8URIq3mdjZZOjmEHNL3vRJkPFW4ggSIJp45XSa0E370jYGlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ro/RLUyE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE23C116B1;
	Mon,  1 Jul 2024 15:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719846255;
	bh=1827LFemuiUVmYMPnNFZh664roipuU0O0f2WDmUYEwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ro/RLUyEs/7TOJBLAxBtW9+L7zA2Z2liaFgitLWOegt4rpdXZVEGrOlzLBTwYQdjZ
	 5I/80aPdIf738Sha/5DCk5gA8F7WGcDIbF/pX5ZAWLEYegixPFAp0pxYN7WVNDra9G
	 KwNlV3rhNRaA8Fln7hBqqaKpsLtaNehz8IXxI7uYuvTq6PTPK7z8OG4hve8nJqTm21
	 ZiVgM92DCYUO3gb5h0jjjLVJjSjqhPh8Q44Q58NwfqEKZ4xFQ5QQM3IwT3xXgJ2wcC
	 7CyOg5OYCNmHSeQacaX8cIqZAfjqx5lY2Uns974vlSbEi+PoRRmFF8UI1oV58ixlEB
	 +Ubcp2raorPHg==
Date: Mon, 1 Jul 2024 16:04:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, nbd@nbd.name,
	john@phrozen.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org, upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO
 registers
Message-ID: <20240701-tubular-registry-e6f47ab2d7ca@spud>
References: <cover.1719682943.git.lorenzo@kernel.org>
 <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HqN/OI93YBYXRfOt"
Content-Disposition: inline
In-Reply-To: <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>


--HqN/OI93YBYXRfOt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 29, 2024 at 07:51:48PM +0200, Lorenzo Bianconi wrote:
> Introduce Tx-Rx detection time and Rx AEQ mappings in Airoha EN7581
> PCIe-PHY binding. This change is not introducing any backward compatibili=
ty
> issue since the EN7581 dts is not upstream yet.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--HqN/OI93YBYXRfOt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZoLFagAKCRB4tDGHoIJi
0tSVAP9ShcRHDmhVey1oQg7Qc0se/z/6mFzcJm/AuW1g1zO2AQEAkmqHCL4l9824
TY6qgXFKVYMRKz1yAsN6ncG71C+vSgQ=
=CSWz
-----END PGP SIGNATURE-----

--HqN/OI93YBYXRfOt--

