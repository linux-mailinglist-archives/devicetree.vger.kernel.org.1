Return-Path: <devicetree+bounces-238444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3233C5B459
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:10:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B1AF24E2380
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52BCA27CCE0;
	Fri, 14 Nov 2025 04:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="F301Ejx3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45603279903
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763093444; cv=none; b=sDLyOQF6P5xzCsVdeqzhl8TPXJj3Y4jyerbyzIcv8dUoJGbt8dP4cLdkOWCtc0dHCabHOVS4YyUcpSxiCiGH+F9BAWoutqXhLOl7w29c6O3wi0xzaqRsDSHPuSVH7tIf8fesDbvSgwu7iZKPVrj+6qVLCtBg1sBgr4uTbnu1/IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763093444; c=relaxed/simple;
	bh=epF1axNkHkqEGK2SaM621qI7VHXTII9XldPJAz9UXDM=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=EWk5aTSv7N+obCbGXaxqUoTL/9Eyw1zQkRB21QhjELJ3Un+GgHL0HZyJFi4Q3/EP6KwQV2YJCv0GUlNBGaSiLoHNE03u1/OrIkNmFA3qY/2c/TeVD572iYICEKyLWl2aGSfuvr9/dZiOUuRTmz+HJbOUtE3WGZ3M5/ADC0LHEOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=F301Ejx3; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 07B2941093;
	Fri, 14 Nov 2025 05:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763093438; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1FakEweQCQyM9Tjxo+3tsuswoEc076aZkD9QxAe9WpA=;
	b=F301Ejx3a5rBH3Uz09pZBNwUZ1USu+YNDyml+v+34dX6LgK2JH1RJ7IqdsaqaOKaRUqXzR
	Kv5DBiswjB2whTp/7HR7rcfGM8gK9gQ0jm/P05xxy+nBEPuM8wYB1zmWUbg/uDtri0tObI
	5qn62hg5LBl+1QWNCd2sFl0ajhOZMtA866VxtKBoz64HjDcF8mHzcWbiflp7u+0gmCRtv4
	H2J4tkC2Ef3drMo727VfnBRc/zUVMgWvTwOldeLcrsoRlp2x9OMroF2aRl2SrmjrLwizHY
	KiVq4RxLMU+H3cesnVpLfjxcVtCDZVr7HTRqFiyC8HCO7kO/h6Q0qOGkApgsGA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-3-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-3-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:10:32 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, "Quentin Schulz" <quentin.schulz@cherry.de>
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <7d200139-3da1-9d0d-6a30-5791e56b429b@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 2/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn on heartbeat LED at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

(+ Quentin)

On Thursday, November 13, 2025 13:42 CET, FUKAUMI Naoki <naoki@radxa.co=
m> wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED an=
d
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
>=20
> However, the device tree description for this behavior is inconsisten=
t
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).
>=20
> This patch addresses the description fragmentation for the heartbeat
> LED by consolidating its default-state =3D "on" definition from the
> U-Boot files into the main Linux DTS.
>=20
> - Radxa CM3 IO board
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3566-radxa-cm3-io-u-boot.dtsi#L10-12
>=20
> - Radxa CM3I
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3568-radxa-e25-u-boot.dtsi#L7-24
>=20
> - Radxa ROCK 3A
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3568-rock-3a-u-boot.dtsi#L11-13
>=20
> - Radxa ROCK 3C
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3566-rock-3c-u-boot.dtsi#L14-16
>=20
> - Radxa ROCK 4C+
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3399-rock-4c-plus-u-boot.dtsi#L11-17
>=20
> - Radxa ROCK 4D
>   (New)
>=20
> - Radxa ROCK 4SE
>   Radxa ROCK Pi 4A/A+/B/B+/C
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3399-rock-pi-4-u-boot.dtsi#L11-13
>=20
> - Radxa ROCK 5A
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3588s-rock-5a-u-boot.dtsi#L10-12
>=20
> - Radxa ROCK 5B
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3588-rock-5b-u-boot.dtsi#L11-13
>=20
> - Radxa ROCK 5B+/5T
>   (New)
>=20
> - Radxa ROCK Pi E
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/r=
k3328-rock-pi-e-base-u-boot.dtsi#L10-12
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 1 +
>  11 files changed, 11 insertions(+)

[snip]

I'm sorry, but I disagree with the employed approach.  As already
discussed at length in the v2 of this series, the right and more
useful approach would be to use the LED=5FBOOT feature in U-Boot and
to move the associated DT definitions from the U-Boot-specific DTs
to the Linux kernel's DTs.

IIUC, there are still some issues with the way U-Boot handles the
LEDs on some Radxa boards that way, [2] but the right approach would
be to get the DT changes implemented now, and resolve the issues
at the U-Boot side afterwards.  It will take a while anyway until
the kernel's DT changes reach U-Boot, so there should be plenty of
time to resolve the observed U-Boot issues.

[1] https://lore.kernel.org/linux-rockchip/20251111054112.55505-1-naoki=
@radxa.com/T/#u
[2] https://libera.catirclogs.org/linux-rockchip/2025-11-13#1763038074-=
1763038779;


