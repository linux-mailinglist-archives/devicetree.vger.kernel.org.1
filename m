Return-Path: <devicetree+bounces-199757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88120B11DDF
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 13:47:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52E603B1D1C
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E4D24EF90;
	Fri, 25 Jul 2025 11:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R+KEclAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73272220F37
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753444039; cv=none; b=IWViINE/3XEtswEZjl2vAskcA5m9cEEsVvuttGpocvjf5rIOhx0XQ228KutoUUKO1CIS4l0Jsd0zpqDJ36IgHbL0lS5MbTKj5Y/YFNmLEqxDTYoWSF8rmq8S0RXIaOlEqAAMVoT26H1DeuyPXfo7KoFQeEgGxwCMzdtdnwHy310=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753444039; c=relaxed/simple;
	bh=70cZJ5+MOSuyvoTc0hRAELy7cfRbFrHaFdQesC+yVH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kvkyDV1vR/+NvS6XvFum+gCSqCUleyc8w9H3LZXEmQhfN64ixVjoOKp50T+j2ZoA0S9BOn1ur0TXDDoeh4THGfDLzYH0WLPFo6RdW4rZ+vmhN2ceXDI+kwC0/4MGUGH8CqMrxJPlf+5mhFUPeWMwkN4ON51XwAuNlUjEGPxZZ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=R+KEclAS; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-60bd30dd387so1138619eaf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444036; x=1754048836; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lj71s94DBO5ChtWnhYstkEV7QIcBC/2WSymKueRnDS4=;
        b=R+KEclASKBi7en6qNPmP4WZ787p7W0Sf5sLxszEdS6K+wWNsTR+OmbKeT/74hub9m9
         zQe69+1BNr47uEn9wL6IHTh7DhcoIYMTV3knwoZuKbSHODAsxr+iXpznpnITgQy+Qw2G
         k+Lc+U+ssjTq+a/E1GwD4eagzw3tKMoWAT8PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444036; x=1754048836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lj71s94DBO5ChtWnhYstkEV7QIcBC/2WSymKueRnDS4=;
        b=e3jE3OgcmQte5OClmja241bL0Y4HQdRKxI2DgH0RVquKyJZj0RmSN7M2MCZcdTCa4x
         FOSmJxz/XjSuhipnExqzIuXSEtgHkrQvGFePqTCtU4g0piiOsz1Z4Lg1kqf4lwdlT/Zk
         MZsORx9MzeYRJG63zXjTR45yrL2HMZH8RDP2bC7gdZwZ0ztAL3Ga4Oil8NUmI1EAD8Br
         bMw1towpdgGx5yxa0KkHSYoThg/c50YwUMUJXrSZ0xw5PAGl4Jb1BohIkY2wcmIu0mmJ
         T1/nwGcS8T+ZePel9EkLTF5R05tp+WTAjR+kNvDfexbU/PldLmtATPo9O1XZ2r2dskmq
         9s2w==
X-Forwarded-Encrypted: i=1; AJvYcCUaosaOLiPzpLHqpe/jpjZC/QKKfztrZfkq+kzp4rybkVTpRpFhiAlZJgBxLJENZ0arnFkG8F7rt00u@vger.kernel.org
X-Gm-Message-State: AOJu0YwYk/UsR5/WSCO2Pt5razKEJm8uv1KGH/j4FY8qcohewzIlpshG
	RVUXI5g4VIhmcdf8vI4LzzLX7s3uByj0qMhNM26oEWF7AHVf6DdkHvIVLgHX0uxLFEfJMn5Sbfa
	n+d0tGw==
