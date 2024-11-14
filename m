Return-Path: <devicetree+bounces-121992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F23B9C9522
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 23:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 052AD1F22E7E
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 22:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB851B0F1C;
	Thu, 14 Nov 2024 22:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rY/ATRYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EDB1632DA
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731623087; cv=none; b=eOxp1WQ9K0AGsjWvBO82Xw9JH7MVLQswY37FewTZC5C6nRniACnPkqnw9ZwJWdjE8IS2hMyxgB9a9wauVR0gZfmZsH8NFRzkipWBwGgqeHQOhCGvj8CDW4QBdWLigJLd8mmm51QCuQk1mWy4IlEXdVqwGOQivy+08g1BAaUVNl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731623087; c=relaxed/simple;
	bh=m5M/qvwkZABSZEa9g4iUO/LAzfV6JOoQRU3uwmnmdXI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uNY4CK8zFTSZjCrKZd1xqa1Sf+3yZGgP//8rd17JLjW3z2yj0G/b9IqJ54V1QOMC0lW8IsF41gFnwNWRoLw7T3EDHDXfgc/NqYhF02+0bi62pweOyp23w63mc1p9eVz9cpmNt1SA6gFZB0JqZ6kdAPmlnJy/ZhMGHLTR9+1GJJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rY/ATRYw; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6ea7c9227bfso13726317b3.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 14:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731623084; x=1732227884; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fz1cryoPNcmIIhBTuToySSNUuCG3KvwOQc0AQslJ9bk=;
        b=rY/ATRYw7hhf7JMQOQOJ2XfFzl1VJ6CIkneuwRwu2rVTZcufOvzth5GX5Kb796BlB3
         Z2cT5skxtUAI99ZpGoFVMKKAV1Ekxub2ajtONJXTgGZY4xwv2CF56mRt66TWFGi9HCrk
         fGMNsOUzHsQl+dgBPvuGG0bQwGijcHbm2WS+srBzqSHpPp7OaxorgEskvWFBKzJR6C9i
         O6fFu8w+IHZI/cdLSnONgqASQWQ2ILRuFSZOvcBVsCExjxR0IffQUYyCR34VZwLNjppt
         BL8kRj8ieRTDj1EVJGP8BbYY0rVow65fPDxzqjgXHoLA75sNJ94ZvIfRrJUJ8xvTMmk4
         fkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731623084; x=1732227884;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fz1cryoPNcmIIhBTuToySSNUuCG3KvwOQc0AQslJ9bk=;
        b=ZQf79WZR4yUX/V1v1MrugSlK6YbRXdUntpg1M011aH+YOsrEvbi4lBhZvekYTCjtY7
         oCIogS8GA5YZ2DzHYYyLvcxKGIqthYckhdJB8uxo+19iEWm0keCFn8gKC7UGxDHFra5s
         JKHEAMva3bGzss2vVFXFEYSiWTsQoh1Q3wjSVe2OCdvBkjT0wunwgBP47n4IcdJD+2JL
         2YSpLBXntrZeLybFCtUDt1tES88z+aQz2hVWHCXdilBfUQrZ0thdEqmoT2VxaBnjyazo
         Ulx+XexZ4H/c313uNAQ32H1ay9bdP/+ASUuvRKEEVMOlTS4cRp1sGK+nuTyIltqengM3
         oaBg==
X-Forwarded-Encrypted: i=1; AJvYcCWFGGoegWywnP/Q5UwjouJk9ALrMrVXCxZ2JjxJ2ilao4XbFUOmFXWSaXMaQ620mfZ/AHAqWAHi9Roz@vger.kernel.org
X-Gm-Message-State: AOJu0YzUZCiHfbitBXCHtKj5mus6u9uaJQbWfoVBt6pYtK7crE54KSTx
	J9V3ph9JIq5A0KgTP4NgB0tF9lXs81aN6ji6d5Gt9sMJg+LeQdHzMd2jB33g79KOI1BG16FIDqc
	U/HvYYyi9rWoJ5n4KxN68o2Zj0NCDIlyax1pL4Q==
X-Google-Smtp-Source: AGHT+IFrzmp0d+SxhQuy9csj+6FAqaRg2lAarl1XN3L0geodgrc2R/eWwEK9i0dJjAuD8YAqO7lGoVt6qLOTED2p30M=
X-Received: by 2002:a05:690c:ed4:b0:6e3:b8f:59d1 with SMTP id
 00721157ae682-6ee55cd17dfmr9350597b3.31.1731623083931; Thu, 14 Nov 2024
 14:24:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241021-gpu-acd-v2-0-9c25a62803bc@quicinc.com>
 <20241021-gpu-acd-v2-2-9c25a62803bc@quicinc.com> <mz4zpcr4tqh2w7vt75f4ofxjzfve54ozzgpdbi2jjzk5pdxbk7@t36tlt3mmprt>
 <d858dadb-4098-4c9f-b4f0-393dc988db5f@quicinc.com> <4426b4kybtac6rc4twa5pgm3hvlegofemvqjcrvh6ni7f5z2h6@5dnlv3hgywh5>
 <c5e868e1-2dae-466c-a6fc-ef0f247fa0ce@quicinc.com> <278e62e1-02a4-4e33-8592-fb4fafcedf7e@quicinc.com>
