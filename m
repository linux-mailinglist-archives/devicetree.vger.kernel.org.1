Return-Path: <devicetree+bounces-236999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF82EC4B9A0
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5014F3B7F8A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7ED299A87;
	Tue, 11 Nov 2025 06:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="gi2vh2zM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBC1299A84
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 06:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762841085; cv=none; b=d8AczkUFLwWLIU5wCKN3+bdK2t09hJi4NVHUvo4RcQBfUDjw6di96nEAYJrACqn41mpOctb199dTBFF9W3Z+WVfUoaW9UYWg6TQ3PI1rpEkxN+V/zn1jJ06b9ADSgTScVZGCqkTRv5sVxz6lPrqWuz1ncNoWttK9PnDuAVitWNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762841085; c=relaxed/simple;
	bh=2L8OdzSRMCDoPIS8HLzojViuGyhBmUN+vkAb3mtaA1s=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=I3Y5Ir+F5GfRsuGjxMaz5WFNXL9ztZKpTAx0LVVLRZdD8IRvFqUC1dx+Xcm/iIivbP35onW78FfMmhqOAJZFTenFJ+igt83w4gnnMOkJP05oHFuNGQv9W97s2hqfRJPE85CrlbinyJ6WOGzHkdWKu0pXSGl5QVM12GXL5Wgm4rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=gi2vh2zM; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5B3BE40EC0;
	Tue, 11 Nov 2025 07:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762841079; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=tFnWnYNonntnPyhOj8VV3+YkmvkZgjwIN8ZPTLl1dsw=;
	b=gi2vh2zMks4g7JyO64IYCVBSn6oOhYDKqLDX/qUGie4S0xnBHA96bS6SYn8dIRuNz12SUY
	ZVjYUiO657B+cY3NWhd7qXD3tcX84KCJ1iK6zpHn5iB//lA+2/MLCls8pe5zq2WEWk31Zj
	B06alFTRveR3g1hZr+MEQKewNhoQqEhPWo8tZZQQykq7DP0LrvDvl1RDvBrrsYF6TJMdhZ
	9QKBKzIvoMCvvYH37ndJTND4/bvolrgZNoK/10XiayFHQogBBnvmNRkf+iuMqEoocu8+0x
	W9KTJg1UcxkEZV6xpuiNc9qyqVqBDcJPKjUMduKBSmcf0GHKo15vmVwUjTOfqw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111054112.55505-1-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111054112.55505-1-naoki@radxa.com>
Date: Tue, 11 Nov 2025 07:04:33 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <959ed84f-f1bc-4606-4272-dcd7d853e86a@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

Thanks for the v2.  Please, see a couple of remarks below.

On Tuesday, November 11, 2025 06:41 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> Radxa's boards turn all LEDs on at boot(loader), but some boards don'=
t

s/Radxa's/Radxa/ -- because those are boards made by Radxa, not some
boards belonging to Radxa;  if it were specifically about the board
designs, the possessive form would be fine, for example

> have `default-state` property in Linux kernel tree but have it in
> U-Boot tree instead[1].
>=20
> This patch adds `default-state =3D "on"` for (almost) all LEDs (with =
a
> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> WAN LEDs on E20C/E52C).
>=20
> Also, remove following redundant properties:
>  linux,default-trigger =3D "default-on"; // use default-state =3D "on=
"
>  default-state =3D "off"; // default is "off"
>=20
> [1]
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3328-rock-pi-e-base-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3399-rock-4c-plus-u-boot.dtsi#L11-17
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3399-rock-pi-4-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3566-radxa-cm3-io-u-boot.dtsi#L10-12
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3566-rock-3c-u-boot.dtsi#L14-16
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3568-radxa-e25-u-boot.dtsi#L7-24
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3568-rock-3a-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3588-rock-5b-u-boot.dtsi#L11-13
>  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk=
3588s-rock-5a-u-boot.dtsi#L10-12

Hmm, this particularly complex reference presents us with a somewhat
interesting literary challenge. :)  There should be only one URL per
reference, so one way to resolve this would be to reword the opening
paragraph like this:

  Radxa boards are intended to turn all their LEDs on at boot time,
  as part of the intended visual feedback to the end users, but some
  boards don't have the associated "default-state" LED properties
  defined in the Linux kernel, yet they have them defined in U-Boot.
  This includes ROCK Pi E, [1] ROCK 4C+, [2] ROCK Pi 4, [3] CM3, [4]
  ROCK 3C, [5] E25, [6] ROCK 3A, [7] ROCK 5B, [8] and ROCK 5A. [9]

  [1] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3328-rock-pi-e-base-u-boot.dtsi#L10-12
  [2] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3399-rock-4c-plus-u-boot.dtsi#L11-17
  [3] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3399-rock-pi-4-u-boot.dtsi#L11-13
  [4] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3566-radxa-cm3-io-u-boot.dtsi#L10-12
  [5] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3566-rock-3c-u-boot.dtsi#L14-16
  [6] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3568-radxa-e25-u-boot.dtsi#L7-24
  [7] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3568-rock-3a-u-boot.dtsi#L11-13
  [8] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3588-rock-5b-u-boot.dtsi#L11-13
  [9] https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts=
/rk3588s-rock-5a-u-boot.dtsi#L10-12

Of course, it would also make sense to order the list of boards and
the associated references alphabetically, which would make the list
more readable and is left as an exercise. :)

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Add more URLs for reference
> - Reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>  16 files changed, 16 insertions(+), 10 deletions(-)


