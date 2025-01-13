Return-Path: <devicetree+bounces-138180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF825A0C0A4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42AAF162F7C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9700C1EE021;
	Mon, 13 Jan 2025 18:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ1OD+Yl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC281EE009;
	Mon, 13 Jan 2025 18:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793706; cv=none; b=iwPCUPK+jHDbxq5NjsWmLAZPLM+UWEwn/VXinDbyuemBNjJSFXIcLSkKsxlgM+7NoQpWY6MNHqI7oa894DY9lI8aNF9gTQAqa8FQkNedPnuFeP4Eu2VSNpsFgP0NOwANajY429Dzj5yx9evs2/rUe+PQXyOKJiWojfJBeGMf0DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793706; c=relaxed/simple;
	bh=5x7pczxxR+kIty5Ix1+YasbOKxJL6vgG0kDV2oCaLMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sEILAcvZpGHDZiYf+jaMnGTScBblYxcWz7Mvq4u6PbCAlL+/Nj16vgR70CapU2nFX2P740N8aF1hH4sCXqUxx17eZ92CROYdxq0zP5G1XiNSuLdQ6iO37y3BQAhV7yGdMxj+IM4+7meSjw5ZhAd7DCfYwSPqaOGrB9o+CCtW6HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ1OD+Yl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D25BCC4CED6;
	Mon, 13 Jan 2025 18:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793706;
	bh=5x7pczxxR+kIty5Ix1+YasbOKxJL6vgG0kDV2oCaLMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bJ1OD+YlTmV7f4ulBE1x33WjKRh4LTZANllWGTtu8lq/wrHHsdJ2DaD5F6CH3mGpf
	 az1bOOFV2MroZUvXaiydfgJco4RWOKS3aHrb9IN0stq40yIQEjN8AMm26MnrK94VSu
	 VFKAL8RLJET6YaUx/KDW2mqDjiPl6w7DpRY1C8yZ5T9eZ/0V8fJ/CW4Z/Z1+YKTQcD
	 VhBYGWZujkBPNEzCYnPcxZNG3A/lRp5xOSMulxLw5Jaxn9vFXdPEEq006U3gxDVJGO
	 MRNuqhwoXOsD2CtbLlYzFX5DPJSleb/PBNh+hiQWwobnTfT+4a6jMAU5IftRfWtyne
	 I5iaij3rdgzJw==
Date: Mon, 13 Jan 2025 18:41:42 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v1 0/3] riscv: dts: starfive: jh7110: More U-Boot
 downstream changes for JH7110
Message-ID: <20250113-catacomb-rewire-2b460d688f40@spud>
References: <20250102204137.423081-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pO2rOC5E5CHwbl3a"
Content-Disposition: inline
In-Reply-To: <20250102204137.423081-1-e@freeshell.de>


--pO2rOC5E5CHwbl3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 02, 2025 at 12:41:20PM -0800, E Shattow wrote:
> U-Boot boot loader has adopted using the Linux dt-rebasing tree for dts
> with JH7110 VisionFive2 board target (and related JH7110 common boards).
> Sync the minimum changes from jh7110.dtsi needed for boot so these can be
> dropped from U-Boot.
>=20
> This series of jh7110.dtsi changes is RFC as being uncertain about what is
> required for boot. Testing, review, and suggestions are appreciated.

I don't see a reason not to take this stuff, provided it passes
dtbs_check.

--pO2rOC5E5CHwbl3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4VeZgAKCRB4tDGHoIJi
0v3bAP9nsO92koWJAw14oYplCfHLKHtzgdj16/DrlMr9BPFubgEAo7PTnFHo/DTd
Aafegu9+9sekIOjGnBmkeYiYJqrGSA4=
=fflB
-----END PGP SIGNATURE-----

--pO2rOC5E5CHwbl3a--

