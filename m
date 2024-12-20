Return-Path: <devicetree+bounces-133130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 684359F9514
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5EFB16AB2C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74857218AC0;
	Fri, 20 Dec 2024 15:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="k4BoEQlh"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DF32594BB
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 15:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734707356; cv=none; b=dMFxAAXtl13CU44ADEZ9xa+civygp8tXQ7wFNcJ5zft2JIuE9JvOY1B5mFvvI1rk52RhU0WTPKdrDzLoNkyq5MtKSYLFP6SXCHJPZVpJ/C6bRciM5xis/Z9QvttKnePVzXZ5iWPhqmn+nIrTJ4Q8bwlUsaJuDyhhAM+fC7L1R+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734707356; c=relaxed/simple;
	bh=VPkXPXHiUjWPHnf4RuyR/bvu93hQxQLr3qWgiDme6ug=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=rz2Z/5VysntJGTxUYvznlo6DfKe0eiSgFvfKOUrv9Th/apeu6DSW+adjkq8uYq7pEimepqXLUUsDzCMGlFL7Rlh3GZ5CzuFJAyGYEhPiWmAF0oRZLcOgezJLET3s9UBchTO17czlop88Cnbnd+Ip575ZelR99mAKGER7dlvzaFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=k4BoEQlh; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734707351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gm44ygNWKYGV3y3H0K5cP9+tVucODkBUA9S2/w7YdGY=;
	b=k4BoEQlhF80JQvT9EVpsHHjC3QnjsslMmbUrZCINO1D/ViREoOPDIXdDwFlQWpvl8TXAr4
	hnbAW+Q76wFQwcxFDE4cAHH410sLSpomHPQMrkrnX9x7UsFPralB9PTiSt5GXQQOWu720k
	GHgOPSVRwzHD59jKadxldU9LjsjTqW3XuaiqKT36PcWqkMKF6+/775Q9N7KTe4EGRHSiSR
	o4qsvetBgAHiuwUkYDU+2V5iDyUW/xIrreW71DnJFPIuORMc8r9ARntJ801enlJeTHFpMK
	Qp4xCa1UBu4+utcjzsoD4Rr9A3bnzWi0ImeVwejSf3dTJpNG1bVqLCrNa9zW7Q==
Content-Type: multipart/signed;
 boundary=ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 20 Dec 2024 16:08:54 +0100
Message-Id: <D6GMFFSALGMQ.3GQ1PUD6L2TV8@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Conor Dooley"
 <conor.dooley@microchip.com>, <devicetree@vger.kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Chris Morgan" <macromorgan@hotmail.com>, "Rob
 Herring" <robh@kernel.org>, "Dragan Simic" <dsimic@manjaro.org>, "Jonas
 Karlman" <jonas@kwiboo.se>, <linux-kernel@vger.kernel.org>, "Tim Lunn"
 <tim@feathertop.org>, <linux-arm-kernel@lists.infradead.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Jianfeng Liu"
 <liujianfeng1994@gmail.com>, "Andy Yan" <andyshrk@163.com>
Subject: Re: [PATCH v2 5/7] dt-bindings: arm: rockchip: Sort for rk3568 evb
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Kever Yang" <kever.yang@rock-chips.com>, <heiko@sntech.de>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
 <20241220101551.3505917-6-kever.yang@rock-chips.com>
In-Reply-To: <20241220101551.3505917-6-kever.yang@rock-chips.com>
X-Migadu-Flow: FLOW_OUT

--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Kever,

On Fri Dec 20, 2024 at 11:15 AM CET, Kever Yang wrote:
> The info for rk3568 should before rk3588.

Indeed, so thanks for this patch.

> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>
> Changes in v2:
> - collect acked-by tag
>
>  .../devicetree/bindings/arm/rockchip.yaml     | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..45ee4bf7c80c 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1006,6 +1006,16 @@ properties:
>            - const: rockchip,rk3399-sapphire-excavator
>            - const: rockchip,rk3399
> =20
> +      - description: Rockchip RK3566 BOX Evaluation Demo board
> +        items:
> +          - const: rockchip,rk3566-box-demo
> +          - const: rockchip,rk3566
> +
> +      - description: Rockchip RK3568 Evaluation board
> +        items:
> +          - const: rockchip,rk3568-evb1-v10
> +          - const: rockchip,rk3568
> +
>        - description: Rockchip RK3588 Evaluation board
>          items:
>            - const: rockchip,rk3588-evb1-v10
> @@ -1099,16 +1109,6 @@ properties:
>            - const: zkmagic,a95x-z2
>            - const: rockchip,rk3318
> =20
> -      - description: Rockchip RK3566 BOX Evaluation Demo board
> -        items:
> -          - const: rockchip,rk3566-box-demo
> -          - const: rockchip,rk3566
> -
> -      - description: Rockchip RK3568 Evaluation board
> -        items:
> -          - const: rockchip,rk3568-evb1-v10
> -          - const: rockchip,rk3568
> -

While you're fixing the sorting order of these 2 Rockchip items, it
would be great if "Sinovoip RK3308 Banana Pi P2 Pro", "Sinovoip RK3568
Banana Pi R2 Pro" and "Sonoff iHost Smart Home Hub" could also be moved
into their correctly sorted position. A quick scan seems to indicate
that all the other items are properly sorted.

Cheers,
  Diederik

>        - description: Sinovoip RK3308 Banana Pi P2 Pro
>          items:
>            - const: sinovoip,rk3308-bpi-p2pro


--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2WIiwAKCRDXblvOeH7b
bqZ5APwIJeBqivJAoI+z5FAYCygHTE4cPqOTLgVXZsDKbn+9CAD/a4R1bix8rmQU
e0oW+cSo6l5s0PpVOtlvPgfgKc/bbA4=
=P0sf
-----END PGP SIGNATURE-----

--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903--

