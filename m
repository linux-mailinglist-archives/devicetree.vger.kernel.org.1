Return-Path: <devicetree+bounces-147880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2039A39B3D
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9951F3A5AC8
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB7A23F273;
	Tue, 18 Feb 2025 11:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GB+XRPh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F3E23CF07
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879019; cv=none; b=effAYGl+OUnc4zUmUmU21LO6TAmGnIYdl93D9CLoDFwm3cXGEiqiNuYfEdePKuRLCnH1SFXgYZFEVKrpKswYAzMYXNn/LN2lvl9HAbs9Qv5Tdeti4/BghVLGMIr6j+9QCvvaZOOritkXJfB1YBHMI1vTpSPN3PqNw9lNC3LP/c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879019; c=relaxed/simple;
	bh=1mN+xNgaFFvNE9UYqlV3tBQki4fbSbB7xoygLiCSzbQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7uC1zLSbCkN1wZBCPBFGVuXPqwT68YXnI6u4RFrqnPV++tMbmh2PmsYgqBviZxZ3LmY4djIYcp49LKEA6ryexOeMnO0rE0xNduEzu85Z6mbWkxMkhSYeLca6GTvMqYEC/LvfMRRBEmCA8K7BQyI6Z8BVa4eGIf5E5RB9Q2K1Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GB+XRPh/; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5452c2805bcso4164458e87.2
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 03:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739879015; x=1740483815; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TDh3LF7I2VAOvbuYPKV/iG9cnLKgilP672D2NsUsYOM=;
        b=GB+XRPh/KuwVxzzVET95bIwFd4RYRV4299ywjOQ62fWhQ2s1zEw2PK2sxauNE7PyCq
         bpE2Ikmlfh7PhWNZGmxbc0YEKnTT3WddQFILl9YsRLM1nT1165fTx4nBXN1E1pgytwLU
         jBSJqUamdr/mx9Ht9+Tdz5i8uUsPGT9Yfm9FugiIghlX/fHD46P87TnGjeHZyStoaCsO
         g8EJFU/jTONwe4CAqPycMGjBqKmbtkzgD0B0mAcSQN5trbIy34irUD3NjYv19ygurvQI
         lQqskxo8v0YRus/BuyB0nkOXUgQ9EsvKv5s9mTR4g16M5g5mRwNJmdd0pkP8AFFjMaL0
         0MFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739879015; x=1740483815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TDh3LF7I2VAOvbuYPKV/iG9cnLKgilP672D2NsUsYOM=;
        b=U81sbU0qw1t5ZdG+PvrmzCVWev2jv8IV2c16XavsMPDjDxXH5fgZ5iIVskc3YgxnZC
         dRcjUYnPCS0t8bJN1vb+67gSzfH/rODn30ZqJnApwD8WvKZo6ATv8/CFv7vecn+6N9zl
         vRDeWVj6btHTN5FXrm40mZ0oQ1/TAZvA0owQ3mneCLbbQv0Wf3zEXHOz+kDLBTtOy2hf
         0Nv6GGXRQeOpDVPpwEloY5KDof5Xmvrfw41yTIK0LFWKl3OY36/WgD3XNHB6Be/SJ+Ni
         8CMSbzxWXAMtSroEgfyfjc3IyZk1LvG/Pqzu72idqD8OSN2s4G6ToAmORxwoulGi/g9j
         NpBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNrsD2Jp/uTvLIc+nv5pU2cGHftUoTkH9adSYud3CjQp1QH3JxrojkJAc8ZFk1Id0AezWR/9QYa44P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0WUa8TzcZmF7ew4QMYg6vRtj5sw66cver7HYTRyAXul9Inj8d
	QgQ7JlM0Z1/lVUudqF/for6/oNkHVSoVCmLV/l8CGcqxJnmUa4Prya9IA85RfQU=
X-Gm-Gg: ASbGncuvOJW8XPPko9LwCcFgIqM/XLBcxK3r0fIVc7YxbbGMIX5Ajd/B11CMjromnmF
	XsGUn5pxGL26WqI+EViMUVa8ZqgVq4I9I9IUYGy7rK6IlCQbgcm1qxa+RQozbKx01FGgMglDL8R
	IuMuztkxvS0oOrCCw9pA1NE6pqwOrWEtWJEFYhBlA2So7sTURILewlgINma+pqo1kvmvHRIGTfW
	uE/BDCj09S/EPnF/Fl9BNyW+y6l5Z0+TvuRwwy4fV612fmmx29/1K9+EXz3tnZwzEM7v7wSjdTm
	e/8jnAWITZbGHDoK6uI0vFE2TzBJFnW9mJcCrbU2HFNaOQCHvOgQC+t/Z9YY/T3OuUlGyCU=
X-Google-Smtp-Source: AGHT+IHO9NwIK+TdHNEcDP9zUALpP+YltWjVqof/wrSV+s+68TLTGCq/F5NabaF825FmYPwW4CFqtA==
X-Received: by 2002:a05:6512:ea5:b0:545:6cf:6f3e with SMTP id 2adb3069b0e04-5452fea6e3fmr4013685e87.49.1739879015479;
        Tue, 18 Feb 2025 03:43:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461a6efd88sm980973e87.69.2025.02.18.03.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 03:43:35 -0800 (PST)
