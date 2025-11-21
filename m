Return-Path: <devicetree+bounces-241181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BBEC7A7A1
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F4733A1850
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6669A35388F;
	Fri, 21 Nov 2025 15:14:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A6C34F48C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763738086; cv=none; b=n8l0Yf2Wt3259obOSt4fAETAhaYJ880e+zt243rZe06RogIf84FnLiGny2Pncpqa1+1s6r4A3Hy6F5j6TRhiiiOAXqqhDuK2zhypw7kn3z6FXiTOf+yqtjc6/SMRdQsEiQsTW6uel7aEnJaZ3vOyqUONMBM0ZwAcmWx9c28Utzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763738086; c=relaxed/simple;
	bh=RpuNqsSj7Kc56XlifgXqnEt5UzwwZYKGCkCdReC7HR4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jqaV5hTWL2r1L+JOPcik0PaF3jSSppIBGgDIRZcFYbAt60j/Jr2wWe0DmWdFTQZ6o+wwUkOh3acUfL/YV8W0S/bPf97SWkSW4j36s90oyrxtQ5ZwmKSsdDuI01smP7MvuevNSJoNGdGRFt9Kh5sdzTpZNAR5qoeoL+yomvdIc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-55b104727c8so634554e0c.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:14:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763738083; x=1764342883;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Y56A9w+ayETztMmsAhsdSXSsWoHRaLyp5EoPWD48iM=;
        b=eexYPUwgNqhSax3jtKlj2y4+/BrrlEhDpZeXKa8KkeTqzlGuFtUjIAvSS0wmwHf8p3
         znvPw0jrl3h4NX0VAXgIJDGUgNQx8ad9QQDakMgolOyKsOVLkt8vMfuS+gzIFvJk1Lfy
         kuBzirXxvB+ZPAVrrSf/ZD36O7fANUCjUCsnm2qik9dzScB6lqX+jnc6VNErNbIst5Xe
         w4lGd2Zj+1dtEO2QXcVErogkTOwzyD6nbrRxv/0Bc7V/Ll1juzyZfihFnK8rVOKUIGVU
         vzd2nAQw1MBus6BsTL1w4KPrqxvJttncXfUnHzNnmA7jrkEfYBPUUY6IQxwpXIVhLARH
         QX6A==
X-Forwarded-Encrypted: i=1; AJvYcCXBm5AW/4zBSKbI7Zg/3/OXHl36eUPyun5+7H09rit4pC9yPNXtEWzZ1HCvrZQMpid3AO9RuDp3R3Ph@vger.kernel.org
X-Gm-Message-State: AOJu0YzY7Ou4npG3Cp6xzpLmy7l707SMptkIvWcq1F5gZtys2BwD6RVV
	TpCX1gokcmGa7TxmiyQRyowOxnvHW2KtFYAyWI9zUHjV7rpi+2xHtmIkdH8w7msJ
X-Gm-Gg: ASbGncv04dW1TjznbDNivWgqyBTL0iVitu4bHYyXmnzGwHPbWIs4kVgrKl3UKjdzcuH
	LT1ImD3jovkIdi/tOYtg8IBpV5jyA6CPN/HJMsbSivkAKC7b6o/x18qcVKW3TlXYWXkgrsNV23l
	kG7hZGFBS3kTd8QI6xgHEW2w7uqsFwjvTcRm9DDwgEHq18Tn9mJr6DA9mard82bHY7R7GAppvps
	hP1gErXX1yMjlGVZMJNmyj1OM0dCourB6f/FdEJei5HQjUe6Enwyi08xVPCvjaBQoA3ibzC02Mb
	hevFaw5qsxpxGSvFAshxHtmS0vKnHHCYfzAxy+58JUeMlK7BDwBuW6HinhUGf4vKl0OIluWzlBk
	3LHU9jMTbtdVmmdg//7zrxfreATLAvceZYclI+cIgej+C1lSU1oEjmHX4AsiGQRLEVEihygJSoh
	SnYv9GEN4GEIjB0M98ySRf38idRJCpyngac/T68hzOXaW2lEbZGj5Y
X-Google-Smtp-Source: AGHT+IFQ2RKrFfe4wFrtpsfcc7dPjnY1bX6nj+1oL8n3NtzEU8rxkRXB9W/i1YipMQOcpY7GrevhTA==
X-Received: by 2002:a05:6122:d94:b0:54c:3fe6:627b with SMTP id 71dfb90a1353d-55b8d6ac35bmr943108e0c.3.1763738083367;
        Fri, 21 Nov 2025 07:14:43 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7749fesm2453334e0c.12.2025.11.21.07.14.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 07:14:42 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9352cbe2e14so598416241.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:14:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWF1g3x1VjkhqO8/XYFSRvA4WCmo3OLVZbPqrVwu/WXvEJ93R5FBCLW6yzJMdWg+y0C4b962cPXTW+g@vger.kernel.org
X-Received: by 2002:a05:6102:5109:b0:5de:6dc:2296 with SMTP id
 ada2fe7eead31-5e1de2cfa42mr755696137.31.1763738082352; Fri, 21 Nov 2025
 07:14:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-8-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-8-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 16:14:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXgYD2wfC3Z=3CAR4KVaMh_hMe09KEjg+NeEwu_DN1i5g@mail.gmail.com>
X-Gm-Features: AWmQ_bmqxyLYxYHgTtODb61giIoyovXVZpvdWPsXqQFHa3nh7Q7VbXNAXdTaohI
Message-ID: <CAMuHMdXgYD2wfC3Z=3CAR4KVaMh_hMe09KEjg+NeEwu_DN1i5g@mail.gmail.com>
Subject: Re: [PATCH v3 07/13] serial: sh-sci: Add RSCI_PORT_{SCI,SCIF} port IDs
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
> RZ/G3E RSCI tx/rx supports both FIFO and non-FIFO mode. It has 32-stage
> FIFO. Add RSCI_PORT_SCI port ID for non-FIFO mode and RSCI_PORT_SCIF port
> ID for FIFO mode. Update the rx_trigger for both these modes.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/tty/serial/sh-sci-common.h
> +++ b/drivers/tty/serial/sh-sci-common.h
> @@ -8,6 +8,8 @@
>  /* Private port IDs */
>  enum SCI_PORT_TYPE {
>         SCI_PORT_RSCI = BIT(7) | 0,
> +       RSCI_PORT_SCI = BIT(7) | 1,
> +       RSCI_PORT_SCIF = BIT(7) | 2,

Oh no... Anyone who can reminder what is the difference between
SCI_PORT_RSCI and RSCI_PORT_SCI?

And now some RSCI IDs use the SCI_PORT_* prefix, while others use the
RSCI_PORT_* prefix.

So what about renaming the existing SCI_PORT_RSCI to e.g.
RSCI_PORT_SCIF16, and adding new types RSCI_PORT_SCI and
RSCI_PORT_SCIF32?

>  };
>
>  enum SCI_CLKS {
> diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
> index 78fb3b6a318b..66ab85571230 100644
> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -3326,6 +3326,9 @@ static int sci_init_single(struct platform_device *dev,
>         case SCI_PORT_RSCI:
>                 sci_port->rx_trigger = 15;

Hmm, why is this 15, and not 16?

>                 break;
> +       case RSCI_PORT_SCIF:
> +               sci_port->rx_trigger = 32;
> +               break;
>         default:
>                 sci_port->rx_trigger = 1;
>                 break;

Anyone, all of the rx_trigger setting for RSCI variants is futile,
as rsci.c does not implement sci_port_ops.set_rtg() yet.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

