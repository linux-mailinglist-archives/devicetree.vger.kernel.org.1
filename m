Return-Path: <devicetree+bounces-242244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F7C88895
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09A8D3A3896
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3CB2877D9;
	Wed, 26 Nov 2025 08:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C213125A9
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764144025; cv=none; b=ZiNZbgF9zLtLjkitAGlJ+W+/eWo4sf/lWk88vsm73mbwUDTkzEbB3prNL7sv6kehQUX5I8rCpbteKhLlbSAwvKRKN0/HvkfKn2jGpv9Ccanzo1mxF/m1DRcITmx23ZO+3RPDaTBHXQZTVkulNY9HNxTDydYAYXyHv5vvW30gZUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764144025; c=relaxed/simple;
	bh=HNi1fv+2fx2B8j+ekndM34eFcpXdrmRxoHpcjsDW2FY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o3uWQh/KHb4gKJGTxMzLorHiwLdRLAVxJIICXpJ0M7dP3Gpoh8jHZamgshxOs4cGplpjdfyGb0xYoithGyCMqeHesZdwWN5gJojCllDBmcCA3OvNJHOn7qXkYUOcsh2qk5zVckk0ssJpySkDN6MeVoKGZrjdDlflrh3pMFFmUNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-93a9f6efebbso1809802241.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:00:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764144022; x=1764748822;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OCse7qCPdoJOLa+j8CcQsY7/CoYHUIpR0OYu1ViuPxc=;
        b=eW4l1+4Ejlz1AtVKUZWGbyQsGjCrYZyAkw5a28B0pyH/3WiWe+p7E4T5PW8Y/zjcPT
         G1EqUJHmuxxWGIUpomxQMTiGWrF7nhfMY70l3LJGoMCF5t8WuXy7ueaaDdp5JWbN29QF
         c0oX/kzisKR1jNOP2db7gH9pbHA0JoOeXBiM4/84nBcc05or5yvmtr1jwnt2TFo+O00q
         l5Q21O1ISOSWJldEf05/d7lPRERTvGTSeQlpD8A7exW7ry4vXhN+yADhzVutkUtmEeU4
         tinVh5UFAcF/RQ/BtFSa5U49twEW7qMkocvTJfbUKMoBAMCfRcz4T5sRN9FQKG9nK1as
         VTmQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6fYXjnAhIpjEIYz0Tu6D7hYvrskrgQsdcDb6bUMh3rMd/JntRHZorl69sT5VsVr3ZDRjpCw8LE6Md@vger.kernel.org
X-Gm-Message-State: AOJu0YxIhKAetyVd5/jipHQ1+H+LMALg6znywJDpVlpgPqwbKkY3if3t
	6WiIvRkUkvUIHdFp8N4N4XtsYvj8VIY/jyaNzq+OXqXjfKVtvrW5ht5Tkw2+tZUi
X-Gm-Gg: ASbGncv/62mMkfRHu7NfeP/CFhaMef8fl07vIKRP2OJsDx38UbGS+ZivPYDBgL6gVj+
	wqsDBjycT15mcr8wY99XO8qXwZ243Wbcign1DZtT2JFJI5arYcQlbR7QKmXWZbH9kw9rq5Q1B0n
	uzVwdsdXu9BBj1JWuP0BVpXfLUxB/+OJRnLiimcSG7t/q78rPaYQeD0eh4lJZm+bC7JD/sstU5c
	vEfe4Gk2NqhzQFVumcFWa6Ga61RzC8jw6Hgp1fDymGwgVSSUAps3Sk8yv0pHqbl5xEAyYE/a9s7
	WtjVNFPTdYRKF399DsrcALtugjinrPHUd/MFblH3NjsD7cyCGEOiehNNFmzoVoAeWBC951LMTbA
	x2v3IaBHbC8GK/3WIVsh9mXmdHfiktX9So5+oXAcanqk0zvLF/ZBGCiAyaqaEgrXrTF+JQ4tT+c
	kz/kDKh7Loo1DFKUzOwyqpEYdBWylJAPTXgacnq8kkDA8TokdyUvWZMV6aF+s=
