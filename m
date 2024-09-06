Return-Path: <devicetree+bounces-100792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D3496EF64
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 11:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85DA51C23BE5
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 09:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F461C8702;
	Fri,  6 Sep 2024 09:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TD/XxqRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CDD1C86F8
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 09:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725615394; cv=none; b=awYeDJqClBup1Hb5nQF/SXIMmpBdSkbWTE5erlD/lztUgNeWB8UJuLTpFQSCu443pAWJiGaEX0yqmj7NirsQAlipAy/wpXZMYAYTP1U7w2QlQ/ml+5y3vjikvLeqP6uJ5eEcyWPvA5FpHj1DKXr3fgdR7rOu776j5wcbGH/nn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725615394; c=relaxed/simple;
	bh=p8TKYd9n7gZAwbCnrosjFG2oQ1QDhkATvk+6BeIB7G0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WM/rZNt8ZKs2Wwtib/Vu4X5bnCySWlCN/dZp2Ha3G6QKIvxMw/jGLEcYlficTJwQodw1MF+o2RWH+wfJ9z1tqJjZmZqj1fkY9GEbH771C3t/wbyA4da0zgxXK7Gaw+jsuC6odvJAuDVBpAuHcST6p2NPmQsnpgZq4mOTdPhOzrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TD/XxqRe; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6b5b65b1b9fso14531037b3.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 02:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725615392; x=1726220192; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t9RjLyHC8jLYAxkxwbHI+OlYMfMmm4fKIBxKkIZmylA=;
        b=TD/XxqRevEegPir2KTkccOWjqLlL4N4JzawlLxDwXg+o9pN9FM5tA51NZW9MGu5yGY
         pgMa5kjLAo2/3XSSgvdlGdV7qTOtrD2Y3vvpdjU/Hg6CH7B2prte0L0mOw+YChEPB7X0
         NxSoCu7r6/TCoiJN/0AOFi8wNDCNHaeQl7I685g4YjclTFj10ZR6rWsx74+nfHceeMkl
         zCU1ttY0x6T+Nxrd3ME6sLhV58QLYNzHadh/oeKihnIzEI3VWKwhPm4vvBLZ7I66f5cv
         R94JdjaE7V7+7jMMJk+po0pheWso7tZUFnQX1Hf51ErivXsFlQKLY22HNo2xAg/Xr4QD
         dXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725615392; x=1726220192;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9RjLyHC8jLYAxkxwbHI+OlYMfMmm4fKIBxKkIZmylA=;
        b=leEZ8PTnWIXclRCm2VQSmY7KeQ/orrItuv0Ofr73DVi7npwbOOJP6fXrcJmm+5YXF6
         N1Vq81pcU610wrqVedJNbQMDmVJB3SRiACn2uB7k77VZHP7QdzFsZNzg3isMpH4UELCP
         dJswCtKP4FUo5VRkGQ5htvgblR1VFlUvPAC2UwVpXwjjRo21Octy0NRQfCMCzadSrJGr
         Zq61qHoLdO+ZLR0DyI7NVTGe1Gzv7mNKF9iwv9jmci+SrO+dxeX9qIFqlf9aek10TB2y
         hoH6gCNsye0UEyiNDNkNWcQbdMpef3/D0zLTRGuGSSE9cFZYtbkVV24fohs3tWiQfvcW
         t6Tw==
X-Forwarded-Encrypted: i=1; AJvYcCXcg2dcELoLapAJyAPrAKN/Fq1Gl9/JERjGVYO7mkJrvN7FCXNgDzZRpRqA50EByceU6ZnbGYACN+aw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl9ab4rhqr/YZ+d/DKL6Vzhnz1aBDRBU1JI0LyRmV4T3kJQg2Y
	bKpEVj8v7MIXjwYxLUYHfNMmKE+EzN51w0eJvUOiFEeKIlrbVJTIs92g2HmUc+oUIwkIWwMzA+5
	LLXsbNzP1BxgSSUgDlokn9bvoRjJr7OYxVrl7mA==
X-Google-Smtp-Source: AGHT+IEAXuLLtOrs6st8U8IFlSA7Hb1+mq58uwmSQKom7Bg9TkfvbOQJ9tJHSpVM8ugPgTF4bhcibOWF88qjBAWpuH0=
X-Received: by 2002:a05:690c:ec6:b0:6db:31f6:a812 with SMTP id
 00721157ae682-6db44d6249amr27514547b3.4.1725615391941; Fri, 06 Sep 2024
 02:36:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
 <20240904-qcs8300_initial_dtsi-v1-17-d0ea9afdc007@quicinc.com>
 <851566fe-4802-41c7-bb35-d6d1e9cf9bdf@kernel.org> <d5b13f14-ce66-496c-8182-aad840e0d5cb@quicinc.com>
 <wzjv6xvthoz3z4fimxfc6gzm6ptepkuwlzjm6xy3klmtpr3bvf@k7yxdc7hryju> <c674b8ff-6fdb-419d-86f4-69a940eccc2f@quicinc.com>
