Return-Path: <devicetree+bounces-43413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 311CF85A512
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EB9A1C21861
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965FD364A9;
	Mon, 19 Feb 2024 13:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jo8A4ADU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E63612C
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 13:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708350431; cv=none; b=iVF29MXQTI8sDDLKJN4+Q6ZTM5FI250/8ijWY1vn0HOAwWpk9QwjsKLphY3mZmsV2GRw/cneiP+a5kh0O6Sr+u7MW4d0NRLSqXbc4E1XG469LW0JbhGTlHV1mfRvsgU8+iurQAR42JBoMQgVKS022I8CNsOy+7mbQpgFlURwQOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708350431; c=relaxed/simple;
	bh=xVULmkH+MvmGuLK6cHjXhoxBvhQTE6V+Cq5yQZH6Zec=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bfuI0jfsI5XZ1O/CEa2T5HwLiN9C73DodyapwI3WSZCFzt3q4YqHVQEYlon4fwPEKA5KAymrQRhqZL2TdHUXA3SWhCdMg244Vgt4FET5JhuTjzGmCi8M/l5gQ00MC4PvovC1X10TEkDNen0qBDgFBgnnmCbmpz0IqDtkequGq2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jo8A4ADU; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dc74435c428so3936984276.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 05:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708350429; x=1708955229; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iaP9PK7n/mX7mG7UuH28xuqrJj2zBGV+LtBPvpfW1yw=;
        b=Jo8A4ADUpXJafSlxFXDAUsqSwTJYftjwV589GQu60N4L3IkYTmd/aQuE+61vNBWhYK
         PNvOsqwrXDjz/46j1cnoo7bH4StVkXCIxtjcstygQ7iZ533m9IakXJXNepo6HnIosmMm
         JjQnyCsOwfGhSp90FeGLJJdI44HRu46tz3eqoDmTt68w5rfeTl90iDIN+elF2q7j0vqD
         6LMMZe5Xih1xpoeQbLrn5HWe9dILTUlICSPauBF/rvPGXDamOpcJT4trd+Br1dEJ5jRQ
         fIBKwYxyrnCxzHVONGDc04Hce+n1FrVL+9GkwD0Fdxvhol+abnC6PEdnTvPGMIwLicmP
         5KBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708350429; x=1708955229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iaP9PK7n/mX7mG7UuH28xuqrJj2zBGV+LtBPvpfW1yw=;
        b=Lf3s7eoVw4JXIYiDrZbV8Yrrv/XZCynp6e30jKJwrPIs8/DUBh4JxEGUX9XRPc3/Ws
         /YRd22nXErO+Phar3gWHvj5vSG0x9Nc/+cgQk3LztmDHdssTD7TadrH8Ag2KVzwj9J+E
         KeqAwn34L5RoQPlhudH8g0vdZra1clTUdGXBBcLdHBWIYTvIUYiDroiNF3HcyOAmwo+Z
         FkNQlRvPoGXQp7lDLj03bY+x46YcWAFMZlgyVAaTSb4csorWgeKzBS5lot6oDXsKsAvX
         w0M2+YilS+OmP4bg8iKm0/TGdd8k3t8b3YuzGcbg6/9rgQonybjU0/EasXkKHfqDAWPm
         mEXw==
X-Forwarded-Encrypted: i=1; AJvYcCXJFZAU03/97Vm7vsR9PqZDO+u64qaA6TjR0I+WTvcu/W0EDGVU8/RJ9g9xU6GZMv02L/9aJGP27/ws8KRNdbneJLvmMfrxVZay0Q==
X-Gm-Message-State: AOJu0YxqqJ/pcUZBvxNvUQAIqgSY+2ZlfhHPE9LxCZwGE0Qbw6fVtU/Z
	PZEtfRjwR35jKXRrVy7LHB9M0IH5iwo+WGVG6miV4jJbCIpf4iASD+eZO02yBecGRSa2sD29iQC
	FC/Vu7wBZt0wmv1Y/3E7E9yCD1VZms26WgoCR+A==
X-Google-Smtp-Source: AGHT+IGFkA+JVZ1SqL6APIWMHJF1AvLD9iQNHaoGcRhOb+a/WJrMoDKbp9N/E7uTsOENDZxaYigmC6uwWBhCHX74uEg=
X-Received: by 2002:a25:a064:0:b0:dcc:a446:553 with SMTP id
 x91-20020a25a064000000b00dcca4460553mr10159671ybh.57.1708350429007; Mon, 19
 Feb 2024 05:47:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZdC_g3U4l0CJIWzh@xhacker> <CAJM55Z-t9e8L2_iFfdbCDpOzi7UxQao6-L6VU_W9OGBciJ46bA@mail.gmail.com>
In-Reply-To: <CAJM55Z-t9e8L2_iFfdbCDpOzi7UxQao6-L6VU_W9OGBciJ46bA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 14:46:57 +0100
Message-ID: <CACRpkdbkfWByoo+i57rr3w7QCyCgbiTbP6e_kT3ZNkiSeYUEoQ@mail.gmail.com>
Subject: Re: commit f34fd6ee1be8 breaks current dwapb gpio DT users
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 6:44=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:

> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -2042,6 +2042,11 @@ EXPORT_SYMBOL_GPL(gpiochip_generic_free);
>  int gpiochip_generic_config(struct gpio_chip *gc, unsigned int offset,
>                             unsigned long config)
>  {
> +#ifdef CONFIG_PINCTRL

Please do this:

if (IS_ENABLED(CONFIG_PINCTRL) && list_empty(&gc->gpiodev->pin_ranges))
...

The ifdef is so ugly.

> +       if (list_empty(&gc->gpiodev->pin_ranges))
> +               return -ENOTSUPP;
> +#endif

That looks like a reasonable fix, I try to wrap my head around if it
would affect
any users but can't figure it out, we have to test.

Can you please send it as a proper patch? With the above fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