X-Google-Smtp-Source: AGHT+IEd0FiT1hEc2IALBq4itb7eu8uxL47OyLCEYYs54cPiZxG12Gix6yVRHrlomE/1Gfgp9G65AA==
X-Received: by 2002:a05:6102:26c9:b0:5db:d096:ba6e with SMTP id ada2fe7eead31-5e1de37499amr6076363137.36.1764144022441;
        Wed, 26 Nov 2025 00:00:22 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c561c4c2asm7636914241.2.2025.11.26.00.00.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 00:00:21 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-9372a52af7eso1905872241.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:00:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUwyHXySjf7ANIaCQSg4YewyYsJ/5Iu6Q6SNCOvp5bNWCc1oBWbsctiaSVTsvEvtJhLuk2Wzpg++MzF@vger.kernel.org
X-Received: by 2002:a05:6102:5107:b0:5db:ef30:b74f with SMTP id
 ada2fe7eead31-5e1de0c07b0mr5210199137.8.1764144021094; Wed, 26 Nov 2025
 00:00:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com> <20251125150632.299890-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251125150632.299890-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 09:00:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUVt6usA9DvzpzKz7OHYppuFH=jWGKRMqEPDzeoUyTXSw@mail.gmail.com>
X-Gm-Features: AWmQ_bnOQjOc7nJK151W-GJheTjV2TvfMTas4-rqaVdq0WY_ea4kfE0DIGYgMyI
Message-ID: <CAMuHMdUVt6usA9DvzpzKz7OHYppuFH=jWGKRMqEPDzeoUyTXSw@mail.gmail.com>
Subject: Re: [PATCH v4 02/16] serial: sh-sci: Add sci_is_fifo_type()
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Tue, 25 Nov 2025 at 16:06, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add sci_is_fifo_type() helper for SCI operates in FIFO mode to
> simplify the code in probe() and remove().
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -3546,6 +3546,12 @@ static struct uart_driver sci_uart_driver = {
>         .cons           = SCI_CONSOLE,
>  };
>
> +static bool sci_is_fifo_type(u8 type)

sci_has_fifo?

> +{
> +       return (type == PORT_SCIFA || type == PORT_SCIFB ||
> +               type == PORT_HSCIF || type == SCI_PORT_RSCI);
> +}
> +
>  static void sci_remove(struct platform_device *dev)
>  {
>         struct sci_port *s = platform_get_drvdata(dev);
> @@ -3556,8 +3562,7 @@ static void sci_remove(struct platform_device *dev)
>
>         if (s->port.fifosize > 1)
>                 device_remove_file(&dev->dev, &dev_attr_rx_fifo_trigger);
> -       if (type == PORT_SCIFA || type == PORT_SCIFB || type == PORT_HSCIF ||
> -           type == SCI_PORT_RSCI)
> +       if (sci_is_fifo_type(type))
>                 device_remove_file(&dev->dev, &dev_attr_rx_fifo_timeout);

I am wondering if we could just check for s->port.fifosize > 1 instead,
and thus combine with the above check?  We do have to fill in .set_rtg =
rsci_scif_set_rtrg first, but are there other hurdles to take?

>  }
>
> @@ -3918,8 +3923,7 @@ static int sci_probe(struct platform_device *dev)
>                 if (ret)
>                         return ret;
>         }
> -       if (sp->type == PORT_SCIFA || sp->type == PORT_SCIFB ||
> -           sp->type == PORT_HSCIF || sp->type == SCI_PORT_RSCI) {
> +       if (sci_is_fifo_type(sp->type)) {

Likewise.

>                 ret = device_create_file(&dev->dev, &dev_attr_rx_fifo_timeout);
>                 if (ret) {
>                         if (sp->port.fifosize > 1) {

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

