Return-Path: <devicetree+bounces-249689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE12DCDE0AA
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB94330056ED
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231EF27FD5D;
	Thu, 25 Dec 2025 18:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iMAyxaJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494E61B0439
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766688577; cv=none; b=uQK3e2jA0vwFd0M4HkACYluMH9hIGPRgnX1E0+Pi+69IDdaB9xR3swvNQroi0OQFlPGFQWenxjSXwpbaztwuFlJyc6xmdsmxzqOwU8xFSHmNU+tqRYGWB9ZvngF2j0vl6hrBNrlhymHM66QZuuezkr+jZ74tAk4l4puWC1k+U+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766688577; c=relaxed/simple;
	bh=/GLmmBp5IxXzJeH6mbbMRLZztQZUxgTxdEss9ySj2+4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bYjF/y2whdIPvtK+oGz2CIy7gNuUsIlxII7qpIj2QFT1eQ4zNOL/GHwDmWYqRo6xdqeY9QImNh4X33YfjB6VSI8yuDr5GdiIfNxTUbLZYusv0PxdwBILtp8R8GtHQHhOc6BH4y8zRt68+eu2ZFuV9WqrnPE40v0wgDFcjLeIAYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iMAyxaJg; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b736d883ac4so1162565966b.2
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766688573; x=1767293373; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lwi/wOL9435JfspVqwNHJS0rgXD9DXGNHXUGNZoo1YM=;
        b=iMAyxaJg0onJpjLCnCTpuw1FCQoUxmZx/LQVA1tv+EGqo89Czx2RG/3VzNe8bW95G9
         /dmDchU1xgr7xNYUwmhey/tLgqvJ49nDl6zw+99/TX/SQ7bh+9wPrxR9Uvmp0Rbs/EeH
         OisrrM1dAXHEh7hDDd0/qwWJz4rcqW1A1WKTRScnfAoszrJYfVoaGWrg9NJyGneb0KFl
         yF+AY74BVPV7zBJYFLf1aXusBaWRR3+Ve8j9Cr5xkWm4RpWDjHvwC7gGpSw78trwm+2S
         xchQsAZ6EN60COOB6Hfv8VlsbZKx12OIccwjQhfPwQP2rG5gl8kNfWdbYXBelF/WT+Pu
         K9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766688573; x=1767293373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lwi/wOL9435JfspVqwNHJS0rgXD9DXGNHXUGNZoo1YM=;
        b=OTJkSFBQf1zX5S+X+JUk0G525GR/rxjW6iSlniJ/8WCZVBORUBpM5t4p5zxt4GtyEh
         JtOHUqLeFNn4KCOeIvbut+T1UzGa7GqAfomEpLjRSracRtuBVjamvOpPW97gpaNhf1Je
         kbRj99Y1cYlTEzjYaqZurd0Mbur8ouEU/Yz0EcEjemR+P2MdnXuQu17myIb2h87nDyrN
         JrWt3UWjBHY8aYbhbVEv4PxgpTBz+nwtUV8ls3oyr7azcRRTLn4r7y6P9HuZyAyiV5Jh
         XEmQywcPLaHcTITAQd9hECa/tWqNGRJkhkrc87CITgIZMedwQUv+foxqc+tlJdKGqXgX
         Dy/w==
X-Gm-Message-State: AOJu0YyrnRA4w7DKd9SW2+ID4AfdrLUIGBgdBW6Q/wdGhzQOVu/cIxoe
	5QLQJKegBZIqtYf2sS15ZoJRsKj8BY4mV1IGLlD38RJWnW3OtYR0swim
X-Gm-Gg: AY/fxX5WwpGgLJ6yEImzx4A53xY4B93UTLZsA/5fIXIr1qR0yX5YccLOkW7m9dPjp9G
	F/JqNzyXWEitYl5qVLdtk0w1YigPiANrUdIcr5jVfAcDQGds/Ci2asFk1ZI6Z9d5kf0b1jHonX3
	CRlgwG4Ipaa64IWszgDD1yP1/py4rjcD3GZcxNKSU9bL7vFmbSGDjJ+xEjum5QZE9sOakI/8Osp
	CcufgqAHQ3Lp4y4VEO2kiEnW/XP3c/MnmktF15p6EPUUwNahZVE8D7iDCQhwTjQR8rSZ5pw+r1z
	yeCcUe/7BbLOID9ML8st0iQ+EIyxfTUv0R7NHTECOuw76xp6EdCflkbkFxFrIXh7k0M25EcScPZ
	J5d/tdO/2VtlHjtlg1feV58Gvv395u4uLrpEUoXsIdVlFSgip3Y5gDnv75Wl/5mnOFZ5wk+2u6F
	kvv0w+Yss+/LlALOCvg4F79W30KDolR9zz2lRPbvojqfw=
