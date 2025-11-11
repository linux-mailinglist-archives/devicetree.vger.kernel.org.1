Return-Path: <devicetree+bounces-236993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC1C4B8C8
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB9993AD564
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF6820FAA4;
	Tue, 11 Nov 2025 05:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="CfO2VZVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218001A5B9E
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762839301; cv=none; b=FvLeTLunWfhHyLn6geka1atav/h/3G8wMUyNZ6oCpLPERNZezlfox+hSUhhNIkPusQ4iemd1p/Fy2HF25v/bYFsn2ioTIA932qRHNKw17N7JkPXkhjL8Rbm+0nJCOt91dM35tH58h6CPhuB1IIgHQTjq3SfFaeV7z46NuAb58kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762839301; c=relaxed/simple;
	bh=DYh0g5d+jCdJFtffv1SrH69tPzdzRXXcQXM2DFcxJaM=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=bNS61ODsedOQ5EeOrLSxoNeqe3QFOgyssR+KbrbtBtNZo8mwPdASF8n6fsft1wmGICozZcm2vmcwbVHd4RgGlcdbRLiiEmiOxmql50rJ4SA7LMRREBJ+Djjj3BLjgoXvAOtyoOuSuGd/XkZ7CUz9LYLuIWDz4wsrronH7MOBO8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=CfO2VZVx; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 6C5A940ECE;
	Tue, 11 Nov 2025 06:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839297; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=E9TSrt8q+mnKODPec5cjVu2veF9my9LdKC7wQR+Fgvg=;
	b=CfO2VZVx3din76NPZgSFF9QAALaSZvaMxOk8Rhp+ogJWvmpcSk6n6ccVO03xBNrFnHVTIE
	KtVmXkDgqFBPS66DAxWtTwU7zV9qv7V1/ayioSjKKL4833jmYqjTo83c4ISpeeI5M00vmi
	XHyn3DrchjdJ/vKPDN2B3SitEzant1roeB43iltPr39rNHf4NwJoCZOamJwI9y3byrCG3Z
	h3Wqa5TXPVKO6pU04Nj8p7sP/JoT/V5apWuN1gXej/KqalMTPWSbkcxJxe2KnHBm5IFki6
	lWzQeZfQ7EbMu2Z2Ab+TjSfXBOQOAJGCrb0XciE68x8zmYh/Bzz5NVynX6ezHw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-3-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-3-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:34:54 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4d54b6ff-ab3e-4e0e-5ae7-200caf9528b8@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add eeprom vcc-supply for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

Thanks for this patch.  Please, see one remark below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 5A is
> vcc=5F3v3=5Fpmu, which is routed to vcc=5F3v3=5Fs3 via a zero-ohm res=
istor.
> Describe this supply.
>=20
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5=
a")
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa=5Frock5a=5FV1.1=5Fs=
ch.pdf p.19

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/=
arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 428c6f0232a34..041a0fff22ccb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -233,6 +233,7 @@ eeprom: eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		vcc-supply =3D <&vcc=5F3v3=5Fpmu>;
>  	};
>  };
> =20
> @@ -600,7 +601,7 @@ regulator-state-mem {
>  				};
>  			};
> =20
> -			vcc=5F3v3=5Fs3: dcdc-reg8 {
> +			vcc=5F3v3=5Fpmu: vcc=5F3v3=5Fs3: dcdc-reg8 {
>  				regulator-name =3D "vcc=5F3v3=5Fs3";
>  				regulator-always-on;
>  				regulator-boot-on;


