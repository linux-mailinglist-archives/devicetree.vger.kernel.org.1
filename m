Return-Path: <devicetree+bounces-153740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF43A4DAF3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FCD1167FA1
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FAC1FECA5;
	Tue,  4 Mar 2025 10:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="jS0aCpAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CCA1FECA4
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084611; cv=none; b=TGibqVunjuo3m6rUuQo8GwWncAFdQQK7oO58TxUwcxnvvH0YnV1nshiyDFjFB0we2HKIf5Dyz9Xq0Uw/CRenOIpsMBC2sMVcHfWnyXg2iBdmAE0aTL6MIXu7SMNuzVXz1nq26ZUBGvfX8MigxkDC/eYqft+sUNJJQL/OysJ9jnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084611; c=relaxed/simple;
	bh=EHoD0qagGcne6cLZT0wmntslq+OP88nXMSPMcbC5g7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OF5XGEti9xutXovTBJspba2FqyfgWj7Pugi5MtntSXFHaJRFd9mTLQVwE5tlT+fSQa5r/AfRF3UeCEAL0CrJEZ8tNC0O8mwqN/cjUoHWc2pgEZ5fXwa7jdLPVPzO9qmT34fG73r0ViKK2VL9Eh5cnttIxm/igQmpBMKlP6zr9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=jS0aCpAG; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5439a6179a7so5652947e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741084607; x=1741689407; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcgDcrDvfr7N8xNLIke7CDnqsWk3AZK9G46chFxkHHY=;
        b=jS0aCpAG/NDoxa6sRCg7MBP+A0WJZBboS/xY/3AkRrs32dlV9hd5i5JPMYEXwe4ECz
         jglhlllXqE+HvNsGQQR9lTgejmmi4FHmEXnWIodHKLiWJECVY02IJwCP9Yq+igRQWEoQ
         jfusvrt8e9WT+tHFc271gMmnKKi2oRWlMVU2WwcfeM75ZFbsHqLlPtJQwmD5Wi0enWuH
         C/msOKeVMY4jhyHZoUN2EY4MlzDfI9qT3LKb3W11klOClle2B9y2MvymkxIAR6eOnIJ1
         Z/lnGaRngb43ehdRJj0Ysvc17GVrRzFOzkk5osMB7B2mlj2O50ANkprNAryV+YfyIl3l
         xn9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084607; x=1741689407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lcgDcrDvfr7N8xNLIke7CDnqsWk3AZK9G46chFxkHHY=;
        b=XzAr6VarsttBX5io9todmdylH0HtP7XXd09cTRPJIo8KhcdQQeSm6N1dMsCasPnpmt
         ZaX9wfNtIOX0/LeWp4EhY5TWpgRMnauRdB7fIyLzubonNmukgjaut6BxboUz+kvia2jT
         90ZpEY3+NMNfLf4fAVEs5tZmPCIdYvG4/0fpdZOi5mxHnTn2jw+Z39OxJ5UFlNSKdINO
         /XURWsCWPs+Y7wppS9do9APRQ7Zq+7HpoTiHIiRJ0N8+CAM4sKEBleWNpiLF0gafGRzo
         YGeUFGKbfMAST/GuGXDMUoOk5IcNPJeLLCtIi56jlDOSTJWPJUEQ2lzgAbOu88WwJSga
         /W8A==
X-Forwarded-Encrypted: i=1; AJvYcCXEsD1Zgw1qBf5cK8ilvjhz/7W9/usa0nQTXbIQQsbGVU2DWxe2hgm/4km7oezlu9cadNk8X86CMwdq@vger.kernel.org
X-Gm-Message-State: AOJu0YwKC7wf0Lhx0Pp2vHC8V4lgnyv3N1Mms+I0Pr00aBawO7KwhM7I
	r25CZTQoDyefyu/t/KEcejM0oVVMCYovFhPqn0Oir+qQWl3yzOWoc9kGTYFRmEUEnEeLihBjJg9
	sNzkTTwdP4ZuYExXuCBQXQruVO6KdSWf5dPQQZA==
X-Gm-Gg: ASbGnctlqzOI4x4ndudV0rmJnQxx4jW4QKxXWNm0XxLg08AYMV4kb8mXfocBRlssISa
	bGUuBrxBO2/UofULKBnr9tW7xShHPLZxRZcGrxiynSpmaNy4T79L6mIUKH/g9DDpBD74qhPLlrp
	HmLP61KTl7AdUIdlZnoY0DqrAdinMFO4roHIXPv+POdYJRv39Sxz4CmqTEDg==
X-Google-Smtp-Source: AGHT+IHrJYmirFBfVDyUeRd/XJ8RpCYbbhbHQXdds9Yd6n8xkkrcThPtbWwAqBJ4we5vsSXGsXmtMn+6In/C/xPYNp4=
X-Received: by 2002:a05:6512:3d19:b0:549:6309:2b9d with SMTP id
 2adb3069b0e04-549756c58c6mr892295e87.13.1741084606493; Tue, 04 Mar 2025
 02:36:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303074552.3335186-1-zhoubinbin@loongson.cn> <20250303074552.3335186-2-zhoubinbin@loongson.cn>
