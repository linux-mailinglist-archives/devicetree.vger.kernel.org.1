Return-Path: <devicetree+bounces-58714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 763238A2DA3
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:38:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E7B32827FD
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC1D58ACD;
	Fri, 12 Apr 2024 11:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mXcCGv0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A658A55E45
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 11:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712921802; cv=none; b=PH4/wIHK4U6I+8Ix8rnEYx6GUtyJAWxtRvtkfEM6aSS28sZr+igItncKCC+fyAypa6i+fLL61ZLy3eXbF5kePJR4s+cgQfAc5ZzoL8u3rmCaWPvo4LWk/N/XfwS95zm0jJkzvLwh9j9JKLDG+I6demD7MzgNZiYR5FIyxCstcgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712921802; c=relaxed/simple;
	bh=JQmPULKAKKMI1B10Eze+iMKfEwwEb7vwyYQxdaJovBk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PjblRYZ36BlI1IsAPmuPGLosT5GQV/mmkcxGRp8WXSXnAs4Jub6H1FSHjuLbHEJNrzwIptu2IBLTTcuxlHqS8PmkkDDi7ht6qW2vxvVWIrpb1qJA0pXwG98V5rUwnG15AQ3PbueZfjM/lpoUxa50ceyju09Vb2pwXe2jv1/FtNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mXcCGv0q; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dcc73148611so889624276.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712921800; x=1713526600; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HGBpkgffnv2itiKDdWNZjHSJUW/0KojY7TNsqJx4VxA=;
        b=mXcCGv0qY9xt/3yVz5NvtMbodapOd2ovZW8Zuny0gBTpMzK3mTb6SBv0tBriK1SN5s
         /B762dQNUinuBfGl6R8s88XqGmojaSEgykNGHIz9r6XSwb0MTAy5iTo5/elO615q42hw
         JEC9N0j6AkJqXAcxZC71OElDmIrBH5iB374T6IyHtztRsdUn7VTnWkwOVKwtxMytSfcW
         WKrGAoaULdvRx6yNS2nu27U7uurYnCsHJEkiAShzQSn6zMu1tnCFlRzMzESiH0pUMvb3
         VWqBRihNvtDq+9/DTZC9YQ9p2b93aaEE7VMNXMt67y364jIoQFtwUiqBc4H2Ebg0m3dT
         BC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712921800; x=1713526600;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGBpkgffnv2itiKDdWNZjHSJUW/0KojY7TNsqJx4VxA=;
        b=APhlYG5hM/7HJc2j1yzNxY1mIfM1EoneXnSDdKBm3+3jNE0nhNurCeKe0Dwn3eaNjv
         MndMKj+esp/v6gsVxt71a8/RBt/ieW97FbBaTU0ZglrsbffdCwZR4inuSZJ4T0wz576A
         +pp/swCsBw4dvmuGv+nYLU1hf1gb3oBq1p8wsSJ97fOdJO74CbdwSnMX9KZWtNg9BiI7
         nZKKCNk5B8YmHTzy7Jh2HZnnY42M1EafxXvYKv4h8TL1+s2+UxtCKmSJyCYfHVqLeVZX
         AuovAxcgBWHCO3jgmbnd+REVC1dJUWAi55+9Oi4axesv3eEUacEGSgRVOzzx4uYEdzqG
         wJYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEyfKsKsjLnUdj71GHsCcrHmUc37s96BsHOw/Dj9oU+L5pJwjkUExpAlfGl7KfHNoNDGg5wASwbOySrTpVYj/83lh8pf87u6zPnQ==
X-Gm-Message-State: AOJu0YwJPHEvMQ2M/Y3n7wkzl+7fE0219uKxLDKUtfEP7UCWN5N6sjHl
	jZREmo+nz0J78TTYvOAiIUivAH4bN5Vxde9H+ihsO4fLvnPAqRAYw8WYMkwQeTT/MpW3ZVb0fBg
	mTU/2Hb8zx4kDYTlICiPqXVQwNSiQyOEjkI5KHw==
X-Google-Smtp-Source: AGHT+IHSEEns6ewLu8Mz5Jc/NCzdVzTmaahZgvNMBsPgn/554HUcVdF/3+cHuruSXAD2cV8kdZ7nUOSKbuFnxHo5JRw=
X-Received: by 2002:a05:6902:150b:b0:dc6:4d0c:e9de with SMTP id
 q11-20020a056902150b00b00dc64d0ce9demr2486954ybu.0.1712921799663; Fri, 12 Apr
 2024 04:36:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240411-pm8xxx-vibrator-new-design-v9-0-7bf56cb92b28@quicinc.com>
 <20240411-pm8xxx-vibrator-new-design-v9-2-7bf56cb92b28@quicinc.com>
 <CAA8EJpoL9vCAUgWmHcoxppo_gJqaw_xqdYqcJkS6Xza-5aSh3A@mail.gmail.com>
 <fa6c8b30-11f3-bd80-67cb-713e4348eccf@quicinc.com> <CAA8EJpqa=5yaTRHuEiYynTDFy53YPFk4R3q_EV8rmsBN1iR5fA@mail.gmail.com>
 <00b8cea6-fed2-4224-8aeb-c731dc1b666f@quicinc.com>
In-Reply-To: <00b8cea6-fed2-4224-8aeb-c731dc1b666f@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 12 Apr 2024 14:36:32 +0300
Message-ID: <CAA8EJpoCYb=3=YVBe+xYO+ccUMLzddwY-jsdT6HuFNvE5GyoPQ@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] input: pm8xxx-vibrator: refactor to support new
 SPMI vibrator
