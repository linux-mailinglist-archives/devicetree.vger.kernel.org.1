Return-Path: <devicetree+bounces-133540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1589FADF4
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B53B7163E77
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852E61A7060;
	Mon, 23 Dec 2024 11:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ij7g3eW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADB119F12A
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734954896; cv=none; b=ERZMVAIlc1HtqLc7FPXwMy2i6hg4n89hAXtpvkexXGNCPMAxsAATg+hDciwXyThVCnWp2ZmUu+daRHRgb6ZK1or6ZAczVQ/t5ulGV/8okV8272YSfVvdTNz5bgX7SK6GSipnkkXsFgLFItIgGJWwI+VCqVOR0XVmx9IIe2whdyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734954896; c=relaxed/simple;
	bh=BLyuPg8/wbTYTxEvfb5srOid45ArNtSm/NjnXO3uzoI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BhXKql7D9azJe1jBNLiSwTJTzKqg23eQcuXZSGIAelcyM53c7CuLulPLz8oQawyIaYexSGFhKOc/Fr14VmI6z3X1AYcj0eF6ReRpjfbk4BVFBuNlsrXVQXHK4yKsDmaq0ohv0MZl7W9Clr6BJ0u0pqZyi+bDEOqgHyKY09KHqOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ij7g3eW1; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso4384422e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734954889; x=1735559689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3+jwbDtoVtKwBF8Oc10PBTbPC29IY38yVbu5FIsCHHg=;
        b=ij7g3eW1uDDFJGRKOXXshbVynsmoSxm1pbUBm8L1jZX5Rk8aOO39rJ9RP2/PCjZoAV
         F+TwFWt782nZQw4aLZrx2DaGnljBGIBWP9eLQ6ToWzHHu6+iUSATP7eoByUqmOGI90En
         CGsfwPcPQHaDZmVIBq/BW8YOz+lyDJWgWOncn4M+ksntn3CZrpX/JtshKOk59BHG+6oP
         RIuGX2kB3/vv1PKrNCQ4WoZQv6PLEfHjRTUDDjMtzpnZd7ONS3j1t7nMtBmY8eMj31KH
         DBvQsSL5ZeLY2b53uJstg+pRkaTmrAb5f5Apf/ucjIlQdhE8HmhyZlRfmu+boZ3vyvk+
         iEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734954889; x=1735559689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3+jwbDtoVtKwBF8Oc10PBTbPC29IY38yVbu5FIsCHHg=;
        b=fMlehSO3Rkifhx+sE7NOo3Q6bwaSTW5Q2vusx/PCmvoiDHygMFVWBO2z0Xy5nKKW7r
         nZakITJXl84iujA7O4wMvDva95XYqVviF09EoquovWhJdVpzN8B8WiWQ6fvfQpHJvyq1
         /9kthUfbt7sA+iN2qeEV6lOBbq36nVJ4r1ptAqr5fabdtgU4eNrSc7udezrCCAN7PCcX
         QhXiJTMOC6KaCUW+1UPq0ZcOPjnRZKFiBBAE4e2XClPVxYgMh3gZvYimHJU61XOX2GdP
         kdFpacHwsKNS16EsnlZn/aFHwdxdGqjhMt3uaHnA5Q1FXxFuJJNuO77lIo9CZQ1TZJWT
         Xe4w==
X-Forwarded-Encrypted: i=1; AJvYcCW47bjph0Sce9BKNczYa7bIWwXsOmz5tvUhyEhCH0HaRfOAM++3WjFWlHrLrztfvuadDAUGwZmJGVm3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk3Z2t4rSZEOF3b5uRaWxgqjGGTcvWl22Zh/A6nM/edxrl3y/m
	FBV0hBGKG9pgChRRqbnXOaTQHmI9HAEdoZ2EruUcKdTtZYiI5ZeXkZqt9k+WuEM=
X-Gm-Gg: ASbGnctKPuV7fAN5J67YpVAXUi/DpMrsYgcMWtqJSVbVI5bu/lmF4RVHXObICOlwlJ8
	G8DL2/XhJCeGesjPbBSX1TNDYrHquN2D+LQZKlPb6hJuJxZoJAvMrCQAVMge+JwJV+HrIq3IF+X
	Jkoyc2heD8UuSGXqygh8KBAfkxOsQIjbUIaRcHJFumlvW262oj4n3B3cb8wxMhe+zRqX+pOITrQ
	cHehm3dEmxWwj0e5ofjHgzyqEyNSgRju/VMv7AdjE92ZfjRQl9d7UFODX8XJEUzl5gPdPclKdJE
	L1drxZmoDfSsF7ldknYrYfq8utv/j1QTL0QX