X-Gm-Gg: ASbGncsGL35+o4SDjg/VtrwwuYpsbCocmzCrG1wJ0IUSvUkmDn5iwGvfU69TVoa1NI2
	NPUyJf4XAP1CMz4UQZhUMR1WgfK/Yo0+hJuIrcpt/egcRFbig3i5ckGL96iAuseaLWjMWpUuB+u
	rWBvOcFq+bcrKPi7D6s/VjpL4gI69uSZpYyLqP0YXKU4s1sZL8AedbU11H49H4tgbEh+AvuVGqC
	32RHslLVKjPv/rCJDEeBWgoXQU9kp7034SQ4N0XrWExe4qPw2CV5Q4c6DAx8YmwhKUkCEK9PS07
	x6/NeAiGmu+4fxi5PZcyngklBKBRGbQm+yW5nYkrsn6ol/4pScC406dfRGG98WIwElWe0su1q2n
	2CwS+qb0jkugq2OZ10ao2bwRL9FVOJbsdUc5EUJQ3TWjrMuYaSlVcKpMLKg==
X-Google-Smtp-Source: AGHT+IGZ39vkyahoA3ybEkzLyKIKccrcsVtalOEQ9dTX81R/Tbvp2Pkw60iWP5QtBIvWY98gq7gmeg==
X-Received: by 2002:a05:6871:39c5:b0:2fe:f4f4:8506 with SMTP id 586e51a60fabf-30701d19312mr1021938fac.10.1753444036360;
        Fri, 25 Jul 2025 04:47:16 -0700 (PDT)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com. [209.85.210.46])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-306e1ec01bfsm1032597fac.29.2025.07.25.04.47.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:47:16 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-73e810dbf5aso1178999a34.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:47:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVolXxv/t693Iq615KijEm3kqeQIMoE/BG+6y9LXAm59zVCr9KjmCCGqE4Y9wUrLdwSTaz3HdMRj+DP@vger.kernel.org
X-Received: by 2002:a05:6102:358d:b0:4eb:f003:a636 with SMTP id
 ada2fe7eead31-4fa3f8f1683mr313640137.0.1753440679035; Fri, 25 Jul 2025
 03:51:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-25-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-25-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:50:41 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhS8yY6iWNDfv4Lwz8zUJEy0nMxC5MVZGb983hDsg7bhA@mail.gmail.com>
X-Gm-Features: Ac12FXxJVbrVgIPSlm6u4--DKBHxaHRjM_36IT45XEIgpl9bR5PM8dE-s5Wt-28
Message-ID: <CAC=S1nhS8yY6iWNDfv4Lwz8zUJEy0nMxC5MVZGb983hDsg7bhA@mail.gmail.com>
Subject: Re: [PATCH 24/38] arm64: dts: mediatek: mt7986a-bpi-r3: Fix SFP I2C
 node names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:49=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The binding wants the node to be named "i2c-number", alternatively
> "i2c@address", but those are named "i2c-gpio-number" instead.
>
> Rename those to i2c-0, i2c-1 to adhere to the binding and suppress
> dtbs_check warnings.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

It'd be nice to mention in v2 (if needed) that this patch also drops
redundant #address-cells and #size-cells, but it's minor.

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/a=
rch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> index ed79ad1ae871..6d2762866a1a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> @@ -64,23 +64,19 @@ wps-key {
>         };
>
>         /* i2c of the left SFP cage (wan) */
> -       i2c_sfp1: i2c-gpio-0 {
> +       i2c_sfp1: i2c-0 {
>                 compatible =3D "i2c-gpio";
>                 sda-gpios =3D <&pio 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAI=
N)>;
>                 scl-gpios =3D <&pio 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAI=
N)>;
>                 i2c-gpio,delay-us =3D <2>;
> -               #address-cells =3D <1>;
> -               #size-cells =3D <0>;
>         };
>
>         /* i2c of the right SFP cage (lan) */
> -       i2c_sfp2: i2c-gpio-1 {
> +       i2c_sfp2: i2c-1 {
>                 compatible =3D "i2c-gpio";
>                 sda-gpios =3D <&pio 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAI=
N)>;
>                 scl-gpios =3D <&pio 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAI=
N)>;
>                 i2c-gpio,delay-us =3D <2>;
> -               #address-cells =3D <1>;
> -               #size-cells =3D <0>;
>         };
>
>         leds {
> --
> 2.50.1
>
>

