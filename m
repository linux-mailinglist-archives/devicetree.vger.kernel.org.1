Return-Path: <devicetree+bounces-264237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LPjKxDKimmbNwAAu9opvQ
	(envelope-from <devicetree+bounces-264237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:02:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C2117401
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D4FB3006B32
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98E4274FFD;
	Tue, 10 Feb 2026 06:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DWEiVB6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB2219EED3
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770703347; cv=pass; b=HlXWKMkKj+hor2uWQcGaUgkqWavK8BuJmKTN16Vg/kcwtpVi8E17TJnyM4umNKVB0rJz/hwvEbHvC5i8Atnz8EtkOHKd9/F8HtuAaKNPu858IX4FF1umNBuITA2FXpokLo3s4j+OwJlngEmAaD0/JOL7ckk7qX8N7G6prFgn6Wc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770703347; c=relaxed/simple;
	bh=SBGRUJE27Sh9oreSO41Rbst3WAb+KnZAYy13PKJYLsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SOIRFG3E+jP1PCySWq3S4J3OvY/Zvl2LILqm3CRYQeCOnTZ1lzEbMG/9SJDl+S5svoUO6UgdDavhbbyg1v5pQkPIkMV0jAxU+SbR59U7WCQvnMZw09HvWpLJSIM+mLTMyvUMGumSumYx+bJb+2/ciXI2q4+XXEy8E2Glua6NCrM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DWEiVB6s; arc=pass smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b8715a4d9fdso432998366b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 22:02:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770703345; cv=none;
        d=google.com; s=arc-20240605;
        b=jT1kNXbI7SjznvJHBFp9kRlRzx7cCFNhw5oRm2RqZndTQdPH2GaM4ByjrYWCIL21nu
         I/fLnoIyFIr8n0kwrMQI6o7ihhhg9nrUvxsIjJSk37Ip8hy2uEnUXlgBAX20/zd/5/Dy
         hhpDTqSakRMibGMZKVuUjZ3jP1EOJrgMpFAIhqJ9322ehY3aRLLMjU+brGLmzoaDfe1a
         S0Ysk589B7No9sfaEyjqcgRlxG1yztYaEqRvyWOFWVgwJzdb6AhWAHXOWZDHBDQJS+BV
         V0G6oq8z6eTwNZvkoVpfj5nienc0173hT++bN6gTOOKxNqYMoxioTHQXEO+phlPX+8fx
         OWEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wdfQoNjE0A1x2BNxyqiUYamnhnBwjzLKcZCZB7uzUFA=;
        fh=qH1hrTcqg/4SLtLPU7whNI+C2LG4edp+Woh9WS2jNNw=;
        b=S+M5n2anldzjo4IW5UGbqA5+vkNRnaAylUcOExlmLNWnxGevb8cIjDqksfoqTIjGvK
         /5D1935OzToZmTUGW2X+YM1JEBlDE0dhjlEuSjj3nXgzCG8n6JGmyV0GnW4C0yTzGmib
         jyWhq3B5fpIZvcTfdIzljvV4+Pg57hSp9/U0x3YWWFGTNFGCE44w5UwByQ7vW9rjO7tL
         7cS/BLTjkOjXLOrCeKzd2qli4wOUf4DDyBAL3syoVvCRvgWUM6qsmzOLEjOgXTtgN/jM
         1wfnY51lqDEzO/WpXC6x3y/YI2kS3qMaWO7Ar1emm8i4GmxUg2jbHCoGrTjdWsB/hQZ8
         0AeA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770703345; x=1771308145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdfQoNjE0A1x2BNxyqiUYamnhnBwjzLKcZCZB7uzUFA=;
        b=DWEiVB6s+Dg1EJEGZCfSSuBzdxpUF51eP+FIQpBUDAb/4ABWUCGGS2joZBY3zuiSh2
         Q6DNoj6zy9VhpZ+s0LZz756c3V/ibI/TAG0qegxXYywKftP41Su4b9ZIiEM2PKeQCXsI
         WvJAAYOPGT3PpdbIR3YaOdlAyGF5U0S21o2YM/c4JSj9++T+n/2kVgplN1UnfCK7zeNo
         MKnMm+CEts811tSh4wXsZAGWvEjfgNYweP/U3guqF0se9aADgRGb3qNAeeJdllJo6MTu
         qG6dGKv1fDKQeyQnEnlXF5LpIHtTRqlE620wpzLGrkoLRXtPsHDDQxrfGzhii9HeR+HR
         kGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770703345; x=1771308145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wdfQoNjE0A1x2BNxyqiUYamnhnBwjzLKcZCZB7uzUFA=;
        b=tI+72ERQXD+6Gd9zEpHrfE8pUt5u1LKA4M1J0I7t0ioi96tj8Ow7hmMKexpbJhakxL
         +2UAUITMqWl/sx5RKNazhGVULznf2g4PqhJhg7G6fTvnvDGVuO9taUDzkWxL08zfJ1fQ
         mdjJCYt+4ED6axdtr1XHzlTRsCxvV01cEu9xAHcRoC4i3jPaSIUQNxZl+mszmScEmVX6
         bztumvWD5KhFloQienaP4lLX1FET7qtxtaKY0SChgh8DVnenvRV/nkyMNUxtklbAqtKn
         LCfqnsIhcckLmjpRP3VdVOM++1C86nHJA8SD5XjUkvqjBMZ/Uzd9alCqdKXNoYwhbxrK
         br8A==
X-Forwarded-Encrypted: i=1; AJvYcCUVC8irDThwaw7RTA37biIpuDCCyKCpA9eYyX/86nNgbQXv9aV1Z/8e9IsW/FrtcvDnPpmpaHKEDEai@vger.kernel.org
X-Gm-Message-State: AOJu0YypOhn9rxCMHZ12NXqkPZYeSScn8ihiIKQg8foh5OiNsIEvmD6x
	WU8rZHJ9dHrlOpkVKyHQFBQ+/+lklvaaZLtACJH5X49N6ulIjK1eKpniR28sCWEFtR5T3/q7Boc
	myKaQgBFIRz89oFET27hEY5v/i7uj+Xs=
X-Gm-Gg: AZuq6aIjnhJFRkuvTKEjvBNGXwGclvrq3CKV+KLSj+cMZwCoAKKYYkbUj6YWFj71CUj
	W19Xu1tOJ/meyjhMwIraCA9VEDK6w3T/Az4a3xsvXGmlSxcZNDnivnFS8xUp2ldgfWMMBWJwDMK
	h07P1Jc0cKpsq2v2/GMy9QNUvtQpn1E/9aiYSdK1nZ469TpZJO7xgAffyvY0Mh3n4zYeQXBeVrs
	kXPDDrZRgWbGyKw65pI2XT1KWcR6PFv0zpyFyBi9UuCIPLF87fS4JxbGZiFJkLpn1cvMWi92L2J
	Tcw5cOSD
X-Received: by 2002:a17:907:3dac:b0:b87:965:9078 with SMTP id
 a640c23a62f3a-b8edf14c39emr680666066b.7.1770703344240; Mon, 09 Feb 2026
 22:02:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770605931.git.zhoubinbin@loongson.cn> <36cc977f0746095196354b631f0b158365208a0e.1770605931.git.zhoubinbin@loongson.cn>
 <20260210030346.GA2406064-robh@kernel.org>
In-Reply-To: <20260210030346.GA2406064-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 10 Feb 2026 14:02:11 +0800
X-Gm-Features: AZwV_QiqIfn7ZPx0x3V31tbQ_jX8n-lqXvq0szv7fUMgSdTmEq3QSZCxI0OoBUg
Message-ID: <CAMpQs4JcnkmVM6B2rCQnFsdnMs9XnoV3EwO+0yA9XdXvVQg8cQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: dmaengine: Add Loongson Multi-Channel
 DMA controller
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	dmaengine@vger.kernel.org, Xiaochuang Mao <maoxiaochuan@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, Keguang Zhang <keguang.zhang@gmail.com>, 
	linux-mips@vger.kernel.org, jeffbai@aosc.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264237-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[loongson.cn,kernel.org,vger.kernel.org,xen0n.name,lists.linux.dev,gmail.com,aosc.io];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,1612c000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,loongson.cn:email]
