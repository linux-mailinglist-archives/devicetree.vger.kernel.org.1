Return-Path: <devicetree+bounces-235233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 791DBC35DD2
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D35943BA2C4
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E92E315D22;
	Wed,  5 Nov 2025 13:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dD3NYHnC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8677B313E14
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762349789; cv=none; b=uSwbuNcUL3SZLRK9Mr2cqbZv4ZAKIP3OQXfJOJucnzyCRrIQGg9YjCSH6WkdACsZxwFIQYoJVR18UQGYZQKzUE8F/vUg17p4IjFqIcJmr58bBf5tsbNomoGlkYIDzBum8ArDEhPgZ2YuCVXc6lu8BbsodovQTT3lRaFgckM1h3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762349789; c=relaxed/simple;
	bh=N3LAI2VKe6lufJcVbjoPrMgXDFUHRU7jaI2Qd1R+9YY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bVll3MEhO/3LS4epGskh3b03EOH1K2sUo2YMWp5SgxGK18xNSBbqETaN+V0c6M2P7JVdkvHWhHgw18eRmicXfF0bJ1l7p81QcCxoV1yhiCbuftetcsJJ94E462eV1yxfQRs1HVCca/AWwMLUlW9fhp7DVhBZC4WXDoi10Ffx+8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dD3NYHnC; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-429bcddad32so4221526f8f.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762349786; x=1762954586; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iL8OVjWdHUzrhq3ZN/d9whcVawdUbvhGs+dukUNE9D4=;
        b=dD3NYHnCuevkcLyFTCGKmf+TDHzNV68dYko3xhMX/EobSI1OFNx4C/Vu2pYLBvxdrP
         NBWmNUtqkwrwM2PMduHJZsM6hH5Plo7OY5aXc71F3SuGPo00dzQKZCpdD8GpStTurRW0
         12NlJb9/J5msPLiVDpXfuC3SgwQrVeyMi1Pk12Qo9D2Xs6OFWvh07OROGOvNc6ZGkXPS
         wLSuKCKdvzAFsmlfGsSBKiHmt6z0uNc/JNtye0D/o0preNGGis+nnk+dArIeWfI72HKJ
         q4k5/thyAryJZR0cw/VlNmHGoZwTB3A8ZEqG9QpuGGtZdlD+tAt6lvQuzrdDTZqD5uD/
         Da0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762349786; x=1762954586;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iL8OVjWdHUzrhq3ZN/d9whcVawdUbvhGs+dukUNE9D4=;
        b=HwZxPLGw1tCSQcC2JCqB7lwWcbIJdnU7eL7sDM/FjkNUq9cuyQ5/xCwKcueUQItiaW
         gaCj4mKejmIfKM5vIOgNQyibpqL7Owle/++C9Mnj5n9oYpnziD2YKlV3FKEBWeCp5zF5
         XObAdXEzcpEKUXq1sncLEdHuRWOaOrdoUQSGAZSGqeU32lWN1nj10VldxRow6+qh+7FD
         LUjLrcyBpKZscUYbNSlcTqfU+W8NbXA7DBcQjov0qrm4nbj4UkphQPeS1i7p+jBu3cNj
         uz3rJgExr+R7wv0lHHpGdfi4GLuqX5FZx22Q8iNcM2KpxccxCz9020vJgHjeKByDN+C+
         O+6g==
X-Forwarded-Encrypted: i=1; AJvYcCVxqk37bDQWAX3nZOCLbevL10SYBKK1BE/QVRR6eGB3zVJgntahqPIu9P8cu3gZS5MvPzCCisczjjP7@vger.kernel.org
X-Gm-Message-State: AOJu0YziqOjIUn4Sp7S0AaiAQaUnNtifHEq5uq+C4e/u6SHSaBs3ZsV5
	zw/3gjRpWEPOM3rzQrM8iv9b0QzMRDvy6Ay1AS4/ZorVfetc1jp3VG2sNwJ7/4taSJ1aFxcO1rm
	02RuBNPJRnyNRv14OIKmRb988+g4sVZE=
X-Gm-Gg: ASbGncssu9jhzjqWYAmZ9VVmOO7odWLs6cs4fcKek134Kxj0eBHUFVc+3Ygr+Q1/1hG
	cKp5DKUrXXXKqt6WMOBVwdKAnStmAj2O/wFt+rN3l08ZkckbeYG3HalUp7XgA3+/ydMs2Kgu8pW
	rsHFkRCrslAW4LaGp+XiGy7JEh3cXFDxERV/yCk5ONRm4wM6C1kf4UG3zYZu5Hmdu2hIWJtpi4O
	Go+V0+U70h+kHG3XTIMK1c0w7jBfMbWk0TYdQWCypQViBJvXRyQoneCMleYeeEVr8rAYHI=
X-Google-Smtp-Source: AGHT+IEFGUCq5pOwZYnXFWPhWJEW8IG4enihXYQYe3+bMQEFYIeVw6QpuN6H25Eqsp92tVyTuPD9IkJCxAS5BCgQOew=
X-Received: by 2002:a05:6000:22ca:b0:3e9:3b91:e846 with SMTP id
 ffacd0b85a97d-429e32c8357mr2860369f8f.10.1762349785766; Wed, 05 Nov 2025
 05:36:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002-c55-v12-0-3eda2dba9554@ideasonboard.com>
 <20251002-c55-v12-3-3eda2dba9554@ideasonboard.com> <CA+V-a8sg4c697WTS=wXoWvgc_UCFM3+Qjh1br=rMm4F84NVw-Q@mail.gmail.com>
 <8c5a4c68-8299-4d8f-96b2-8db232df70fe@ideasonboard.com>
