Return-Path: <devicetree+bounces-241148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D4AC7A526
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67DFD4E9968
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5895F27587D;
	Fri, 21 Nov 2025 14:46:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A61D1E9B1C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736404; cv=none; b=bndoLfDGU9vv+NuZMYP2HuM19h7iGYl6vrWFt5IQjqGHkyTqpPbyBDQSotWhBUnxkopvWn007gRJHcXQOCieos3HXstIbpw+7GpFwV2dNeczmM0p5+eThkuRUsRbV5OEFzTganDJS8Wty0KfdbWCJRusY/v3YdlopNB1yMXnk/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736404; c=relaxed/simple;
	bh=eUopMHDcrOOQ3SDLbKHxv+NyN+8j07BPv0wKk64BLns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ojV3F53/XFIzkY7RXNscc8I087RHd1F6HUE/yahrvQ5c0n7yinFP037mzrcyxqzYsneJnEHv3H03VngrUuBOvvz5AnrhyXY1z+JxAXb/UxLyeAcC+TtgRDgftVwEwy9ZonkOsjDEkTEIoExkOHWf+dHGdSj+HVL8MZZRMIyZXLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b155c9ab2so646062e0c.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:46:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736401; x=1764341201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENP0h/R0a3V4uxvE+8RQQ9YGEKzdgQGNp1M5prxm01k=;
        b=MTlUqNfKtLMiQqtE8gKHF5Xdxz4/gX7lzyCMJ3leb9pXjGxg2kV7RYZMWfLqXbYIE0
         7NsIRGRBCTF0A+rNywYm2bSr2+UGIRbD3E6fO72j55Yxw3nA+a+6Rr37DaGxmDFsE/1P
         S/82mgZlF4xWIi608OI0GPRVcIfwxdghK6rHuMOxjqYKhIMG+aS5GLna6f0s3OKkMJCn
         NwQa1dUf91IBWibNmelwFRDMMrcriQdy5KVYzdQJWz9ftH8AVfaYLMkIJK/vAO+fE1PY
         iZSE+JSlQLm85PrDqlrTGYFu7hXNw4RCIIE4sNKtt0yAg2Jqfgq0TZWYPzqjrA85QukT
         RDDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgZvRWTRrRxLN8G/42sjekP7KW9AB+fCgWxUYouAh4Dk5udBFdN78l7ELNU6fxrF/xCtzE0HxSR65e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw519v+V39zncnC627PE5+rx0IsgoKuUU+IgGNbffNnuDlkLTys
	zs7ZwKnZS7SHTe+k+F1YPQwkWYkhWbm/jJt5J2MuOGEnsMyyU9YsaCNlrkWaRc7+
X-Gm-Gg: ASbGnctKBvmZQPNKFSwHAU+bqen3tbhiJ9G/nfkC+bTdALB1r001T5sknDYToW2pr9s
	bSfsEtfbWAkazyzJcFeP1+z+2+6sm4Tu/fLy1U3+wnfunCe1fXOv59znnNWp8/VK7TGbkcWV4bT
	ogdn4eKGaQzEqKp43dCanbHyUVz8og9brcBGkAmaIMWyzZmpma6OMqGi/FGMHw3rKg/G6gJLbGi
	/fQmoL/SHKPCmh2vZsYHwz+8ELd2oYSuqFZp1Mrf6KT7PtkV6zoQAYoMGUk1z3Xser4RxFxWVYR
	aeDn+YtjSttSS8jtweaUluuamDJqyqZ67aqH0zKkdpXfmgWXFa+wJwACZZQNS3mpt1QVEjRiKh/
	XN/KRzl+HzgSu7opwLJCllugl04E7FX2kkkc+VK7WlKYssu8UX7IOPS/fJZ4nLbZKk5nPd6x0Df
	ZyPYnxGUAgMUk/AGHDGiyWfeIHuuuY8SAEuaCN7DWJdEICbbvw