X-Google-Smtp-Source: AGHT+IHgkznHFCE0oE4dZjBLaQaWr27Qjn5XAujqFFNK/MnseaS1Hy38/C0iy2Xshg8Nfw4fVADUyw==
X-Received: by 2002:a05:6512:10d4:b0:540:23af:837e with SMTP id 2adb3069b0e04-5422955fc5bmr3470236e87.39.1734954888661;
        Mon, 23 Dec 2024 03:54:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238214a6sm1249965e87.195.2024.12.23.03.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:54:47 -0800 (PST)
Date: Mon, 23 Dec 2024 13:54:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: opp: Add v2-qcom-adreno vendor
 bindings
Message-ID: <rzhm6lkryxfqepgejpgmu4mr2z5qlzcvuptmmxhhndafc4kwlo@uw6eiw4cqlmd>
References: <mz4zpcr4tqh2w7vt75f4ofxjzfve54ozzgpdbi2jjzk5pdxbk7@t36tlt3mmprt>
 <d858dadb-4098-4c9f-b4f0-393dc988db5f@quicinc.com>
 <4426b4kybtac6rc4twa5pgm3hvlegofemvqjcrvh6ni7f5z2h6@5dnlv3hgywh5>
 <c5e868e1-2dae-466c-a6fc-ef0f247fa0ce@quicinc.com>
 <278e62e1-02a4-4e33-8592-fb4fafcedf7e@quicinc.com>
 <CAA8EJprgshjbNqNErOb06jqV__LmbWvocsK5eD8PQqL+FaLb1g@mail.gmail.com>
 <f67c72c3-7393-47b0-9b9c-1bfadce13110@quicinc.com>
 <CAA8EJppy+V9m-t_qPEJh2iTkC7tyDcf2y8wD9vYoHtFSp=HrkQ@mail.gmail.com>
 <982686bb-0ddd-45a2-b620-564af4f01800@quicinc.com>
 <16e1145c-6ef4-4274-a8f9-966f0edef9fe@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16e1145c-6ef4-4274-a8f9-966f0edef9fe@oss.qualcomm.com>