To: Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Apr 2024 at 06:41, Fenglin Wu <quic_fenglinw@quicinc.com> wrote:
>
>
>
> On 4/11/2024 10:05 PM, Dmitry Baryshkov wrote:
> > On Thu, 11 Apr 2024 at 16:45, Fenglin Wu <quic_fenglinw@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 2024/4/11 18:58, Dmitry Baryshkov wrote:
> >>> On Thu, 11 Apr 2024 at 11:32, Fenglin Wu via B4 Relay
> >>> <devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
> >>>>
> >>>> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> >>>>
> >>>> Currently, vibrator control register addresses are hard coded,
> >>>> including the base address and offsets, it's not flexible to
> >>>> support new SPMI vibrator module which is usually included in
> >>>> different PMICs with different base address. Refactor it by using
> >>>> the base address defined in devicetree.
> >>>>
> >>>> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> >>>> ---
> >>>>    drivers/input/misc/pm8xxx-vibrator.c | 42 ++++++++++++++++++++++++------------
> >>>>    1 file changed, 28 insertions(+), 14 deletions(-)
> >>>>
> >>>> diff --git a/drivers/input/misc/pm8xxx-vibrator.c b/drivers/input/misc/pm8xxx-vibrator.c
> >>>> index 89f0f1c810d8..2959edca8eb9 100644
> >>>> --- a/drivers/input/misc/pm8xxx-vibrator.c
> >>>> +++ b/drivers/input/misc/pm8xxx-vibrator.c
> >>>> @@ -20,26 +20,26 @@
> >>>>    #define MAX_FF_SPEED           0xff
> >>>>
> >>>>    struct pm8xxx_regs {
> >>>> -       unsigned int enable_addr;
> >>>> +       unsigned int enable_offset;
> >>>>           unsigned int enable_mask;
> >>>>
> >>>> -       unsigned int drv_addr;
> >>>> +       unsigned int drv_offset;
> >>>>           unsigned int drv_mask;
> >>>>           unsigned int drv_shift;
> >>>>           unsigned int drv_en_manual_mask;
> >>>>    };
> >>>>
> >>>>    static const struct pm8xxx_regs pm8058_regs = {
> >>>> -       .drv_addr = 0x4A,
> >>>> +       .drv_offset = 0x4A,
> >>>
> >>> If the DT already has reg = <0x4a> and you add drv_offset = 0x4a,
> >>> which register will be used by the driver?
> >>>
> >>> Also, while we are at it, please downcase all the hex numbers that you
> >>> are touching.
> >>>
> >> For SSBI vibrator, the "reg" value defined in DT is not used, see below.
> >>
> >>
> >>>>           .drv_mask = 0xf8,
> >>>>           .drv_shift = 3,
> >>>>           .drv_en_manual_mask = 0xfc,
> >>>>    };
> >>>>
> >>>>    static struct pm8xxx_regs pm8916_regs = {
> >>>> -       .enable_addr = 0xc046,
> >>>> +       .enable_offset = 0x46,
> >>
> >> [...]
> >>
> >>>> @@ -170,7 +173,7 @@ static int pm8xxx_vib_probe(struct platform_device *pdev)
> >>>>           struct pm8xxx_vib *vib;
> >>>>           struct input_dev *input_dev;
> >>>>           int error;
> >>>> -       unsigned int val;
> >>>> +       unsigned int val, reg_base = 0;
> >>>>           const struct pm8xxx_regs *regs;
> >>>>
> >>>>           vib = devm_kzalloc(&pdev->dev, sizeof(*vib), GFP_KERNEL);
> >>>> @@ -190,13 +193,24 @@ static int pm8xxx_vib_probe(struct platform_device *pdev)
> >>>>
> >>>>           regs = of_device_get_match_data(&pdev->dev);
> >>>>
> >>>> +       if (regs->enable_offset != 0) {
> >>>> +               error = fwnode_property_read_u32(pdev->dev.fwnode, "reg", &reg_base);
> >>>> +               if (error < 0) {
> >>>> +                       dev_err(&pdev->dev, "Failed to read reg address, rc=%d\n", error);
> >>>> +                       return error;
> >>>> +               }
> >>>> +       }
> >>>> +
> >>>> +       vib->enable_addr = reg_base + regs->enable_offset;
> >>>> +       vib->drv_addr = reg_base + regs->drv_offset;
> >>
> >> The reg_base is initialized as 0 and it is assigned as the "reg" value
> >> defined in DT only for SPMI vibrators.
> >
> > Please don't. This is counterintuitive. We have reg in DT. We should
> > be using it.
> >
> Hmm, the original driver doesn't use the reg value defined in DT at all,
> Anyway, I can make the SSBI offset to 0, so the base address defined in
> the DT will be always added regardless of SSBI or SPMI vibrator. Let me
> know.

Yes, please. This follows the logic of the SPMI change too.

> Thanks
>
> >>
> >>>> +
> >>>>           /* operate in manual mode */
> >>>> -       error = regmap_read(vib->regmap, regs->drv_addr, &val);
> >>>> +       error = regmap_read(vib->regmap, vib->drv_addr, &val);
> >>>>           if (error < 0)
> >>>>                   return error;
> >>>>
> >>>>           val &= regs->drv_en_manual_mask;
> >>>> -       error = regmap_write(vib->regmap, regs->drv_addr, val);
> >>>> +       error = regmap_write(vib->regmap, vib->drv_addr, val);
> >>>>           if (error < 0)
> >>>>                   return error;
> >>>>
> >>>>
> >>>> --
> >>>> 2.25.1
> >>>>
> >>>>
> >>>
> >>>
> >
> >
> >



-- 
With best wishes
Dmitry

