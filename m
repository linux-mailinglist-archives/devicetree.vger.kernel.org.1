Return-Path: <devicetree+bounces-83366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 857D892832B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8EE41C202ED
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B49F145B29;
	Fri,  5 Jul 2024 07:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="phQoJucs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A1A14534C
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720165875; cv=none; b=rNz5XmPAYFUyA3aAjWMHz+6kFWSToqWK47rZhPgls8uHfFbr54M+3LJqgUfWrPlYbFkSfLPP1Ws34Ftc71VsNiIzSuRWHB80BNwbFi+aCTsYERoGPzpX0HwGp1F4jgXJSw+9pEILWbV81FOBnappcHTjWOb72dBV+VuQ8zLwOcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720165875; c=relaxed/simple;
	bh=boWUJ2Cm1+3DcMqLVBSXF3S/hXfz/ilxevRYq8Qyut8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SOiziVvKI8sMv84AnJSL1LHtPVXh+hWZYhVgYPjGyolmoA1OE8DFbuhnji8iHNPP7vmsar2lLQx0/2EG2Bs2WImvbCNOp/C7iKZ3SmzX0GEbl4JPX2Hb8fSoGIYSJg673dYrcIIaTqoC0sAmQRBpwCn8JPmw7OFIJ6rV7/YZjL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=phQoJucs; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a77b550128dso168330866b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 00:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720165871; x=1720770671; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCVjbUVohH3p2wf5gVftnpB2o8+RU21ET/afoPI30m8=;
        b=phQoJucsYDuPYodRBscNk9nMZQRNkI7pN5AskDuNBVghlGmdW/I6hkr4Ji7rNsiSm8
         BQ8+3gYicSAOtL0ERYjzPV6zOpncn2PFqWVNhk+Jst86oxWSAKLkcCsWFU3RiCdyMc9/
         2XKgKVEWmsS50x//YjEsT31HI7wxSxvWiT6c1Q5A17fjOk1pAVA35yLRMWz2ALcZ8cAf
         CbuboGNMO1teRHfgedQDfj2dYt228jGN7vpwIPZTKhIdMLd/n0LTMvyRH3CGywk4wu7B
         q9bJZlSjABDcfFPxhALnCNSqTvHr4IBjSmsBbCdUa+1uwra9zjfYINp0Xw5zoMLhAXyq
         pDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720165871; x=1720770671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lCVjbUVohH3p2wf5gVftnpB2o8+RU21ET/afoPI30m8=;
        b=oYv72GkTZzzaO4/qgn9TIKgmO4xNnKVJY22B2rBjNEv+pfMDcAs5QvCjOIsyd6SQzE
         7uar9esM9be3ooR1v377PiBKp2vvlVRk7IHGHksz+NksQQ1PaHOESFdOEvgwoluEC7TP
         +kNlM0s6Eq3dEsNY0RdXsd7OQD4oXM7bkluUuuTSEgkdMcxDci3Ui13JwyGblsCnQo7+
         XqRebwOnxpN2riayJcnPqouN4cu+LEpSmX5DL13McAsalLaHaDxvpvC0AioVnEfSY/dE
         zAVNgcpj7OLi/6D7XYrHc7trVbDhF+fUZJw7om9tH1BWvqLzAvLEvLW539cBx0akU2Oj
         CZJw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ0vZjIb+y6NHhuKIjFj7iMn6ZO6GXBGXvUPVXBEjWNUW9DlRVgEUMaH4kUcrgtmo5aRLPMNWVkXRbjzYvISFJoH4mBcHm1fXfmQ==
X-Gm-Message-State: AOJu0YyDTzMvaaLaAl4xUIS6Cxidjwcif6K6pTtogMXHwxTcEt57+Xtu
	4WUudZpi7QrAm69KshwsfdFRZ4uufocCkRt/tBAfWqJ2GKeBkOH9eelm8zBPEwFg/OOivJz/wiw
	ku7qyLTtju6VVkAWtQ+/5Co6cT7q/uc9GMb07kA==
X-Google-Smtp-Source: AGHT+IGiaxqLW45+/BQEWvALCzSarefavKbKnT7hrlfo4M8H4kt8dKuBoLog/WCakFxhFLqIDWrDmp7QDFKEUN7e2xw=
X-Received: by 2002:a17:906:40d0:b0:a70:c02f:8a7e with SMTP id
 a640c23a62f3a-a77ba70c75dmr276948066b.54.1720165870596; Fri, 05 Jul 2024
 00:51:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240704-add-mtk-isp-3-0-support-v5-0-bfccccc5ec21@baylibre.com>
 <20240704-add-mtk-isp-3-0-support-v5-1-bfccccc5ec21@baylibre.com> <20240704-catcall-stubbly-9258b056e42e@spud>
