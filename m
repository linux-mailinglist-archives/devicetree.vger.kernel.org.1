Return-Path: <devicetree+bounces-241664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC32C809C1
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2F327344713
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E8C2FF65F;
	Mon, 24 Nov 2025 12:58:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976D51F4CB3
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 12:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763989100; cv=none; b=p5bKgPNjbp6YcthZzVjCp5Sc+n7+qb0wZzVFs9pt8KPAA40APowjy2DnpqT5kVdM/MiXkGS6A8/aXf0ySWN5N+NTpnqcMK3us3Wy2nDD56yQ7ebhkeoBBqXT9afolgYFT3d/Zy9wGa4WhjN0FBh4jKT1RPK0xKRF/OTnTJCcVLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763989100; c=relaxed/simple;
	bh=juEwwBHwWVxDO9we5PhqbI1FUp9575Si/nd6yLinO7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V/k+f4FgR6zmursux7gWUUwnpHNn8E/06jL1UtUs2uPlJ7+MssRilvHMvmDwsMYAcXB5xoVCeNn4ZcbsdrEa/6qYsDYjHCkvTzyRBPSmT8S1wA36BY31l35M+pQtIe6zkMB7EnbbhyeiEK0E8MIsB28QiGStDQB3RBsDwyWoYqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b22d3b39fso1043330e0c.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 04:58:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763989097; x=1764593897;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c6ZohreewlB1g3ntJmej8PVH+g85TvJ2XqeezukQsPs=;
        b=vMpykHNIXPz+U+rju6QX2Dpr/yRF67wY5R0QSUJEvmAlsnpIWYi3f/6kelSD8MvsT1
         LQb8ZguOHUp5yxJTUqh+krJ6O+kXkDcqi5fnp9zua7yAyo5CeSVfnqgAzs9W2kDneLww
         9y0cIDPoD4ebewZPQzuOrNwUHmIo4HENMNUFi9VhpxFmzc3B6jK1NOGR2dMYwuLBYk3D
         tMjcRtwB3es+heidYPUCosqfgJx/sRxpIyybmjDmbDien+/sYtlpmEvoANYg56+iHx/S
         bN8ZfNSedjYcLJqE7vRffWO1jyONFhUXnFwcu2U/+EIETpdrejXKSyFFTp7yWOU06OZf
         jiDg==
X-Forwarded-Encrypted: i=1; AJvYcCXdD6ID5iHwx9iDVj1mW51ukTOKKOYgA4ZmGoIr8kJWzRBDMj+u9zHuF5ZTeRwzTraWyebf8HwTLzqN@vger.kernel.org
X-Gm-Message-State: AOJu0YwJueUTXee/veCMBb/qhedU537PNqWNQBrFxOrJ7p2nrvNvgMXF
	DA+TDEU0EQg2wQGiyiaLNpMvQUXBD4cHZZLCTAk4Y1+l/+jqk7DFz2zLShoz8DYa
X-Gm-Gg: ASbGncu4ftzTBMtjjUzldyIu2MGOAZ44DqnnsISiNFrK55PuqxQWIbOp74GjokPPH/x
	Kc+kgrTJiX7aXyKN07+4IEcGlAqBa+N0mt2K5QyHUvYlci51Msp7uQuajVl72aY7GPDpX9a2m+b
	fhUgwEWVKQ91ylYtd5tuY/SmrpnBvF5ASbCIeoziQDQ0y2bKfeeGAXDEYTG7wAUQqDx7iem3Xu+
	pwlNCPlHeMeX44NiqHb35Hu25V4qBNRkBPZHXMyIvPVq2CH3P4czjuwUCK3Evypxzruf8HDUwil
	lDL0WHke7OmunzuHTjamZ0Em3vf1bkYAGlCeDwPXaDp5uCG50V3QOc7mBKI+LFKazxAreMrL43b
	RPFqYf/ea4/GhTjWvr2EaHlNMSPTpE3xTMJH5lF4ytPV7gHIaxTd0HTDzJd2DDNVC5RGdCsjqhr
	xutP6CsVO0+C2PzbZMw603oZZsNPDqxfyKCfHoAngYkn69Q4Q/
