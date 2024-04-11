Return-Path: <devicetree+bounces-58444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 872478A210F
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 23:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41914283FC6
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 21:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D7D39AC3;
	Thu, 11 Apr 2024 21:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZakNMt88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B422DF84
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712872007; cv=none; b=N1hIjbiXCITuPLUWwIUNI5wwl/GqEnYG2oo7n/dwD+pGk7SXJysF0UjmfiekfPH2IxFbhMZKRsquB4ST+nyth44AsNOPs3uJLf8iua4sL7xfHfzEcW26N6B7UyuWEITceupQQr4y2VvhM2B0RBnkZsxzU+tWrgwZpcf/w7b1bX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712872007; c=relaxed/simple;
	bh=uNSs5vtcekAeYi40GD/+uwWvEM1ihdSyNIerkATTiZY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sAtA9aGAmJCorSCWPj7Afv81SkZL1UJ3kTYp73Cc1C5jGQI5GVHm7DP+vcVjKF6+smKgNRW0rtdsaVk5rzmt5FYEntJm29kgiITboFa5uUH2VZLJkK3Fdpt2qAuNOuMah/PLT/xUx61fJAEYpGSMsnvIpd545zDb2oZh5fnddmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZakNMt88; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc23bf7e5aaso312556276.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 14:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712872005; x=1713476805; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+Bv9F7Hojq/Cfu3ER7cqazK0eiROWzKe2VDuRs1xH1A=;
        b=ZakNMt88rvPT1gXETHuE1PCpmjHeA/xQxgvMLZX2om2yoILTHuqY7/zcPNkBjznrMX
         fDl2EU1OBtK6WKmfo0dwXK2wc06MffhIUss0aYKbLzerQgOLgGo3mkObia3+zLZZUpNA
         M4QhjlbZY0zWESx75tVqboJBxLF521poX6wYoSTQxFNGq68Ws/VcUMlAlvHiw6igPHON
         2RjnPNoW3Q6gPnrsNSM5ijZASPcSXvwtPvbjY3QMqVs/ELYJqyD0Ue6l4Y9pSbR1Argo
         QrEdcNmDn20X9GUbwss3irx4voZMS+OI5119IfVW+ww4L6FtFroq4EZYmjnV7+3UxTic
         nhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712872005; x=1713476805;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Bv9F7Hojq/Cfu3ER7cqazK0eiROWzKe2VDuRs1xH1A=;
        b=areV9joy693ZHGRlLJIX8GBHi+Qzx99vepgG4/CRhrpGW0pPPG46mwWsetMURGsmYQ
         cZJ27GAkUkeae13Cb8zRZVEWxf8tS1OzFs0zUJYt1AFgX3PgsUyLaW05cNbzqeq4Sppi
         C8L7+YyMWwgpCTYfDni54606d81UgG+kDr7/kvpGoU5Xu1JUgnN9P8LBp++aROkw5EFy
         IREG0hCvLkff6wAJ2zhgFDtJCdegvsP/XbJs3uCM6/h0dCVVrs7N7XIKHBTdcwqS3MmD
         1/eQT2kuX3FC+au2/0XcUnjVZ1XRZK+7tLUugTvlK6PD+nZzhEyYhrNYjvt6FjHX+Zow
         5uWA==
X-Forwarded-Encrypted: i=1; AJvYcCXaxBhNu5OVHBrCzDlWO2Su8lyPQmlmoHZXpt4XByylFAfZas14a9gmHDkMzy/0HQ337AohcK724ZcI1B5ZIMeoHQp1bu4PPKBkRg==
X-Gm-Message-State: AOJu0YzBa9g5ftdMHu66jCrNUkVsBQ0yDwiwBQ/TxELG2u3dC+OqdvFR
	NK6PQcH3r5Inccu/YoNJ+vy4vwXEJBYXsopr7vLsYpETQ0vcfv7whpcIzVYqRGpVU6p71hCUNAU
	azUJ1ygbpGKhBJ+xDqXYhVjxT0e2w00byWfg+Fg==
