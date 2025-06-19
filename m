Return-Path: <devicetree+bounces-187631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E177AE0AAE
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 17:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76E951BC42E8
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC05230D2B;
	Thu, 19 Jun 2025 15:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI9vi/G9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5F52222C1
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 15:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750347407; cv=none; b=tLak73m+aYvIzaPUt9sdR9gO9wpRjCAVxkM1bpb+PAjWHWswOPueRLS9efGGhi1jMckwNMSiQdjxC1VraQFIwoyLJFL31RHHfhh2M6NPP8AkkVtr5HQxWv8TlbQivf8fT8Mlsy4rMDQc3mq+1dFXxsnjTecqnCP1lPMHiI27mdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750347407; c=relaxed/simple;
	bh=lnpmrhSBGFlnAsGZCyB2mOpXn0yoqpmz1bmtXXLbr5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WhGhcyhHyXDSc5vzKROlrTwY44P2zWC7lxU6H8PtCP3jNtAaHFKK1ro6wzx9TeF7eXk7jSW/eqXve8xXVc4b/eYRUC+0sL25Iokez+e/8Z2stGgNpewtnHIBD6FOxQkf9xcJsacFinX+/huwgRntAbseidfAY+dWoPdo0QihLlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI9vi/G9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA6FDC4CEEA;
	Thu, 19 Jun 2025 15:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750347406;
	bh=lnpmrhSBGFlnAsGZCyB2mOpXn0yoqpmz1bmtXXLbr5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tI9vi/G99gHZGb7Sz3t2Krygnm6uMFgZtNpDj22ULAe89eBxRb9Kfp5Wl2LP7tPWN
	 /gNw8GjIhZtHxZi3sJNGIjKckwfmHCp3Fv+CLdyDHHghiHsktVnzKsPjW1Dncb4z5M
	 MkQNK5EFuYxTy96/KGcj9lVBPySwx1nA8exXDGwk3NjSQkTT8TRsK2fO4VBTCzZ5Si
	 LeLmDoMp0u4evwkHh7Y18f9IPvcziHrU+KQX+iNg0WHC7cY56qA99q72+ZbBjFusFw
	 g5mnREtJMZ/V9rUEO6W4Bn9Kcl/KdcRgCtsVp9lICS78rBl2QNDypDH9mOqmGA937b
	 BbSYv4EFUnaIQ==
Date: Thu, 19 Jun 2025 16:36:42 +0100
From: Conor Dooley <conor@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Cc: cip-dev@lists.cip-project.org, drm@lists.freedesktop.org,
	devicetree@vger.kernel.org, noralf@tronnes.org, robh+dt@kernel.org,
	krzk@kernel.org, onlywig@gmail.com
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mayqueen name
Message-ID: <20250619-drainpipe-natural-8fa7d5b76a18@spud>
References: <20250618033731.171812-1-zaq14760@gmail.com>
 <20250618033731.171812-2-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tHigTYagu9ocJfGI"
Content-Disposition: inline
In-Reply-To: <20250618033731.171812-2-zaq14760@gmail.com>


--tHigTYagu9ocJfGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 11:37:29AM +0800, LiangCheng Wang wrote:
> From: Wig Cheng <onlywig@gmail.com>
>=20
> Mayqueen is a Taiwan-based company primarily focused on the development
> of arm64 development boards and e-paper displays.
>=20
> Signed-off-by: Wig Cheng <onlywig@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--tHigTYagu9ocJfGI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFQuigAKCRB4tDGHoIJi
0qZMAP40Ua2pL6PPyC/mTfAcXUOOSzQqFPwQf6YvTFCqR7Zo4gD9FuNU9bHPzn6S
qjNY1pv6YaXHGoTlTCQb971yjDZ1NAo=
=0GGU
-----END PGP SIGNATURE-----

--tHigTYagu9ocJfGI--

