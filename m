Return-Path: <devicetree+bounces-201239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E095B17D9D
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 09:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE6AB7B9295
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 07:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36991FF1A0;
	Fri,  1 Aug 2025 07:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jZJpcpU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B02A8C1
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 07:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754033468; cv=none; b=pD9I34kmCCdxC+zlXiqfVQJ5MpArxOXJA9AqzG10qG/eQmEl5RrVgcES4xJtqjXarE0cxpCNehx1Ty4WamnxG1EVvb0PTe9d7oKW1gfy0TmnKSPDtiXJZFsnzNJVdjCzTcVCtNrJn2lcdUk+C2C28VWNhhTgSzjv1D+HiaKbtyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754033468; c=relaxed/simple;
	bh=nzHAzvndooAUlHdbUGqWPeN2rAYKeokoZYbDwjOskq8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gtv94wBy6epdq/rAgiZrybBMLnQNhBtl3NYiOwoyTfMpJM1Glg+F7JWOA+0x8xx57X8dArZibVZyo+gPvaSos0oNHVvw7masn94Fm8csXboaEaYnpwaQ6m/H0S3USYrCpeyXWmZm4OMzMscmPUB4FrY3Ni0b6xrVCGupV8CZ0Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jZJpcpU4; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55b797ad392so734165e87.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 00:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754033465; x=1754638265; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=htF75GZq0w8gN2mFjIxAXyCVQ/hkCUtjFwdvPNYh4nE=;
        b=jZJpcpU4Gz5og0PVLcm+2nnc3UdBwGnV+pi6qpVfDtwLTdEi82QfZBlCuFEsGwPc1N
         IGaONEnvDGcpYiamtW3ubeYNxGqC7lI5wlGdtAIVYC0Ahz5R7sGYfqq3TmDKSJmoQepf
         Ol8V9McCGvxi9awJGXv7i59jil/qKmI+z/l7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754033465; x=1754638265;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=htF75GZq0w8gN2mFjIxAXyCVQ/hkCUtjFwdvPNYh4nE=;
        b=MeFhuCHdO8knlXUpLIP6bAP6RJRySpaCJ/ajP9KdXJVmXqW5Dt2EWcb+JbmeyQ2ABK
         LLuJj2AdqJp/RXG4ZohA88K1nDMV0aqFc124mlRS8TgRQNeEn6bQelNYPGerWoEVncAB
         P1Lv5hM32iu0wZHEA4F99GcbNd8Uo+1QDh+IIl7/zUioo5+qRwkcgJwd2UiiJOHpTOwQ
         5WXzFJQeFB9N6V0vYmNk7T6IHYKUgdEDCz+u7CIu4LsU8KgAkwATpcWqmKR3GozpMarI
         dNQUJxqcQVdvLoktIjP56Zkh2PGxBqoLm1tAyVM7/A+WIhetC0KnrCGs4nDjmtjwbpSY
         my6g==
X-Forwarded-Encrypted: i=1; AJvYcCXJQHdePEQ3uOk/ZrhUcAIWr0U1Yt1mWEpzPKULZDkXi+cf74Pr7igMjvxzfg+jFz+FxG15yqk1s+d2@vger.kernel.org
X-Gm-Message-State: AOJu0YywanMFF4DGF0DETgoSBJ5dSK7JEs10LWlDGN3l2onee2igjoDM
	nrYlztz/V2uimeeQyNaLqd/omYHsoH+pylImeEMdidWKWetmvjYEABHFTXyw9MM7KJfkzIifRdz
	GmAeAbX/JBEFI3EBBbH3Rvsi50J54zwvkPyA6MWYY
X-Gm-Gg: ASbGnctZBBvTXL8WLRHd0ihH/nkOf5//RnvhRvR3zp4OOuWksCQJK5Khq36RVb3ty7Z
	Q5gstatdTrbyGTUkfA9XjGncjg6QJEm+ZULmnp1wMtXSgWp2Z34fzRPME6CEavNSyO4PDnWFkWD
	HQUctf4Gh/HJaA8aPw/T6HmloiJeEUONZJM689tSRSIf89emj+47IdQdStaJk/cBbtv/MGy2iwo
	3afL4rqSXFYuzLbvB6ggHXAotM/pjz8Zmo=
