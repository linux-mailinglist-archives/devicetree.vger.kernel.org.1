Return-Path: <devicetree+bounces-48755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4FB8735B4
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 12:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D67EC28233E
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 11:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499D07F7F6;
	Wed,  6 Mar 2024 11:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Nk+ahPnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DC05FDD4
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 11:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709725412; cv=none; b=ExhffKJqPgJt9TKxjlw3T3uma2oHggiisIEI4Ns192wOyJOkat/H1f64LToKX2jhiIvvTf+R0f9WfVqTAa91WPE+27xCAnw73kTIAuUPZrUmV67c9ZeYebTmvxSO6CDUg6Cfsw6fr76cabO5y7+J/U4cU3a7MZNhBmkda27ShRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709725412; c=relaxed/simple;
	bh=YX5KNi9JoOZfojze0pjQys77KFZBO6i19SqjE/MREoU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tl96gofX9R0yiupvjnHuAS2E88UOuF7cuI2mjXZF9bIw/biaQpnjjxxE5iG7O+9UotsWeZXWZazHSS/u0QOcZuXrkbHVCFvVpMMmDpjJTvnwzsnVsucmpsfVWq68U9t2+Jgc0ZTReY2Ex6nzZXtV379eYo75fXEzKF8WWXPC9Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Nk+ahPnP; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-563c595f968so9931934a12.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 03:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1709725409; x=1710330209; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yZZ4mVEuzjiXR5CF3CJkyChtg0w5lyqbPeRfi90uImI=;
        b=Nk+ahPnPQaRhFhOua0kKqvBimAnQV4qNv6Q19l2QeQ9PaWwubcPQNRC3AW+IBSNJnG
         5iegVHWRR+xymHk7dp/vjsLme03Q1C3z3I8TSxrnIDhNgNY5whMF9nzQKGc3ixBaOrUO
         llv0VPYm/cqBhSlhPgXg5Er9aY3PiIUaak8/RoaXqQx2gS/wsxpJcPeuchw0a3Yu4IGQ
         I8a5gTKqyeq3TMaUXx0Heg0DnC/u+yoK3xcJbmE/dINXgaXa4ajXlOWm78LgH71twM5w
         ng3rzlwy4oHR0pj2dlg/hgbW7znMHifMiblExu9rHh6pYCMhfltPVU6eCopa2a5IbeJl
         nOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709725409; x=1710330209;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZZ4mVEuzjiXR5CF3CJkyChtg0w5lyqbPeRfi90uImI=;
        b=P18B+apdchsz0qc5hj9PSK6eu45DCqfPxeVIeDIGCdfaPLXvG2kC1GI2XpUqloiHOf
         6IvzaFmW/9QRQHsv5Ura5dFPjKlypptHZYWbtrxt0rk16U29yvzyOQYaPZZ/ME05Ti7Q
         Q/hvABaorv0fQvEKnnBJrBE8d+Nay14bSG80w7gfy0/ah4uLZPuN5B4nK5ZBcsc8uUP0
         n3nwwqdQFlXZH81pQ5LKhipuJU4+GhlBzV3GXO0ZO3/BvMwDahnOWe5UtaixTZEZR0gG
         0GK5YEAFT73ZBWP+KKCxQPiNuxSTTXeWdsINmdj83QcPN7Clhouu+dVNVS9RizTu3KZv
         obrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUji82JDktu0Q7v1s92YvQgujbEa6Hlis5BYXq6INoodxOTpLdMUu4qFzhSFRMCWcUBdyHshggJ25A3n8OU0k1OJZpgjuAW8YpZhg==
X-Gm-Message-State: AOJu0YxMAjCioTyI/sLwQwaebVQllbXAMeD/V9Bq9XP6gOLYU6O5Brpi
	zo95fvyMHQZNlsthwMeSKqIkPH4cynNKAVuYmtCwC6tMbQjtEFXymuUj3QdDUSX7ObbQpUnVoE9
	pNfYShV4CKzvHuYfWjuZq7zHiRaIi1C2Zq1x4tg==
X-Google-Smtp-Source: AGHT+IF3vAORKz02jVRpKImBVSKHtpIn3gxGmIfBMByYrMdcNWR+mujAPqHxYSvjSSOWngMTQqSdDU0aWilEsyj6NG0=
X-Received: by 2002:a05:6402:230f:b0:565:bd4d:8a89 with SMTP id
 l15-20020a056402230f00b00565bd4d8a89mr11282951eda.31.1709725408688; Wed, 06
 Mar 2024 03:43:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240223163012.300763-1-jacopo.mondi@ideasonboard.com>
 <20240223163012.300763-8-jacopo.mondi@ideasonboard.com> <20240301215857.GO30889@pendragon.ideasonboard.com>
 <zxx7o4zssgerlfhoczbledpmjvr5q2qfzogoytqxc353bulemq@ceo2gwinda3l>
