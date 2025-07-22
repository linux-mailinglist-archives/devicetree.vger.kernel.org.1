Return-Path: <devicetree+bounces-198505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC98BB0D3D4
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:49:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99E25167BAD
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7B52DA744;
	Tue, 22 Jul 2025 07:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B79FXuzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2302E611C
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169900; cv=none; b=QsgGMMZBq9QLQpC8SZUaSz+C0k3jNx0EK8jm0FKhUEf+nj3Lm0Gfc9IoUr4588tOTEAzRrouQFE4d3QOqF5Kb8t9Ko2+ASqc71Js4Gxj/Y0OCeGcmm13ltQOnB2D0dw73zGm7Z+PK6kpGCk5E80/fDCXPJ0G2Il4cECVxzIaFC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169900; c=relaxed/simple;
	bh=GCED/hlCsBSaeWbx6CONP03k4BitQzfwd38u+tep5bs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JTJHXfpUuKOKWwS+esd8lTTb5QflCzLyPBLcgt3fCa82iimC6Uq00y555wiqd3oEVSJGHyntbuaplXbPUuL6wjMpTQs8UcagPCRRdyU3W40GSpXwjLh0D3NSILOJaA+EapcC1yllDJmKp8YpH5V6M0ra9whmkhq/c7CSiBV//FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B79FXuzW; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-32b43c5c04fso55894561fa.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753169897; x=1753774697; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1N+wgj9qJtb+bRk0/YzXSA+bhNFySP+cY66IIckDgM=;
        b=B79FXuzWRFyukO7ROF0wuBa1bIfITECa+33OFDXA8OdaAlIDbHvLn1mhnWGIzRBOni
         FDx3gqAa5fQtiUd8gi3blCz+PECxLQd4dxIOQ3CSMQoj1jo5GUsAnd8kcUOBvY6bzvA6
         ePEE6EJMm6orGKU4XXVGMkmcQIHZmGWRN8yro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169897; x=1753774697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1N+wgj9qJtb+bRk0/YzXSA+bhNFySP+cY66IIckDgM=;
        b=hM8wAhURCZVLq9U4AWXHXA9wiwVe6nWFAb95MlNVn9x39XvHYjIc4T8Tj28Crj6UkT
         CrrbBVpiszQ5vojab+8RvYCp1zkUabJD22abwlcgCxFbQ0cWXszt1b+qjod8YWLIuC0B
         ExErnJfn0Fo+zDEEeDuKMqtE/OT4reu7velyeVqRM5UGwW8gNOoqhI6oul9zT7uFRKmX
         b8Xz2elvxzBLgCPRzuQkmp1PJBNQK4rXmhW4cmOmEfSfVJO7pMShA9hiZxtftvT4+mNO
         /TEb4uF9X35PbgzfrqymuWcnifRZt58319NdVfniiWtnFvMWg4r3Z7iQ0s/lSCkye5pg
         pBQw==
X-Forwarded-Encrypted: i=1; AJvYcCWiQorOYqKcXZuMEggFI2N/t43lerD+y5mzhuQYXvk/54TTyTr0Rsyebso0Q54mkm7Bfs8PDfX4402c@vger.kernel.org
X-Gm-Message-State: AOJu0YzFuTZ5F1+qpSzXJet2MhAe+EtV+AGuEudIlMusj1ghu+jX38fy
	wQZanPkq5CoPd/yoZNkjOu8R7pxUwIlojiwCY1gFKNSv7rIws4InO/dm1S/y60CyvcZ/ioS5xga
	VDEGKn5u6g1cNh3zPBAFgJO+qyrMKIA0km21ogZlb