X-Google-Smtp-Source: AGHT+IFI8FCxp2LNVsRvwLpVt87sCWi9B3psiR1fy8IYg4NO5KvC6aPsbYuipP9YJBFhllnALHMVPQ==
X-Received: by 2002:a05:6122:8c26:b0:55b:305b:4e3a with SMTP id 71dfb90a1353d-55b8d7df9femr776635e0c.21.1763736401202;
        Fri, 21 Nov 2025 06:46:41 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7a1c53sm2464281e0c.19.2025.11.21.06.46.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:46:41 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dbe6304b79so783127137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:46:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWzuQ08U/38yA5Y9O7SipZrX3yR7iU/LqZnJBGbNHM9LSSFQJspPzkNUX1B1XY8NLKUIewUVUNVLxbg@vger.kernel.org
X-Received: by 2002:a05:6102:5129:b0:5dd:b2a1:a5a4 with SMTP id
 ada2fe7eead31-5e1de0f50fbmr689223137.5.1763736400807; Fri, 21 Nov 2025
 06:46:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-13-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-13-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 15:46:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXshthP8nrV-qP=fSv6HGCDj47x9_jQYobZTEivy15tvw@mail.gmail.com>
X-Gm-Features: AWmQ_bmAeU3gltmbELTNuNCMFNbRqLYdBo-mhJUddza9Ysxl7Zd2lut4kibciNM
Message-ID: <CAMuHMdXshthP8nrV-qP=fSv6HGCDj47x9_jQYobZTEivy15tvw@mail.gmail.com>
Subject: Re: [PATCH v3 12/13] serial: sh-sci: Add support for RZ/G3E RSCI SCIF
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add support for RZ/G3E RSCI SCIF(a.k.a FIFO mode). RSCI IP found on the
> RZ/G3E SoC is similar to RZ/T2H, but it has a 32-stage FIFO. it has 6
> clocks(5 module clocks + 1 external clock) instead of 3 clocks(2 module
> clocks + 1 external clock) on T2H and has multiple resets. Add support
> for the hardware flow control.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v2->v3:
>  * Dropped cpu_relax() from rsci_finish_console_write() and added a
>    comment.
>  * Added sci_is_rsci_fifo_type() helper for reuse in probe() and remove().

Thanks for the update!

> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -3563,6 +3563,11 @@ static struct uart_driver sci_uart_driver = {
>         .cons           = SCI_CONSOLE,
>  };
>
> +static bool sci_is_rsci_fifo_type(u8 type)
> +{
> +       return (type == SCI_PORT_RSCI || type == RSCI_PORT_SCIF);
> +}
> +
>  static void sci_remove(struct platform_device *dev)
>  {
>         struct sci_port *s = platform_get_drvdata(dev);
> @@ -3574,7 +3579,7 @@ static void sci_remove(struct platform_device *dev)
>         if (s->port.fifosize > 1)
>                 device_remove_file(&dev->dev, &dev_attr_rx_fifo_trigger);
>         if (type == PORT_SCIFA || type == PORT_SCIFB || type == PORT_HSCIF ||
> -           type == SCI_PORT_RSCI)
> +           sci_is_rsci_fifo_type(type))

I think Jiri intended[1] having a helper that covers all cases, not
just the two RSCI variants. E.g. sci_has_fifo(u8 type).

>                 device_remove_file(&dev->dev, &dev_attr_rx_fifo_timeout);
>  }
>
> @@ -3669,6 +3674,10 @@ static const struct of_device_id of_sci_match[] __maybe_unused = {
>                 .data = &of_sci_scif_rzv2h,
>         },
>  #ifdef CONFIG_SERIAL_RSCI
> +       {
> +               .compatible = "renesas,r9a09g047-rscif",
> +               .data = &of_rsci_scif_data,
> +       },
>         {
>                 .compatible = "renesas,r9a09g077-rsci",
>                 .data = &of_sci_rsci_data,
> @@ -3936,7 +3945,7 @@ static int sci_probe(struct platform_device *dev)
>                         return ret;
>         }
>         if (sp->type == PORT_SCIFA || sp->type == PORT_SCIFB ||
> -           sp->type == PORT_HSCIF || sp->type == SCI_PORT_RSCI) {
> +           sp->type == PORT_HSCIF || sci_is_rsci_fifo_type(sp->type)) {
>                 ret = device_create_file(&dev->dev, &dev_attr_rx_fifo_timeout);
>                 if (ret) {
>                         if (sp->port.fifosize > 1) {

[1] https://lore.kernel.org/all/19a08b75-13ca-45f9-884d-f96602336dfd@kernel.org

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

