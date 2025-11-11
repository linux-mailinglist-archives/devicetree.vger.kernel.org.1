Return-Path: <devicetree+bounces-236992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FCBC4B8AD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C07264EC82A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF08128468D;
	Tue, 11 Nov 2025 05:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="H39ndUoe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91398281341
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762838970; cv=none; b=t4+UTsMcvwghb14er1gOkcDh/i13N63vW+hRhkVVeG7hiZTzQw3TXBaSQJA84x/lglInGKizHzrtThsz7qrXTHpVE7Jl9bhj1gQV41YrGhmCqRQ9b2FJMTt8F9BDhb6SOve1KZDpixnvt1P3qztOiyUMComYCcN20C3Z8+kcidQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762838970; c=relaxed/simple;
	bh=jMpsmd7JBWyIDxQQBC4XNdidFFhbWGIOgr7oz9u0htg=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=FZK7EYJa0AjlrJccBKWoXknDbVQAEIimeUJYGqHWB0FmMAeriIcun2rZj3lR/vff/IIFqeH1+P7PtbHYlRtuq4/gRqAHxnhKk2pAzS72ivlgjjOwVT4TZnbNodDajaKvf1gTBFqUPFuROaBxn2CSP/YaKvmBH3Mb36nkKi6VCK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=H39ndUoe; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1692140FE1;
	Tue, 11 Nov 2025 06:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762838960; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=29v6t3bfWYDbDwxiTAs52f+DDKQxipozunIO/CWxhwE=;
	b=H39ndUoe87WDXHKjqovJrtzffc4ybm7bzNMJQaSP0z5a8pjqH/lbZdBc9IeoJ/iWAkB7j8
	b+Ie2uH+3bgVommDKd/snxyKjwR1v9RtU06vnOCrkDMxPzKq/yqieYnLip5Ev5GPv5wKgW
	saapAVVlfGu8UaOO9iVO1A1cmR6ER1SFHIgiM/iZdQxuL+YjjIrnSr9xKbjgDDSqV3d76S
	UG+6GGcUJUb4D09Lp3hBvPnoUv4vVxsD0FuiUJjSm6oZpQFOKQiwBdYAZoB9to0WAHe32C
	n/c9eKZmfPEoif7hE6lw6tBpDG6WhPjmHDolauTuSXdqMVuuAu496lWJM9guOA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-2-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-2-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:29:14 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <c0f072b9-ca40-b707-6b2c-e4683ca8aba2@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Move eeprom correct bus for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

Thanks for this patch.  Please, see a couple of remarks below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> BL24C16 EEPROM chip found on Radxa ROCK 5A is connected on i2c0 bus.
> Move eeprom node from i2c2 to i2c0.

I'd suggest that the patch subject is reworded a bit like this:

  arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROC=
K 5A

Also, the patch description would benefit from becoming reworded
like this:

  The BL24C16 EEPROM chip found on Radxa ROCK 5A is connected
  to the i2c0 bus, [1] so move the eeprom node from the i2c2 bus
  to the i2c0 bus.

  [1] https://dl.radxa.com/rock5/5a/docs/hw/radxa=5Frock5a=5FV1.1=5Fsch=
.pdf, pp. 19

> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5=
a")
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa=5Frock5a=5FV1.1=5Fs=
ch.pdf p.19

The suggestion above also shows how it would be better to use
explicitly placed references, instead of just placing them into
the Links lines, because that places the refernces closer to
the backed contents.  This isn't critical in this case, because
there isn't much contents, but it's a good practice nonetheless.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/=
arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..428c6f0232a34 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -228,6 +228,12 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> +
> +	eeprom: eeprom@50 {
> +		compatible =3D "belling,bl24c16a", "atmel,24c16";
> +		reg =3D <0x50>;
> +		pagesize =3D <16>;
> +	};
>  };
> =20
>  &i2c2 {
> @@ -249,12 +255,6 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> -
> -	eeprom: eeprom@50 {
> -		compatible =3D "belling,bl24c16a", "atmel,24c16";
> -		reg =3D <0x50>;
> -		pagesize =3D <16>;
> -	};
>  };
> =20
>  &i2c3 {