X-Gm-Gg: ASbGncvwFlWkAixqEvbbgoTJRkjI9p/dTpeeZzmR14AH/DUBtC9rJPEJHARkjEn11OP
	Kku5D5KGKwgGOp/hrNOb0OpBUyzoxoKk49cARLaNVQzqEErCJobrLdQgUrH7t0D0FFoadwkrwAa
	vnwYgJCYJ9spfZG/fxbmkQ7xj1nWOK2DGYsltahgefCUGMj1Q0P5xvcpUIGBtWdcXy++Lohl58r
	bX+z7DaONeYUKAA+UMssC+DMj1AXvCShOc=
X-Google-Smtp-Source: AGHT+IHIEXGhSQKNLTR3joj0qjwcB1T77Dp8iSOMV7/+3N11OuF7i8eFvD4xY1tQQW+z6w+ni2WlHZTcDNTAtH00llM=
X-Received: by 2002:a2e:b8d1:0:b0:32a:e7b9:1dc9 with SMTP id
 38308e7fff4ca-330d24f7ef4mr6438751fa.3.1753169896490; Tue, 22 Jul 2025
 00:38:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250708111806.3992-1-darren.ye@mediatek.com> <20250708111806.3992-2-darren.ye@mediatek.com>
In-Reply-To: <20250708111806.3992-2-darren.ye@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 15:38:05 +0800
X-Gm-Features: Ac12FXx-ybyxFVMO-dZm2uMvhIKao-9eybKP9nlbQtMW_02h967WNikXB-wqqjk
Message-ID: <CAGXv+5HQcGiUnsaOxHz86Y8JxUHh6e0ypusFEBLKchNx3fqKBA@mail.gmail.com>
Subject: Re: [PATCH v6 01/10] ASoC: mediatek: common: modify mtk afe platform
 driver for mt8196
To: "Darren.Ye" <darren.ye@mediatek.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 8, 2025 at 7:33=E2=80=AFPM Darren.Ye <darren.ye@mediatek.com> w=
rote:
>
> From: Darren Ye <darren.ye@mediatek.com>
>
> Mofify the pcm pointer interface to support 64-bit address access.

  ^ Modify

And the subject should say the same, or shorter:

    Support 64-bit addresses in PCM pointer callback