In-Reply-To: <278e62e1-02a4-4e33-8592-fb4fafcedf7e@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Nov 2024 00:24:34 +0200
Message-ID: <CAA8EJprgshjbNqNErOb06jqV__LmbWvocsK5eD8PQqL+FaLb1g@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: opp: Add v2-qcom-adreno vendor bindings
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello Akhil,

On Thu, 14 Nov 2024 at 20:50, Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
>
> On 11/1/2024 9:54 PM, Akhil P Oommen wrote:
> > On 10/25/2024 11:58 AM, Dmitry Baryshkov wrote:
> >> On Thu, Oct 24, 2024 at 12:56:58AM +0530, Akhil P Oommen wrote:
> >>> On 10/22/2024 11:19 AM, Krzysztof Kozlowski wrote:
> >>>> On Mon, Oct 21, 2024 at 05:23:43PM +0530, Akhil P Oommen wrote:
> >>>>> Add a new schema which extends opp-v2 to support a new vendor specific
> >>>>> property required for Adreno GPUs found in Qualcomm's SoCs. The new
> >>>>> property called "qcom,opp-acd-level" carries a u32 value recommended
> >>>>> for each opp needs to be shared to GMU during runtime.
> >>>>>
> >>>>> Cc: Rob Clark <robdclark@gmail.com>
> >>>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> >>>>> ---
> >>>>>  .../bindings/opp/opp-v2-qcom-adreno.yaml           | 96 ++++++++++++++++++++++
> >>>>>  1 file changed, 96 insertions(+)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> >>>>> new file mode 100644
> >>>>> index 000000000000..6d50c0405ef8
> >>>>> --- /dev/null
> >>>>> +++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> >>>>> @@ -0,0 +1,96 @@
> >>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>>>> +%YAML 1.2
> >>>>> +---
> >>>>> +$id: http://devicetree.org/schemas/opp/opp-v2-qcom-adreno.yaml#
> >>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>> +
> >>>>> +title: Qualcomm Adreno compatible OPP supply
> >>>>> +
> >>>>> +description:
> >>>>> +  Adreno GPUs present in Qualcomm's Snapdragon chipsets uses an OPP specific
> >>>>> +  ACD related information tailored for the specific chipset. This binding
> >>>>> +  provides the information needed to describe such a hardware value.
> >>>>> +
> >>>>> +maintainers:
> >>>>> +  - Rob Clark <robdclark@gmail.com>
> >>>>> +
> >>>>> +allOf:
> >>>>> +  - $ref: opp-v2-base.yaml#
> >>>>> +
> >>>>> +properties:
> >>>>> +  compatible:
> >>>>> +    items:
> >>>>> +      - const: operating-points-v2-adreno
> >>>>> +      - const: operating-points-v2
> >>>>> +
> >>>>> +patternProperties:
> >>>>> +  '^opp-?[0-9]+$':
> >>>>
> >>>> '-' should not be optional. opp1 is not expected name.
> >>>
> >>> Agree. Will change this to '^opp-[0-9]+$'
> >>>
> >>>>
> >>>>> +    type: object
> >>>>> +    additionalProperties: false
> >>>>> +
> >>>>> +    properties:
> >>>>> +      opp-hz: true
> >>>>> +
> >>>>> +      opp-level: true
> >>>>> +
> >>>>> +      opp-peak-kBps: true
> >>>>> +
> >>>>> +      opp-supported-hw: true
> >>>>> +
> >>>>> +      qcom,opp-acd-level:
> >>>>> +        description: |
> >>>>> +          A positive value representing the ACD (Adaptive Clock Distribution,
> >>>>> +          a fancy name for clk throttling during voltage droop) level associated
> >>>>> +          with this OPP node. This value is shared to a co-processor inside GPU
> >>>>> +          (called Graphics Management Unit a.k.a GMU) during wake up. It may not
> >>>>> +          be present for some OPPs and GMU will disable ACD while transitioning
> >>>>> +          to that OPP. This value encodes a voltage threshold and few other knobs
> >>>>> +          which are identified by characterization of the SoC. So, it doesn't have
> >>>>> +          any unit.
> >>>>
> >>>> Thanks for explanation and other updates. I am still not happy with this
> >>>> property. I do not see reason why DT should encode magic values in a
> >>>> quite generic piece of code. This creates poor ABI, difficult to
> >>>> maintain or understand.
> >>>>
> >>>
> >>> Configuring GPU ACD block with its respective value is a requirement for each OPP.
> >>> So OPP node seems like the natural place for this data.
> >>>
> >>> If it helps to resolve your concerns, I can elaborate the documentation with
> >>> details on the GMU HFI interface where this value should be passed on to the
> >>> hardware. Also replace "few other knobs" with "Delay cycles & Calibration margin"
> >>> in the above doc.
> >>
> >> Usually the preference for DT is to specify data in a sensible way
> >> rather than just the values being programmed to the register. Is it
> >> possible to implement this approach for ACD values?
>
> Krzysztof/Dmitry,
>
> BIT(0)-BIT(15) are static configurations which doesn't change between
> OPPs. We can move it to driver.
>
> BIT(16)-BIT(31) indicates a threshold margin which triggers ACD. We can
> keep this in the devicetree. And the driver can construct the final
> value from both data and send it to GMU.
>
> If this is acceptable, I will send the v3 revision.

Can the upper bitfield have a sensible representation in DT (like uV
or something similar)?

>
> -Akhil.
>
> >
> > I am still checking about this. Will get back.
> >
> > -Akhil
> >
> >>
> >>>
> >>>>
> >>
> >
>


-- 
With best wishes
Dmitry