In-Reply-To: <8c5a4c68-8299-4d8f-96b2-8db232df70fe@ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 5 Nov 2025 13:35:59 +0000
X-Gm-Features: AWmQ_bkQ07gnEJ1TplADVmVgYPnAor3xF3-AhJKu46RGz6HGiG28aqTfQRb9Z0M
Message-ID: <CA+V-a8vey1y0QAxk7vYNHzPHrOrQ4uTpjf4LCb9wSRRCT3v3Qg@mail.gmail.com>
Subject: Re: [PATCH v12 03/15] dt-bindings: media: Add bindings for ARM mali-c55
To: Dan Scally <dan.scally@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Anthony.McGivern@arm.com, 
	jacopo.mondi@ideasonboard.com, nayden.kanchev@arm.com, robh+dt@kernel.org, 
	mchehab@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jerome.forissier@linaro.org, kieran.bingham@ideasonboard.com, 
	laurent.pinchart@ideasonboard.com, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dan,

On Mon, Nov 3, 2025 at 4:17=E2=80=AFPM Dan Scally <dan.scally@ideasonboard.=
com> wrote:
>
> Hi Prabhakar
>
> On 28/10/2025 18:23, Lad, Prabhakar wrote:
> > Hi Daniel,
> >
> > Thank you for the patch.
> >
> > On Thu, Oct 2, 2025 at 11:19=E2=80=AFAM Daniel Scally
> > <dan.scally@ideasonboard.com> wrote:
> >>
> >> Add the yaml binding for ARM's Mali-C55 Image Signal Processor.
> >>
> >> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Acked-by: Nayden Kanchev <nayden.kanchev@arm.com>
> >> Co-developed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> >> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> >> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> >> ---
> >> Changes in v12:
> >>
> >>          - _Actually_ dropped the arm,inline property mode, having for=
gotten to
> >>            do so in v11.
> >>
> >> Changes in v11:
> >>
> >>          - Dropped in arm,inline_mode property. This is now identical =
to the
> >>            reviewed version 8, so I have kept the tags on there.
> >>
> >> Changes in v10:
> >>
> >>          - None
> >>
> >> Changes in v9:
> >>
> >>          - Added the arm,inline_mode property to differentiate between=
 inline and
> >>            memory input configurations
> >>
> >> Changes in v8:
> >>
> >>          - Added the video clock back in. Now that we have actual hard=
ware it's
> >>            clear that it's necessary.
> >>          - Added reset lines
> >>          - Dropped R-bs
> >>
> >> Changes in v7:
> >>
> >>          - None
> >>
> >> Changes in v6:
> >>
> >>          - None
> >>
> >> Changes in v5:
> >>
> >>          - None
> >>
> >> Changes in v4:
> >>
> >>          - Switched to port instead of ports
> >>
> >> Changes in v3:
> >>
> >>          - Dropped the video clock as suggested by Laurent. I didn't r=
etain it
> >>          for the purposes of the refcount since this driver will call =
.s_stream()
> >>          for the sensor driver which will refcount the clock anyway.
> >>          - Clarified that the port is a parallel input port rather (Sa=
kari)
> >>
> >> Changes in v2:
> >>
> >>          - Added clocks information
> >>          - Fixed the warnings raised by Rob
> >> ---
> >>   .../devicetree/bindings/media/arm,mali-c55.yaml    | 82 ++++++++++++=
++++++++++
> >>   1 file changed, 82 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/media/arm,mali-c55.yaml=
 b/Documentation/devicetree/bindings/media/arm,mali-c55.yaml
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..efc88fd2c447e98dd82a1f=
c1bae234147eb967a8
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/media/arm,mali-c55.yaml
> >> @@ -0,0 +1,82 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/media/arm,mali-c55.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: ARM Mali-C55 Image Signal Processor
> >> +
> >> +maintainers:
> >> +  - Daniel Scally <dan.scally@ideasonboard.com>
> >> +  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: arm,mali-c55
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: ISP Video Clock
> >> +      - description: ISP AXI clock
> >> +      - description: ISP AHB-lite clock
> > As per RZ/V2H HW manual we have reg clock looking at the driver code
> > it does have readl. IVC has reg clock if IVC driver fails are you
> > still able to read/write regs from ISP driver?
>  >
>  > I think we do need to pass reg clock too.
>
> Yes - but I should clarify that the names are from the arm documentation =
that we had when we
> originally developed the ISP driver. The RZ/V2H documentation treats the =
ISP and IVC as one block
> that shares 4 clocks and resets, but when we originally developed the ISP=
 driver the platform we
> used had the ISP implemented as an inline configuration (taking data dire=
ctly from a csi-2 receiver
> without an IVC equivalent), and the documentation detailed just the three=
 clocks and resets. The
> dtsi changes for the RZ/V2H(P) [1] assign clocks 226, 228 and 229 to the =
ISP which are named
> reg_aclk, vin_aclk and isp_sclk in the renesas documentation.
>
> The IVC gets pclk, vin_aclk and isp_sclk.
>
> [1] https://lore.kernel.org/linux-renesas-soc/20251010-kakip_dts-v1-1-64f=
798ad43c9@ideasonboard.com/
>
Thanks for the info.

> > Also for IVC we do have a main clock (which is a system clock).  Can
> > you please educate me on what is the purpose of it. Just curious as we
> > pass to IVC and not ISP.
>
> The IVC uniquely gets the one called "pclk" in renesas documentation, wit=
h the description "Input
> Video Control block register access APB clock".
>
Got you.

Cheers,
Prabhakar

