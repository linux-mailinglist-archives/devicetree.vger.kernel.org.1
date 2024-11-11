Return-Path: <devicetree+bounces-120805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A49C4380
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 18:25:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 741E01F22554
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 17:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29261A76B0;
	Mon, 11 Nov 2024 17:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B39U4mHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4AF1A706A
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 17:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731345901; cv=none; b=WjFuB1epcLGes9e7qOsIWgBJtrteXVTRxxOWZ8455gkaiKd4thWofGLFZC6VV1JGSW1INe4VJiFqe76TvbdfK9LToj/3wdKNrWNDNZR2bBoVbXpVFJT9gr/+blmJRmhLZfsg4yrjEVKi0oygh/siTK9t5oTj4snJHvca5HHoPLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731345901; c=relaxed/simple;
	bh=+bsSX+Ra+NomURtV4l48KCn7neeBpILpjUckN375Gyc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DMoeFWs64m/laBadJpTGKYHFLHxO0XoT8VS2LMY0m5LiTo8rNvFcNxDavNnO/srN4/gL4ZLlMapLKiXHdniTV+8JTf6IUsGlaV8G+O5WXeSLDZrmHOXdoOU27rNZzs+X+AbIaUY1l9c02w8KLUmXo1e0xCRRfG2G9KsS52QnQVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B39U4mHe; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539f72c913aso8242437e87.1
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731345896; x=1731950696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tn3wlhPcjYAmpGIs9KYtyq4CcNrw701MWptcU9EAyJw=;
        b=B39U4mHerm97k55LMPpOBqoFQY3TlScmvYzLlA8OFF0cHv82pnUKPEHOql2M8Bn5r9
         +36sg/cs+Zeih/Xn4CtFq8bNasTUCwa0AKUuYIysdF2BIua9hBSX5pXfiAFXYOQzPlgE
         lzIgIEQs7UBCbJAKfhdVsnlgC2RcLG/o9hUeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731345896; x=1731950696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tn3wlhPcjYAmpGIs9KYtyq4CcNrw701MWptcU9EAyJw=;
        b=LWtzgTKtueH9L4AmfY2w63TjLbiip7ElcQOoHmIFKipfIrxZxzySyM9qG/0pwQER04
         6/uKe0xtT/0tWW5zvdv05d+U60mGsqqxdc+O0hpKkX1FNOawyV4UYavwRibk4jG2R1/Z
         lSGOLi9VH4ESNCtotBWM8ffHWF9Ick4/T1MRWrdMU2e7PEjCXhLzC9XdhswbW5KUOkqp
         wOWrsor+/MlAnE6ZRPmoJa9UvbXlIafQHU/oE2adLdht3tulwgcKgEKMYYMt/NRLYIXo
         Pvnk3VMkeoCvgZjHnAAfQdbUxvZBimC9w/tVjdi8GliFhoBu+NhWaOgKkYp4q0wAr4lH
         a65A==
X-Forwarded-Encrypted: i=1; AJvYcCWjDeQO4nrf5+xFyrPpv16LlhR7RkdGvIUV8TFbFkItu/eEpS19/5SxcqeA2w1HGMFyLIVDNQoaOCcl@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5UCdxsdYdqht4YhVO+OgeWP0gP6D8iBxMGmRV2gLcn31t6+ZV
	fYsF12xcbignAPIHgvJNrzw18i9MVXqhbB6suytnQNN0u5kxexbAW5AVzlidQBmHkMitT03Tfqt
	oiQ==
X-Google-Smtp-Source: AGHT+IGEWizhZ9+Zy/rIC6oZRjkw83RjkSJbKBc9xjVslC5vD4Omtzw5N274o5iFq8JkDmojMBDgsA==
X-Received: by 2002:a05:6512:3185:b0:539:e761:c21a with SMTP id 2adb3069b0e04-53d862f7a62mr5441084e87.48.1731345895776;
        Mon, 11 Nov 2024 09:24:55 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826af020sm1621447e87.268.2024.11.11.09.24.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 09:24:54 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so4732992e87.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:24:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUOMjR9F9ElouBEpGKKEBGE//oOoFzkBecM6dQzVRWzxGyt0wpqQMumo6WkAGWHPX6BOOQsSW9sjyf3@vger.kernel.org