X-Google-Smtp-Source: AGHT+IH3nG+5ooddR3TkR9saDOqZj8XET0NZKBgRR8e9Tshi5Wd/hYdbU8WpoZKw3lbPWRjF2Tg1FDbxOHJcQIzTzvU=
X-Received: by 2002:a25:b55:0:b0:dd1:7a16:7b4 with SMTP id 82-20020a250b55000000b00dd17a1607b4mr793294ybl.31.1712872004952;
 Thu, 11 Apr 2024 14:46:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-4-ce2b864251b1@linaro.org>
 <scvwfj44z3wpp7phvesfwjuv5awtlkwby2vvrpaq4i5fircrt3@i3ebya4iymf3>
 <730d6b9e-d6b4-41fd-bef3-b1fa6e914a35@linaro.org> <33qyr6cfruczllvavvwtbkyuqxmtao4bya4j32zhjx6ni27c6d@rxjehsw54l32>
 <321aa524-ab64-458a-b4c0-70294cc5467d@linaro.org>
In-Reply-To: <321aa524-ab64-458a-b4c0-70294cc5467d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 12 Apr 2024 00:46:34 +0300
Message-ID: <CAA8EJprvss4RTXQWMQpcE6afpc0Q22zzeGxJBxh4s04E=8rGBA@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/msm/adreno: Implement SMEM-based speed bin
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Apr 2024 at 00:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 4/10/24 21:26, Dmitry Baryshkov wrote:
> > On Wed, Apr 10, 2024 at 01:42:33PM +0200, Konrad Dybcio wrote:
> >>
> >>
> >> On 4/6/24 05:23, Dmitry Baryshkov wrote:
> >>> On Fri, Apr 05, 2024 at 10:41:32AM +0200, Konrad Dybcio wrote:
> >>>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
> >>>> abstracted through SMEM, instead of being directly available in a fuse.
> >>>>
> >>>> Add support for SMEM-based speed binning, which includes getting
> >>>> "feature code" and "product code" from said source and parsing them
> >>>> to form something that lets us match OPPs against.
> >>>>
> >>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>>> ---
> >>
> >> [...]
> >>
> >>>
> >>>> +  }
> >>>> +
> >>>> +  ret = qcom_smem_get_product_code(&pcode);
> >>>> +  if (ret) {
> >>>> +          dev_err(dev, "Couldn't get product code from SMEM!\n");
> >>>> +          return ret;
> >>>> +  }
> >>>> +
> >>>> +  /* Don't consider fcode for external feature codes */
> >>>> +  if (fcode <= SOCINFO_FC_EXT_RESERVE)
> >>>> +          fcode = SOCINFO_FC_UNKNOWN;
> >>>> +
> >>>> +  *speedbin = FIELD_PREP(ADRENO_SKU_ID_PCODE, pcode) |
> >>>> +              FIELD_PREP(ADRENO_SKU_ID_FCODE, fcode);
> >>>
> >>> What about just asking the qcom_smem for the 'gpu_bin' and hiding gory
> >>> details there? It almost feels that handling raw PCODE / FCODE here is
> >>> too low-level and a subject to change depending on the socinfo format.
> >>
> >> No, the FCODE & PCODE can be interpreted differently across consumers.
> >
> > That's why I wrote about asking for 'gpu_bin'.
>
> I'd rather keep the magic GPU LUTs inside the adreno driver, especially
> since not all Snapdragons feature Adreno, but all Adrenos are on
> Snapdragons (modulo a2xx but I refuse to make design decisions treating
> these equally to e.g. a6xx)

LUTs - yes. I wanted to push (FC << a) | (PC << b) and all the RESERVE
/ UNKNOWN magic there.

>
> >
> >>
> >>>
> >>>> +
> >>>> +  return ret;
> >>>>    }
> >>>>    int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
> >>>> @@ -1098,9 +1129,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
> >>>>                            devm_pm_opp_set_clkname(dev, "core");
> >>>>            }
> >>>> -  if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
> >>>> +  if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
> >>>>                    speedbin = 0xffff;
> >>>> -  adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
> >>>
> >>> the &= 0xffff should probably go to the adreno_read_speedbin / nvmem
> >>> case. WDYT?
> >>
> >> Ok, I can keep it, though realistically if this ever does anything
> >> useful, it likely means the dt is wrong
> >
> > Yes, but if DT is wrong, we should probably fail in a sensible way. I
> > just wanted to point out that previously we had this &0xffff, while your
> > patch silently removes it.
>
> Right, but I don't believe it actually matters.. If that AND ever did
> anything, this was a silent failure with garbage data passed in anyway.
>
> If you really insist, I can remove it separately.

I'd say, up to Rob or up to your consideration.


-- 
With best wishes
Dmitry

