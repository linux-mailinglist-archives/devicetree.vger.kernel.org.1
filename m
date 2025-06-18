Return-Path: <devicetree+bounces-187094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A27AEADEB82
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:14:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D279C1619BB
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48D4B2C030D;
	Wed, 18 Jun 2025 12:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="WGEEuCPd"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787A7293C78
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248762; cv=none; b=Hy1r3FeNAWf8IlIH0uh7McN8j3/MGNfyxB5ZIE9n3GAnS2QPY6giKD4xpdfYecI/d41FKTOBl20Nap6ChaauWGmkE7Lk3P2xa9Efk+UqSKuaCU3asTJW8NPCYCcNzWkgY+ApXnUqAABPLW+j07cJpP87zEofNHp0VT37KaH+stI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248762; c=relaxed/simple;
	bh=zFk2egmf36IbeczadxJnUHDOOVO8nEoXhdsgsdwa/AU=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=qaz+e5VhC+48Fr2ZDOUqq84zNTOvAC4GjHYRrApW87p9qYFEAM6tZmb4r3NnEHUdQqkxAiKzjD3WQpTe2Q36389g5O+om+zMEQ62ABymvRGWOaV8iep5/fUajcuj2vMK4a6ShKwuAhw2PP0OAY81cc63BzJAgLtItWdsnC/IQYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=WGEEuCPd; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750248757;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+fwuhHs7pqnSyoIdYUQwG7qjgQ1CC6dPRZ/xpENoi6E=;
	b=WGEEuCPdsRaGDkWhC8iz9ZzBxfRVX6fRUXN35unrrg/RSzEOp5Y2YlPQz9Kw46epXq25Kt
	qKy9OYZjWc3RZI23h2IDLRL354jLZvmJTj80nLS+olZ86dFpaS+GGr0VJafCYbccXUFMNy
	tAnq4OBc+6/FaeJsHd82Q0oD8vtQZZXtTV/ld4ePnMAaE5eLqXIpMjjoy+SAfPJqAAyWDJ
	VkrAsh+MbnzD/LLEBxhJCBA5S2DT2iIbfyUNa03gpy4BRs7J8KBkvv/1Rvj4v+kkgZ7CjC
	06rcd5QPUk45Zffjom8mZLRe/1MTB/Qk76ZzDQ6ns50y9cRikT7plfCxpnw95w==
Content-Type: multipart/signed;
 boundary=d094255437ed180642212f2daf7bb7d49bbc773ab458e9a2480ab8cbe8f0;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 18 Jun 2025 14:12:13 +0200
Message-Id: <DAPNE849BAON.1DPGBKMHM552V@cknow.org>
To: "Olivier Benjamin" <olivier.benjamin@bootlin.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove unused property in
 PinePhone Pro MIPI panel
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250618-dtb_fixes-v1-0-e54797ad2eba@bootlin.com>
 <20250618-dtb_fixes-v1-3-e54797ad2eba@bootlin.com>
In-Reply-To: <20250618-dtb_fixes-v1-3-e54797ad2eba@bootlin.com>
X-Migadu-Flow: FLOW_OUT

--d094255437ed180642212f2daf7bb7d49bbc773ab458e9a2480ab8cbe8f0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed Jun 18, 2025 at 12:32 AM CEST, Olivier Benjamin wrote:
> The MIPI panel definition in the PinePhone Pro DTS includes a
> "pinctrl-names" property, which is unused in the absence of pinctrl-0.
>
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 5a7341fb6bcb0613af6f3ac31d99355a0f890e89..405140700208365c8631de86a=
2d7b6e577b7aa7f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -485,7 +485,6 @@ panel@0 {
>  		reset-gpios =3D <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;
>  		vcc-supply =3D <&vcc2v8_lcd>;
>  		iovcc-supply =3D <&vcc1v8_lcd>;
> -		pinctrl-names =3D "default";

Why not define a pinctrl for LCD1_RST for GPIO4_D1 and reference that in
pinctrl-0? (See page 11 and 16 of the schematics)

Cheers,
  Diederik
> =20
>  		port {
>  			mipi_in_panel: endpoint {


--d094255437ed180642212f2daf7bb7d49bbc773ab458e9a2480ab8cbe8f0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFKtJQAKCRDXblvOeH7b
birRAP9UF4IfSII2WRPdY7JTipjbLL5426U7AHmPMYj5ktK2igEAqMjf89ZjcYJi
y80+OTxY2ljkePaU/MPugTRVg3TTcgk=
=NOom
-----END PGP SIGNATURE-----

--d094255437ed180642212f2daf7bb7d49bbc773ab458e9a2480ab8cbe8f0--