X-Received: by 2002:a05:6512:e88:b0:539:fb49:c47a with SMTP id
 2adb3069b0e04-53d862be63fmr7008281e87.4.1731345893812; Mon, 11 Nov 2024
 09:24:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111075000.111509-1-charles.goodix@gmail.com> <20241111075000.111509-3-charles.goodix@gmail.com>
In-Reply-To: <20241111075000.111509-3-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 11 Nov 2024 09:24:39 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKU2Wwfwg1EACYgJtUKJjYH2OOQn6ELXbBK=B-jzbTZQ@mail.gmail.com>
Message-ID: <CAD=FV=WKU2Wwfwg1EACYgJtUKJjYH2OOQn6ELXbBK=B-jzbTZQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] HID: hid-goodix: Add OF supports
To: Charles Wang <charles.goodix@gmail.com>
Cc: robh@kernel.org, krzk@kernel.org, hbarnor@chromium.org, 
	conor.dooley@microchip.com, dmitry.torokhov@gmail.com, jikos@kernel.org, 
	bentiss@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 10, 2024 at 11:50=E2=80=AFPM Charles Wang <charles.goodix@gmail=
.com> wrote:
>
> This patch introduces the following changes:
> - Adds OF match table.
> - Hardcodes hid-report-addr in the driver rather than fetching it
>   from the device property.
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
>  drivers/hid/hid-goodix-spi.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/hid/hid-goodix-spi.c b/drivers/hid/hid-goodix-spi.c
> index 6ae2300a6..80c0288a3 100644
> --- a/drivers/hid/hid-goodix-spi.c
> +++ b/drivers/hid/hid-goodix-spi.c
> @@ -20,6 +20,7 @@
>  #define GOODIX_HID_REPORT_DESC_ADDR    0x105AA
>  #define GOODIX_HID_SIGN_ADDR           0x10D32
>  #define GOODIX_HID_CMD_ADDR            0x10364
> +#define GOODIX_HID_REPORT_ADDR         0x22C8C
>
>  #define GOODIX_HID_GET_REPORT_CMD      0x02
>  #define GOODIX_HID_SET_REPORT_CMD      0x03
> @@ -701,12 +702,7 @@ static int goodix_spi_probe(struct spi_device *spi)
>                 return dev_err_probe(dev, PTR_ERR(ts->reset_gpio),
>                                      "failed to request reset gpio\n");
>
> -       error =3D device_property_read_u32(dev, "goodix,hid-report-addr",
> -                                        &ts->hid_report_addr);
> -       if (error)
> -               return dev_err_probe(dev, error,
> -                                    "failed get hid report addr\n");
> -
> +       ts->hid_report_addr =3D GOODIX_HID_REPORT_ADDR;
>         error =3D goodix_dev_confirm(ts);
>         if (error)
>                 return error;
> @@ -790,6 +786,14 @@ static const struct acpi_device_id goodix_spi_acpi_m=
atch[] =3D {
>  MODULE_DEVICE_TABLE(acpi, goodix_spi_acpi_match);
>  #endif
>
> +#ifdef CONFIG_OF
> +static const struct of_device_id goodix_spi_of_match[] =3D {
> +       { .compatible =3D "goodix,gt7986u-spifw", },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, goodix_spi_of_match);
> +#endif
> +
>  static const struct spi_device_id goodix_spi_ids[] =3D {
>         { "gt7986u" },
>         { },
> @@ -800,6 +804,7 @@ static struct spi_driver goodix_spi_driver =3D {
>         .driver =3D {
>                 .name =3D "goodix-spi-hid",
>                 .acpi_match_table =3D ACPI_PTR(goodix_spi_acpi_match),
> +               .of_match_table =3D of_match_ptr(goodix_spi_of_match),

I can never quite remember what the current preference is in regards
to "OF" tables (whether to use #ifdef like you've done or mark them
`__maybe_unused`), so maybe someone will request you change it. ...but
IMO what you have is fine and looks to be properly guarded with
of_match_ptr(). As far as I'm concerned, this patch looks OK.

Oh, I guess the one "nit" is that I would have put "spi" in the
subject, making it "HID: hid-goodix-spi: Add OF supports". It might be
worth sending a v5 for that (after waiting a day or two) unless a
maintainer tells you not to.

In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

