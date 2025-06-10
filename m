Return-Path: <devicetree+bounces-184241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE06AD35FE
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E34593A4EAB
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8A828DF4E;
	Tue, 10 Jun 2025 12:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="MEQgziFX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E50D28FFDD
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749558042; cv=none; b=e2EXwcVplkvtc5RW1Amy2RrBDaj2/TU80iUO2KIi0NNnjdBSI6lztRRFVCn0JlllPL+UEFPpNM7m/DEMkpO8wm30a+p5mhk4LviqecwmZy8eaNZDQ9xsuiGXHiNH2lQco4Cbc2tJcbCqz/a+WOiUFiWjmIiRAwdRxSm/MOmniyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749558042; c=relaxed/simple;
	bh=f0JUTCHk85Zu0CSqMUExpWZ7n4+hrbzlLAUUzoK5/OY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:
	 References:In-Reply-To; b=AgyuBWaW1otcRzUwV3Fl0YEpG/euK8FTC0u2PcK03VqIq7nCpuFfHXEQAtC2rV40NXh7CGSnErtdMO/8aaVeeEIYxVvZjEYG1yGgE3Jfg8IyUJjn3NaWATnFVgYBG97Gmgwd1SVwXKwzoGbDnMnw7oXUfCn6Z7dMkZRoCmkBEZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=MEQgziFX; arc=none smtp.client-ip=95.215.58.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749558038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8gK2SwvVpB0iJPc79lktbOi60vhhEtYSC0FV683UEdM=;
	b=MEQgziFX2kglVeu7ANROwKONEqK31HGcNB4WqQ1yJavHnCWNzadDg6T9lt3JrK4q7HnlLV
	OTY2zEh1JoaLjJt2yeuTyPXSQFREz0OBiVPGvClJHqfKZ/HuSZWalW1yYqRvHiEINDQhi+
	aDsvLMtS8J4VwlPDmKPYD7nhbpq2az3RFC/NlX1Ky+Pec+X87Hek/jH33YwTphKP8ztIqq
	n4mqaI45JbJUTOLaggoxvBZgH8TJT48VITX0V97exxBCctpaNp7rp3/vY/iQgr4JPdcrSl
	kEOPbTiMOlHWMham3KM+YZ8RtpyhH2Gk8CRDxjc03IiZjIog6ZHHd9h/EFNotQ==
Content-Type: multipart/signed;
 boundary=25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 10 Jun 2025 14:20:00 +0200
Message-Id: <DAIUJTK7T4P4.29G3ADVPS0NWG@cknow.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64
 screen
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Diederik de Haas" <didi.debian@cknow.org>, "Peter Robinson"
 <pbrobinson@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Peter Geis" <pgwipeout@gmail.com>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
 <20250518215944.178582-2-pbrobinson@gmail.com>
 <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
In-Reply-To: <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
X-Migadu-Flow: FLOW_OUT

--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jun 10, 2025 at 1:33 PM CEST, Diederik de Haas wrote:
> On Sun May 18, 2025 at 11:59 PM CEST, Peter Robinson wrote:
>> The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a=
30d
>> panel with a Goodix gt911 touch screen. Add a device tree overlay to
>> allow the display to be easily used on the device.
>> ...
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
>>  .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
>>  2 files changed, 98 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen=
.dtso
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts=
/rockchip/Makefile
>> index 3e8771ef69ba1..c7b13bff3ac20 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4c.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-v2.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtso
>
> ``s/rk3399-rockpro64-screen.dtso/rk3399-rockpro64-screen.dtbo``

nvm, it was already correctly applied by Heiko.

> Cheers,
>   Diederik
>
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire-excavator.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-pi-n10.dtb
>> @@ -209,6 +210,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou=
-haikou-video-demo.dtb
>>  rk3399-puma-haikou-haikou-video-demo-dtbs :=3D rk3399-puma-haikou.dtb \
>>  	rk3399-puma-haikou-video-demo.dtbo
>> =20
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
>> +rk3399-rockpro64-screen-dtbs :=3D rk3399-rockpro64.dtb \
>> +	rk3399-rockpro64-screen.dtbo
>> +
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
>> +rk3399-rockpro64-v2-screen-dtbs :=3D rk3399-rockpro64-v2.dtb \
>> +	rk3399-rockpro64-screen.dtbo
>> +
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-wolfvision-pf5-vz-2-uhd.dtb
>>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs :=3D rk3568-wolfvision-pf5.dtb \
>>  	rk3568-wolfvision-pf5-display-vz.dtbo \
>> <snip>


--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEgjDAAKCRDXblvOeH7b
bsRUAP9XR9PtWm858vBGa90HrSmYJ/WeviycqMnzM+r8WvPOpQEAzd4rmOMsaI/O
/ufPoni2PgpXh+vcJekght8agtKniQ8=
=fLEb
-----END PGP SIGNATURE-----

--25c824350af353d1b2d73749738e31465e8af16df69736d7a0df7feb6d52--