X-Google-Smtp-Source: AGHT+IHfItlR1Fx60adXYzbdEP8ytliFKTf5UTQa94x+UDA5dB7pTxaWf4RYfydDXX7TLN939a/ghg==
X-Received: by 2002:a05:6122:3115:b0:559:6694:42ac with SMTP id 71dfb90a1353d-55b8d75908amr3009626e0c.10.1763989097410;
        Mon, 24 Nov 2025 04:58:17 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7a07e1sm5498176e0c.15.2025.11.24.04.58.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 04:58:16 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9372310418bso1100804241.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 04:58:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXA/rl5GCL84yG2DEstB8kcW2xpv4st5bf1rsJrhQMbdM8V17C4STBePHRVBum9zlR7lEy6Dfqzp99J@vger.kernel.org
X-Received: by 2002:a05:6102:5e84:b0:5dd:83de:badc with SMTP id
 ada2fe7eead31-5e1de4050c3mr2748242137.38.1763989094662; Mon, 24 Nov 2025
 04:58:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
 <20251114105201.107406-2-biju.das.jz@bp.renesas.com> <CAMuHMdX41rq-sd6_g1oCrQVPpgb-MXakpJ9mEbS0K+FY8Q7NDg@mail.gmail.com>
 <TY3PR01MB11346D401362BE3B37564C28586D2A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB11346A0864AF1CC5A3807E40C86D2A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346A0864AF1CC5A3807E40C86D2A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 13:58:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUwn8Ad3OYRX9jB-gFKskmwYwTna882d4J=28+zra=awQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkJ9yYGno433AB6_f4xArSaLX1y3Xoz8TuybuRBTCsS8wWuv5G8ykFxnzA
Message-ID: <CAMuHMdUwn8Ad3OYRX9jB-gFKskmwYwTna882d4J=28+zra=awQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/13] dt-bindings: serial: renesas,rsci: Document
 RZ/G3E support
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, "wsa+renesas" <wsa+renesas@sang-engineering.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Sat, 22 Nov 2025 at 15:15, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> > > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > > On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> > > > Add documentation for the serial communication interface (RSCI)
> > > > found on the Renesas RZ/G3E (R9A09G047) SoC. The RSCI IP on this SoC
> > > > is identical to that on the RZ/T2H (R9A09G077) SoC, but it has a
> > > > 32-stage FIFO compared to 16 on RZ/T2H. It supports both FIFO and
> > > > non-FIFO mode operation. RZ/G3E has 6 clocks(5 module clocks + 1
> > > > external clock) compared to 3 clocks
> > > > (2 module clocks + 1 external clock) on RZ/T2H, and it has multiple resets.
> > > >
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

> > > > --- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
> > > > +++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
> > > > @@ -10,17 +10,16 @@ maintainers:
> > > >    - Geert Uytterhoeven <geert+renesas@glider.be>
> > > >    - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > -allOf:
> > > > -  - $ref: serial.yaml#
> > > > -
> > > >  properties:
> > > >    compatible:
> > > >      oneOf:
> > > > -      - items:
> > > > -          - const: renesas,r9a09g087-rsci # RZ/N2H
> > > > -          - const: renesas,r9a09g077-rsci # RZ/T2H
> > > > +      - enum:
> > > > +          - renesas,r9a09g047-rsci # RZ/G3E non FIFO mode
> > > > +          - renesas,r9a09g047-rscif # RZ/G3E FIFO mode
> > >
> > > I can't find the non-FIFO ports in the documentation?
> > > Do you mean "Selectable to 1-stage register or 32-stage FIFO"?
> > > Isn't that software configuration instead of hardware description?
> >
> > Basically, it has 2 modes. FIFO mode(CCR3.FM=1b) and Non-FIFO mode (CCR3.FM=0b).
> > DMAC can be used only in FIFO mode and there are some hardware differences between two as FIFO reg
> > block is applicable only for FIFO mode.

Still, sounds like software policy / configuration to me...

> > It has to be either a compatible or a boolean property "renesas, rsci-non-fifo"
> > Or something else
>
> I believe it must be a compatible to support non-FIFO mode from boot.
>
> I maybe wrong. Please correct me, if it I am wrong.

Why can't it be configured through e.g. the rx_fifo_trigger device
attribute, or some setserial option? Any guidance from the serial
experts?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

