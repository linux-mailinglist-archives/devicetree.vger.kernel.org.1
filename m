Return-Path: <devicetree+bounces-111097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A2499CFFA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02AF0B238DA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 14:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8B01C303D;
	Mon, 14 Oct 2024 14:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="oqaDaQod"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0493D1ACDE8
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728917857; cv=none; b=QSW9tUTtuJv6j+aEwgxqLvPdCvY6k3/ZYDa0BlJZhP7mtHYwqRwWC4Jkns6HSTZ4pDDG7PA3Izbvj6SsdtVfrNqCyI77BcmUeWvarobaXtHHEQaDVY7r5fZrG5OYt6+Mh3hlVtcT7TZUj41zlGmRvu3fBKQ+TyRK1rb0U1iXfss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728917857; c=relaxed/simple;
	bh=4I22R8EH6rJft0GBNcZ0FqU8QlkA7JHkZcP5FIrhCMQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LwGcxIpSHs7vcIQVlOsr79gDhogCP1aUCbwqZ06tgqMjuus3wcevLhkOSXH+6MBGZDOf0QMsJfXkGDsijYMq4dOorbZ9an3UKrLNZlSubxhh2auYy8z4Xmck/2kKIkS+8HX7PlWQKRpJEv9f5jYGkfnS3aoEvrSVDPB/2j7WVOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=oqaDaQod; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8024140624
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728917843;
	bh=w7jcJQQrs2lciGR+l1IMV3wPi6SzvVaYcIWT6ArXKPU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=oqaDaQodQE6Tf+dNfyZ1RdwJa87Kz9p0bIg3rHSHK+GopyTX8tQOhuQDyMDD5GUfF
	 DC9yFIq8hPk244lUkL7fRWOBaInjpsNHXaMqcWKjdt7b+rGhiuOEuz5cPzjOm65x9d
	 9jq8AKVg45zvF3hwvH0NTkmuRnnttBAPJBUYbcczS1pzkqZK0u9ayykDC+ERZofZGx
	 cgIfwAJyhXpoI0u8MGYbO0TJlSHqiQPjUpQnsLQ1VZf4SJTMzJdmKG56ZyWRyrRF38
	 xmg0efxLW3Lf8yubNu0o/godt418aYZupUY0cs7M49IdEk3m7DcjKJl30Gfxh8SaHY
	 GMmjhDztO5qOQ==
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3e5d8cf7088so1248277b6e.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728917842; x=1729522642;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w7jcJQQrs2lciGR+l1IMV3wPi6SzvVaYcIWT6ArXKPU=;
        b=KGBtFRC4Vh6CK7f7r/UZz7cY24KyoaPP/U/9wnohEiNBqfwOfGHw2+tTq0b7kyHqwW
         brB2mo4LmhlIukq0BIBpBWx358jqEHh68TBbYXGxDSnHP3VXu5WCf8hxMenbFgGxa6CL
         rQOY1tgF9XCJLjEJ58GRf2SzAb0Re1du3pVMC9GfyFDPhFYdAnvJwefQsRUDbJ+0tLjQ
         l4fz6LhSGbhHzvYvfy+XnwdFW1lKxVlU8Cjj8btIct5Zup4nyEDQGqFO0JIZChHngmwn
         mTJQbDoEuxyJSv2pGPgHbdeIqQm3uUdJgZmQ5xpRERqH+cp6LEk9+O5W//o4RDzB1F0l
         oHdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl5RWvQHeOpuvXpvEQPF54miwvZEZbfaUxNgHkZUHJW/UC9O89pMWAyJ7CL0yObqOVzZHGg32rGRr6@vger.kernel.org
X-Gm-Message-State: AOJu0YyH997SZ2qmyUKMuRfcIjnjTYm9yocVIkTKjPVeR8OjU7JNgPz7
	EpqPqOEz74hmTN5A17H1WaTGEegjL/nkSVfKqT1oRjOzCaeQvxh8r/bDE6iXbCxrA3xcTh5o4gC
	rDyTgZ6giZdVMvM6U74sPxbSLoktMuga3B6wJ/D7f3m8aE70yAoHZfh248cI8qgpaEVLcIfRGkS
	gJFl7nGG1NZxM8GW34QaHOqDVasFxxxjHz/lfSfiMd2EPFgy1V8Q==
X-Received: by 2002:a05:6870:4214:b0:278:bfa:87da with SMTP id 586e51a60fabf-2886dced84amr7421847fac.10.1728917841765;
        Mon, 14 Oct 2024 07:57:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZc7S/SsrDerBCPsPZzUzEauPicO5lJ3x7aYFJHGS/2FP/NfQZYzrPO7bg8HBk/3yI2N7NccykyCVKHL+eU0Q=
X-Received: by 2002:a05:6870:4214:b0:278:bfa:87da with SMTP id
 586e51a60fabf-2886dced84amr7421814fac.10.1728917841412; Mon, 14 Oct 2024
 07:57:21 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 14 Oct 2024 10:57:20 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241014123314.1231517-4-m.wilczynski@samsung.com>
References: <20241014123314.1231517-1-m.wilczynski@samsung.com>
 <CGME20241014123412eucas1p2144768f373a2e2de7f6d00e7b67f9328@eucas1p2.samsung.com>
 <20241014123314.1231517-4-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 14 Oct 2024 10:57:20 -0400
Message-ID: <CAJM55Z-bzivMZWUsHiii+2tw2-kdRe7kqtVa+MvPEAVTmOvChg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] riscv: dts: thead: Add mailbox node
To: Michal Wilczynski <m.wilczynski@samsung.com>, drew@pdp7.com, guoren@kernel.org, 
	wefu@redhat.com, jassisinghbrar@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, m.szyprowski@samsung.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Michal Wilczynski wrote:
> Add mailbox device tree node. This work is based on the vendor kernel [1].
>
> Link: https://github.com/revyos/thead-kernel.git [1]
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 6992060e6a54..435f0ab0174d 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -555,5 +555,17 @@ portf: gpio-controller@0 {
>  				interrupts = <55 IRQ_TYPE_LEVEL_HIGH>;
>  			};
>  		};
> +
> +		mbox_910t: mailbox@ffffc38000 {

Hi Michal,

Thanks for your patch! Please sort this by address similar to the other nodes.

> +		       compatible = "thead,th1520-mbox";
> +		       reg = <0xff 0xffc38000 0x0 0x4000>,

The documentation[1] calls this area MBOX0_T, but it says it's 24kB long.

[1]: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf

> +			     <0xff 0xffc44000 0x0 0x1000>,

According to the documentation this is inside the 24kB MBOX1_T area.

> +			     <0xff 0xffc4c000 0x0 0x1000>,

This is callod MBOX2_T, but is 8kB long.

> +			     <0xff 0xffc54000 0x0 0x1000>;

This is callod MBOX3_T, but is 8kB long.

> +		       reg-names = "local", "remote-icu0", "remote-icu1", "remote-icu2";

Maybe these should match the MBOXn_T names in the documentation?

> +		       interrupt-parent = <&plic>;
> +		       interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;

You should probably also add the clocks here:

	clocks = <&clk CLK_MBOX0>,  .., <&clk CLK_MBOX3>;

..and claim them in the driver. Otherwise the clock framework will consider
them unused and turn them off without the clk_ignore_unesed kernel command
line.

/Emil

> +		       #mbox-cells = <2>;
> +		};
>  	};
>  };
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

