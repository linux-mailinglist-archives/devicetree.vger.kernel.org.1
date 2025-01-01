Return-Path: <devicetree+bounces-134973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C77499FF37E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jan 2025 09:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC1CE1881B70
	for <lists+devicetree@lfdr.de>; Wed,  1 Jan 2025 08:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD263FBA7;
	Wed,  1 Jan 2025 08:58:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149DE2E62B;
	Wed,  1 Jan 2025 08:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735721926; cv=none; b=Bm6oJ1Z63ZXgpNxX7eC1CoANzPgUzv/saUi+tF/Dl3TdhrPCYhDTJLAWi2chQiSr2l43fD16gs6A1cyVL5cADEJHZ1b9uePkdkWAXauJGnd+R/Twf2Mw7XWT5S+p2seKIDS3JGBj2v+vaB12YGofgjmdgj97rG6IGSClfd32agA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735721926; c=relaxed/simple;
	bh=dB3jhpzgRuWSQJQmfNuBsTOKheK4ecmNIZCeSfdLBzI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jgvUAbFL3kHbEnRm2asChZ1ZOOrEBcum6iUdr2BlSaPDN1iZpKs5touPTw7tRRq9lwW6pfbsWiMau57O/KghWFzeB+nrn3gXBT7afOg4tqvL40a8kO8LOqTxytRzWwJHZdoUxAeOzKdJL1nMCfRkr3O1rkePgXQyB+nA9bWOCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-540215984f0so11199874e87.1;
        Wed, 01 Jan 2025 00:58:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735721921; x=1736326721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=03r1MUnoANbps6OakqIBWa8kGI5iV3U0tsXfTI9VdjQ=;
        b=cmiSBpNwO7ET4zuvArnnd53LFldRWfhpLiJCo4S0o0emkfHPajDnQnHt8R+aOZr7k7
         52t4sN9ouBMgQuEjvVxzPlk1wOBsS8eg9ZfqrdMJ5BjCFrs4kdNPmrWZ0XE683thyDrE
         U3baCVysdoyVrJpqeRIiMn1n16VjNM4s1wPFeMdj8CGXWHMjCL9PRgC4CfzJeBUGM1jV
         6cPEKI6uU+Z4xyUlFyX1k2ObzqydJd9tI7O+PzH7rQEzjUiCAN66ehmOdpXODg4nyEFU
         roMEYDMtIz0jgbK9Oyp1pMZY9UY0EcLus/4KoYrLMvsYuAfH0Qij59fvr8nrq7mPfYjj
         7geQ==
X-Forwarded-Encrypted: i=1; AJvYcCWG/22GoMJIIy9aeTogoUAv6RBpUb0gcHPAa+dASC97wuaA6PB8DZv8XcwujqjsopbkYfgL3HO/htID@vger.kernel.org, AJvYcCX5NbntQOsPHCceUcftJItWrvmfsJ6GtKb6ZYzeGTxTQ27iCd+ZEW7bmr9a4WHrVM/J+L1cIaYTuKaN37TG@vger.kernel.org
X-Gm-Message-State: AOJu0YzdpS5MFnDv7rdu4fZPjtyuVd5bbcxXPKW7CLk4BdrzhksPamto
	i2pCxjNBj+B6wsmkLn7VmA2M07yi5ww/LxV6pT4jKoJ+efYXWqFXEyTgGrtu
X-Gm-Gg: ASbGnctnGBEoL56ZJbWNU+T0dBbKYpD6Y0DTgKSKALZENgdaxyb8MVMFiZNM2iuLqcC
	ZYNXIDXctBRSBaLaJqdELJIFllZ9BkrHK8z+kQU+JJV5FPGLoDWtZxrB45VdsQdhVfT8tl0KMVX
	AlIHYVmzcMfXzliNxJgF6HzKZGFPmOnPOqh+2wz9pPV5Dv/UI+jLwUZgzbrqEXK3HSan6UTooIB
	SBiek/Zk6JPimgeXa5ncxNvn0Iw5/Ic+wl8murYfNIq/CT+qKlGCvVI3UqqSxA76uMXr0ny+VXB
	ZMmDrXWFiFg3bQ==
X-Google-Smtp-Source: AGHT+IGAMLHQvbegGlzOlrM3W308t3obxi0VFOYqtWyCN+MfJOAvydOQmswE1zKwe2FZImnM/6xwhg==
X-Received: by 2002:a05:6512:a94:b0:542:2338:793f with SMTP id 2adb3069b0e04-5422959cb2emr14408560e87.54.1735721920897;
        Wed, 01 Jan 2025 00:58:40 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235feeecsm3624789e87.68.2025.01.01.00.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jan 2025 00:58:40 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so100475321fa.1;
        Wed, 01 Jan 2025 00:58:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVVzEqR1sQUJUPEw0jweUzcBlDorHOnzmjWlRS6R3bTTgTwWYwFxtEwb7DYjyAjcKJuHiq0pFFVBopgQ+G8@vger.kernel.org, AJvYcCVZ4FqKSRdbhkI6RXYYSb7XQgtKNao6V6prqIqzhOnNQszaZEHoL4Q04ChXsV3gEwNuXKNnYLKpLmEs@vger.kernel.org
X-Received: by 2002:a2e:a58c:0:b0:300:1aa5:4967 with SMTP id
 38308e7fff4ca-304685c1985mr174943451fa.25.1735721920308; Wed, 01 Jan 2025
 00:58:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219105622.13691-2-code@stefan-gloor.ch>
In-Reply-To: <20241219105622.13691-2-code@stefan-gloor.ch>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 1 Jan 2025 16:58:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v67dBhL3-AhLeHg3xOgbNZ3qu0aj9+kA+MoOMRYfr_Z_zQ@mail.gmail.com>
Message-ID: <CAGb2v67dBhL3-AhLeHg3xOgbNZ3qu0aj9+kA+MoOMRYfr_Z_zQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sunxi: Add MMC alias for consistent enumeration
To: Stefan Gloor <code@stefan-gloor.ch>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jernej.skrabec@gmail.com, samuel@sholland.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 19, 2024 at 6:58=E2=80=AFPM Stefan Gloor <code@stefan-gloor.ch>=
 wrote:
>
> Add explicit alias for MMC devices, so that (e)MMC and micro SD cards
> are enumerated consistently. This should fix spurious boot failures when
> specifying a hard-coded root partition, e.g., mmcblk0p2.

IIRC we have chosen against adding explicit MMC aliases for the sunxi
platforms. Please try using UUID=3D or PARTUUID=3D for root partition
references.

ChenYu

> Link: https://github.com/linux-sunxi/meta-sunxi/pull/431
> Signed-off-by: Stefan Gloor <code@stefan-gloor.ch>
> ---
>  arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts b/=
arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> index a1b89b2a2999..9cd1eb690134 100644
> --- a/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> +++ b/arch/arm/boot/dts/allwinner/sun7i-a20-olinuxino-micro.dts
> @@ -60,6 +60,8 @@ aliases {
>                 serial2 =3D &uart7;
>                 spi0 =3D &spi1;
>                 spi1 =3D &spi2;
> +               mmc0 =3D &mmc0;
> +               mmc1 =3D &mmc3;
>         };
>
>         chosen {
> --
> 2.45.2
>
>