On Mon, Dec 23, 2024 at 12:31:27PM +0100, Konrad Dybcio wrote:
> On 4.12.2024 7:18 PM, Akhil P Oommen wrote:
> > On 11/16/2024 1:17 AM, Dmitry Baryshkov wrote:
> >> On Fri, 15 Nov 2024 at 19:54, Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
> >>>
> >>> On 11/15/2024 3:54 AM, Dmitry Baryshkov wrote:
> >>>> Hello Akhil,
> >>>>
> >>>> On Thu, 14 Nov 2024 at 20:50, Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
> >>>>>
> >>>>> On 11/1/2024 9:54 PM, Akhil P Oommen wrote:
> >>>>>> On 10/25/2024 11:58 AM, Dmitry Baryshkov wrote:
> >>>>>>> On Thu, Oct 24, 2024 at 12:56:58AM +0530, Akhil P Oommen wrote:
> >>>>>>>> On 10/22/2024 11:19 AM, Krzysztof Kozlowski wrote:
> >>>>>>>>> On Mon, Oct 21, 2024 at 05:23:43PM +0530, Akhil P Oommen wrote:
> >>>>>>>>>> Add a new schema which extends opp-v2 to support a new vendor specific
> >>>>>>>>>> property required for Adreno GPUs found in Qualcomm's SoCs. The new
> >>>>>>>>>> property called "qcom,opp-acd-level" carries a u32 value recommended
> >>>>>>>>>> for each opp needs to be shared to GMU during runtime.
> >>>>>>>>>>
> >>>>>>>>>> Cc: Rob Clark <robdclark@gmail.com>
> >>>>>>>>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> >>>>>>>>>> ---
> >>>>>>>>>>  .../bindings/opp/opp-v2-qcom-adreno.yaml           | 96 ++++++++++++++++++++++
> >>>>>>>>>>  1 file changed, 96 insertions(+)
> >>>>>>>>>>
> >>>>>>>>>> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> >>>>>>>>>> new file mode 100644
> >>>>>>>>>> index 000000000000..6d50c0405ef8
> >>>>>>>>>> --- /dev/null
> >>>>>>>>>> +++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> >>>>>>>>>> @@ -0,0 +1,96 @@
> >>>>>>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>>>>>>>>> +%YAML 1.2
> >>>>>>>>>> +---
> >>>>>>>>>> +$id: http://devicetree.org/schemas/opp/opp-v2-qcom-adreno.yaml#
> >>>>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>>>>>> +
> >>>>>>>>>> +title: Qualcomm Adreno compatible OPP supply
> >>>>>>>>>> +
> >>>>>>>>>> +description:
> >>>>>>>>>> +  Adreno GPUs present in Qualcomm's Snapdragon chipsets uses an OPP specific
> >>>>>>>>>> +  ACD related information tailored for the specific chipset. This binding
> >>>>>>>>>> +  provides the information needed to describe such a hardware value.
> >>>>>>>>>> +
> >>>>>>>>>> +maintainers:
> >>>>>>>>>> +  - Rob Clark <robdclark@gmail.com>
> >>>>>>>>>> +
> >>>>>>>>>> +allOf:
> >>>>>>>>>> +  - $ref: opp-v2-base.yaml#
> >>>>>>>>>> +
> >>>>>>>>>> +properties:
> >>>>>>>>>> +  compatible:
> >>>>>>>>>> +    items:
> >>>>>>>>>> +      - const: operating-points-v2-adreno
> >>>>>>>>>> +      - const: operating-points-v2
> >>>>>>>>>> +
> >>>>>>>>>> +patternProperties:
> >>>>>>>>>> +  '^opp-?[0-9]+$':
> >>>>>>>>>
> >>>>>>>>> '-' should not be optional. opp1 is not expected name.
> >>>>>>>>
> >>>>>>>> Agree. Will change this to '^opp-[0-9]+$'
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> +    type: object
> >>>>>>>>>> +    additionalProperties: false
> >>>>>>>>>> +
> >>>>>>>>>> +    properties:
> >>>>>>>>>> +      opp-hz: true
> >>>>>>>>>> +
> >>>>>>>>>> +      opp-level: true
> >>>>>>>>>> +
> >>>>>>>>>> +      opp-peak-kBps: true
> >>>>>>>>>> +
> >>>>>>>>>> +      opp-supported-hw: true
> >>>>>>>>>> +
> >>>>>>>>>> +      qcom,opp-acd-level:
> >>>>>>>>>> +        description: |
> >>>>>>>>>> +          A positive value representing the ACD (Adaptive Clock Distribution,
> >>>>>>>>>> +          a fancy name for clk throttling during voltage droop) level associated
> >>>>>>>>>> +          with this OPP node. This value is shared to a co-processor inside GPU
> >>>>>>>>>> +          (called Graphics Management Unit a.k.a GMU) during wake up. It may not
> >>>>>>>>>> +          be present for some OPPs and GMU will disable ACD while transitioning
> >>>>>>>>>> +          to that OPP. This value encodes a voltage threshold and few other knobs
> >>>>>>>>>> +          which are identified by characterization of the SoC. So, it doesn't have
> >>>>>>>>>> +          any unit.
> >>>>>>>>>
> >>>>>>>>> Thanks for explanation and other updates. I am still not happy with this
> >>>>>>>>> property. I do not see reason why DT should encode magic values in a
> >>>>>>>>> quite generic piece of code. This creates poor ABI, difficult to
> >>>>>>>>> maintain or understand.
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> Configuring GPU ACD block with its respective value is a requirement for each OPP.
> >>>>>>>> So OPP node seems like the natural place for this data.
> >>>>>>>>
> >>>>>>>> If it helps to resolve your concerns, I can elaborate the documentation with
> >>>>>>>> details on the GMU HFI interface where this value should be passed on to the
> >>>>>>>> hardware. Also replace "few other knobs" with "Delay cycles & Calibration margin"
> >>>>>>>> in the above doc.
> >>>>>>>
> >>>>>>> Usually the preference for DT is to specify data in a sensible way
> >>>>>>> rather than just the values being programmed to the register. Is it
> >>>>>>> possible to implement this approach for ACD values?
> >>>>>
> >>>>> Krzysztof/Dmitry,
> >>>>>
> >>>>> BIT(0)-BIT(15) are static configurations which doesn't change between
> >>>>> OPPs. We can move it to driver.
> >>>>>
> >>>>> BIT(16)-BIT(31) indicates a threshold margin which triggers ACD. We can
> >>>>> keep this in the devicetree. And the driver can construct the final
> >>>>> value from both data and send it to GMU.
> >>>>>
> >>>>> If this is acceptable, I will send the v3 revision.
> >>>>
> >>>> Can the upper bitfield have a sensible representation in DT (like uV
> >>>> or something similar)?
> >>>
> >>> Closest approximation is quantized voltage steps. So, unit-less.
> >>> Converting it to the exact voltage requires identifying the pmic voltage
> >>> steps and other stuffs which are outside of my expertise.
> >>>
> >>> It is convenient if we can abstract it as an integer which correlates
> >>> with the voltage margin that should be maintained for each regulator corner.
> > 
> > Krzysztof,
> > 
> > Could you please confirm if this approach would be acceptable?
> > 
> > To reiterate, move the lower 16 bits which is same across OPPs to the
> > driver. Abstract the higher 16 bits as number of quantized voltage
> > margin when ACD mitigation gets triggered.
> 
> I know I'm not Krzysztof, but given this is ultimately a magic value
> passed to the firmware, I'm a bit lukewarm on decomposing it and would
> rather see the entire 32b passed in a property, so that if a future
> target needs a different constant in the lower word, we don't have to
> pull our hair out again, trying to add more spaghetti logic to account
> for that.

Also obviously being non-Krzysztof, if we don't have a semantic value
for the upper half I'm fine with having the magic value as a single
instance instead of spreading it between two places.

-- 
With best wishes
Dmitry