X-Google-Smtp-Source: AGHT+IGf+XWnJSS1ofdtRG4xXIiHJgHkwfLVUEtsoVjwZ6AcLoQT6SI+5n+wdM88xlKeQgIZ3eNKpD6h6k9lnfP4oTc=
X-Received: by 2002:a05:6512:3e17:b0:55a:32b7:6273 with SMTP id
 2adb3069b0e04-55b7c08a13amr3066799e87.39.1754033465235; Fri, 01 Aug 2025
 00:31:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250801070913.3109-1-niklaus.liu@mediatek.com> <20250801070913.3109-4-niklaus.liu@mediatek.com>
In-Reply-To: <20250801070913.3109-4-niklaus.liu@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 1 Aug 2025 15:30:53 +0800
X-Gm-Features: Ac12FXywJYCGCnChotG_esGvBZERmatIw20FKLlBH7Yl4ATPob-8dBgyN2iGj1M
Message-ID: <CAGXv+5ELHjc_egKVyNn4kqGfoj0jRxcmzP7H5VnE3dSv-YcERw@mail.gmail.com>
Subject: Re: [PATCH 3/3] regulator: Modify mt6315 regulator mode mask
To: "niklaus.liu" <niklaus.liu@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>, 
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 1, 2025 at 3:20=E2=80=AFPM niklaus.liu <niklaus.liu@mediatek.co=
m> wrote:
>
> Modify mt6315 regulator mode mask, compatible with all 6315 models
>
> Signed-off-by: niklaus.liu <niklaus.liu@mediatek.com>
> ---
>  drivers/regulator/mt6315-regulator.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/regulator/mt6315-regulator.c b/drivers/regulator/mt6=
315-regulator.c
> index 2608a6652d77..092ff748fe21 100644
> --- a/drivers/regulator/mt6315-regulator.c
> +++ b/drivers/regulator/mt6315-regulator.c
> @@ -218,8 +218,10 @@ static int mt6315_regulator_probe(struct spmi_device=
 *pdev)
>         struct regmap *regmap;
>         struct mt6315_chip *chip;
>         struct mt_regulator_init_data *init_data;
> +       struct device_node *node =3D pdev->dev.of_node;
>         struct regulator_config config =3D {};
>         struct regulator_dev *rdev;
> +       unsigned int val =3D 0;
>         int i;
>
>         regmap =3D devm_regmap_init_spmi_ext(pdev, &mt6315_regmap_config)=
;
> @@ -247,6 +249,10 @@ static int mt6315_regulator_probe(struct spmi_device=
 *pdev)
>                 init_data->modeset_mask[MT6315_VBUCK1] =3D BIT(MT6315_VBU=
CK1);
>                 break;
>         }
> +
> +       if (!of_property_read_u32(node, "buck1-modeset-mask", &val))
> +               init_data->modeset_mask[MT6315_VBUCK1] =3D val;
> +

This needs a matching change to the DT bindings.

However, please take a look at Angelo's recent series [1] for MT8196
PMICs that also adds variants of the MT6316 series regulators and how
it adds compatible strings for various parts to cover 2-phase, 3-phase,
and 4-phase settings.

Now personally I think a better way would be if we could somehow read back
a) the part number, or b) the multi-phase settings from the chip itself,
and derive `modeset_mask` automatically. Is that possible? Can MediaTek
share this information?


ChenYu

[1] https://lore.kernel.org/all/20250715140224.206329-1-angelogioacchino.de=
lregno@collabora.com/


>         for (i =3D MT6315_VBUCK2; i < MT6315_VBUCK_MAX; i++)
>                 init_data->modeset_mask[i] =3D BIT(i);
>
> --
> 2.46.0
>
>

