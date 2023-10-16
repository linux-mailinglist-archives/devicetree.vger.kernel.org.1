Return-Path: <devicetree+bounces-8776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E1D7C9FF0
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06A511C2048C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 06:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A413415480;
	Mon, 16 Oct 2023 06:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rQQgun6t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7750185C
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:50:27 +0000 (UTC)
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC95BAD
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:50:22 -0700 (PDT)
Received: by mail-ua1-x932.google.com with SMTP id a1e0cc1a2514c-7b5fcf9c682so1919766241.2
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697439022; x=1698043822; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cugyFbB0VbQIzo3wmEyt+FOD2X9ilc6qO8RhhoeUTBE=;
        b=rQQgun6tzNiGi+FzXf8qU3gucqDh6+nBCbiUx49gvBimQtGFEFp7d8900USbwyu53C
         rt/vAamqxRllfpB1nQi9JBw6SYobok8A/dtqd/2gNcJkVgGHqcTPOGEMKF8Yca7zBHq/
         1Ik8WsDlAWvHnZ6+vuCLG+5sa6LnLoRgPsBNdZ9cayFpGEWGe5HUEMmRojdtQCzUC7yw
         aqrsBSApHxmAvlewlWxmbunQZM0zJMJ/NxRomZWxGJ+Ucvr9lbaFfF7CSSlqTW5QKd0i
         OJrO1BomSH6oj6dBH+sGNZMWwNaT7dOJzZx5NJnAC0UrhCX5ZcNK7b95Msk/L4GJgm76
         N6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697439022; x=1698043822;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cugyFbB0VbQIzo3wmEyt+FOD2X9ilc6qO8RhhoeUTBE=;
        b=wRcJeZGoKKw37PqLK/9kAU3b9xlUu9WD5AN6z8yefO9A/+5vs6hCGL6BeBaiuIQyNV
         faz4In5fXzKVAiBm0fozihkgVQZXHbRDRe0LzFk36cM0NM+4YuOmLQ977ukEr+oHGrux
         eGPyyvrzrK0/a2F3i+1Bo9ywsw4Rwelbuy+6BbgKI/eSQUGRYQ79lv882RMVX9xQuAji
         /MsGaRXFCDGNY2fKRt4fBGtGMB/wybAyK10XQDsZhYAVBgHx/p4KabY6J7/DuVA/ayHZ
         R/w6Z3nppY7W9+SF4JVMqkFRoKAMwpfrYQspBrRj+GUxdrlEGULS+Nls8pQbgVr09Ql+
         oSKA==
X-Gm-Message-State: AOJu0YxTv3UmFciWH7jXy9tfjqAgeOp1uT1KQTCHTDrUzK7eJKYCmzoJ
	nQ9baGwTkuGDXiWNl8QfhR1OQSQVbu10XbPYyO4JtA==
X-Google-Smtp-Source: AGHT+IFj1k2svtP622rUs1lZbv0wLou3zbbJQCqatzkfI1stwosbMHy9UcYW27GGqfrfevKKxiHAOY83nz+U0JR6eKY=
X-Received: by 2002:a67:ae49:0:b0:457:bbd5:23fd with SMTP id
 u9-20020a67ae49000000b00457bbd523fdmr7516507vsh.9.1697439021806; Sun, 15 Oct
 2023 23:50:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com> <20231013063008.2879314-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20231013063008.2879314-2-alexander.stein@ew.tq-group.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Oct 2023 08:50:11 +0200
Message-ID: <CAMRc=Mep+HKgpkAobv5jWZ_AAbc6es4926TTjnEY1MK6Kpsf3Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] eeprom: at24: add ST M24C64-D Additional Write
 lockable page support
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 8:30=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> The ST M24C64-D behaves as a regular M24C64, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Add entry
> for it, so users can describe that page in DT. Note that users still
> have to describe the main M24C64 area separately as that is on separate
> I2C address from this page.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> This is a copy & paste of [1] for ST M24C64-D. I reused the same pattern =
and
> also used Marek's commit message.
>
> [1] https://lore.kernel.org/all/20231010190926.57674-2-marex@denx.de/
>
>  drivers/misc/eeprom/at24.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
> index 616e63efc9864..f61a80597a22d 100644
> --- a/drivers/misc/eeprom/at24.c
> +++ b/drivers/misc/eeprom/at24.c
> @@ -196,6 +196,8 @@ AT24_CHIP_DATA(at24_data_24c32d_wlp, 32, AT24_FLAG_AD=
DR16);
>  AT24_CHIP_DATA(at24_data_24cs32, 16,
>         AT24_FLAG_ADDR16 | AT24_FLAG_SERIAL | AT24_FLAG_READONLY);
>  AT24_CHIP_DATA(at24_data_24c64, 65536 / 8, AT24_FLAG_ADDR16);
> +/* M24C64-D Additional Write lockable page (M24C64-D order codes) */
> +AT24_CHIP_DATA(at24_data_24c64d_wlp, 32, AT24_FLAG_ADDR16);
>  AT24_CHIP_DATA(at24_data_24cs64, 16,
>         AT24_FLAG_ADDR16 | AT24_FLAG_SERIAL | AT24_FLAG_READONLY);
>  AT24_CHIP_DATA(at24_data_24c128, 131072 / 8, AT24_FLAG_ADDR16);
> @@ -227,6 +229,7 @@ static const struct i2c_device_id at24_ids[] =3D {
>         { "24c32d-wl",  (kernel_ulong_t)&at24_data_24c32d_wlp },
>         { "24cs32",     (kernel_ulong_t)&at24_data_24cs32 },
>         { "24c64",      (kernel_ulong_t)&at24_data_24c64 },
> +       { "24c64-wl",   (kernel_ulong_t)&at24_data_24c64d_wlp },
>         { "24cs64",     (kernel_ulong_t)&at24_data_24cs64 },
>         { "24c128",     (kernel_ulong_t)&at24_data_24c128 },
>         { "24c256",     (kernel_ulong_t)&at24_data_24c256 },
> @@ -258,6 +261,7 @@ static const struct of_device_id at24_of_match[] =3D =
{
>         { .compatible =3D "atmel,24c32d-wl",      .data =3D &at24_data_24=
c32d_wlp },
>         { .compatible =3D "atmel,24cs32",         .data =3D &at24_data_24=
cs32 },
>         { .compatible =3D "atmel,24c64",          .data =3D &at24_data_24=
c64 },
> +       { .compatible =3D "atmel,24c64d-wl",      .data =3D &at24_data_24=
c64d_wlp },
>         { .compatible =3D "atmel,24cs64",         .data =3D &at24_data_24=
cs64 },
>         { .compatible =3D "atmel,24c128",         .data =3D &at24_data_24=
c128 },
>         { .compatible =3D "atmel,24c256",         .data =3D &at24_data_24=
c256 },
> --
> 2.34.1
>

Applied, thanks!

Bart

