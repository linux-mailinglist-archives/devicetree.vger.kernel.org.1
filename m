Return-Path: <devicetree+bounces-199727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4B1B11CA3
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30124189AD93
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD3612D46D5;
	Fri, 25 Jul 2025 10:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TGile5JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B61283FD7
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753439961; cv=none; b=TIFhXevLuR+gGLj1LHnFvvs8yuo+ceM3ChBCtcYbsQQLh1k4Eo3RS6loVONTEwLNYW216dZRQ0DlaTOBt7cbu3xbYqbgt6++FJN/BxgKW3OtmJ/XREoin1+prj3reo005zgEXGcnNMKNZTf0LsECk0G4DfrtLhsIf6c+/tWD1xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753439961; c=relaxed/simple;
	bh=DZf8o481vjpJ7QSUoolpwJajFBT1Vwo8xHyfUgSq//c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hUGkGM+tNSLygvHk++snMjweD8JKxwHVIyddRab2/3WP1NiGP1dGYu5SLu4BKCO3UBAL7tkY6L1e6s14MaWNKlFmPiawFYeeEYO1CcRUODDu5cyqN9nML4zj9zzmU+XVJrv69OpP7rh7SxcPKNhJqPdpLlc8jk/HZ9ELoCkydb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TGile5JJ; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-53167fb5690so662001e0c.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753439959; x=1754044759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlkE41QL6s4x1GqYESsGC6jimQ+2xKl71+VqMJsnR/Q=;
        b=TGile5JJ7cX1FsGdos/GgVrD9YkSRBbLDQ4Xb8JDu6j+CVVWr1xUrRtqWJP//8oj9V
         Qy1e9FW9Hk8sm22hFIF2tCv8U8LFFqys0nm4F1kUYfOiIclF8YhGw0fL0wg+Y1ayzjxQ
         yzhJt4LRhCe0XaYFrvoAgb2qn4+HesnO12PiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753439959; x=1754044759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlkE41QL6s4x1GqYESsGC6jimQ+2xKl71+VqMJsnR/Q=;
        b=b5YF1ev93iPLJTB7k6btCpen0bR+ovW31RBuJF6cm0K+3txfW+H3MOi6wJRGTJCB4g
         yQ94POkijZQmcherxlYKq68N1uMuuXO8cA0MKbCzRinS+uNYWJC3AvltraMcPC3piY+H
         x/DTKCqEVKoGStOe2jQ5dNCkUOzF5z+3+xI1Jo9/ThFKbIIhAL6hS1AHDbNK+Mpg1oOx
         jIFZERUppdJGlxUo6IJVsbU97mQv4cP46KMyRhZIZ+T7VXNhE0XpEd2bgTVCWgVOCIHc
         eyCLhdQ9tSChhMCjFRvlKi/QkwE3KLldpwgogJCL8jX1vPY7Uae2K73VAl0FhS3gm7MJ
         yqxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSC1gSsw4h7dYKlGKKbeD3aPaZstTiqTrP9o2FbjNX/G0SX11aaV3e6JI+QMl5trPZr1+D+jYBqbcc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9MUCrbEd8AkpyDXrfaLI/pRmN/CSCPm9WMW9GYJ3w7Sa/LJmE
	JnjCbAwgwJr4OFqyXmhJze0mdub5L/iQelqS1NkSQ839w9QQZEpuOqAgzpA+sGGIjSO1iPRQwVr
	E3Ix15A==
X-Gm-Gg: ASbGnctm3Utzn7ZmcDVdPUr7sNMv9LLVKMA2Wsp+EUQQep6oHY4MQmEM5/VtslfZLcq
	FJ3YShujjMlsBBpfmRjwdVV6llV14D/DrcpeVhr9IAettXjYXFsATi/JtiwcmiRGBLbSHoB9SBN
	EjStAmoMlCk86dj/ug0TBK4v9lI/1w/11yyozoZacWIreGgHJxo22l5MSkVdswQMmjg/f0RvhSX
	O5KcYDEkd84kcpkiMRE2UHWAHixvUgf2MFRjD1jphoev4bNHhIbCfBVvnIsxaMkLzJOBUOd6dQg
	a3rVdfc7hRBdtlhD18m7Wef6Z9kK5QkMfMKjXMZHkT5Vq8a9dMDxr4Ka+HTTr1VNE6/qLwvg8lQ
	6b8DU0Bay2xbV/FPUXiUS3nHjUWVG6zydt1f861+UwwDvFX3FB1zvd9V+yQ==
X-Google-Smtp-Source: AGHT+IGibiU9Wn/RZZh+E3/Lz16vO2ccqRpltVjrmSLjwCOCuJodIdWZgj9EasRMxHCtXyOo0fm+Fw==
X-Received: by 2002:a05:6122:46a8:b0:520:61ee:c815 with SMTP id 71dfb90a1353d-538db5ff2bemr286897e0c.10.1753439958697;
        Fri, 25 Jul 2025 03:39:18 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-537bf6054f8sm938656e0c.8.2025.07.25.03.39.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 03:39:18 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-4e9b26a5e45so771565137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:39:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXQGRsig3qMiB5HGwErzE9Y4xki+lr7Sk4NutihtBQ+bt2n36pY4/4XKQwsReghoDvOwyX4joDjciO/@vger.kernel.org
X-Received: by 2002:a05:6102:4a8f:b0:4e9:a2bd:b456 with SMTP id
 ada2fe7eead31-4fa3feb1976mr334393137.12.1753439957846; Fri, 25 Jul 2025
 03:39:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-39-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-39-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:38:40 +0800
X-Gmail-Original-Message-ID: <CAC=S1njc7_+EhDA_HrVsPfhYsrFEmeb5TQ55X+YOKE=NrpoCaA@mail.gmail.com>
X-Gm-Features: Ac12FXzORC58mPF_B982fHDjnhtiL_-5O2nAq5PI4bkUJDNwvq8vw0VlaVEnRW8
Message-ID: <CAC=S1njc7_+EhDA_HrVsPfhYsrFEmeb5TQ55X+YOKE=NrpoCaA@mail.gmail.com>
Subject: Re: [PATCH 38/38] arm64: dts: mediatek: mt8516-pumpkin: Fix machine compatible
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

On Thu, Jul 24, 2025 at 5:51=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This devicetree contained only the SoC compatible but lacked the
> machine specific one: add a "mediatek,mt8516-pumpkin" compatible
> to the list to fix dtbs_check warnings.
>
> Fixes: 9983822c8cf9 ("arm64: dts: mediatek: add pumpkin board dts")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts b/arch/arm64=
/boot/dts/mediatek/mt8516-pumpkin.dts
> index cce642c53812..3d3db33a64dc 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
> @@ -11,7 +11,7 @@
>
>  / {
>         model =3D "Pumpkin MT8516";
> -       compatible =3D "mediatek,mt8516";
> +       compatible =3D "mediatek,mt8516-pumpkin", "mediatek,mt8516";
>
>         memory@40000000 {
>                 device_type =3D "memory";
> --
> 2.50.1
>
>

