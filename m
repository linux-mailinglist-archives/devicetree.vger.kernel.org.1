Return-Path: <devicetree+bounces-236995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4D3C4B8DA
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3DBF3B1530
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C42E2874ED;
	Tue, 11 Nov 2025 05:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="nEwfy34X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E1E2C0F67
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762839518; cv=none; b=BV9nvgKKKzBpc6aq6r6onkhjFSZGl4760bvm213i9yEGV+sUWS0GrCg+EMwR8Gn/CiRgU0qhNFs0IAO/yWazQF3XtnLbuyVNViowhAGeCFxsj2ot6RBF7W1VeTzpQrQaOc3sLrJz6juLeW6mAhxeinfp0N6M5wMjmoFGa8dj7Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762839518; c=relaxed/simple;
	bh=RNSTiLNIaHMlg7Ya/0qb29+GDxElEFuhDiLB26st7VI=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=LLFrCP+RoKsyjfmIlZg67V6skCDCC3wU3UCfuMPegfSo0UElGq2pjYNskqHglf9pf7huZbf07cAPPo8ApJaX085+dpMvdtxKO/rtn0co3GdH/Y+Q9p+XfWsYmdcgozsL0+DMeg9r7Y9Fk7Qnu/G6fwcb6mPWGh+6SYeaFFw4VKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=nEwfy34X; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id B476B41031;
	Tue, 11 Nov 2025 06:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839514; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Sh+zGugTaQu4fEYhd2YCRoL/l8/rF3Awiro9HJ/Zy+c=;
	b=nEwfy34XKA3FaJEwXylFCoQBSevIQri0SnmMaem9tsKxSEIB5g2NVdX63BRhkOlYA964xZ
	LKMQX71BSBlxsoxiAGfWKD9T0w/y5xJvipwYzUEmmCw/TStB6NYO1YAr44aL9kkhppsfQR
	jtgRDagAy/3GvaJ7Rkip1lOw+NgVdO5TSjhyr0foLTz4MyytOZGK/NDzD4EjkPTIYLk0do
	Z13lMFNhRU76Zi2jBhwPqkWsbJyKmmoAw5lMFfXQTRUpaz5I93RFm19yH8tQIXlKQOSf8H
	Eq9cU1rbVuXfvPUssEN3e33azVMNQPF0R268mFVRXY9S9VsiptaA7ZhHug/Ptg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-5-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-5-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:38:32 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4babaf00-19f5-1d0d-6359-7f98897ef18e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 4/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 3C/5A/5C
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

Thanks for this patch.  Please, see one remark below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
> read-only, because they contain factory-programmed data that isn't
> supposed to be modified by the end users.
>=20
> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5=
a")
> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa=5Frock=5F3c=5F=
v1400=5Fschematic.pdf p.13
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa=5Frock5a=5FV1.1=5Fs=
ch.pdf p.19
> Link: https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa=5Frock=5F5c=5F=
schematic=5Fv1100.pdf p.18
> Link: https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/=
misc/radxa-i2c-eeprom.c

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
>  3 files changed, 3 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/a=
rm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 80ac40555e023..fa28b32f69108 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -466,6 +466,7 @@ eeprom: eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		read-only;
>  		vcc-supply =3D <&vcca1v8=5Fpmu>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/=
arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 041a0fff22ccb..d844a842d4cce 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -233,6 +233,7 @@ eeprom: eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		read-only;
>  		vcc-supply =3D <&vcc=5F3v3=5Fpmu>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/=
arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index dd7317bab6135..665eecce063a8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -325,6 +325,7 @@ eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		read-only;
>  		vcc-supply =3D <&vcc=5F3v3=5Fpmu>;
>  	};
>  };


