Return-Path: <devicetree+bounces-109583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E368F9970E0
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 18:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A272286285
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 16:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3E51E47DD;
	Wed,  9 Oct 2024 15:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fnKX3J28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA91E0DF0
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728489176; cv=none; b=gjf+tmV4CyArHdPBPhTMKYqlkE+whW7VC8LbIGgA63P67SeI6rmsJJ7JHANzYoQz1JGUK5eKsaeKIjtApBDZYEu5rr8cJGle6fzZSF5qTZhTqlf3zrZsY83mrNAbPv5nKTN5t5T/MFXL4PuUu5qio2fLQiB7bXuJb46GzYmffbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728489176; c=relaxed/simple;
	bh=3sFHZmEW2MjxExkKM9sDczuMrw5pPLpbF/k/0RGwpy4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iY/Xevzsm76At7Ii+CwReIueCTKdKFDzIaQfP/RnVyIoNqA0RKSDITwoEgUFAIEhUnz/ho7DmwnUjz+c7bmLckRx79T54qbKHIWfDHdfN+B1RpDooEZvUu+3GzEQhOh9kZm8pYEigYksmJRNAgZnLiWCuheAAh/Kg+PdvodkXNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fnKX3J28; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fad100dd9fso103490111fa.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 08:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728489172; x=1729093972; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bHHWA6YgsIIeE/IuJksmfuFV8ppv+azpUN36MH750Q=;
        b=fnKX3J280VnWc7hVq33ZOmDU76kss7vxFPjJd1KrU9R2KGGrMsNesmCvvWaBBGiKGu
         7YSwo+YfDZhttlsHNxl0Id6P+2kjddNNQErwjKLbPhodHF6yuiosYmhYfT06GOv3+32b
         r7U+czxl/hj9f2ARaw2gJXJBrQrWsE1gWyBQ2p0NO0BKnB1yaoniLAVWoNFqTm/NdrAy
         veZnG/W+Bf/dDJHTTSlWR+321qsO8r4Ih4b9ciHgZXHsoxKpFIDDjKwFd2/sp/kv/BEq
         Xn4J+Z1Zbg+eLSK7J00aieXZepk7JNuVmCnIH8K2My5GRjfdTqJfGH9d3NDv5fEYvV70
         epxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728489172; x=1729093972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1bHHWA6YgsIIeE/IuJksmfuFV8ppv+azpUN36MH750Q=;
        b=b0QKPvj866RI+WHU6hqVW0x4CrIn9XKZ/FxA3L+7rAwBv8+H1MWrgpVUdgzo8VJFxx
         p1vI7psk9w+CxMObla85J4YRY6fvJTj5DtvI8gCiyWTGbvjvIGDG+TrfHjjgoUTy+e4A
         2qdAqRtMUQK/Av7TYai/seqwH8iwhqSrwHUjSMS2Q0UaPnr0uyT2oPrVA3vhCsiZd+oK
         Gs2bFcAtu/cbsMPq069haetVLxcsLr/2BpkRc2kK7wj+rvgDohSXMNtAPYTgb0iUKzFx
         TTu/NYYGGOg/lZ9K4HZxwyIcy4aMxT+cjylpS1z7aKDuOlXVCrba8ESqOA7gPQOnuzEo
         GW5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVy9pewymFsk1AGIttAmaXOxRZM2EEI5ql9J/5CaTTA3ECFUdGK7ztLfptxGD/q7gKjAsaLuwZbUAHc@vger.kernel.org
X-Gm-Message-State: AOJu0YwrUcSs+lYrLLczhyTUfmLyUCUQT3ga2qn4B3CBMNjA/bmwomNJ
	0hlFbBd9TqeR1GXyUQkGkHDTR/IoLoW68bJtKYxDtd+B5Z4jBmtyEEtEQZ5ZD5AlXOS3cgRhzmR
	q/Us344UNta5R742l1Wydd3lV4v/VNOj2+nWUTg==
X-Google-Smtp-Source: AGHT+IF8wf3YGhU7Z/W/G2IJaCExiz0JJfA8GJE3/xgVnwbP5cIqnmaCszaOB+meGFdIXUMiUrW4u9T2Eo1BiLhyv4E=
X-Received: by 2002:a2e:a9a8:0:b0:2fa:cfba:fb7f with SMTP id
 38308e7fff4ca-2fb187f36c3mr30878311fa.40.1728489172271; Wed, 09 Oct 2024
 08:52:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-mbly-i2c-v3-0-e7fd13bcf1c4@bootlin.com> <20241009-mbly-i2c-v3-5-e7fd13bcf1c4@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v3-5-e7fd13bcf1c4@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 17:52:40 +0200
Message-ID: <CACRpkdagORGgjjhJOxkU445EQ1AGz-4j15E=tGCrvEx7hAnHAQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] i2c: nomadik: fix BRCR computation
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 4:01=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootli=
n.com> wrote:

> Current BRCR computation is:
>
>     brcr =3D floor(i2cclk / (clkfreq * div))
>
> With brcr: "baud rate counter", an internal clock divider,
>  and i2cclk: input clock rate (24MHz, 38.4MHz or 48MHz),
>  and clkfreq: desired bus rate,
>  and div: speed-mode dependent divider (2 for standard, 3 otherwise).
>
> Assume i2cclk=3D48MHz, clkfreq=3D3.4MHz, div=3D3,
>   then brcr =3D floor(48MHz / (3.4MHz * 3)) =3D 4
>    and resulting bus rate =3D 48MHz / (4 * 3) =3D 4MHz
>
> Assume i2cclk=3D38.4MHz, clkfreq=3D1.0MHz, div=3D3,
>   then brcr =3D floor(38.4MHz / (1.0MHz * 3)) =3D 12
>    and resulting bus rate =3D 38.4MHz / (12 * 3) =3D 1066kHz
>
> The current computation means we always pick the smallest divider that
> gives a bus rate above target. We should instead pick the largest
> divider that gives a bus rate below target, using:
>
>     brcr =3D floor(i2cclk / (clkfreq * div)) + 1
>
> If we redo the above examples:
>
> Assume i2cclk=3D48MHz, clkfreq=3D3.4MHz, div=3D3,
>   then brcr =3D floor(48MHz / (3.4MHz * 3)) + 1 =3D 5
>    and resulting bus rate =3D 48MHz / (5 * 3) =3D 3.2MHz
>
> Assume i2cclk=3D38.4MHz, clkfreq=3D1.0MHz, div=3D3,
>   then brcr =3D floor(38.4MHz / (1.0MHz * 3)) + 1 =3D 13
>    and resulting bus rate =3D 38.4MHz / (13 * 3) =3D 985kHz
>
> In kernel C code, floor(x)   is DIV_ROUND_DOWN() and,
>                   floor(x)+1 is DIV_ROUND_UP().
>
> This is much less of an issue with slower bus rates (ie those currently
> supported), because the gap from one divider to the next is much
> smaller. It however keeps us from always using bus rates superior to
> the target.
>
> This fix is required for later on supporting faster bus rates:
> I2C_FREQ_MODE_FAST_PLUS (1MHz) and I2C_FREQ_MODE_HIGH_SPEED (3.4MHz).
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Excellent, thanks for iterating!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

