Return-Path: <devicetree+bounces-192688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC75DAF751B
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C97FD483BAB
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 13:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A25B2E6D32;
	Thu,  3 Jul 2025 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Fm3QByJS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00332E6D0C
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751548226; cv=none; b=N15MDP+DSUia0n1vS63NjVZ+vA3vFbn6P7z2XmFB0A7adU6XdcfF/h37Yuh/p+AyeW0yJ9EJATP7WnyG73YFsOhqy/us3/6FlLDc4JCr6hEShlqMB13rZXFBLArNqwzIfyLUkCmu9QxEioqdIzX0JQGZ3go778DsKImZniU9H6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751548226; c=relaxed/simple;
	bh=Gb1IkFXCIe7rVjXkOXMxbgXAPrqKvgtCMq1ITbov+90=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i948rFDLVE8jqf9aPOXI17bncjTWpshZeVyPuET+WNlBHEsGvAs/XW7lM7YKi1021kAeQ9tPntWn6aVtA3Vfkgz3GXZNSGddHX4AYnhQAHIN7qPxNXBIe4sHyNYkZRug/N2W65xZrPEQj2fIJBWgqL+10Kxl7kUUUz/+2CK3qrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Fm3QByJS; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5562d8c8970so1481647e87.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 06:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751548223; x=1752153023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjaTGEjolLFoNk/E0+rgtJfC0Bhrwp6bJIAjq+oqaKQ=;
        b=Fm3QByJS1yrxbRmZp3fOZbS12FUsmKzC2qR7cr2S+7KhebkmQmRw3L+fqVH2FLiepS
         NSw86W06C7Spe5LBxo6PM9Gk89o8eKYgwkgJX9TXS7fs+/yfDQWf03dQU2YhcaPM2mNx
         x/r0xAx0ILvD0EXqW3YrUNh3MfagoLNiYc/LjA/hJazb4zn6YCW4DCfu3fZglztQKjjy
         RF2UG1hPgCdwYlDaLGeW/1WSSEZbM0uGTxJSiZeZiOp5/RnNI2f2fHJ+FmRCHU+tbE8I
         N20c55GoqW60+x+MWu5yMJ8wzYMLiA4gVc+RYZ4tEEfH/jxSCVbbaVBzN/dEf7ZSGio0
         xKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751548223; x=1752153023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjaTGEjolLFoNk/E0+rgtJfC0Bhrwp6bJIAjq+oqaKQ=;
        b=bELFwGEjN1kxh5PXL+R/BqFvwz6/+wya16QGOz0Hi7/I0TmOuMJJpzY6ueQyMjmfAu
         iU23cCzUmwv+rJqCdSkWwCPBzlLPgYr5zKoEoOD1fzYoABCTt+d/3eEEx4LcdYHfcRTV
         hHkzt432seEHlYi0nyZAFXmzOecFe2JWKrGYUw6D8qZ0TT7aS9vklqgVWDiMtH0PTzbx
         fJmxE9W+2gdeaCpzMfc/iLFnzsaIQWz4/vsFTILpmNXynGHn3OrZIi1Syqx69iDa/ByZ
         W2sWhPtTpcZ643Wr7Foe6BSiVQV7571AFS/q1VrBqegCQGHe20EkV+yvkXNwmyXX/+my
         tpzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSOyFxt+n4OUysPd2kvJetMLx09+fCYo3SkpLSZ51Me6iuccOvwWg8HWvIyzdUWBX+/FScW8BzaAw0@vger.kernel.org
X-Gm-Message-State: AOJu0YzCi4UitgiBR+mVe/uPnocG3p6IcyYoYY1QzrYd3ex6wm/Ga8l3
	9Rl4NVsf7IrEVbAxqtdjwPsVRm5DAVRBNh6iiT9ECVcobE36punplmMPsXDHJ6LrcBrEADf7ryh
	nNsguMdn+KCv+hiBrY2AW3OnHqaRUqyfEOCIaVsxOD6aPexNv95lR8EI=
X-Gm-Gg: ASbGnctBVuuLBy9s/MVIl12h6nPQGG0WwSjURkv4DEfLNsEsU5GZlXebx/fG0QiCskd
	Olt0C0ZdCWabLU8fxCZINyYhbR1bk5bFq7XGFiXq5W7TuwlMPJ3LOaLMFOC/2xT0dltW95BejKk
	W+wnbA38GX5kMBp1WaqclCUyXsyE7Ef/1cpueth3qke4rg7s5VFcQI4y4vPPB69pyvshcLIVmyL
	g==
X-Google-Smtp-Source: AGHT+IHxWXlh+Xi5UEoyYXBIiyt+vfXSa6QG+Av8aHQdIOn0y2uNTayumcpylHFwtGf6UVpFfTW0gACu+FLBVk2PB+I=
X-Received: by 2002:a05:6512:12d1:b0:553:3178:2928 with SMTP id
 2adb3069b0e04-556282c250bmr2816540e87.16.1751548223074; Thu, 03 Jul 2025
 06:10:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701161629.9782-1-mariagarcia7293@gmail.com> <20250701161629.9782-3-mariagarcia7293@gmail.com>
In-Reply-To: <20250701161629.9782-3-mariagarcia7293@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Jul 2025 15:10:11 +0200
X-Gm-Features: Ac12FXwrt5arm8lRyaVLiwyu4dMeVOLCnYVwDOO42VXwvsCRxSv67Szmz7sFT_Y
Message-ID: <CAMRc=MdEr+bP1y9DHYa-qrXGJT3-zEvemWm7FzHvkqyfBZC2bw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] gpio: pca953x: Add support for TI TCA6418
To: Maria Garcia <mariagarcia7293@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maria Garcia <mgarcia@qblox.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 1, 2025 at 6:16=E2=80=AFPM Maria Garcia <mariagarcia7293@gmail.=
com> wrote:
>
> The TI TCA6418 is a 18-channel I2C I/O expander. It is slightly
> different to other models from the same family, such as TCA6416,
> but has enough in common with them to make it work with just a
> few tweaks, which are explained in the code's documentation.
>
> Signed-off-by: Maria Garcia <mariagarcia7293@gmail.com>
> ---
>
> +/* Helper function to get the correct bit mask for a given offset and ch=
ip type.
> + * The TCA6418's input, output, and direction banks have a peculiar bit =
order:
> + * the first byte uses reversed bit order, while the second byte uses st=
andard order.
> + */

No networking-style comments in drivers/gpio/ please.

> +static inline u8 pca953x_get_bit_mask(struct pca953x_chip *chip, unsigne=
d int offset)
> +{
> +       unsigned int bit_pos_in_bank =3D offset % BANK_SZ;
> +       int msb =3D BANK_SZ - 1;
> +
> +       if (PCA_CHIP_TYPE(chip->driver_data) =3D=3D TCA6418_TYPE && offse=
t <=3D msb)
> +               return BIT(msb - bit_pos_in_bank);

Since you're going to respin it anyway, please add newlines between
one return here and elsewhere.

>
> +/* TCA6418 breaks the PCA953x register order rule */
> +static bool tca6418_check_register(struct pca953x_chip *chip, unsigned i=
nt reg,
> +                                  u32 access_type_mask)
> +{
> +       /*  Valid Input Registers - BIT(0) for readable access */
> +       if (reg >=3D TCA6418_INPUT && reg < (TCA6418_INPUT + NBANK(chip))=
)
> +               return (access_type_mask & BIT(0));

Same here, please sprinkle in some newlines when returning for better
readability.

Bart

