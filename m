Return-Path: <devicetree+bounces-60520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E97858A98F0
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:48:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A88532840AE
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 11:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8611E15F405;
	Thu, 18 Apr 2024 11:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vsNt5fbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F6F15F3E1
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 11:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713440907; cv=none; b=JwKDJL5RlS5P+7AcyHMScNJy/EcU+N2Vykr7vkCMQ7fn61NixTDnxI8G9ruX7eS3yvlSSO+XxJ+kg+vdJoUOIWSf9AXcPNt8rwW0yo8PrrvmUbWEpHCHLPT8Z+WDsPboAbzbhVcIGKAkVDL5OuuJ0nw8Ed6hS94UrvKESMuLnIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713440907; c=relaxed/simple;
	bh=gE136ijLAtKzyRYGVhVe2CMoT2C2wSdXn/ajEG1GWyU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HpJ5/SAxQU6526Eh0KmEdi9j9sT1pVyKmvdxSglSixKBpri6Ntup1WUWZXNKomuFGsRMI/ukg/izxOeRzoeAJ7MwHWpwRCbK3ZEqlXyUdP5biz3UjnEpvSkhrsa6sHZQX8pP4ACqfj7Qcv4dMSEw3+xKSIE4h6F/2iojW+c0cpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vsNt5fbK; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so1814417276.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 04:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713440905; x=1714045705; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NuxTFXDlrm+BFnpHmLBiKm3zNo8+3C9CrzDgCHuzRNk=;
        b=vsNt5fbKOxQkX010Y7B0jwogqFOgePEz+AGFZqPHSmeQeVOrlEEzKl0hO76Amvsgal
         u5r3LP4eECgjWFfcpzb1WXottf2q0j0Guicou9cmWr/eMkcFlz3Z36hIRDrYna8OXzMN
         XDty0nq04+OmzrtmoYhZ3PnBC3gBPdKAS17/67qiBSZ6AsArf2a85CruazPsx075v9a2
         iPXaSOXj97eSc9qBn4xj3QeVwkAIxx1kPiilbhz9R8sw4SRMRZvC7L6/peb7gKWYXf9x
         zTvcvrjjbEC6mlaf8RAYf8IhZ8nCTHkXToozwom+fqc0YB63v43gMgkZuyL45CqI4Ruh
         V+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713440905; x=1714045705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NuxTFXDlrm+BFnpHmLBiKm3zNo8+3C9CrzDgCHuzRNk=;
        b=fQ4WFtBEKM9qeR8zxx/csTK8t+UNuNqhOZcS6ORc6P4IPxt2NObWF4ysc62iT9CzGu
         rjMd7hrQVjTz4HpXYh52MdANBlZTU1wBHfTUhYbwSYkwtSReVbvoMX7ft4VrFdAsAeVK
         wk22DTNt7mob5MuIg9VXOfCt39jQvemFCuN+VTjUzKiCdt5FDd6zs9rWbI+dZikTJau+
         of6AQuo8uJ7pVRIqs7EnPBjsVxrNjy9wlBYtG98DJb3aa88TzUztzUwqZhfu5soe0FLZ
         Wn+UswUYe3PbNECWNPjRqP9lepS2VmfmJwzs6HdqDu6nvPUL5ESksHuDeoxs50QuGsKw
         DJaw==
X-Forwarded-Encrypted: i=1; AJvYcCXz3TH34vgXYFFjLMCSYSxGibzM7mTish8pNVJrN0zk287ajrhN4d3i9VLDtw01E0eElOgua6MCc3SQxBtQLUAHD9PaW/MDMIF4lQ==
X-Gm-Message-State: AOJu0YxvbFGwfRpNY6efO5TD9lN+EfgS45SiifBXeTA6mTTGVWWKEaEx
	kD9anNFCOo8HKXmNW8I42BqE0Ns68LxlarYZ4itBpRpRwAfMSPNpuFgkGDZ3KgUL41Ol3d+g++Z
	aTxzpezYlAgtfN3xnARfA3VHeuVGkGmq74y0qUA==
