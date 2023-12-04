Return-Path: <devicetree+bounces-21281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A2580301E
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 11:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C483C1C209D0
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D37620B23;
	Mon,  4 Dec 2023 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LZdMi2pL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01C119F
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 02:24:04 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5b383b4184fso46019977b3.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 02:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701685444; x=1702290244; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9AgvcjFrIEfs+Le/LoTsEi6ZnDb0Ubd72oSh9eoTTQ=;
        b=LZdMi2pLwciZiSqQNC10SPvm54MHfbvDkdtl7nYufVYpkwTvhjhJox31kcg1iR8wfu
         tl6dchohY2CPdeRp0kBjhAwiMRZKqapT/BfWJ4vvzcmchqT7/VeWrYAOhegLgwgevIQg
         6B5pf8NqMeJlskIf2iL0q44XwgwVeqOCDhEAkpoLu6Yk+fnlx0MSV/OjXuiD4WTuuj4w
         kYQDp4qTTCfHoQQNWJTegcdDPGV37TLHJF604FBT9SiMoB4zxOyA/S5ND1KRbLyLfbWo
         COBmjdfRv7bahwJ7cEGMys0DiHN+8BfgnGLzLo6CMPVCI205OEicWA0R99JtwhTL2y85
         CkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701685444; x=1702290244;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h9AgvcjFrIEfs+Le/LoTsEi6ZnDb0Ubd72oSh9eoTTQ=;
        b=b7BX3xkncIS72OXxIrelR46zer6uodwc4IC0xYy6jiceZx3GGhT6ac2OgMOTBlf3TX
         AXl6I4iem/pCeb9n2QKMtMQc/V89t9NUUcEi71HMhUTTOUpfJmRFWYKu2nKdJW+gOVZg
         FQZY/7C04N7/7ZVdWhKWrISRi/LO5idyQG0bQvgfnIN7yzi4XF1jA+vXcE1rcU3calrU
         2jry7I96TQyt0oiAr7QfHlsO8GgfyVJMioWkuA3e0sXuenUDQk0l//yAsP9TWZiPUWGY
         D0o5AyMOsmPvmrnRlDGsJbr8QsnPMkE55OIzREdJ8BmReuPQ4lqYcOjCy6WVvl9BK4l3
         hgRg==
X-Gm-Message-State: AOJu0YwYBEzDCDMqRQ00JiU19QbnXS9cG8DrEr3aEGTmykCZ51jF6hQ2
	TJk3tGPHQm7zLD38rakQiSiCUxMm0UkIMJTVqBPtyA==
X-Google-Smtp-Source: AGHT+IHHpmfGUb53KffFfRrngptg7rxDHFOScbgTQzl/r+YjOcVG4eW8jSkXI3Wt5YUMb5861m+jahvOS7+OrPRrQu8=
X-Received: by 2002:a81:a045:0:b0:5d6:c5e6:fa4d with SMTP id
 x66-20020a81a045000000b005d6c5e6fa4dmr2674125ywg.31.1701685443855; Mon, 04
 Dec 2023 02:24:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202222934.137191-1-david@ixit.cz> <20231202222934.137191-4-david@ixit.cz>
In-Reply-To: <20231202222934.137191-4-david@ixit.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Dec 2023 11:23:52 +0100
Message-ID: <CACRpkdYbOzqWqoGtGWDiaOE9-7wBW6mV6m9NtO4PydB-kQjBMg@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] ARM: dts: tegra30-ouya: make dts use gpio-fan
 matrix instead of array
To: David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Andre Przywara <andre.przywara@arm.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Thierry Reding <treding@nvidia.com>, 
	Wei Xu <xuwei5@hisilicon.com>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 2, 2023 at 11:30=E2=80=AFPM David Heidelberg <david@ixit.cz> wr=
ote:

> No functional changes.
>
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

