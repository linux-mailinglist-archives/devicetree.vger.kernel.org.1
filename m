Return-Path: <devicetree+bounces-40607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF9D850F30
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 325931C20C12
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6329FBFC;
	Mon, 12 Feb 2024 08:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="VOL7lw7k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC2F9F6
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707728299; cv=none; b=lXhiEGknGeOnAusI7MOFhVsOq6qo2WVCFoQeuhR4BPqfsE/RlFJ9kQ3FJgwNZkRmBvCvroGsUYpTopAv7S8IvEV1P6slcQMjL3DBQUAIRqG1C464R9BV4w1HerfFQQCxZhAmp57Dqy3v4UHd/3I6yVUW5Z/NgrrODNx09vTh1ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707728299; c=relaxed/simple;
	bh=4CVY/LCfy6Vy6uZdgfp4DeEWVNBLqrwtSFcr3iv2Uz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nOFyuGRX/OUoRm6EzJs6c5vYRhD/9A95g5VQ7tmqUlzHYP8bZND+lbRWoAtRpA25Npmi2+X+7SyXZnQp/q/5HYZm0CqqJw/9Wl66o1W6TMzX1v1ABKx/gaLqLDOVz5zyunPApA7zyuiS73QXhpez/cH6XJs3QEj5UhaX59FTcD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=VOL7lw7k; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6002317a427so26151087b3.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 00:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1707728297; x=1708333097; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=76pVbLVt5uG9l9lQDTqOxG8S2Dhj5nWpFvib0ymWtzI=;
        b=VOL7lw7kJefcQH2FCZugoZwU9/jBTl550diN0gVa/r6uqdfbfEZyFmo5SVUGjHHrK7
         IxPodU5p1L23XPJfmTB/ifDB64v/NOOhDMhQOLfwHEstOdxpTsx9vtpR5/MtyC/Zuvyf
         CK0POLx8dw9wXbCF2vCbcsDOkZXYfXMg5uL7LfIVFK3A55q2amPA9jxEjiaxQtK22FHK
         xRL/cLAVQz2Ke2f7L9e9ySB7pw9wZIG9FuVvxy8WDNsv1I1ENGW0jlmZuAePEOcIwcBb
         5bhhooDgvN2rHS3KvlzgaUTsdOUq79Zu5c6eeZR+uVaLKlEdeuNPMfsGe29MD5dTWhmc
         0M/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707728297; x=1708333097;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76pVbLVt5uG9l9lQDTqOxG8S2Dhj5nWpFvib0ymWtzI=;
        b=bmH6EW/S40gGPuu0xsjfZrFwzBbHZn2zLFyr83VCgDlDv+wwS5h7uk80sKtNdHbPL3
         p29B1BKqqt6DitQ350r59M4CAhXbfQRPP2X5U25x3T3f67QOzpEZa+SZW+cwNyhIjY8b
         Uyxgt06yH9c0K6jkv14D1uV1akiW9RIkH9Y2hJS9gNxwi8F+sBowJ6T+h67iYK3rKGqY
         j8MYe1FzSndiism3g9i316AHthyD18CNvicTFkwJ9ngAi7+8dneryKEFpYkaO+jnzvmn
         nsprYCoG90kLrUVu8TzfmbJPoNRS4ywdbQPXmRUj047JVsTOhoo0t9Xjtm+VwtP87/Uk
         2T5g==
X-Forwarded-Encrypted: i=1; AJvYcCUDI/zSLT0Qq4VNBpNT7pAVuAtzkGMrJtglqIfG6RMgalGcmCartAXH85DXc972MqGCC7u+V4Zyx5WyVbZPR9fbC6NMeW3ja4hYDA==
X-Gm-Message-State: AOJu0Yw0IXh2Q3fCG3MtCCSsgTH+AspY5Tmxijggk2pJ33GnHUrOoUKX
	KoEkwdUS/DlYUBR/WoAfpq4trJ9OvQw8na+6BWo/n+Evzn3MPcM8uLDewVRcudijv4y7L5ZrkI+
	1AbcV6mnvBKb/NxBdeXzaGl0oSa1yKSn1LdiwPA==
X-Google-Smtp-Source: AGHT+IFs01UdHHN3hHQP6VSVxRFL19V5Nt3HpMO5IO8wFIeEvJ4e5tAlQjas2rI+FEBjTboz9hTRKwV6NoIktvSWrDE=
X-Received: by 2002:a05:690c:3147:b0:604:eb8c:4fde with SMTP id
 fc7-20020a05690c314700b00604eb8c4fdemr2889041ywb.46.1707728296488; Mon, 12
 Feb 2024 00:58:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209164825.166800-1-jacopo.mondi@ideasonboard.com>
 <20240209164825.166800-7-jacopo.mondi@ideasonboard.com> <7f7979af-8eda-48cd-a334-bb64ddf5b9b8@linaro.org>
In-Reply-To: <7f7979af-8eda-48cd-a334-bb64ddf5b9b8@linaro.org>
From: Naushir Patuck <naush@raspberrypi.com>
Date: Mon, 12 Feb 2024 08:57:40 +0000
Message-ID: <CAEmqJPrDySoWXLpsRsCU-7Mh3yOP58x8KPEmNKRUFTEjMESXpA@mail.gmail.com>
Subject: Re: [PATCH 6/8] media: dt-bindings: Add bindings for Raspberry Pi
 PiSP Back End
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Plowman <david.plowman@raspberrypi.com>, 
	Nick Hollinghurst <nick.hollinghurst@raspberrypi.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof and Jacopo,

On Mon, 12 Feb 2024 at 08:12, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 09/02/2024 17:48, Jacopo Mondi wrote:
> > Add bindings for the Raspberry Pi PiSP Back End memory-to-memory image
> > signal processor.
> >
> > Datasheet:
> > https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> >
>
>
> > +---
> > +$id: http://devicetree.org/schemas/media/raspberrypi,pispbe.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Raspberry Pi PiSP Image Signal Processor (ISP) Back End
> > +
> > +maintainers:
> > +  - Dave Stevenson <dave.stevenson@raspberrypi.com>
> > +  - David Plowman <david.plowman@raspberrypi.com>
> > +  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > +  - Naushir Patuck <naush@raspberrypi.com>
> > +  - Nick Hollinghurst <nick.hollinghurst@raspberrypi.com>
>
> I assume all folks are fine being here?

Although I am fine with my name above, I think it might be easier to use:

Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>

to follow other Raspberry Pi drivers.

>
> > +
> > +description: |
> > +  The Raspberry Pi PiSP Image Signal Processor (ISP) Back End is an image
> > +  processor that fetches images in Bayer or Grayscale format from DRAM memory
> > +  in tiles and produces images consumable by applications.
> > +
> > +  The full ISP documentation is available at:
> > +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> > +
> > +properties:
> > +  compatible:
> > +    const: raspberrypi,pispbe
>
> Nothing more specific? No model name, no version? It's quite generic
> compatible which in general should not be allowed. I would assume that
> at least version of Pi could denote some sort of a model... unless
> version is detectable?

There is a version register that is tested for different HW variants.  The
expectation is variant handling in the driver would happen based on this version
register.  Do you think that is sufficient to keep the compatible string as-is?

Thanks,
Naush

>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: isp_be
>
> You can skip clock-names if they have only one entry and it matches
> block name. Quite useless.
>
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    rpi1 {
>
> soc {
>
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        isp: pisp_be@880000  {
>
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> so: isp@
>
> and drop unused label
>
> > +             compatible = "raspberrypi,pispbe";
> ds,
> Krzysztof
>

