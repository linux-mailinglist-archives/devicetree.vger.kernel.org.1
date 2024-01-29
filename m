Return-Path: <devicetree+bounces-36179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9AA84019C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 10:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47ED92839F0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 09:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1AC756443;
	Mon, 29 Jan 2024 09:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UAqxeE3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1446026E
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706520502; cv=none; b=CYnC2kTWCJyY2BCjtXOVAytja7HaG08t9VGCMgh5772H4cVeQhXi4/NLUKYnlp5xvUoZknFpT6c7z7ohID21WUMtp55tJNb8TWQq4cPPIZqwDBky/Nnlr2AGrq756FE1PVk8SMewdYCSDgULuRO991TPMat9qQYUDMHIhSlS2Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706520502; c=relaxed/simple;
	bh=fqIQss9YrlmVdaiZwyyrl0wDsFJ+mHTn4IZB8IBL3MA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SCOWoWieYVOyFtfixGRPTH4Wpzy5lCZEjoNa++ihssD5bm7UAV/4qRxv8SwtSH0h5pB1EfGyMCSEcpNUgZS5DI5XFUjh3dRegzRzZ64XjtVwKrw9J1UEg4MA0YaHjci5hWGf6RJX9zfXU7HAD2ifFtcYiR9V5E7i9lwiaLgB3D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UAqxeE3C; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-783f0994eeeso84321085a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 01:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706520500; x=1707125300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4q8db41yY87l7MxKvbYpo3+xjJtcNE9e9gSZAUqcvLs=;
        b=UAqxeE3C1ZxyM2d2BcPUz99YFgY/WnpE58yTZkT2naebUlL7SubL8kkSiabXMf0TCL
         2jBd2kmLxdmLs5nJVLW6okr+qCnMXLfqLaUmuLkjD0WIJc7PvvPQi2LItnGUqM2Cid4M
         JEmOAq9lMYPdVa1C48P3/ZLqm9EKNuQJr5bQlNJR7JZhNAfRb6aeALC0SaFap2AFPCKx
         6YL50Fk2DykjfGJ/2iy1EJM63y8s7H9G384FOvboiqe5DFOCChe6g8rEcsbGYrMDPQCy
         EJqH7aHMuAPxIhsehOi9HyZBwkPd+aUcOZ64yknNFWtt3lvM6HTPbqOSUcaBTDbSnfBR
         VIIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706520500; x=1707125300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4q8db41yY87l7MxKvbYpo3+xjJtcNE9e9gSZAUqcvLs=;
        b=jDxW07RjqBBCL4Ua1lNho1qZowTwiiVIbpqMauFr6V7QnkD0iKxKDidIlwIyn8/lzc
         aaGUpgvArZZACDf74LxDIIr4NpLCJJfR8O+8YdidUOaxBJUB2qjRWA2aqIueXdrQBLkp
         B4YveCzdjhA1iGuOqFRYt6FIJ+R3d5Hg2K8ecsGkVpWkOvTJxmOu3ZemrFzIC/bXjOai
         XRIOERjIeG6tpZEDCoxKSpiC+XdYWB5rhOSjouyL8/0uWgtCofwVfqFJgeXD8a9p8M0C
         /lattW3nt5+PE7CJSUYzpuPxCnSfLFqxWcIn8PGnMMfgVegaHFnZGlkQuDVFpEUbUlkj
         tGwA==
X-Gm-Message-State: AOJu0Yw75zlTuGNkas09qGJ8feL47kwWnuLoOjgh/t4Bva5TE5yJcgT0
	eXVR0lF2a4dFnuSmwarmWH+bST/4gZ4669mIEhan2lP/pZhAEk/NRkGlC7aVX5tcLruKl+z00XE
	FesxkMmrI9rYsynnN9qd30cKtcopdbjaVBBdQ7Q==
X-Google-Smtp-Source: AGHT+IGYFxZ7DGE0AfRt4ew5dYvWGTQXLN6eczBCd27vBSvEmlBwqJjbpYwEvVAfNowUSbRibLTBmiPYXnGcFr6dY2E=
X-Received: by 2002:a05:6214:2a87:b0:68c:5337:b717 with SMTP id
 jr7-20020a0562142a8700b0068c5337b717mr677358qvb.18.1706520500069; Mon, 29 Jan
 2024 01:28:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-7-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-7-andre.draszik@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 29 Jan 2024 09:28:07 +0000
Message-ID: <CADrjBPoTPzWo10VvFX1m83q72xqzR_y83TZ4JSFgK+YtyaRsPA@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: exynos: gs101: enable i2c bus 12 on gs101-oriole
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, semen.protsenko@linaro.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 27 Jan 2024 at 00:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> This bus has various USB-related devices attached to it.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

As Sam said, you could be a bit more verbose on what those USB devices
are on the bus as they aren't enabled in this series. But apart from
that

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/ar=
m64/boot/dts/exynos/google/gs101-oriole.dts
> index cb4d17339b6b..c8f6b955cd4e 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> @@ -72,6 +72,10 @@ eeprom: eeprom@50 {
>         };
>  };
>
> +&hsi2c_12 {
> +       status =3D "okay";
> +};
> +
>  &pinctrl_far_alive {
>         key_voldown: key-voldown-pins {
>                 samsung,pins =3D "gpa7-3";
> @@ -113,6 +117,11 @@ &usi8 {
>         status =3D "okay";
>  };
>
> +&usi12 {
> +       samsung,mode =3D <USI_V2_I2C>;
> +       status =3D "okay";
> +};
> +
>  &watchdog_cl0 {
>         timeout-sec =3D <30>;
>         status =3D "okay";
> --
> 2.43.0.429.g432eaa2c6b-goog
>

