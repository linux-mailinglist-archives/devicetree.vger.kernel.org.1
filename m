Return-Path: <devicetree+bounces-17546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 270E87F2C9F
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 508361C20A39
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C485A49F7F;
	Tue, 21 Nov 2023 12:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="D/eQy0Tv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258AF185
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 04:11:36 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c876f1e44dso34883261fa.0
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 04:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1700568694; x=1701173494; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dl1uJlZrmrU26tZTtLW7Qdp26u5pIj/OGysbIfrZlxY=;
        b=D/eQy0TvfHf8SpQqqXmbZ6RQ/EzmmlMeelWCfkefBKMuil3BWTVOvmRpLRruJ2RyZa
         K/BDGS6U8t8wJmTGI4nPbn18GwtKE1DDfXI7A7/qV5HCCax9xi+QUpUTgwxv6r6UfXG1
         yLLXI8cJZq1PwtIZr0C3GowMb3zi2YBBIxosALYOGVugC91jOF/y0rAzQo4wjLoPSa5P
         SEb06lOkwtkL+ht6V/uo/V490GDub5/eZPkiSmugV+RqeIbwc23A8KYMe6jlW07eOB5B
         vB1DzZAv4z1cnI6+SF+iwTRxgm6vuKQIeG7VrYmK5uw6MWnuyIMLFSPbAAIzEqKmT4+b
         4Y1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700568694; x=1701173494;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dl1uJlZrmrU26tZTtLW7Qdp26u5pIj/OGysbIfrZlxY=;
        b=h9cNU8SMfu37CZZibzgzXRj9fKdF4m/Bx6sEs0bROHELDLgG2HesTiq/3H8zShwyaP
         dISIBduCnThQui9PIdCqOsl4og+OhhBQUhHi0gj60rZ/81u6aNYLFkzLQ8xGj0UyriHb
         V8O6eajpXPeMPyOlF2Gzhu6FbFKvVURfyuxqNhPsDci14ea5PfRcMavDBlvTEunaXD/P
         zGB3+FNKVzmupmlpoNm6+40j4lC/yEYqV+ztaiimJVYogC5+vT4kF8n2DCimU1fdVEBR
         QRC0IZiSYbzr5vBa9qeQCMJIJOYnoJKqLBa5QK+fsAC6aFne5VnxKVfcvHIKVctbgSfW
         ZkjA==
X-Gm-Message-State: AOJu0Yzg0iHtGsKUY47bwVbqrn+FMFcsAbSoxOwlB73nxSv2iyCp0OCY
	9cZ2fHL1eZ5MYjOFuJOL9Zb2Pw==
X-Google-Smtp-Source: AGHT+IG52pvb7ZoAJD/v62zOEe7vXFuUzGEmY8LMX+OPNIRBrSrLbVW1gf3hXzwmcUxUtyWJODLTlg==
X-Received: by 2002:a2e:a406:0:b0:2c8:739d:e0de with SMTP id p6-20020a2ea406000000b002c8739de0demr7228279ljn.29.1700568694021;
        Tue, 21 Nov 2023 04:11:34 -0800 (PST)
Received: from localhost (h-46-59-36-206.A463.priv.bahnhof.se. [46.59.36.206])
        by smtp.gmail.com with ESMTPSA id w14-20020a2e9bce000000b002c83b0bd971sm1274091ljj.2.2023.11.21.04.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 04:11:33 -0800 (PST)
Date: Tue, 21 Nov 2023 13:11:33 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: net: renesas,ethertsn: Add bindings for
 Ethernet TSN
Message-ID: <ZVyedaFBS2gLo-E1@oden.dyn.berto.se>
References: <20231120160740.3532848-1-niklas.soderlund+renesas@ragnatech.se>
 <2ab74479-f1fb-4faf-b223-ae750b4c08ce@linaro.org>
 <CAMuHMdUkfyJ9f22joXpAW1Gwk+zE9cqx+hbFqeK7Xc7ZTW1Faw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdUkfyJ9f22joXpAW1Gwk+zE9cqx+hbFqeK7Xc7ZTW1Faw@mail.gmail.com>

Hi Geert,

Thanks for your review.

On 2023-11-21 09:00:41 +0100, Geert Uytterhoeven wrote:
> On Tue, Nov 21, 2023 at 8:45 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> > On 20/11/2023 17:07, Niklas Söderlund wrote:
> > > Add bindings for Renesas R-Car Ethernet TSN End-station IP. The RTSN
> > > device provides Ethernet network.
> > >
> > > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> 
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
> > > @@ -0,0 +1,133 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/net/renesas,ethertsn.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Renesas Ethernet TSN End-station
> > > +
> > > +maintainers:
> > > +  - Niklas Söderlund <niklas.soderlund@ragnatech.se>
> > > +
> > > +description:
> > > +  The RTSN device provides Ethernet network using a 10 Mbps, 100 Mbps, or 1
> > > +  Gbps full-duplex link via MII/GMII/RMII/RGMII. Depending on the connected PHY.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> >
> > Drop items.
> >
> > I assume you have oneOf above because you predict this will grow with
> > entries with fallbacks? If not, drop.
> >
> > > +          - enum:
> > > +              - renesas,ethertsn-r8a779g0      # R-Car V4H
> 
> renesas,r8a779g0-ethertsn
> 
> R-Car S4 also has EtherTSN.
> Is it identical, so it makes sense to add a renesas,rcar-gen4-ethertsn
> fallback?

Thanks.

Will address both suggestions in v2.

> 
> > > +  renesas,rx-internal-delay:
> > > +    type: boolean
> > > +    description:
> > > +      Enable internal Rx clock delay, typically 1.8ns.
> >
> > Why this is bool, not delay in ns?
> > Why this is property of a board (not SoC)?
> 
> Standard property is rx-internal-delay-ps.
> 
> > > +
> > > +  renesas,tx-internal-delay:
> > > +    type: boolean
> > > +    description:
> > > +      Enable internal Tx clock delay, typically 2.0ns.
> >
> > Same questions.
> 
> Standard property is tx-internal-delay-ps.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kind Regards,
Niklas Söderlund

