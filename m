Return-Path: <devicetree+bounces-7797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE67C5899
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:53:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A3FB2822CC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2483208DC;
	Wed, 11 Oct 2023 15:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfhTU6Zr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857FD19BDF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0FCFC433C7;
	Wed, 11 Oct 2023 15:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697039619;
	bh=MnO8wJp465DdExZJRZLI7W6XXLulnYsF87wpSrZwreQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GfhTU6ZrR5sBsSzYOeUYCMK63LVu1HNPRTqF9WSJqknq3/esdLUPE1ux81ClCURHR
	 gnv6X/8qh2Q9hf6ynadEUOWzxYWOo00uFUL0MGHbwwx4aaNAhahC41adQIXRuGIDkW
	 lxfW8j/QhRBZLneMC1bRNi6mQdgeoqHCFdrFg83Y/KJrko21MsX5rB+cL69iVCdg8/
	 JHNDKod8XjP8Pa1+Rwtc3SHN91q72ifKl3u77/sn0gvuKBQJXvNZSe2Rq7GgZLtwwW
	 LYgEQUrLw7FGgtoAuXehPkhXMnkvoXisdV/5HUGDQrYnsl48I45LTTtMQyh1nCSDUZ
	 8Gpt0nDmrF0Ug==
Date: Wed, 11 Oct 2023 16:53:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <20231011-conflict-monument-75379ef495cc@spud>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KEVs/b1oHkhND5Gc"
Content-Disposition: inline
In-Reply-To: <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>


--KEVs/b1oHkhND5Gc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> Add bindings for OmniVision OV64A40.
>=20
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> Signed-off-by: Lee Jackson <lee.jackson@arducam.com>

What does Lee's SoB indicate here?

> diff --git a/MAINTAINERS b/MAINTAINERS
> index b19995690904..df089d68b58c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15821,6 +15821,13 @@ S:	Maintained
>  T:	git git://linuxtv.org/media_tree.git
>  F:	drivers/media/i2c/ov5695.c
>=20
> +OMNIVISION OV64A40 SENSOR DRIVER
> +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +T:	git git://linuxtv.org/media_tree.git

Binding looks fine to me, my question is here. Usually having a tree
here means that you apply the patches yourself. Do you?

Cheers,
Conor.

> +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml
> +
>  OMNIVISION OV7670 SENSOR DRIVER
>  L:	linux-media@vger.kernel.org
>  S:	Orphan
> --
> 2.42.0
>=20

--KEVs/b1oHkhND5Gc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSbE/gAKCRB4tDGHoIJi
0pCWAP0ZcldETACJlOJa1TJiTQjumDEj5ycQxWyYzAR4ZxHDVQEAlV83HEEkg1Ln
dAnXq1t9Nfy0Yv5DsTwrabgY5E4l9QY=
=g8nS
-----END PGP SIGNATURE-----

--KEVs/b1oHkhND5Gc--

