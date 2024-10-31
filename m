Return-Path: <devicetree+bounces-117810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E331E9B7E09
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E5131C21958
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0921A4AA1;
	Thu, 31 Oct 2024 15:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HBryv0aF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161B21A2872
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387705; cv=none; b=ZIa5gRKFur2Afvh3uIP/kmtF5TOgGjHZbk36dMc/75niBX/9xfVf2fhRGBjAvd9BV+gBK1yx4u+bWt9P8aYM1zWdYYQ9uz30WiGRvqa1H+5I82z3D4xOX+PVJOuffFlkX2tTcFoTWgaF86aUeFlzLF8cu2TT/jCOLcvATD+Fh7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387705; c=relaxed/simple;
	bh=CIqgAcLbJbz9DTJFXaDtE7u4mCfu6HFK2Ec4lMCXi2w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=frKEzvOKI37LOHcVWTevPMa0FoR2DJiP9aWacqwcfksmqAaTZL8POVO/5nYJBxgHwWEcsOPSJzAqE2UOiSDKvUgTynfe7sgiJFfFxDrfc3XRDcWpalz8eeotM1ajIMaV98Z7EdJIQOaKgmtWsI78v6zIQjYh6d/CX7gynW3acgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HBryv0aF; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6e5e5c43497so8585447b3.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730387702; x=1730992502; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PsNfyZkAbUdRy3BMPYsQyztzSUGdi05Vyd/UT3Z4MOk=;
        b=HBryv0aFYb5GtzJOnqslVXR/dnUvcIoz7+UMNrpcEzi5V09oMhgXwj0HhOBNrabF3Y
         P2RaxlpRKRe3QhH/uo2TFSQSODC6y5HZBH8FaKt2oWiR99L5ajwSYGB6VplK8fPCONeW
         Rnb1pWOq0Wl+SrxpKG6g6m+cTZB/hWhA8JRZyeVbdmiNe15frgShLXeIAO8Cuf4GVweJ
         mlMUexdjKxlkD+9eohUj20XVn2ze7NpJAgAqIYvvb6BP3cTPVRo0sECxe7EDQaMFb9kY
         EZk/M4YxmSWPEe/jqjnCcJLzLFJbhj/RO4c3+09xsiv6+No7ZXHbuTgdHBaBU46MRIAn
         gllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387702; x=1730992502;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PsNfyZkAbUdRy3BMPYsQyztzSUGdi05Vyd/UT3Z4MOk=;
        b=uhzoJ+2UKW/P2GKwY1EYdP2e6KM1oKHwrkBQNgwOCLSwIC3MqwWhKT43Bf0s/W5zFg
         Plmdap6urRQS1xPqZjyLdbHMpTsMhkJVnFNqfLzONY+A56rhpOEG2GfdGFqfl4bI35Hb
         XPOI+36GVS35hNTozAiPNIq32MkdbkILuDy/pDAjDc6R7YEOdyiCYZBs5f8Kgbojhaef
         Rwm8FxFdRcmMxSB0s78GI43MAH6tD93y7y62Ck/brzar4YJv8j10E3DP14ooKF476OIC
         LDeQruggOYEQu/GvcZkdDyIRC7GLMA7YxdwDDWZsxGRBjPvnUQcBWZXh9+c7y/tK5eVF
         gIGw==
X-Forwarded-Encrypted: i=1; AJvYcCV749CfGFW88+gJOnrvP8H9j9WADrkBzM1E9/cZvNsOatt8+kBlcq8mnpTgHuq0Jy79VZmKUb5tJGbv@vger.kernel.org
X-Gm-Message-State: AOJu0YyLpKFqEeIr9YID7RzEwiA2xZmhh+gu7T2RULU/L5X8MlKScQ5u
	+XGHkv0UWU/Cbn4OCKesyFyWFNdtW5+TACqLkiJTIsDBaiXOCGVRxjHApOJLkOb/d4NkZ8AoSVw
	gPi/6X39XQoGVZ5X+gIb7yLYI5M3xlxF59HC03w==
X-Google-Smtp-Source: AGHT+IEzbgAkvn+Kbd1W59aqNXrS5kqasKo2UcyReXDn6RNKVnLzNobyJmTaqWwwzBvxE1e6RcSS33ZES6nefnm8xiY=
X-Received: by 2002:a05:690c:3803:b0:6e5:625c:5ad8 with SMTP id
 00721157ae682-6ea52542f0dmr43442727b3.37.1730387701805; Thu, 31 Oct 2024
 08:15:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241019-qcs615-mm-clockcontroller-v1-0-4cfb96d779ae@quicinc.com>
 <20241019-qcs615-mm-clockcontroller-v1-8-4cfb96d779ae@quicinc.com>
 <omn34rwurlxrjckb5d6xb2brg6zwcizonmqyfckvngk5msrfav@b3i2bdjk5vw7> <2aa768a4-b0e9-4b2f-8d74-736a88cf81cd@quicinc.com>
In-Reply-To: <2aa768a4-b0e9-4b2f-8d74-736a88cf81cd@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Oct 2024 17:14:57 +0200
Message-ID: <CAA8EJppZyJt_MWrafSKReuCXy0RtEAQ6VE-kt_Fp41eFpsW2SA@mail.gmail.com>
Subject: Re: [PATCH 08/11] clk: qcom: gpucc-qcs615: Add QCS615 graphics clock
 controller driver
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 30 Oct 2024 at 20:04, Taniya Das <quic_tdas@quicinc.com> wrote:
>
>
>
> On 10/19/2024 1:58 AM, Dmitry Baryshkov wrote:
> >> +static struct gdsc gx_gdsc = {
> >> +    .gdscr = 0x100c,
> >> +    .en_rest_wait_val = 0x2,
> >> +    .en_few_wait_val = 0x2,
> >> +    .clk_dis_wait_val = 0x2,
> >> +    .pd = {
> >> +            .name = "gx_gdsc",
> > .power_on = gdsc_gx_do_nothing_enable ? Or is it controlled directly on
> > this platform?
> >
>
> On QCS615 the GPU clocks are directly controlled by high level OS.

Is it one of the gmu-wrapper platforms?

>
> >> +    },
> >> +    .pwrsts = PWRSTS_OFF_ON,
> >> +    .flags = POLL_CFG_GDSCR,
> >> +};
> >> +
>
> --
> Thanks & Regards,
> Taniya Das.



-- 
With best wishes
Dmitry