X-Google-Smtp-Source: AGHT+IHGj4ugPVsyxVEKdshMmhjzljqKZD5JHwjw22tMZO+csxcebOAuFJVgXAVvGwk2iqbs87W2hA==
X-Received: by 2002:a17:907:d8a:b0:b73:a2ce:540f with SMTP id a640c23a62f3a-b8036f55069mr2086910366b.17.1766688572432;
        Thu, 25 Dec 2025 10:49:32 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a614b7sm2164305466b.1.2025.12.25.10.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 10:49:32 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Linus Walleij <linusw@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-gpio@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 4/4] ARM: dts: allwinner: Replace status "failed" with "fail"
Date: Thu, 25 Dec 2025 19:49:30 +0100
Message-ID: <13929653.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <20251225103616.3203473-5-wens@kernel.org>
References:
 <20251225103616.3203473-1-wens@kernel.org>
 <20251225103616.3203473-5-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 25. december 2025 ob 11:36:15 Srednjeevropski standardni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> The device tree bindings specify using "fail", not "failed".
>=20
> Fix up all the ones that are wrong.

While patch indeed fixes the issue, I wonder if "fail" is proper value?
According to specs, it means that device needs repair. What about just
keep "disabled"?

Best regards,
Jernej

>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> ---
>  arch/arm/boot/dts/allwinner/sun4i-a10-dserve-dsrv9703c.dts | 2 +-
>  arch/arm/boot/dts/allwinner/sun4i-a10-pov-protab2-ips9.dts | 2 +-
>  arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts      | 2 +-
>  arch/arm/boot/dts/allwinner/sun6i-a31s-primo81.dts         | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/sun4i-a10-dserve-dsrv9703c.dts b=
/arch/arm/boot/dts/allwinner/sun4i-a10-dserve-dsrv9703c.dts
> index 63e77c05bfda..f2413ba6a858 100644
> --- a/arch/arm/boot/dts/allwinner/sun4i-a10-dserve-dsrv9703c.dts
> +++ b/arch/arm/boot/dts/allwinner/sun4i-a10-dserve-dsrv9703c.dts
> @@ -112,7 +112,7 @@ axp209: pmic@34 {
> =20
>  &i2c1 {
>  	/* pull-ups and devices require AXP209 LDO3 */
> -	status =3D "failed";
> +	status =3D "fail";
>  };
> =20
>  &i2c2 {
> diff --git a/arch/arm/boot/dts/allwinner/sun4i-a10-pov-protab2-ips9.dts b=
/arch/arm/boot/dts/allwinner/sun4i-a10-pov-protab2-ips9.dts
> index c32596947647..e0c7099015da 100644
> --- a/arch/arm/boot/dts/allwinner/sun4i-a10-pov-protab2-ips9.dts
> +++ b/arch/arm/boot/dts/allwinner/sun4i-a10-pov-protab2-ips9.dts
> @@ -96,7 +96,7 @@ axp209: pmic@34 {
> =20
>  &i2c1 {
>  	/* pull-ups and devices require AXP209 LDO3 */
> -	status =3D "failed";
> +	status =3D "fail";
>  };
> =20
>  &i2c2 {
> diff --git a/arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts b/arch=
/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts
> index 5bce7a32651e..5dfd36e3a49d 100644
> --- a/arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts
> +++ b/arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts
> @@ -170,7 +170,7 @@ hdmi_out_con: endpoint {
> =20
>  &i2c0 {
>  	/* pull-ups and devices require AXP221 DLDO3 */
> -	status =3D "failed";
> +	status =3D "fail";
>  };
> =20
>  &i2c1 {
> diff --git a/arch/arm/boot/dts/allwinner/sun6i-a31s-primo81.dts b/arch/ar=
m/boot/dts/allwinner/sun6i-a31s-primo81.dts
> index b32b70ada7fd..fefd887fbc39 100644
> --- a/arch/arm/boot/dts/allwinner/sun6i-a31s-primo81.dts
> +++ b/arch/arm/boot/dts/allwinner/sun6i-a31s-primo81.dts
> @@ -90,7 +90,7 @@ hdmi_out_con: endpoint {
> =20
>  &i2c0 {
>  	/* pull-ups and device VDDIO use AXP221 DLDO3 */
> -	status =3D "failed";
> +	status =3D "fail";
>  };
> =20
>  &i2c1 {
>=20