In-Reply-To: <20250303074552.3335186-2-zhoubinbin@loongson.cn>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Mar 2025 11:36:35 +0100
X-Gm-Features: AQ5f1Jo6thrrsV43N2ZSskUr5sNrLRHWs4jPUL34hLtTkZv2cSPAt92oKZXNOBk
Message-ID: <CAMRc=Mfr5PCuad28dL19iZrpA-qkL7x0W-4Lt3SZyVfXPP-ipw@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: loongson-64bit: Add more gpio chip support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yinbo Zhu <zhuyinbo@loongson.cn>, Linus Walleij <linus.walleij@linaro.org>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 3, 2025 at 8:46=E2=80=AFAM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> The Loongson-7A2000 and Loongson-3A6000 share the same gpio chip model.
> Just add them through driver_data.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/gpio/gpio-loongson-64bit.c | 51 ++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>
> diff --git a/drivers/gpio/gpio-loongson-64bit.c b/drivers/gpio/gpio-loong=
son-64bit.c
> index f000cc0356c7..a9a93036f08f 100644
> --- a/drivers/gpio/gpio-loongson-64bit.c
> +++ b/drivers/gpio/gpio-loongson-64bit.c
> @@ -254,6 +254,33 @@ static const struct loongson_gpio_chip_data loongson=
_gpio_ls7a_data =3D {
>         .out_offset =3D 0x900,
>  };
>
> +/* LS7A2000 chipset GPIO */
> +static const struct loongson_gpio_chip_data loongson_gpio_ls7a2000_data0=
 =3D {
> +       .label =3D "ls7a2000_gpio",
> +       .mode =3D BYTE_CTRL_MODE,
> +       .conf_offset =3D 0x800,
> +       .in_offset =3D 0xa00,
> +       .out_offset =3D 0x900,
> +};
> +
> +/* LS7A2000 ACPI GPIO */
> +static const struct loongson_gpio_chip_data loongson_gpio_ls7a2000_data1=
 =3D {
> +       .label =3D "ls7a2000_gpio",
> +       .mode =3D BYTE_CTRL_MODE,
> +       .conf_offset =3D 0x4,
> +       .in_offset =3D 0x8,
> +       .out_offset =3D 0x0,
> +};

The naming convention here is a bit confusing, can't we have the
naming of variables reflect the compatibles they refer to?

Bart

> +
> +/* Loongson-3A6000 node GPIO */
> +static const struct loongson_gpio_chip_data loongson_gpio_ls3a6000_data =
=3D {
> +       .label =3D "ls3a6000_gpio",
> +       .mode =3D BIT_CTRL_MODE,
> +       .conf_offset =3D 0x0,
> +       .in_offset =3D 0xc,
> +       .out_offset =3D 0x8,
> +};
> +
>  static const struct of_device_id loongson_gpio_of_match[] =3D {
>         {
>                 .compatible =3D "loongson,ls2k-gpio",
> @@ -287,6 +314,18 @@ static const struct of_device_id loongson_gpio_of_ma=
tch[] =3D {
>                 .compatible =3D "loongson,ls7a-gpio",
>                 .data =3D &loongson_gpio_ls7a_data,
>         },
> +       {
> +               .compatible =3D "loongson,ls7a2000-gpio1",
> +               .data =3D &loongson_gpio_ls7a2000_data0,
> +       },
> +       {
> +               .compatible =3D "loongson,ls7a2000-gpio2",
> +               .data =3D &loongson_gpio_ls7a2000_data1,
> +       },
> +       {
> +               .compatible =3D "loongson,ls3a6000-gpio",
> +               .data =3D &loongson_gpio_ls3a6000_data,
> +       },
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, loongson_gpio_of_match);
> @@ -312,6 +351,18 @@ static const struct acpi_device_id loongson_gpio_acp=
i_match[] =3D {
>                 .id =3D "LOON000C",
>                 .driver_data =3D (kernel_ulong_t)&loongson_gpio_ls2k2000_=
data2,
>         },
> +       {
> +               .id =3D "LOON000D",
> +               .driver_data =3D (kernel_ulong_t)&loongson_gpio_ls7a2000_=
data0,
> +       },
> +       {
> +               .id =3D "LOON000E",
> +               .driver_data =3D (kernel_ulong_t)&loongson_gpio_ls7a2000_=
data1,
> +       },
> +       {
> +               .id =3D "LOON000F",
> +               .driver_data =3D (kernel_ulong_t)&loongson_gpio_ls3a6000_=
data,
> +       },
>         {}
>  };
>  MODULE_DEVICE_TABLE(acpi, loongson_gpio_acpi_match);
> --
> 2.47.1
>