In-Reply-To: <c674b8ff-6fdb-419d-86f4-69a940eccc2f@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 6 Sep 2024 12:36:20 +0300
Message-ID: <CAA8EJpoxEZEZD3hhfpS6MeizqDVDDBjJOGo3X2BrLiEoZHDuoQ@mail.gmail.com>
Subject: Re: [PATCH 17/19] arm64: defconfig: enable clock controller,
 interconnect and pinctrl for QCS8300
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 6 Sept 2024 at 09:15, Jingyi Wang <quic_jingyw@quicinc.com> wrote:
>
> Hi Dmitry,
>
> On 9/6/2024 11:18 AM, Dmitry Baryshkov wrote:
> > On Thu, Sep 05, 2024 at 12:54:35PM GMT, Jingyi Wang wrote:
> >>
> >>
> >> On 9/4/2024 5:39 PM, Krzysztof Kozlowski wrote:
> >>> On 04/09/2024 10:33, Jingyi Wang wrote:
> >>>> Enable clock controller, interrconnect and pinctrl for QCS8300.
> >>>
> >>> NXP QCS8300? What is QCS8300? Which products use it? That's a defconfig
> >>> for entire kernel, not your Qualcomm one.
> >>>
> >> Will describe it in more detail.
> >>>> It needs to be built-in for UART to provide a console.
> >>>>
> >>>> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> >>>> ---
> >>>>  arch/arm64/configs/defconfig | 3 +++
> >>>>  1 file changed, 3 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> >>>> index 81ca46e3ab4b..a9ba6b25a0ed 100644
> >>>> --- a/arch/arm64/configs/defconfig
> >>>> +++ b/arch/arm64/configs/defconfig
> >>>> @@ -606,6 +606,7 @@ CONFIG_PINCTRL_MSM8996=y
> >>>>  CONFIG_PINCTRL_MSM8998=y
> >>>>  CONFIG_PINCTRL_QCM2290=y
> >>>>  CONFIG_PINCTRL_QCS404=y
> >>>> +CONFIG_PINCTRL_QCS8300=y
> >>>>  CONFIG_PINCTRL_QDF2XXX=y
> >>>>  CONFIG_PINCTRL_QDU1000=y
> >>>>  CONFIG_PINCTRL_SA8775P=y
> >>>> @@ -1317,6 +1318,7 @@ CONFIG_MSM_MMCC_8998=m
> >>>>  CONFIG_QCM_GCC_2290=y
> >>>>  CONFIG_QCM_DISPCC_2290=m
> >>>>  CONFIG_QCS_GCC_404=y
> >>>> +CONFIG_QCS_GCC_8300=y
> >>>>  CONFIG_QDU_GCC_1000=y
> >>>>  CONFIG_SC_CAMCC_8280XP=m
> >>>>  CONFIG_SC_DISPCC_7280=m
> >>>> @@ -1618,6 +1620,7 @@ CONFIG_INTERCONNECT_QCOM_MSM8996=y
> >>>>  CONFIG_INTERCONNECT_QCOM_OSM_L3=m
> >>>>  CONFIG_INTERCONNECT_QCOM_QCM2290=y
> >>>>  CONFIG_INTERCONNECT_QCOM_QCS404=m
> >>>> +CONFIG_INTERCONNECT_QCOM_QCS8300=y
> >>>
> >>> Why this cannot be a module?
> >>>
> >>>
> >> I think the commit-msg "It needs to be built-in for UART to provide a console." can
> >> explain that, could you please help to share your insights on that?
> >
> > Unless loading these modules from initramfs doesn't work, please use =m.
> > The drivers that are enabled here are going to be enabled for everybody
> > using arm64 defconfig, taking up memory on their platforms, etc.
> >
> We had previous discussion here about why these drivers needs to be built-in to support
> debug-uart:
> https://lore.kernel.org/linux-arm-msm/c11fd3c2-770a-4d40-8cf3-d8bc81f7c480@kernel.org/
> I will mention more details in the commit message of this patch.

Yes, please. Explicitly mention that this is required to get UART to work.

-- 
With best wishes
Dmitry