X-Rspamd-Queue-Id: 191C2117401
X-Rspamd-Action: no action

Hi Rob:

Thanks for your reply.

On Tue, Feb 10, 2026 at 11:03=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Mon, Feb 09, 2026 at 11:04:20AM +0800, Binbin Zhou wrote:
> > The Loongson-2K0300/Loongson-2K3000 have built-in multi-channel DMA
> > controllers, which are similar except for some of the register offsets
> > and number of channels.
> >
> > Obviously, this is quite different from the APB DMA controller used in
> > the Loongson-2K0500/Loongson-2K1000, such as the latter being a
> > single-channel DMA controller.
> >
> > To avoid cluttering a single dt-binding file, add a new yaml file.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../bindings/dma/loongson,ls2k0300-dma.yaml   | 78 +++++++++++++++++++
> >  MAINTAINERS                                   |  3 +-
> >  2 files changed, 80 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/dma/loongson,ls2k=
0300-dma.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dm=
a.yaml b/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
> > new file mode 100644
> > index 000000000000..77e5df47ec01
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
> > @@ -0,0 +1,78 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/dma/loongson,ls2k0300-dma.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Looongson-2 Multi-Channel DMA controller
> > +
> > +description:
> > +  The Loongson-2 Multi-Channel DMA controller is used for transferring=
 data
