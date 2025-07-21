Return-Path: <devicetree+bounces-198174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA1B0BFCD
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 11:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F27FD17B96F
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 09:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A1AC1E5711;
	Mon, 21 Jul 2025 09:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FkqW9KPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5210521FF28
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 09:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753089444; cv=none; b=jQ+so3QLTLg7BhEsBD242V9/r44UxuKRTwvZkt+qiYP9ysdDgdELMUbLDe5lOAQp10KS0CEpV8JloFMgnRK7EBluNAJMdZ8ztRft+zeJVuDDfDAzOw8nrULtgzc1y4C0JNCrHkWw2QgZexurxY7FmSs42rqdrNp+TRdNB5nPIn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753089444; c=relaxed/simple;
	bh=kj29subgrE/eDkxVaS3sAeDGcWMe/EOQ6QopPsIdDK4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KDDI/KJJjN/cj08F5RKpErK9jd7Oo2hLwtivDnNx6Ru9Rz/YdOaIa0AL/Yu8dhVr7KsRYbBjzrDAdE068LFZYwXYWBUclEFN5/o2Upv4C+i5F1lt7b98FpKoVPNUqvSM1bF3Q9sxcsMsuyOWoByxWSGk5k4jJTLxUBjidYamoEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FkqW9KPQ; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-33097e1133fso36969351fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 02:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753089439; x=1753694239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzO5P3P0FJijMBbxPLzt3Ej11oxHKuZJ0djP07BY1sA=;
        b=FkqW9KPQi5uv0J70k1yZMExnIkJbRQIcTtGHp6JBJwGk3UGvHieL+PsgYlr2VVTiP4
         gtVO+t1p5MaPF3Ko3df8eGkZbb4xf2KfT1BuCh+s1KIGJOx2zfySjSfXImlU7LdmMA/X
         r5dDbXsVwMHxi9hEXo3vqKh3gMemr2aQsWUss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753089439; x=1753694239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BzO5P3P0FJijMBbxPLzt3Ej11oxHKuZJ0djP07BY1sA=;
        b=VMmA/WBnYpqzxsZVm8FNkxE5Ku37MQWxxxig1rbILTKxswYmpeuuhCEnyB+YBHyWcA
         P8165XEgdLs/oqAd1PKb54MIFnlTBg1GcqTR6N8iY2wd7Z7r/fvZ+9BugymWm4qsp4yg
         JB2FfHFDbZJgQVoEs8iFV3/XqEOGzcm2RyuT1vXfln69P4RnezDaHR8PyCXNJqUo/bgP
         09vfhzvCf0FcBWW7RnLzXB1Nlje7iLn7Lvt5JGRIdfXUeh0+vMUigJ5QgNw8oRKIlcpJ
         x8CTI+CFT80M5Nf2o4mlEacCDqHi9qnXovBiV0bipFPm+EKJuhkpN/Km+WNYZh07MYzS
         ykSg==
X-Forwarded-Encrypted: i=1; AJvYcCV71LvRIS2BYn1W2CJOr/0QkeFOIK8iBJWthN6y6reAg/Xm4fV2ZDvEszZdM1Cg8LlYptkCiu5KAYcq@vger.kernel.org
X-Gm-Message-State: AOJu0YwY7/HcJXFQeRqFT3PVrQB4hmkkQxVzTcucX55Wky4MT/7ZS1Kz
	LQc3ykSqAg5Ety3UKgq+HjMX+/43jBKbKSwS5LjJapA2E1qMNQreC+gJLhn4IEHKsf6/YZ93KRS
	MQHUUUX7nQzQW181qj9OJ90qes1i6HI2663t0+3rY
X-Gm-Gg: ASbGncsfp0/AJlYfGXhlffvz8aKbLY9BawDQxbKBtUqOxG9QzwUO2Uag5fR23Wmvq37
	ErRQt1/TVsX4JoLWW8YWgQ6oWqLtoKsX1NvWhk7HS3eTlP55LQVdgJ+SwTqVCHvDv5Aepd2UCB2
	jxLj521iGxx3DfT1EK/B0HeRKUT4KpwquTFsWYFUaEs1GYcWPojiFX9TxNR/Yx0QZxSQO+POmLx
	baqCEGY/8M254wmSKwVW92AQs4M99D5oKM=
