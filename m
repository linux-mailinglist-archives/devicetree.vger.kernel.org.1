Return-Path: <devicetree+bounces-139473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D2DA15DD7
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 16:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A216B3A755D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D947A19CC27;
	Sat, 18 Jan 2025 15:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="L/1Xm9eg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C019CC11
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 15:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737215747; cv=none; b=G32QDwXAN667hW61fgmwmZ/jTb0L+zuK2TY5JjHgnrCyP3EE8H/mTKX9BZ00sO8Vkqsug63wGhcifr3uwjVC2vbzFZEJvdT+2yo8nf4k5dNwRPyl06cXreHLImuqKAXz4DJ1rWLoiELkmjEVr2eiRHVN8I+q4fHdplzp1c5VVmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737215747; c=relaxed/simple;
	bh=IM6q5pyRRV+FnRwtv1TllceT9WnLqlyhER3cxDPxdp0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=LJpVhvpc612bh/5xmC+BUH5cOQYlNKprfueFE/pdvbf8/QWQ4XTgQLWpvhxCStJjPxbBU82ojjr96/lVxzJgj5VkdV6zUNT8xtlG0dMINwSsym6Re90eNsldBKYJ+6C1jZFYz2vuoV1+GkfC5WquS7JTJiMF3GHnXgUKW51gCz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=L/1Xm9eg; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1737215727;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3SxSP1pnDMPIAoFIbshAZCGR8/UyRzjoHfDVHXlLyvY=;
	b=L/1Xm9egYr9PWZJ8WNXlWGe091lYawTGRrX9Re0P+m3/1ksKE/GrGDHERjcoVL0ARhx2rl
	XYlItLGkfLZcct1JjV6diAzC8kpYoWmXCgLnJCb2julfufpPehrw/30mQK1m6ZiaocLVyf
	k69cfX6Ad7fp4TRUvlnn6jaaDqkWeBPNin8V4o0wfuA5e5l4ugvYf5dmuLTO+oLeCEOvba
	yzK6BhUnQ9a6qIzNKwOi9mBYxwTlk63lQ72pB7sjdJEVCfhwmT6gZTzNjiqrV7PhlM38fg
	dHTy0+Nu5cLuYjhOXMRAyux4PBWlSWuIIf2P1y8MuAK4xi6xhY0p6U9Dd9RM7w==
Content-Type: multipart/signed;
 boundary=6d73a8a051e9f14d4259504ef5c03823cc0e8aa06a923c553c99f8c21a2d;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Sat, 18 Jan 2025 16:55:24 +0100
Message-Id: <D75BKUFGD6OE.1767NEFXCRJEJ@cknow.org>
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
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <e1097f84-e40f-45ff-8b8d-125f7159ec1e@kernel.org>
In-Reply-To: <e1097f84-e40f-45ff-8b8d-125f7159ec1e@kernel.org>
X-Migadu-Flow: FLOW_OUT

--6d73a8a051e9f14d4259504ef5c03823cc0e8aa06a923c553c99f8c21a2d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Jan 18, 2025 at 9:41 AM CET, Krzysztof Kozlowski wrote:
> On 16/01/2025 17:53, Diederik de Haas wrote:
> > On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
> >> On 15/01/2025 02:26, Peter Geis wrote:
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/bo=
ot/dts/rockchip/rk3328.dtsi
> >>> index 7d992c3c01ce..181a900d41f9 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >>> @@ -903,6 +903,43 @@ u2phy_host: host-port {
> >>>  		};
> >>>  	};
> >>> =20
> >>> +	usb3phy: usb3-phy@ff460000 {
> >>> +		compatible =3D "rockchip,rk3328-usb3phy";
> >>> +		reg =3D <0x0 0xff460000 0x0 0x10000>;
> >>> +		clocks =3D <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru=
 PCLK_USB3PHY_PIPE>;
> >>
> >> Please wrap code according to coding style (checkpatch is not a coding
> >> style description, but only a tool), so at 80.
> >=20
> > I'm confused: is it 80 or 100?
> >=20
> > I always thought it was 80, but then I saw several patches/commits by
>
> Coding style is clear: it is 80. It also has caveat about code
> readability and several maintainers have their own preference.
>
> > Dragan Simic which deliberately changed code to make use of 100.
> > Being fed up with my own confusion, I submitted a PR to=20
> > https://github.com/gregkh/kernel-coding-style/ which got accepted:
> > https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0e=
feba368193180275c9c77a
>
> That's not kernel. That's Greg...

FWIW: what Greg and Linus think/say is relevant to me.

> > So now both the vim plugins code and README say 100.
> > But as noted in my commit message:
> >=20
> >   Note that the current upstream 'Linux kernel coding style' does NOT
> >   mention the 100 char limit, but only mentions the preferred max lengt=
h
> >   of 80.
> >=20
> > Or is it 100 for code, but 80 for DeviceTree files and bindings?
>
> From where did you get 100? Checkpatch, right? Kernel coding style is
> clear, there is no discussion, no mentioning 100:
>
> "The preferred limit on the length of a single line is 80 columns. "
>
> So to be clear: all DTS, all DT bindings, all code maintained by me and
> some maintainers follows above (and further - there is caveat)
> instruction from coding style. Some maintainers follow other rules and
> that's fine.

But indeed, before Greg or Linus (likely) see it, a patch submitter
needs to convince the (subsystem) maintainer that it is an improvement.

Thanks for the clarification :-)

Cheers,
  Diederik

--6d73a8a051e9f14d4259504ef5c03823cc0e8aa06a923c553c99f8c21a2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ4vO7gAKCRDXblvOeH7b
bhJSAQDzQOoaAvVda2tvd6s9eC9C9EQKEPJB1f7eTLzoCShz1gEAkguNRpCnf6P/
QgF8sA7HBoXoKL5WcCid45Rzf1yYAwk=
=NPUv
-----END PGP SIGNATURE-----

--6d73a8a051e9f14d4259504ef5c03823cc0e8aa06a923c553c99f8c21a2d--

