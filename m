Return-Path: <devicetree+bounces-103318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D0097A5D4
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 18:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E59781F29A54
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8D5158DBA;
	Mon, 16 Sep 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQJr32XT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3237A158A3D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726503443; cv=none; b=Fwr4R2U/jTpiogq6nS2myqj6Tu7vCqtcX4F5SdeshOXCA4O5KHurFJmZ1X28FXAZaUtBrhKZHQzfw8OC2+/zEOzy7IWawrJygyWyNt1PsCRl7KZKXhgjoo3qvbJE4Bv38q5IiQnsC9FpD3KTozKmZ1BQubDpXvjtOUyux2mEyZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726503443; c=relaxed/simple;
	bh=CqeQB0TnUuf93Cnxe0GJLdcUm8x9v2sEekPUfNT+UsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oi1dQmheum9hPIvc9vZUexDO/m4ZjNZfCYoD9H0z9LMirucm4LypGFrl2LAaUtaipwIqDxMPlFrxhWd3XZftTZbdQm8CbLDjVrb6Zxm/mvtUQLZNnFn9156q+wPj6CznUQ3QdUakw19imDzHZz485DooJdbLy0sz3mpSax+cKXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQJr32XT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37309C4CEC4;
	Mon, 16 Sep 2024 16:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726503443;
	bh=CqeQB0TnUuf93Cnxe0GJLdcUm8x9v2sEekPUfNT+UsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SQJr32XTmm8zysjnfWzE5yUYgVibxrrUADPNvz4b2g+em6EM0RpBBqP4tDSgx9U1F
	 2POj94G+CPbdjZr7LfOFvX9fsYSRT9wC4M7Ma77y8JsUSaoaTph7UXLrVWrhlEwJgS
	 ArvAzOdM+S6ReruiMoLqezTUbwsxuXLjYM8Cqwuw4OJnH0V2Iouba4W7umBw9pMzGQ
	 Ll5jW0UKwAavT1nzP55QLHkldS+EnLAN9bVVWm77MxF88Q3CbLFSIj/roou9vCUtvK
	 YqOHpIyW6ErtEiWyTGbSxLTvSZ3/RItai4SlqRvKTTguMhAF8+w2VVm6XA4qWCMgMo
	 J4wy5By7fswkw==
Date: Mon, 16 Sep 2024 17:17:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: Document the Comvetia LXR
 board
Message-ID: <20240916-molar-eternity-78a25fd6c970@spud>
References: <20240913200906.1753458-1-festevam@gmail.com>
 <20240913200906.1753458-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d1IWK3rU5PtM5w+w"
Content-Disposition: inline
In-Reply-To: <20240913200906.1753458-2-festevam@gmail.com>


--d1IWK3rU5PtM5w+w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 13, 2024 at 05:09:05PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The Comvetia LXR board is based on a i.MX6Q phyFLEX-i.MX6 Quad SoM
> from Phytec.
>=20
> Add an entry for this board.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--d1IWK3rU5PtM5w+w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuhaDwAKCRB4tDGHoIJi
0nsnAQDtgYtwb/lSjwZU5N+V+f2mU+liS3+2l0AS4ni20ZMWqgD/SdcxFmhu2ZIn
xO8j81Uu43tsgNo65SniWIhNlyL+cQY=
=vvo4
-----END PGP SIGNATURE-----

--d1IWK3rU5PtM5w+w--