X-Google-Smtp-Source: AGHT+IGKBPlfH5drQwVfSarXKWibHJIXInY29SG6VZ1jJJB3cdumDdDbAMYX6JlD836WHkNKoYSwv0xG3WG+/ElPO7w=
X-Received: by 2002:a25:b121:0:b0:dc6:d1a9:d858 with SMTP id
 g33-20020a25b121000000b00dc6d1a9d858mr1686669ybj.8.1713440904861; Thu, 18 Apr
 2024 04:48:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404-topic-smem_speedbin-v2-0-c84f820b7e5b@linaro.org>
 <20240404-topic-smem_speedbin-v2-3-c84f820b7e5b@linaro.org>
 <hi7vzqm5ebypzs6m6bw64ghgfwsdzuaxy65jpah37iw5ww7fku@n3c5sucic27i>
 <bfd6aa32-a28e-47a4-82c7-76c5dd99a44d@linaro.org> <7ynodjzjuxwwqkjgns5jtnkckw52qyldfpsqpjh7645swva4xk@7wucftyjyyy3>
 <2b5f33ba-2108-464c-b4d2-eff2cc6e59cf@linaro.org>
In-Reply-To: <2b5f33ba-2108-464c-b4d2-eff2cc6e59cf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 18 Apr 2024 14:48:13 +0300
Message-ID: <CAA8EJpqW-YxJdw-+QDEdhqjwAPK1dzmW1dW6=18wcRQgp+Oq6w@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] drm/msm/adreno: Implement SMEM-based speed bin
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

On Thu, 18 Apr 2024 at 14:31, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 18.04.2024 1:07 PM, Dmitry Baryshkov wrote:
> > On Thu, Apr 18, 2024 at 11:51:16AM +0200, Konrad Dybcio wrote:
> >> On 18.04.2024 1:43 AM, Dmitry Baryshkov wrote:
> >>> On Wed, Apr 17, 2024 at 10:02:55PM +0200, Konrad Dybcio wrote:
> >>>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
> >>>> abstracted through SMEM, instead of being directly available in a fuse.
> >>>>
> >>>> Add support for SMEM-based speed binning, which includes getting
> >>>> "feature code" and "product code" from said source and parsing them
> >>>> to form something that lets us match OPPs against.
> >>>>
> >>>> Due to the product code being ignored in the context of Adreno on
> >>>> production parts (as of SM8650), hardcode it to SOCINFO_PC_UNKNOWN.
> >>>>
> >>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>>> ---
> >>
> >> [...]
> >>
> >>>> --- a/drivers/gpu/drm/msm/adreno/adreno_device.c
> >>>> +++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
> >>>> @@ -6,6 +6,8 @@
> >>>>   * Copyright (c) 2014,2017 The Linux Foundation. All rights reserved.
> >>>>   */
> >>>>
> >>>> +#include <linux/soc/qcom/socinfo.h>
> >>>> +
> >>>
> >>> Stray leftover?
> >>
> >> Looks like
> >>
> >> [...]
> >>
> >>>> +
> >>>> +#ifdef CONFIG_QCOM_SMEM
> >>>
> >>> Please extract to a separate function and put the function under ifdef
> >>> (providing a stub otherwise). Having #ifndefs inside funciton body is
> >>> frowned upon.
> >>
> >> Hm, this looked quite sparse and straightforward, but I can do that.
> >>
> >> [...]
> >>
> >>>> +/* As of SM8650, PCODE on production SoCs is meaningless wrt the GPU bin */
> >>>> +#define ADRENO_SKU_ID_FCODE               GENMASK(15, 0)
> >>>> +#define ADRENO_SKU_ID(fcode)      (SOCINFO_PC_UNKNOWN << 16 | fcode)
> >>>
> >>> If we got rid of PCode matching, is there a need to actually use
> >>> SOCINFO_PC_UNKNOWN here? Or just 0 would be fine?
> >>
> >> The IDs need to stay constant for mesa
> >>
> >> I used the define here to:
> >>
> >> a) define the SKU_ID structure so that it's clear what it's comprised of
> >> b) make it easy to add back Pcode in case it becomes useful with future SoCs
> >> c) avoid mistakes - PC_UNKNOWN happens to be zero, but that's a lucky
> >>    coincidence
> >>
> >> We don't *match* based on PCODE, but still need to construct the ID properly
> >>
> >> Another option would be to pass the real pcode and add some sort of
> >> "pcode_invalid" property that if found would ignore this part of the
> >> SKU_ID in mesa, but that sounds overly and unnecessarily complex.
> >
> > It's fine, just add a comment please. Maybe we can rename PC_UNKNOWN to
> > PC_PRODUCTION?
>
> I don't think that's right. The SoC "product code" may actually mean something
> (again, not necessarily for Adreno specifically), and with Adreno in mind, it
> being only meaningful for engineering samples may change in the future.

Ack


-- 
With best wishes
Dmitry