Date: Tue, 18 Feb 2025 13:43:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for
 LPASS resets for QCM6490
Message-ID: <jxhkddeu32v5fg6avsa7pnzicreisrlzpws2nixaie2znn3eei@mstncyeqqfgg>
References: <20250212-lpass_qcm6490_resets-v3-0-0b1cfb35b38e@quicinc.com>
 <20250212-lpass_qcm6490_resets-v3-2-0b1cfb35b38e@quicinc.com>
 <exyxni7td5vow2n6jarav5euje6dnbue5f5yxzu6az554dthfe@zn5yd2byvkoj>
 <ccc87c55-d157-4ffc-8081-1a5900752931@quicinc.com>
 <CAA8EJpp7e5q36jGmB-TZX5A=XVGKsDtmBF8kJmxoga8NqGZP1A@mail.gmail.com>
 <c820c697-c3ec-4ae3-9720-fb80cb3a0450@quicinc.com>
 <CAA8EJpon5+R5s0HXUmoikjtuyEf3sQUqBVYvWrxuh14h2DvjQg@mail.gmail.com>
 <30e84d27-6047-492a-8602-8822b5d492fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30e84d27-6047-492a-8602-8822b5d492fe@quicinc.com>

On Tue, Feb 18, 2025 at 10:53:05AM +0530, Taniya Das wrote:
> 
> 
> On 2/13/2025 7:58 PM, Dmitry Baryshkov wrote:
> >>>>>>  static const struct qcom_cc_desc lpass_audio_cc_reset_sc7280_desc = {
> >>>>>> -    .config = &lpass_audio_cc_sc7280_regmap_config,
> >>>>>> +    .config = &lpass_audio_cc_sc7280_reset_regmap_config,
> >>>>>>      .resets = lpass_audio_cc_sc7280_resets,
> >>>>>>      .num_resets = ARRAY_SIZE(lpass_audio_cc_sc7280_resets),
> >>>>>>  };
> >>>>>>
> >>>>>>  static const struct of_device_id lpass_audio_cc_sc7280_match_table[] = {
> >>>>>> -    { .compatible = "qcom,sc7280-lpassaudiocc" },
> >>>>>> +    { .compatible = "qcom,qcm6490-lpassaudiocc", .data = &lpass_audio_cc_reset_sc7280_desc },
> >>>>>> +    { .compatible = "qcom,sc7280-lpassaudiocc", .data = &lpass_audio_cc_sc7280_desc },
> >>>>>>      { }
> >>>>>>  };
> >>>>>>  MODULE_DEVICE_TABLE(of, lpass_audio_cc_sc7280_match_table);
> >>>>>> @@ -752,13 +763,17 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
> >>>>>>      struct regmap *regmap;
> >>>>>>      int ret;
> >>>>>>
> >>>>>> +    desc = device_get_match_data(&pdev->dev);
> >>>>>> +
> >>>>>> +    if (desc->num_resets)
> >>>>>> +            return qcom_cc_probe_by_index(pdev, 1, desc);
> >>>>> Won't this break SC7280 support by causing an early return?
> >>>>>
> >>>> The resets are not defined for SC7280.
> >>>> static const struct qcom_cc_desc lpass_audio_cc_sc7280_desc = {
> >>>>         .config = &lpass_audio_cc_sc7280_regmap_config,
> >>>>         .clks = lpass_audio_cc_sc7280_clocks,
> >>>>         .num_clks = ARRAY_SIZE(lpass_audio_cc_sc7280_clocks),
> >>>> };
> >>>>
> >>>> The reset get registered for SC7280 after the clocks are registered.
> >>>> qcom_cc_probe_by_index(pdev, 1,  &lpass_audio_cc_reset_sc7280_desc);
> >>> Could you please make this condition more obvious and error-prone
> >>> rather than checking one particular non-obvious property?
> >>>
> >> Dmitry, we had earlier tried [1], but seems like we could not align on
> >> this patchset.
> >>
> >> If you are aligned, please let me know I can fall back on the approach.
> > You have been using of_device_is_compatible(). Krzysztof suggested
> > using mach data. Both approaches are fine with me (I'm sorry,
> > Krzysztof, this is a clock driver for a single platform, it doesn't
> > need to scale).
> > 
> > You've settled on the second one. So far so good.
> 
> Sure, I will go ahead with the existing approach, but ensure I replace
> the num_resets check with the of_device_is_compatible(), so it is more
> readable. Hope this aligns with your thoughts as well.

Ack, thanks.

> 
> > 
> > But! The problem is in readability. Checking for desc->num_resets is a
> > _hidden_ or cryptic way of checking whether to register only a first
> > controller or both.
> > 
> > BTW: the commit message also tells nothing about the dropped power
> > domain and skipped PM code. Is it not required anymore? Is it handled
> > automatically by the firmware? But I see that audio codecs still use
> > that power domain.
> Yes, it will be taken care in the firmware and I will update in the
> commit text.

Ack, thanks.

> 
> 
> Thanks,
> Taniya.

-- 
With best wishes
Dmitry

