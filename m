Return-Path: <devicetree+bounces-242988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD9BC920E8
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F7E44E0506
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA4A19AD90;
	Fri, 28 Nov 2025 13:01:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DA428727C
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 13:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764334863; cv=none; b=E3JcI2Xb55ZSUO41oB8Jb24PUAaXF6sj6R0JMUcXK0sRP1i4a8XmsqB/LD3NrHECzd6JXHVjccdz7nfnGCFU20J4is2w45/1UNp0RS6Qa4sow8Lu5bj0PPR/ZxiWaa5rhYhPPQ1vJP9WhdQS8M188vQ0nvPZz4sFYNFPPyiqVEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764334863; c=relaxed/simple;
	bh=UPOcep9n81xsv668vSa9PNoqgPqmlBy5Zw/nNjOG7e0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fW2GcwImYrZwhdAbUBf1N9M8nsIrP8VY9o3LcCJ+Iivvf6L0uGZEm8m5EBYEzb21SnVStgwagnm0XxJsmxycUlovKomBxMqIgjbR+gR/091WhTFZ2GhQiazasoE8y8CDqeAWqsr08wYjvO2z348sS1qkeL2XtUOgsKPJNm29S4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-4511f736011so1366224b6e.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:01:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764334861; x=1764939661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kDseQkJisg4CVIxAT/T+T8CEfU/6CIXfQEhtmLfidg4=;
        b=BZkvj28WUhP8m76QRbjCnMJANlfHQa1PqJGxmap5OJlCjcTWkWss1CPkefz1/y0d88
         KfaLRbqg29QYSrCBnqKD8EnPmmPLPOfFqPSphWvqIi8fQy62he3wkRa71qiYxzsywnxZ
         x0P6oUWyZpT3mmEYfG7ZXLfHGfNtIwyyOEPZnJQX78HTRGaMFgnVvETVm/CfJuigjlpH
         D9mO015awsvrLXjGgt6Qh4Q3uJ7XU//OIL2Jx8uNn9fuIySl0QLKFwwtVmJNxyP7f3Io
         A9YL82d8WddwLalq2felFKpfqVML/gHlKPa9mTRHqcnZTtWeEbm5Z87pxe+jb3fq6W1S
         rEDg==
X-Forwarded-Encrypted: i=1; AJvYcCVdTNTD5yBAsFnlnC67ei7q1brpHPe5YSZUZNtlgIRjSUWXikrOm+opW8UoxcnvMDia8OnmPzOyo6AX@vger.kernel.org
X-Gm-Message-State: AOJu0YygVpuUmlWlwhzQ55dinQb98Cv9ZZnz4dzoXNrX7rTLqSgxIWvE
	CgZXV+hFJZZVwSuqpzoRBdcC1JPCXYGAW1uhAbuHosIRBc11q/s4od4feDF+5d0T
X-Gm-Gg: ASbGncsFjr3fCnYKZVhMWc7oSz/qPfdZ+TLbmEgJQzLN360W66i+ekNZaUBmJZFob4z
	knOLgSJSiylnvYdt5Ygs5htMCbWlpmQMM7r6saLck84bgWJuVfBXtiPiJ+hfC93Qz9vIaCSTTdW
	dMTFKVVxc6jdp83MluhvFcO2w7Yuw4Xlvy9d5UbyNyizFHRy2JuYYNjrd6pPoggRR3JgzoI71+e
	V/jXMpbY2gVylmVQJ1L9rPkCfcuG8Kkvdtc40y4mOreMyKkSdKiQ2++T8DGM856oZjyd2dAyBAy
	yI4BqfF8sAXsnGg7k+rFcv+4cwhcizTfrtpsfrpOL4Wp/jQgvlTz1cOqGv1x8dxPs5wlO562hv0
	8O7a30EomHZjeVbEiybFmb+u269ZeUGkdNbwaulaQwr+GZpONbS8TMr5p4Ys7yQMagKRgfezSWo
	YNznLInB/+vfIKig/yyuTthx+pYRv29qNujTY0rJ+aIF8K9hp6
X-Google-Smtp-Source: AGHT+IHL22RjYfgq1AZNxAKgbTWMuNI3xYDfnz85U9kE86qEVzMCI3VGBbKHHh5TlE9sLsdWfyj1Yg==
X-Received: by 2002:a05:6808:3c45:b0:43d:2ce0:1201 with SMTP id 5614622812f47-45112b5d92emr13095478b6e.24.1764334860837;
        Fri, 28 Nov 2025 05:01:00 -0800 (PST)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com. [209.85.210.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45316717174sm1269466b6e.0.2025.11.28.05.00.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 05:00:59 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c77fc7c11bso1350139a34.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:00:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVYD3n/LYXzZHc26UcIR2YJQSrvOU/PCjxuMOrSTv7VSoHD3Bzi7kvS5uRajqa1rNMjOHHMiqXykXMh@vger.kernel.org
X-Received: by 2002:a05:6102:6444:b0:5d5:f6ae:3903 with SMTP id
 ada2fe7eead31-5e1c41bae5fmr14290159137.20.1764334422864; Fri, 28 Nov 2025
 04:53:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com> <20251125150632.299890-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251125150632.299890-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 13:53:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVaqnCmHBk+Zxo23KU7e+GuH022nDgpR59dH6K8Ei9O4Q@mail.gmail.com>
X-Gm-Features: AWmQ_bmgULqFLeFRcycOL4pCRTkS5R6pidDFCRXPqROfRT1ZMmUGtqRK8msYPEk
Message-ID: <CAMuHMdVaqnCmHBk+Zxo23KU7e+GuH022nDgpR59dH6K8Ei9O4Q@mail.gmail.com>
Subject: Re: [PATCH v4 01/16] dt-bindings: serial: renesas,rsci: Document
 RZ/G3E support
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Tue, 25 Nov 2025 at 16:06, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add documentation for the serial communication interface (RSCI) found on
> the Renesas RZ/G3E (R9A09G047) SoC. The RSCI IP on this SoC is identical
> to that on the RZ/T2H (R9A09G077) SoC, but it has a 32-stage FIFO compared
> to 16 on RZ/T2H. It supports both FIFO and non-FIFO mode operation. RZ/G3E
> has 6 clocks(5 module clocks + 1 external clock) compared to 3 clocks
> (2 module clocks + 1 external clock) on RZ/T2H, and it has multiple resets.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v3->v4:
>  * Dropped separate compatible for non-FIFO mode and instead using single
>    compatible "renesas,r9a09g047-rsci" as non-FIFO mode can be achieved
>    by software configuration.
>  * Renamed clock-names bus->pclk
>  * Rearranged clock-names tclk{4, 16, 64}
>  * Retained the tag as the changes are trivial.

Thanks for the update!

> --- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml

> @@ -62,6 +82,46 @@ required:
>    - clock-names
>    - power-domains
>
> +allOf:
> +  - $ref: serial.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g077-rsci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 3
> +
> +        clock-names:
> +          minItems: 2
> +          maxItems: 3
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g047-rsci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5
> +          maxItems: 6
> +
> +        clock-names:
> +          minItems: 5
> +          maxItems: 6
> +
> +      required:
> +        - resets
> +        - reset-names
> +    else:
> +      properties:
> +        resets: false

While technically correct, please move the contents of the "else" branch
to the "if ... renesas,r9a09g077-rsci" above, to increase uniformity.

Also, RZ/G3E RSCI has two more interrupts: AED (active edge detection)
and BFD (bus collision detection).  Sorry for missing that before.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

