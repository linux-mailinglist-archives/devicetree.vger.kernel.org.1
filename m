Return-Path: <devicetree+bounces-241150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EE9C7A501
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EA633A04CA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446722BE7C3;
	Fri, 21 Nov 2025 14:52:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72982BDC0A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736771; cv=none; b=qfIUfcGP3TSvVotJiWrMrQIALrgtskkwRNwkHBeY9iYqmM8v/irH8/pKLTLnyyjd2pVdd8iLVSoxLCH5j2tZ1MBPT5c0tr7cmTOKKInzeIUvTH103tqwb8Y8nDSuNyeBMA/LlE/82OUfc2kT0/kdwSha1ymA5lBy3hOkB2Okl/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736771; c=relaxed/simple;
	bh=skql/n5RcA7jyeBbQIxGJIucWjPzv4AFxG9+SxoeQo8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hLsEbG/v7e1loRAJ7ZP2GRtbkQFjHU5FE+UCfXT+tRBu0DLEMhiMGg8mjv+mWJngfbuMTPFhK2XbxPICZbQRHZ7qbV0ejhltshkUE5ntU77YZlO89kALrhnpqSWBTfw51MWQqhKTNYsGpXj4ysI4EuD2I3/yeue2oKgYBpV3zJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5dfa9c01c54so1328166137.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:52:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736768; x=1764341568;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+lC5TXmbx1EgLF/GuqliUSxYBVJgyAz3ZPwC7d7k9sA=;
        b=rijKEXg/VZsnTfvcFifbh91EX9XeaWz5tH0FVwyKzJr75Jl2HagUF6h4LB+zltJ5kS
         u6sZLB7OR7RYzO/cvWO4Kj54CgmQAttQJxd+fCvuY0SuagnyngjmEgFGSCrI69hI0RGK
         RTsqM7jIdj++PxFy/01v7+y5o/XEXjVzFNGa/AQFuwbGZgs64fnY+S8a0Qbb3ri635nA
         4HdTiSLHyvAAdyYgL48Jnx4B5Opv7D9T/W6M7+V7CCVxmqI1WkTfddPTuCHhUCociSwu
         vFDp99pxiZKre7uDz4nVA11vCjkh+fqiOfBAYiNjmb/2BusEMcsKYbjGK18VCwdxfWTs
         7ptQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMmJ7WC0g230l2ERgb4y1p+iXPCJ3SPs4Uvx717O7tCK4EZjBHv2Q53EqdE1aXbOUFmT6c6emVWmjq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh6CoLPo7mfFukvusZ/gaRai1tmswhp7TbjTne5lRqo2LKHf90
	RP0FLplfJBVilECW88UsBybLsa9MkEO+uemdsfAExJTT5tazDyb6FNd7BMyP5xf6
X-Gm-Gg: ASbGncsT1sIHFZPN6aVI2qf2+Ug6nDr7DPwZRZlt33mPdtUFbmtqUK5gJXT+g9pTqAJ
	Jnl5QNb98s/H7pFQrZPoCzoh+xGPv6zWmaQcvf2aRtNUeTAlrKanukJjd3142oFX8wGikgi6gob
	28wTG5s6SeudYcn57VilTvFYrgQuKN5eQJRE4SneXKPgFsPoPLSCRTxwI5kzCAc6vEob3q63uBm
	X+DmwKsemFl1hN8kzaUNS1bcGvMuJut0Pw+Drd/iElmDe7GeMsz2nL2qbF1QWxngBM3X4T4gqd9
	XNFw58oV29NKUstRVxJayZ+XLiLm0yhogcxMynrD9AWKRI1Nkk0+aADnY8vz0071p7h+/GZOIbG
	a6ZBfl/G2/vPXiXeT3LjNWuctCZVSEXR5O0Y57J9ewuNC8iywzS4MKg4ZdtOiZAFFJfKM94vyG2
	fnHTXYwAX9KWXCyu0MfumIK8KNmbXDS2kkTdRY2VEdp0vv1Ayx
X-Google-Smtp-Source: AGHT+IFzHNh2M3qMbkS7Ft0ScLK1sIDDJNhfHp7PpxgoQQy9mJ8S8oglH6GQn4u23OmX5vJlWV+AiQ==
X-Received: by 2002:a05:6102:3fa4:b0:5df:b7f3:5875 with SMTP id ada2fe7eead31-5e1de163771mr766001137.3.1763736768568;
        Fri, 21 Nov 2025 06:52:48 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e1bd96889csm2352484137.5.2025.11.21.06.52.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:52:48 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-93720298f86so1235278241.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:52:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW1cxRnMVR7eybVJSZJhR5Ebhzy/PI9zSjn1nGBfBL9CQBJw4/YsHVXs0Wk6auI3q91yvGAw98LxcGP@vger.kernel.org
X-Received: by 2002:a05:6102:1609:b0:5d6:254f:4e24 with SMTP id
 ada2fe7eead31-5e1de402656mr820827137.32.1763736768085; Fri, 21 Nov 2025
 06:52:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 15:52:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_zCYLTM9gwJJE9nErumC32=2qkfPQDhpDVwKHCsVpYw@mail.gmail.com>
X-Gm-Features: AWmQ_bmzBcQpoZhI5Cv11aAtmYB1BIc8afiHapCc3vy2neqnnDocHJX2ZHzmfR0
Message-ID: <CAMuHMdV_zCYLTM9gwJJE9nErumC32=2qkfPQDhpDVwKHCsVpYw@mail.gmail.com>
Subject: Re: [PATCH v3 02/13] serial: rsci: Drop rsci_clear_CFC()
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
> Drop rsci_clear_CFC() by reusing rsci_clear_SCxSR() as the contents of
> both functions are the same.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/tty/serial/rsci.c
> +++ b/drivers/tty/serial/rsci.c
> @@ -199,11 +199,6 @@ static unsigned int rsci_get_mctrl(struct uart_port *port)
>         return 0;
>  }
>
> -static void rsci_clear_CFC(struct uart_port *port, unsigned int mask)
> -{
> -       rsci_serial_out(port, CFCLR, mask);
> -}
> -

This function is indeed identical to rsci_clear_SCxSR(), so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

However, while the sci_port_ops method is indeed called .clear_SCxSR(),
I think it makes more sense to drop rsci_clear_SCxSR() instead, as this
function touches the CFC register...

>  static void rsci_start_tx(struct uart_port *port)
>  {
>         struct sci_port *sp = to_sci_port(port);
> @@ -275,7 +270,7 @@ static void rsci_transmit_chars(struct uart_port *port)
>                         break;
>                 }
>
> -               rsci_clear_CFC(port, CFCLR_TDREC);
> +               rsci_clear_SCxSR(port, CFCLR_TDREC);

... and it is called directly.

>                 rsci_serial_out(port, TDR, c);
>
>                 port->icount.tx++;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