X-Google-Smtp-Source: AGHT+IGsTM4OZon7DAn21K+VOTkANCYpUhk6AdXBSwKBuRY92Lz2AQqBi0+KAt5b4wzJCvI/4APHAfCqNcgrazzwXHU=
X-Received: by 2002:a05:651c:b0e:b0:32c:bc69:e921 with SMTP id
 38308e7fff4ca-330a7b12523mr35293861fa.9.1753089439395; Mon, 21 Jul 2025
 02:17:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250708111806.3992-1-darren.ye@mediatek.com> <20250708111806.3992-10-darren.ye@mediatek.com>
In-Reply-To: <20250708111806.3992-10-darren.ye@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 21 Jul 2025 17:17:06 +0800
X-Gm-Features: Ac12FXyXAg_vtqZYAclMGVQ9H6ITi5IQnXn8iXFc86cirJi3aOdALAQn-Ge1VQw
Message-ID: <CAGXv+5FcW2ds9zS_n0SG8BDXV8pz=Hg2R-9sznV_TqsX0KdnuQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] ASoC: mediatek: mt8196: add machine driver with nau8825
To: "Darren.Ye" <darren.ye@mediatek.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 8, 2025 at 7:35=E2=80=AFPM Darren.Ye <darren.ye@mediatek.com> w=
rote:
>
> From: Darren Ye <darren.ye@mediatek.com>
>
> Add support for mt8196 board with nau8825.
>
> Signed-off-by: Darren Ye <darren.ye@mediatek.com>
> ---
>  sound/soc/mediatek/Kconfig                 |  20 +
>  sound/soc/mediatek/mt8196/Makefile         |   2 +
>  sound/soc/mediatek/mt8196/mt8196-nau8825.c | 869 +++++++++++++++++++++

[...]

> +static const struct snd_soc_dapm_widget mt8196_nau8825_card_widgets[] =
=3D {
> +       /* dynamic pinctrl */
> +       SND_SOC_DAPM_PINCTRL("ETDMIN_SPK_PIN", "aud-gpio-i2sin4-on", "aud=
-gpio-i2sin4-off"),
> +       SND_SOC_DAPM_PINCTRL("ETDMOUT_SPK_PIN", "aud-gpio-i2sout4-on", "a=
ud-gpio-i2sout4-off"),
> +       SND_SOC_DAPM_PINCTRL("ETDMIN_HP_PIN", "aud-gpio-i2sin6-on", "aud-=
gpio-i2sin6-off"),
> +       SND_SOC_DAPM_PINCTRL("ETDMOUT_HP_PIN", "aud-gpio-i2sout6-on", "au=
d-gpio-i2sout6-off"),
> +       SND_SOC_DAPM_PINCTRL("ETDMIN_HDMI_PIN", "aud-gpio-i2sin3-on", "au=
d-gpio-i2sin3-off"),
> +       SND_SOC_DAPM_PINCTRL("ETDMOUT_HDMI_PIN", "aud-gpio-i2sout3-on", "=
aud-gpio-i2sout3-off"),
> +       SND_SOC_DAPM_PINCTRL("AP_DMIC0_PIN", "aud-gpio-ap-dmic-on", "aud-=
gpio-ap-dmic-off"),
> +       SND_SOC_DAPM_PINCTRL("AP_DMIC1_PIN", "aud-gpio-ap-dmic1-on", "aud=
-gpio-ap-dmic1-off"),

These are pins for the AFE block, not specific to any machine, so:

1. They should be moved to the AFE driver.
2. Their names should match the underlying interface (I2SOUT4), instead
   of the intended use case (ETDMOUT_SPK).
3. Their related routes should be set statically in the AFE driver.

Also, for the I2S interfaces, since there are input and output pins, but
also common clock pins, you should either split out the common clock pins
as a separate pinctrl entry, or just combine them so that you have one
entry for each interface.

Last, you need to document the pinctrl names as required in the binding.

ChenYu