> > +  between system memory and the peripherals on the APB bus.
> > +
> > +maintainers:
> > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > +
> > +allOf:
> > +  - $ref: dma-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - loongson,ls2k0300-dma
> > +      - loongson,ls2k3000-dma
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    minItems: 4
> > +    maxItems: 8
>
> I'm assuming this is 1 interrupt per channel? If so, add a description
> saying that.

Yes. this part will be rewritten as:

  interrupts:
    description:
      Should contain all of the per-channel DMA interrupts in ascending ord=
er
      with respect to the DMA channel index.
    minItems: 4
    maxItems: 8

>
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  '#dma-cells':
> > +    const: 2
> > +    description: |
> > +      DMA request from clients consists of 2 cells:
> > +        1. Channel index
> > +        2. Transfer request factor number, If no transfer factor, use =
0.
> > +           The number is SoC-specific, and this should be specified wi=
th
> > +           relation to the device to use the DMA controller.
> > +
> > +  dma-channels:
> > +    enum: [4, 8]
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - '#dma-cells'
> > +  - dma-channels
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/clock/loongson,ls2k-clk.h>
> > +
> > +    dma-controller@1612c000 {
> > +        compatible =3D "loongson,ls2k0300-dma";
> > +        reg =3D <0x1612c000 0xff>;
> > +        interrupt-parent =3D <&liointc0>;
> > +        interrupts =3D <23 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <24 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <25 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <26 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <27 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <28 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <29 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <30 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks =3D <&clk LS2K0300_CLK_APB_GATE>;
> > +        #dma-cells =3D <2>;
> > +        dma-channels =3D <8>;
> > +    };
> > +...
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 27f77b68d596..d3cb541aee2a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14772,10 +14772,11 @@ S:  Maintained
> >  F:   Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
> >  F:   drivers/gpio/gpio-loongson-64bit.c
> >
> > -LOONGSON-2 APB DMA DRIVER
> > +LOONGSON-2 DMA DRIVER
> >  M:   Binbin Zhou <zhoubinbin@loongson.cn>
> >  L:   dmaengine@vger.kernel.org
> >  S:   Maintained
> > +F:   Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.yaml
> >  F:   Documentation/devicetree/bindings/dma/loongson,ls2x-apbdma.yaml
> >  F:   drivers/dma/loongson/loongson2-apb-dma.c
> >
> > --
> > 2.52.0
> >

--=20
Thanks.
Binbin

