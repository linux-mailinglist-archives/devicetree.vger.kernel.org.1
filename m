Return-Path: <devicetree+bounces-10145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E07AA7CFCC3
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B647281CEB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301AA21369;
	Thu, 19 Oct 2023 14:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DmWQkwvP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB3A2FE16
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:32:12 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38B6A1BC0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:31:48 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c9fa869a63so42986495ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697725907; x=1698330707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CIi5sl7kotf6K4zebahXrePOnqvZwmDyPuUbQKhEpnY=;
        b=DmWQkwvPkYojGMkbaeaACKz0u0I7ynfk+ssHQuK4vCwDDHODXHDkY9APjTyMKAaSd5
         ZlKwyztpwjFX5tIUG3Csdwof8ZiMWzvqeZSCrRZtdNy/JNrXWy47by5UVoqU94uEfNsl
         84k/jiDdQl9CSPLdYo/tm+uHzV8+aJ8KOkoxA1mhTfJLIp+FFK015Qu92nqoqwPQrunB
         hjsOCeS5VLDi2AFd6PE7wS/Q8MiZMwIGxX0oYPq9zBqQgS8QErOd4Y3zatBgIHIxbVHj
         ZpzFqr/lXXthwbOW7ytoNDhK3EYf77QYKmEN5F/y9ju/B0xSUyIBBL88ShgQ3rHP/BGT
         WwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697725907; x=1698330707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CIi5sl7kotf6K4zebahXrePOnqvZwmDyPuUbQKhEpnY=;
        b=VL0ig1sMRZ2eET4iGK0viIdaRB9RdG9hkSlWNM4Dn3NYAPPgjcK2caQ2ghXwg1SY3i
         6JaXCxmR2CPHicb3Nfiv0IaW8HyngthOvzoy3pujemguASg1jWWxqr+KXrVzsqdGhNJf
         tMgMZozzquP3vcUb+I6qoEuauGepyILE0IpfWPl6ifNJad8qPM7c3dBs1CeYMiKql6yW
         88C1RoIU8ih0QFKD7BLvRlETPWPGvRUGWgUwLfhB97Nj3Jn988ukf1V19m0VOxfseVWn
         cbZWl0G4OWG17BkFkDTk37y8YUiC3ZP2oxaohw0OTtlB3yMvqhJajP131HxzqzMShvbD
         4jcA==
X-Gm-Message-State: AOJu0YzLJnX9KDJM67MqV+xxCkHHpTIgord1GYQ948BSb9rTFTAYkQkX
	fSfJ4oJxdBncEjHe2CJwV7PhgkwT1dqkh4iT3poq8g==
X-Google-Smtp-Source: AGHT+IG/GJqdnqvx4V9L4BUA/fWFsRzxuErdFglDBcvKmdt4ZRtxaP1ns06xq1OdK3DtBHOoyVfRHYqF5bvkZSe5uxs=
X-Received: by 2002:a17:902:db0b:b0:1c8:a06e:fce9 with SMTP id
 m11-20020a170902db0b00b001c8a06efce9mr2922496plx.52.1697725907291; Thu, 19
 Oct 2023 07:31:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231019100639.4026283-1-andre.draszik@linaro.org>
In-Reply-To: <20231019100639.4026283-1-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 19 Oct 2023 09:31:36 -0500
Message-ID: <CAPLW+4=oY1PjTTbsLq6QL5k37CZnqY1NprC1AxyAMkO4zBBDsQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] tty: serial: samsung: drop earlycon support for
 unsupported platforms
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, alim.akhtar@samsung.com, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 5:06=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Commit 1ea35b355722 ("ARM: s3c: remove s3c24xx specific hacks") removed
> support here for several old platforms, but kept support for earlycon
> for those same platforms.
>
> As earlycon support for otherwise unsupported platforms doesn't seem to
> be useful, just drop it as well.
>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/tty/serial/samsung_tty.c | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
>
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsun=
g_tty.c
> index 6b8d4b4402e9..a74ecc78f4e0 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -2735,17 +2735,7 @@ static struct samsung_early_console_data s3c2410_e=
arly_console_data =3D {
>         .rxfifo_mask =3D S3C2410_UFSTAT_RXFULL | S3C2410_UFSTAT_RXMASK,
>  };
>
> -static int __init s3c2410_early_console_setup(struct earlycon_device *de=
vice,
> -                                             const char *opt)
> -{
> -       device->port.private_data =3D &s3c2410_early_console_data;
> -       return samsung_early_console_setup(device, opt);
> -}
> -
> -OF_EARLYCON_DECLARE(s3c2410, "samsung,s3c2410-uart",
> -                       s3c2410_early_console_setup);
> -
> -/* S3C2412, S3C2440, S3C64xx */
> +/* S3C64xx */
>  static struct samsung_early_console_data s3c2440_early_console_data =3D =
{
>         .txfull_mask =3D S3C2440_UFSTAT_TXFULL,
>         .rxfifo_mask =3D S3C2440_UFSTAT_RXFULL | S3C2440_UFSTAT_RXMASK,
> @@ -2758,10 +2748,6 @@ static int __init s3c2440_early_console_setup(stru=
ct earlycon_device *device,
>         return samsung_early_console_setup(device, opt);
>  }
>
> -OF_EARLYCON_DECLARE(s3c2412, "samsung,s3c2412-uart",
> -                       s3c2440_early_console_setup);
> -OF_EARLYCON_DECLARE(s3c2440, "samsung,s3c2440-uart",
> -                       s3c2440_early_console_setup);
>  OF_EARLYCON_DECLARE(s3c6400, "samsung,s3c6400-uart",
>                         s3c2440_early_console_setup);
>
> --
> 2.40.1
>
>

