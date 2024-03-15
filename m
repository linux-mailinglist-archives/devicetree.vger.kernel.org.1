Return-Path: <devicetree+bounces-50682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA6887CB0D
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC0D41C21654
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 10:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B2FA18044;
	Fri, 15 Mar 2024 10:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nlK5bv2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4604B18027
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710496888; cv=none; b=HO0OvjukvS8adVdpRh+ORQs19YjeVnpduN4yEqUHOBx5hNTpWQ/2dzXB7ZzgdNhClHZL1EyC2f71iNIsitKZIZC8rLl9s0BUBBT1Ggj/t3pqRLceAlUqU3Rd8/ZXLj38V+xIiu+eHltsb2BJYJZ9w11Ja3m0bgwmrzZm+WhzBvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710496888; c=relaxed/simple;
	bh=gacD0vR1r8l6qYGtakyqNg/sNRdABilWR9geZMBzIqY=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=I/ofFlYAZvxvpEA3UZ2vYRClGK5qkFT9jhEIIPsBKv/d2CRjtpfOtZvizznNnzCetQvu2CpnGw7r6B+Bav+XANbZEkTP84IrgV3WyhhPTIh2o3TJGb8Q/QZ0gnKwFsnMb5vRY08poUfpVty+gkbbW3wuDOCHC0mkreIS+Zj9WZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nlK5bv2i; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-413f1853bf3so10609155e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 03:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710496884; x=1711101684; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=fWhlUz33vWZPgCe1jVxjs/Yq8Zn8UQqggbMUOeu+zYA=;
        b=nlK5bv2iZIs6DLhQbcorkDWWig6i2Zs//yFuBtTGg0hivLi5rY3PgbpZ8tmV9/kteP
         0EdssU1VXeyowlgHtDNYqxEMbO9m17j9T1Mgj0xT9H+xqlZinLy3cVraYw04ravkyc2C
         g2dkIQkRGH0EmcEUaORHZ2eG3uPfKI++sqaAwgTFQrsP5PNr6FuUfC6ri6Oxls3sJpR5
         p4HuyZHA9Z1DglfgQOinEzNhWyhneuklWQKgO41ES4E8+UK+9tHwCxm3I0VuCG84JOZw
         xZUsshVdq2qSC5bBekn/7Iand7YMrKopHZ0HTd7v3KTIpa0nXfKapUE4bGVorimqPb98
         4HpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710496884; x=1711101684;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fWhlUz33vWZPgCe1jVxjs/Yq8Zn8UQqggbMUOeu+zYA=;
        b=DYRx5XxUlk49UuEXaXe4mSQaM3fykaz07Q0j+rgVIVOL/sUEMk8igJDqDX1TyRLdIB
         qUYqfsNGz+nbpS6wtTVh8yfs5vCx6gAjU+XPD/918AvbCkbhpxJfbT6bxL00onC08SO8
         8+dtt/eBRN8O2uhRTpqIHVEjZhTnpIALqeepV/fJkLvC1PkRIivluskLi2skeM3uzFG/
         ZnS08O05XSthhpfG34Y7ADlyNCSXKUECdBhgPJDm2TeKXCIbjma2TPvI8vb0CO752uYv
         4IPKiXnw7CJtKqVq3w5V2cwWyL1X3O9dDGLnZpvY+UKkRjk8lgZKeXWvuXkg9bmDp2pT
         ao5g==
X-Forwarded-Encrypted: i=1; AJvYcCWgN32RuVcW9fRgCDGkSqFMFg7T9171re1ykZyeRwKgzyg9WYYrk36pAfQ6gHYJ6tS4paDmMksYX8HI0BjkDtqOU5XZYUNMr3uL6w==
X-Gm-Message-State: AOJu0Yx/vM0yer+oHKFtUoJV3aX4mWpwxPq7JV57t1KAh2dCeZKquqmd
	2XXMEUZ5iI4Oqb9Y//R6W3HObL5F+c2BHNFOlKHgSnhH/26kL6Q0vR4jQxwYLJU=
X-Google-Smtp-Source: AGHT+IEcDrisOCqCMJOmaLRgZQyAaHTXXz8anuBHbakkxYTiPreghhV1D06Sq2gYrDwj1MifnJt7yg==
X-Received: by 2002:a05:600c:4706:b0:413:25c6:1981 with SMTP id v6-20020a05600c470600b0041325c61981mr3480578wmo.20.1710496884073;
        Fri, 15 Mar 2024 03:01:24 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:8151:4d0a:14d8:1124])
        by smtp.gmail.com with ESMTPSA id h17-20020a05600c315100b00413f76fe7b0sm3887726wmo.21.2024.03.15.03.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 03:01:23 -0700 (PDT)
References: <20240314232201.2102178-1-jan.dakinevich@salutedevices.com>
 <20240314232201.2102178-7-jan.dakinevich@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet
 <jbrunet@baylibre.com>, Michael  Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob  Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Kevin
 Hilman <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@salutedevices.com
Subject: Re: [PATCH 06/25] ASoC: meson: g12a-toacodec: fix "Lane Select" width
Date: Fri, 15 Mar 2024 11:00:35 +0100
In-reply-to: <20240314232201.2102178-7-jan.dakinevich@salutedevices.com>
Message-ID: <1jzfuzhkzw.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Fri 15 Mar 2024 at 02:21, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> For both G12A and SM1 the width of "Lane Select" should be 2, not 3.
> Otherwise, it overlaps with "Source".
>
> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>

Missing a Fixes tag.

Ideally fixes should be sent first in a series - or even separately in
this case

> ---
>  sound/soc/meson/g12a-toacodec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/meson/g12a-toacodec.c b/sound/soc/meson/g12a-toacodec.c
> index 531bb8707a3e..b92de2235627 100644
> --- a/sound/soc/meson/g12a-toacodec.c
> +++ b/sound/soc/meson/g12a-toacodec.c
> @@ -229,11 +229,11 @@ static const struct snd_soc_dapm_route g12a_toacodec_routes[] = {
>  };
>  
>  static const struct snd_kcontrol_new g12a_toacodec_controls[] = {
> -	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL, 3, 0),
> +	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL, 2, 0),
>  };
>  
>  static const struct snd_kcontrol_new sm1_toacodec_controls[] = {
> -	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL_SM1, 3, 0),
> +	SOC_SINGLE("Lane Select", TOACODEC_CTRL0, CTRL0_LANE_SEL_SM1, 2, 0),
>  };
>  
>  static const struct snd_soc_component_driver g12a_toacodec_component_drv = {


-- 
Jerome