> Signed-off-by: Darren Ye <darren.ye@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Tested-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  .../mediatek/common/mtk-afe-platform-driver.c | 47 ++++++++++++-------
>  .../mediatek/common/mtk-afe-platform-driver.h |  2 +
>  2 files changed, 33 insertions(+), 16 deletions(-)
>
> diff --git a/sound/soc/mediatek/common/mtk-afe-platform-driver.c b/sound/=
soc/mediatek/common/mtk-afe-platform-driver.c
> index 70fd05d5ff48..cab4ef035199 100644
> --- a/sound/soc/mediatek/common/mtk-afe-platform-driver.c
> +++ b/sound/soc/mediatek/common/mtk-afe-platform-driver.c
> @@ -86,29 +86,44 @@ snd_pcm_uframes_t mtk_afe_pcm_pointer(struct snd_soc_=
component *component,
>         const struct mtk_base_memif_data *memif_data =3D memif->data;
>         struct regmap *regmap =3D afe->regmap;
>         struct device *dev =3D afe->dev;
> -       int reg_ofs_base =3D memif_data->reg_ofs_base;
> -       int reg_ofs_cur =3D memif_data->reg_ofs_cur;
> -       unsigned int hw_ptr =3D 0, hw_base =3D 0;
> -       int ret, pcm_ptr_bytes;
> -
> -       ret =3D regmap_read(regmap, reg_ofs_cur, &hw_ptr);
> -       if (ret || hw_ptr =3D=3D 0) {
> -               dev_err(dev, "%s hw_ptr err\n", __func__);
> -               pcm_ptr_bytes =3D 0;
> +       unsigned int hw_ptr_lower32 =3D 0, hw_ptr_upper32 =3D 0;
> +       unsigned int hw_base_lower32 =3D 0, hw_base_upper32 =3D 0;
> +       unsigned long long hw_ptr =3D 0, hw_base =3D 0;
> +       int ret;
> +       unsigned long long pcm_ptr_bytes =3D 0;
> +
> +       ret =3D regmap_read(regmap, memif_data->reg_ofs_cur, &hw_ptr_lowe=
r32);
> +       if (ret || hw_ptr_lower32 =3D=3D 0) {

I'm not sure how the hardware is, but I think hw_ptr_lower32 =3D=3D 0
should no longer be a failure, since it could be 0x100000000 or
some other address with the lower 32-bits all zero. Instead the
check should be done once the addresses are put together.

> +               dev_err(dev, "%s hw_ptr_lower32 err\n", __func__);
>                 goto POINTER_RETURN_FRAMES;

This is out of scope, but maybe this should just return zero directly
to simplify reading.

>         }
>
> -       ret =3D regmap_read(regmap, reg_ofs_base, &hw_base);
> -       if (ret || hw_base =3D=3D 0) {
> -               dev_err(dev, "%s hw_ptr err\n", __func__);
> -               pcm_ptr_bytes =3D 0;
> -               goto POINTER_RETURN_FRAMES;
> +       if (memif_data->reg_ofs_cur_msb) {
> +               ret =3D regmap_read(regmap, memif_data->reg_ofs_cur_msb, =
&hw_ptr_upper32);
> +               if (ret) {
> +                       dev_err(dev, "%s hw_ptr_upper32 err\n", __func__)=
;
> +                       goto POINTER_RETURN_FRAMES;
> +               }
>         }
>
> -       pcm_ptr_bytes =3D hw_ptr - hw_base;
> +       ret =3D regmap_read(regmap, memif_data->reg_ofs_base, &hw_base_lo=
wer32);
> +       if (ret || hw_base_lower32 =3D=3D 0) {

Same here.

> +               dev_err(dev, "%s hw_base_lower32 err\n", __func__);
> +               goto POINTER_RETURN_FRAMES;
> +       }
> +       if (memif_data->reg_ofs_base_msb) {
> +               ret =3D regmap_read(regmap, memif_data->reg_ofs_base_msb,=
 &hw_base_upper32);
> +               if (ret) {
> +                       dev_err(dev, "%s hw_base_upper32 err\n", __func__=
);
> +                       goto POINTER_RETURN_FRAMES;
> +               }
> +       }
> +       hw_ptr =3D ((unsigned long long)hw_ptr_upper32 << 32) + hw_ptr_lo=
wer32;
> +       hw_base =3D ((unsigned long long)hw_base_upper32 << 32) + hw_base=
_lower32;

Instead the check should be here. And to follow the original logic,
if either pointer value is zero, the function should return zero here
directly.


ChenYu

>  POINTER_RETURN_FRAMES:
> -       return bytes_to_frames(substream->runtime, pcm_ptr_bytes);
> +       pcm_ptr_bytes =3D MTK_ALIGN_16BYTES(hw_ptr - hw_base);
> +       return bytes_to_frames(substream->runtime, (ssize_t)pcm_ptr_bytes=
);
>  }
>  EXPORT_SYMBOL_GPL(mtk_afe_pcm_pointer);
>
> diff --git a/sound/soc/mediatek/common/mtk-afe-platform-driver.h b/sound/=
soc/mediatek/common/mtk-afe-platform-driver.h
> index fcc923b88f12..71070b26f8f8 100644
> --- a/sound/soc/mediatek/common/mtk-afe-platform-driver.h
> +++ b/sound/soc/mediatek/common/mtk-afe-platform-driver.h
> @@ -12,6 +12,8 @@
>  #define AFE_PCM_NAME "mtk-afe-pcm"
>  extern const struct snd_soc_component_driver mtk_afe_pcm_platform;
>
> +#define MTK_ALIGN_16BYTES(x) ((x) & GENMASK_ULL(39, 4))
> +
>  struct mtk_base_afe;
>  struct snd_pcm;
>  struct snd_soc_component;
> --
> 2.45.2
>
>

