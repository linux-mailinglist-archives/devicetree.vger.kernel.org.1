Return-Path: <devicetree+bounces-139101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 596F4A13FE1
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 17:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E14C4188DE74
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 16:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AFEE22CBC1;
	Thu, 16 Jan 2025 16:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="ZcegiDNC"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A4A137932
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 16:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737046415; cv=none; b=TjO2au73ZX578nB+ONJq+iNHiW40YiT8kd86HGw/ya5idmc8NIZYZOfHsM1z8kIjGrmbgQFlqcVci4issBlEyIIqn5K8CGeeVC6deC3SVlXGkK1EwajZVHHAJz/2rjjLEgCT9Tm4BK3aAr/4QMweM2/wPTtKfpuUQTC/bRl7yoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737046415; c=relaxed/simple;
	bh=+FtQ+v+Ac5Ex73LlIY7tp4a+OdKWlFeMOSYE2687Mfw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=I5q0cKcAelkG+6iPBrQ7ezBF0tZ/8eoqDwaHhDUL7X7csyST7xObXxtl7R3g62HkMqjoZ1mkOKY5N9nodUrpu+cZ1upPawpt03lQvwDTmcSnG1GV4aWARFnOEsKvx2IbxcOR2Aiu4vwEf5F+c9B2+iLEs4CIt2ZDuLi/UsNtPYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=ZcegiDNC; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1737046401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VUZ7MnJsj7NeVDjLs9yvbYfY4EoGMCRJRoWqd10xVsQ=;
	b=ZcegiDNCR82PPzNPxxqBZHckY4FDwRQimQDDvMq53gJzB2YY5uAEIOtIVzmA+ohPl5ugb9
	hjCKWIO9ZT8l8RwTdNnTt4CEJOXG4vKsT0ZU1jg/kMMsBcz93h2qNcrzxvyTp/soGKcH3p
	0Ygv5UrATiEHso1hQv6N7Ew1RlsmQOmSPKlc/mrsKbg4OoMKBTZkRL40mY1KoSD+GFnjQW
	WrgE0rhZhKdI5Cc4aNMvT5pFLxsgSobCKzp6ZdMz6ZkWUXJc8HMx7SLYRiBhmhYJLapGNe
	oyt3rHraZIVe3np7oGs/qifIe0deGQvUXDRkvAY27wxLdoa+TiIYj5V2dXq6iA==
Content-Type: multipart/signed;
 boundary=dc2cece6e426855b60c44a940fefa66ea21ee45d7e4e2aac396aefe0823a;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Thu, 16 Jan 2025 17:53:09 +0100
Message-Id: <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
Cc: <zyw@rock-chips.com>, <kever.yang@rock-chips.com>,
 <frank.wang@rock-chips.com>, <william.wu@rock-chips.com>,
 <wulf@rock-chips.com>, <linux-rockchip@lists.infradead.org>, "Alex Bee"
 <knaerzche@gmail.com>, "Conor Dooley" <conor+dt@kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Rob
 Herring" <robh@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy
 node
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Peter Geis"
 <pgwipeout@gmail.com>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
In-Reply-To: <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
X-Migadu-Flow: FLOW_OUT

--dc2cece6e426855b60c44a940fefa66ea21ee45d7e4e2aac396aefe0823a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
> On 15/01/2025 02:26, Peter Geis wrote:
> > Add the node for the rk3328 usb3 phy. This node provides a combined usb=
2
> > and usb3 phy which are permenantly tied to the dwc3 usb3 controller.
> >=20
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >=20
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 ++++++++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot=
/dts/rockchip/rk3328.dtsi
> > index 7d992c3c01ce..181a900d41f9 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -903,6 +903,43 @@ u2phy_host: host-port {
> >  		};
> >  	};
> > =20
> > +	usb3phy: usb3-phy@ff460000 {
> > +		compatible =3D "rockchip,rk3328-usb3phy";
> > +		reg =3D <0x0 0xff460000 0x0 0x10000>;
> > +		clocks =3D <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru P=
CLK_USB3PHY_PIPE>;
>
> Please wrap code according to coding style (checkpatch is not a coding
> style description, but only a tool), so at 80.

I'm confused: is it 80 or 100?

I always thought it was 80, but then I saw several patches/commits by
Dragan Simic which deliberately changed code to make use of 100.
Being fed up with my own confusion, I submitted a PR to=20
https://github.com/gregkh/kernel-coding-style/ which got accepted:
https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba=
368193180275c9c77a

So now both the vim plugins code and README say 100.
But as noted in my commit message:

  Note that the current upstream 'Linux kernel coding style' does NOT
  mention the 100 char limit, but only mentions the preferred max length
  of 80.

Or is it 100 for code, but 80 for DeviceTree files and bindings?

Cheers,
  Diederik

--dc2cece6e426855b60c44a940fefa66ea21ee45d7e4e2aac396aefe0823a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ4k5dwAKCRDXblvOeH7b
bs6ZAQDC5cSmOY8vwv+LO5NC9bkBYKcOKYrtHl4S8vkXgbG8KgEA41RKLH0XXVnk
A+Y9sm1+yNIIiOhDiV/T/WwdDscZdQE=
=MbwT
-----END PGP SIGNATURE-----

--dc2cece6e426855b60c44a940fefa66ea21ee45d7e4e2aac396aefe0823a--