In-Reply-To: <zxx7o4zssgerlfhoczbledpmjvr5q2qfzogoytqxc353bulemq@ceo2gwinda3l>
From: Naushir Patuck <naush@raspberrypi.com>
Date: Wed, 6 Mar 2024 11:42:51 +0000
Message-ID: <CAEmqJPpopGbDJsRkOsd-ph41_Ac6H50DvcwoE0i6hWyVBr=Kkw@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] media: dt-bindings: Add bindings for Raspberry Pi
 PiSP Back End
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Plowman <david.plowman@raspberrypi.com>, 
	Nick Hollinghurst <nick.hollinghurst@raspberrypi.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Laurent and Jacopo,

On Tue, 5 Mar 2024 at 15:25, Jacopo Mondi <jacopo.mondi@ideasonboard.com> wrote:
>
> Hi Laurent
>
> On Fri, Mar 01, 2024 at 11:58:57PM +0200, Laurent Pinchart wrote:
> > Hi Jacopo,
> >
> > Thank you for the patch.
> >
> > On Fri, Feb 23, 2024 at 05:30:09PM +0100, Jacopo Mondi wrote:
> > > Add bindings for the Raspberry Pi PiSP Back End memory-to-memory image
> > > signal processor.
> > >
> > > Datasheet:
> > > https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> > >
> > > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > ---
> > >  .../bindings/media/raspberrypi,pispbe.yaml    | 63 +++++++++++++++++++
> > >  1 file changed, 63 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> > > new file mode 100644
> > > index 000000000000..d7839f32eabf
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> > > @@ -0,0 +1,63 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/raspberrypi,pispbe.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Raspberry Pi PiSP Image Signal Processor (ISP) Back End
> > > +
> > > +maintainers:
> > > +  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
> > > +  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > +
> > > +description: |
> > > +  The Raspberry Pi PiSP Image Signal Processor (ISP) Back End is an image
> > > +  processor that fetches images in Bayer or Grayscale format from DRAM memory
> > > +  in tiles and produces images consumable by application.
> >
> > s/application/applications/
> >
> > > +
> > > +  The full ISP documentation is available at:
> >
> > s/:$//
> >
> > > +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - enum:
> > > +          - brcm,bcm2712-pispbe
> > > +      - const: raspberrypi,pispbe
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> >
> > As this is a SoC IP with only memory and register interfaces, I would
> > expect two clocks to be present, one for the register interface (AHB ?
> > AXI4-Lite ?) and one for the memory interfaces (AXI4 ?). While the
> > register interface clock is likely always enabled (in all cases that
> > matter in practice) in the BCM2712, I'm not sure this can be guaranteed
> > for future integration in different SoCs. Should we plan for this, and
> > either define two clocks already (with one of them being optional), or
> > name the single clock ?
> >
> > I know v1 named this clock "isp_be", and the name was dropped upon
> > Krzysztof's request, but I think naming the single clock "axi" or "aclk"
> > (assuming that one of them would be the right name) would be fine for
> > the reason explained above.
> >
>
> The PiSP datasheet does not offer many information on the IP
> integration, only a small graph with the memory interfacing, but no
> clocks.
>
> However your reasoning makes sense, and unless someone from RPi
> suggests the contrary, I'll do so

There is only a single clock that clocks the whole BE block, so does
the clock need to be explicitly named?  If it does, perhaps we can
just use "clk" as this is not explicitly an AXI or APB clock?

Naush

>
> > > +
> > > +  iommus:
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +
> > > +    soc {
> > > +        #address-cells = <2>;
> > > +        #size-cells = <2>;
> > > +
> > > +        isp@880000  {
> > > +             compatible = "brcm,bcm2712-pispbe", "raspberrypi,pispbe";
> > > +             reg = <0x10 0x00880000  0x0 0x4000>;
> >
> > Double space, I don't know if that's on purpose.
> >
>
> Ofc it was not.
>
> Thanks
>    j
>
> > > +             interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > > +             clocks = <&firmware_clocks 7>;
> > > +             iommus = <&iommu2>;
> > > +        };
> > > +    };
> >
> > --
> > Regards,
> >
> > Laurent Pinchart

