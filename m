Return-Path: <devicetree+bounces-65010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6DF8BC057
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 14:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9E4EB20EE5
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 12:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A34AB1862C;
	Sun,  5 May 2024 12:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="1rzayCna"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3122182CC
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 12:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714911790; cv=none; b=Xw6gRq5JFPNupM1V90RdF/JeZtlAc0ucvns2UNJZasIM+DReIhOJTicyPnkazISriHPqi2xG3m0fej4P49czX3E0/F+ynNf2BBvSYUcbdIsmzEbO9qyhphhJmTUIuedfseiSrwFeAJ/bXkkwh7ryJRY+9f6YLDUGJhZgR9Shbvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714911790; c=relaxed/simple;
	bh=E2e+KBmb9YTZIQNw7gyRcdAdxmO8Wo+zcNDYQn6wDQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QUJe5OJI198ldc/obD1wIWlYLPJV9IZ39MuCyyJ4R5B8JLEGokRHXsYt39yLLxIFeqSclVWySiZs7sdgUOygLSWheaXxkjQyXtL8hsM3vg5q0SvUkjfFMhpL5ZYSupsisQ1WI7hd7P4oGAS3PAxhPzUWGd/IlvjVFlZELd9+RSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=1rzayCna; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d8a24f8a3cso12216311fa.1
        for <devicetree@vger.kernel.org>; Sun, 05 May 2024 05:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1714911787; x=1715516587; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HSAr4n5Bmz/3NAuqmrIGiy0YoVXgzQXcdQqMh5u4C3w=;
        b=1rzayCnaxyHOzto+mDJPLTWQkHDzAOI+Prtb16+WjlkDdcWlvzuUdnrFEBIweORjeU
         74zPT7u915252rS8GHjvqhPSsBsyGgHVRoAuJNtpMKFk7t4wxEzd+9AsdL+03AzrSuEu
         n+0yT63Do64C6RtAU3EQyrGv3xsxKZ9105k7apwfOK+Jx5U8ijH8jkaFOwPBYDI1Hse/
         SPSar6mSHL6j/fKGca2hMJ4UzI0Qwmqfx10f9YzRSpv+vSlSR1K/flRO0IBR8oW2DFQ5
         wxgxXqzmYKJh17FGpMM0cZ/8WMrsG0udMyLa5NcWcT4StQapchgJWp/GX3B+yDapy3wq
         zasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714911787; x=1715516587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HSAr4n5Bmz/3NAuqmrIGiy0YoVXgzQXcdQqMh5u4C3w=;
        b=PwrtQNJqWRDkb/2bXp7qrYoG5gthlASsqYiJ1wp0RSRbGTS5Rs4ub6UqrVlwDFKSvw
         Fa7BjZFRwhgbFV6m9tCpnsi6bDbPC35ZliUlsGSF9GvqI66U7cLXiM4aBr88dyoVCKwl
         mkNG3znL4o7Y07Gdw/InEmv8It8KP7SMZEeNympeNzzKd2lKSX39wCwSKltmwsyy/cpL
         r6F+HTFWnK3N2lBmSIsmHSfColu5WiWj6j95Bu7ta5XkfVCLTacqMUlacLJ5XVaMlkzJ
         dNI3ZhItM2bm4Vje9GqJYv45rgxoGtVr02QHC10GaAC5uHrJ4N2baAUq6a3/VG+8Fwr7
         RZlw==
X-Forwarded-Encrypted: i=1; AJvYcCX/TxEcEyQ6bw5DfUN3EdPmieb8tOAVRLVEZRncjwUAOmp92XDgMxzGxOm8TEcCCs+9RF/OH95ripGzNwiTmla5FxzDlAax2SIXWg==
X-Gm-Message-State: AOJu0Yw1pMLJ5r+lqLYfPkSvYH2Z19wuW8KnmHL7PjuxrJMMsc7rVGDM
	Ovj7ONlsHJoCLFk+PIqS5zRGRxsAIs0yjHrWVJB/misVDW+9qIXD66F7czuwLXWM/NXRcY/Gzpf
	Jk9OkI2+nGra51ZOakiwqxg3l9gI5lEXWjPbOKA==
X-Google-Smtp-Source: AGHT+IH4OgvhpTuR8NUJ0jT6ZYIBg3xi09T3TZ+qCyKws+N3dIcP80CxmF73NvNBxMflur5QUexUGUAZiSDxbWdANgc=
X-Received: by 2002:a05:6512:1256:b0:51d:4c0a:a512 with SMTP id
 fb22-20020a056512125600b0051d4c0aa512mr6180164lfb.68.1714911786804; Sun, 05
 May 2024 05:23:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <2d27e1ad360dec2c3d78d9800bc93ecb6f9b50c5.1714573214.git.lorenzo@kernel.org>
In-Reply-To: <2d27e1ad360dec2c3d78d9800bc93ecb6f9b50c5.1714573214.git.lorenzo@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sun, 5 May 2024 14:22:55 +0200
Message-ID: <CAMRc=MeQp6FFhXSr1HbvVAd+D3wOsmtLvoxjt7QmT2a=NNTHmA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: airoha: en7581: Add gpio controller nodes
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nbd@nbd.name, 
	john@phrozen.org, devicetree@vger.kernel.org, dd@embedd.com, 
	catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
	lorenzo.bianconi83@gmail.com, angelogioacchino.delregno@collabora.com, 
	linus.walleij@linaro.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 1, 2024 at 4:26=E2=80=AFPM Lorenzo Bianconi <lorenzo@kernel.org=
> wrote:
>
> Introduce the Airoha EN7581 gpio nodes in Airoha EN7581 dtsi
>
> Tested-by: Rajeev Kumar <Rajeev.Kumar@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> This patch is based on the following pending patch:
> https://patchwork.kernel.org/project/spi-devel-general/patch/189790802f3b=
a1a80c4ab5e064b2425e5a360098.1714571980.git.lorenzo@kernel.org/
> ---
>  arch/arm64/boot/dts/airoha/en7581.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts=
/airoha/en7581.dtsi
> index 98c2a86086e1..5d0d76cecfe0 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -178,5 +178,25 @@ spi_nand: nand@0 {
>                                 spi-rx-bus-width =3D <2>;
>                         };
>                 };
> +
> +               gpio0: gpio@1fbf0200 {

These labels are not used anywhere.

Bart

> +                       compatible =3D "airoha,en7523-gpio";
> +                       reg =3D <0 0x1fbf0204 0 0x4>,
> +                             <0 0x1fbf0200 0 0x4>,
> +                             <0 0x1fbf0220 0 0x4>,
> +                             <0 0x1fbf0214 0 0x4>;
> +                       gpio-controller;
> +                       #gpio-cells =3D <2>;
> +               };
> +
> +               gpio1: gpio@1fbf0270 {
> +                       compatible =3D "airoha,en7523-gpio";
> +                       reg =3D <0 0x1fbf0270 0 0x4>,
> +                             <0 0x1fbf0260 0 0x4>,
> +                             <0 0x1fbf0264 0 0x4>,
> +                             <0 0x1fbf0278 0 0x4>;
> +                       gpio-controller;
> +                       #gpio-cells =3D <2>;
> +               };
>         };
>  };
> --
> 2.44.0
>