In-Reply-To: <20240704-catcall-stubbly-9258b056e42e@spud>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 5 Jul 2024 09:50:59 +0200
Message-ID: <CAEHHSvb6Y8g_KCmu0bK__EP2TyPhf8i-ctMNfOGdyMUUGoKQVw@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: media: add mediatek ISP3.0 sensor interface
To: Conor Dooley <conor@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andy Hsieh <andy.hsieh@mediatek.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Louis Kuo <louis.kuo@mediatek.com>, Phi-Bang Nguyen <pnguyen@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 4 juil. 2024 =C3=A0 18:27, Conor Dooley <conor@kernel.org> a =C3=A9=
crit :
>
> On Thu, Jul 04, 2024 at 03:36:40PM +0200, Julien Stephan wrote:
> > From: Louis Kuo <louis.kuo@mediatek.com>
> >
> > This adds the bindings, for the mediatek ISP3.0 SENINF module embedded =
in
> > some Mediatek SoC, such as the mt8365
> >
> > Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> > Signed-off-by: Phi-Bang Nguyen <pnguyen@baylibre.com>
> > Link: https://lore.kernel.org/r/20230807094940.329165-2-jstephan@baylib=
re.com
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
>
> I'm really confused by the link tag here. At first glance this looked
> like you were sending out something that had been applied by Laurent,
> given the Link, Rb and SoB from him. Why does he have a SoB on this
> patch? What did Phi-Bang Nguyen do with this patch, and should they have
> a Co-developed-by tag?

Hi Conor,

I was not using b4 for the previous revisions of this series, so maybe
I messed something up here :(

About Phi-Bang, this series has been in our internal tree for a long
time, and Phi-Bang has his SoB on it, so I kept it.

About Laurent's tags, they were already on v4. But maybe it was an
error ? Should I remove them?

>
> > ---
> >  .../bindings/media/mediatek,mt8365-seninf.yaml     | 275 +++++++++++++=
++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 282 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8365-se=
ninf.yaml b/Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.=
yaml
> > new file mode 100644
> > index 000000000000..aeabea9f956a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.ya=
ml
> > @@ -0,0 +1,275 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (c) 2023 MediaTek, BayLibre
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/mediatek,mt8365-seninf.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek Sensor Interface 3.0
> > +
> > +maintainers:
> > +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > +  - Julien Stephan <jstephan@baylibre.com>
> > +  - Andy Hsieh <andy.hsieh@mediatek.com>
> > +
> > +description:
> > +  The ISP3.0 SENINF is the CSI-2 and parallel camera sensor interface =
found in
> > +  multiple MediaTek SoCs. It can support up to three physical CSI-2 in=
put ports,
> > +  configured in DPHY (2 or 4 data lanes) or CPHY depending on the SoC.
> > +  On the output side, SENINF can be connected either to CAMSV instance=
 or
> > +  to the internal ISP. CAMSV is used to bypass the internal ISP proces=
sing
> > +  in order to connect either an external ISP, or a sensor (RAW, YUV).
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt8365-seninf
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Seninf camsys clock
> > +      - description: Seninf top mux clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: camsys
> > +      - const: top_mux
> > +
> > +  phys: true
> > +
> > +  phy-names: true
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: CSI0 or CSI0A port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              clock-lanes:
> > +                maxItems: 1
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: CSI1 port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              clock-lanes:
> > +                maxItems: 1
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +      port@2:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: CSI2 port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              clock-lanes:
> > +                maxItems: 1
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +      port@3:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: CSI0B port
> > +
> > +        properties:
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              clock-lanes:
> > +                maxItems: 1
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 2
> > +
> > +      port@4:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for cam0
> > +
> > +      port@5:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for cam1
> > +
> > +      port@6:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for camsv0
> > +
> > +      port@7:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for camsv1
> > +
> > +      port@8:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for camsv2
> > +
> > +      port@9:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: connection point for camsv3
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> > +      - port@2
> > +      - port@3
> > +      - port@4
> > +      - port@5
> > +      - port@6
> > +      - port@7
> > +      - port@8
> > +      - port@9
> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: mediatek,mt8365-seninf
>
> The binding supports only a single compatible, why is this complexity
> required? I don't see other devices being added in this series.

Right. The idea is that the number of PHYs depends on the SoC. In the
previous revision of the series,
the number of PHYs was not fixed, and Krzysztof asked me to fix it by
SoC. So I wanted to make it clear
that the number of PHYs depends on SoC but maybe I don't need that
complexity for that?

Is something like the following enough? And if complexity is added
later if some other SoC are added?
    phys:
      minItems: 2
      maxItems: 2
      description:
        phandle to the PHYs connected to CSI0/A, CSI1, CSI0B

    phy-names:
      description:
        list of PHYs names
      minItems: 2
      maxItems: 2
      items:
        type: string
        enum:
          - csi0
          - csi1
          - csi0b
      uniqueItems: true

Cheers
Julien

>
> Cheers,
> Conor.
>
> > +then:
> > +  properties:
> > +    phys:
> > +      minItems: 2
> > +      maxItems: 2
> > +      description:
> > +        phandle to the PHYs connected to CSI0/A, CSI1, CSI0B
> > +
> > +    phy-names:
> > +      description:
> > +        list of PHYs names
> > +      minItems: 2
> > +      maxItems: 2
> > +      items:
> > +        type: string
> > +        enum:
> > +          - csi0
> > +          - csi1
> > +          - csi0b
> > +      uniqueItems: true

