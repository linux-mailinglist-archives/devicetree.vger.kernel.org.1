Return-Path: <devicetree+bounces-43616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B8D85AE3E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 23:16:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB0A8284E7B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 22:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BEF54BEA;
	Mon, 19 Feb 2024 22:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFXS3m3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA14482FC
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 22:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708380990; cv=none; b=mNFz/UEMw93c892p8ZuO/XE2f3VDmyJHUdtRYuNIqbN3E3uFrgazmuRDtcW+7xvKzxGX6KsNUBBIMecjPGUolIlAesOdvKSUNRKEzirdALhtOytEPV7wwmCc2atahSV3HgZHsLdOemOk4FHYSdeGI2BkLftu9QK+71aMNpb7Ts0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708380990; c=relaxed/simple;
	bh=zSVu9prVWtzcMIX8nr93vi35ZuujWLtnr1gGDj9Uwf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uok5+CfuajVWq0iKZoiccvC6+jtI12SdAAUJRTEvHEk1TgXQfrONFRYFYjvgioac5RP5pqtzPRD5uYWN/HypySUaL5wO5+i2FXwu6bG+yY3GjTeNpweaTb5ltfyuYOUHvJxhkzpS1eLp21zLl3Sq5L//oTdm39BiHSeXs1JZZ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LFXS3m3m; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6085e47dd61so2714007b3.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708380987; x=1708985787; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vuTySsKzEO2OmI0ErX6jaDfKcwaUj4TjQngL5AX3Egg=;
        b=LFXS3m3mZ5DyEmSD/fxit91P67Eo0tb+8jNuArAoueVpuWcfMqpFd9DDw9qAhMGHGi
         YX8ig0Amc8Dq40HrO7xtLUkt162i6WB63kIK6ciXeH30SfxmIWMmg868PfUEWprtd//K
         JTfXi63Oatnv18+1vKC/TeolvQiu3f313gUMu65lrAHfW1N2qPBBZ1STikU3gAbm6Ree
         KBj36cgnI+sJq1WyYI9ohPDHMYSuvWnjUJ+hQwXoueWi4McpLcSReffxkWC5aymBCHCT
         uxyn4JTVDKZTJuHS4FBDp0Pf7PnAuDqEJHrXpQv22Ollhm4k35/ULdH91Csa6LNCjgUY
         2XxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708380987; x=1708985787;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vuTySsKzEO2OmI0ErX6jaDfKcwaUj4TjQngL5AX3Egg=;
        b=T1/+rKhH1uW5bDuVeKf1aU8nI9gIyBtKZVvhNzgZ3wgQygy5lTEYkZJ6R6BSXg9a9R
         oTwMb+fPG5YcmWhTPZUeR6aLqSS0PKf9LsTcsiVLIjCqf93Z/1MyNOJo154sdZlm6e2M
         wZTVMoZNuNLfvvhJeZ31m5jV1CkUY9sNkj8Rj+g//8PnfgLplu4+PJy1SAO+b3O8QU1v
         Ob1FKndwMmz7GxqFAjz/AZHKkV73PRxFqLBiVBb3nmGugjlUhNkOUkU/4RqPO4SaKCh8
         jM2Fp2OoWaqLxboIWa4OfpjxafkDqdlXKNhqTUqnP3JG7sSO3Rh4569+Zm3N0ba3yGbN
         SYjA==
X-Forwarded-Encrypted: i=1; AJvYcCVAq6CkEq7/YWRIe9fhRnky+J27/WEEhAoGyseC4RTrXj2MD9PbmuE1/50qZz5JZdPs0j7+/dC8FyXy1ve6nKKGwcfl9ytWKYwFPQ==
X-Gm-Message-State: AOJu0Yzk021dPh/9epcyT6aAc6iP8uH9ZT/7XyOc5PwLKTA+Ze2zhbjj
	LGMa6l+MWH7g1Uhu90NwaC94M202pXAYF245rZEPMWHwMLoimK/MySsURmASntKqfyVPYkfC5oT
	yOubifgUYp7XpBQHsJLLzbnluL3QWE0/xEAitnQ==
X-Google-Smtp-Source: AGHT+IH0q4G0NXDEX6RVYpZcdEntLJmn3kJY/UlQlPbUsZWH3aZT8Y8yzl3n5AhYDOYefhK8BUnY9HP1u6mwOkNWfWE=
X-Received: by 2002:a81:431f:0:b0:608:e2f:e3d2 with SMTP id
 q31-20020a81431f000000b006080e2fe3d2mr6514646ywa.22.1708380987231; Mon, 19
 Feb 2024 14:16:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org>
 <20240219-topic-rb1_gpu-v1-8-d260fa854707@linaro.org> <CAA8EJppPvXfkz=wVca8aFBhFaVUe9+OiVzcQUq7D8zPbK+T1FQ@mail.gmail.com>
 <b73e329a-02a4-46e0-bda4-5d5fae0a1180@linaro.org>
In-Reply-To: <b73e329a-02a4-46e0-bda4-5d5fae0a1180@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 00:16:16 +0200
Message-ID: <CAA8EJpqxYdjKx54Oph3=+H-42+cKpw=t=5GGJq54FVcOa26TDQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] arm64: dts: qcom: qrb2210-rb1: Enable the GPU
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 19 Feb 2024 at 23:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 19.02.2024 15:49, Dmitry Baryshkov wrote:
> > On Mon, 19 Feb 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> Enable the A702 GPU (also marketed as "3D accelerator by qcom [1], lol).
> >
> > Is it not?
>
> Sure, every electronic device is also a heater, I suppose.. I found
> this wording extremely funny though

3D accelerator is a bit outdated term, but it's still valid. Well,
unless using A702 makes 3D applications run slower than when using
llvmpipe.

> >> [1] https://docs.qualcomm.com/bundle/publicresource/87-61720-1_REV_A_QUALCOMM_ROBOTICS_RB1_PLATFORM__QUALCOMM_QRB2210__PRODUCT_BRIEF.pdf
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >
> > With the exception of the commit message:
>
> :(
>
> Konrad
>
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> >> ---
> >>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >
> >



-- 
With best wishes
Dmitry

