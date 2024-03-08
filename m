Return-Path: <devicetree+bounces-49384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3EB8763B3
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 12:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32D1FB21415
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328C456477;
	Fri,  8 Mar 2024 11:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wwSm0Wk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8181756469
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 11:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709898856; cv=none; b=U7WdDDOC6j2eO9Z8tJ0pWDBolhM/3zYrLqCzqNMp65ZcyDQPJAo1ZlvBfmI1NgKpDihYk85IutpyuI5gzNzDOUgpv/IP3TjPtr5AnDLhdW81qleKoRn+FQ1a3lyeO5EFPdH0gnQ5h0x0/gmYkLhbhViJ5wTcFA3faqW+L1aFQXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709898856; c=relaxed/simple;
	bh=/VQiwZdXPfh3lN8CjKQo7Bv5mXhm0CmkWNd807BkdSs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jj6pzoEw+SlxVB21KMwWUI3w/TyQ2+vVUjAl0tV+dHAhVa+j+t4Ej9o2wEXhlVK6NtTdupFs8q43ojdTD3DsoxXKT/I4hWAjb5eRBL9eMikKFdadw8UIjZYBYUN79wSZ6ieYUVJayRSzrP0wGcuj5QzfDYywv/B7bw/LiyOJBmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wwSm0Wk2; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dcbf82cdf05so805550276.2
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 03:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709898853; x=1710503653; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AJqfP1AAZ8opcqsCNeYdbwalcWiPkzV/nLiirCz1Z4g=;
        b=wwSm0Wk2Xe/XMv8xlVdYUiklz6GJj54etMW6TFGN3GZhBZsVhyTuLmH6KfZF7wXGxq
         +83fx2rzRf3B8ftEf/dyB0UEf9lrN8L8us12rCwiNghkk6VpJvakoBQRHUYVkHmfme1U
         dA/qeJ8sprIzxHZDtZVidvNH2R0njkhayVyl3fsDlbf/++J65WiDPuLVdKd447RpwD22
         EUXdlvDxuckul9IGnVroqCpKpuJlKDLTI1WYAskbD/qP9Z8REJGLt+YGmgX8/NbP6iVi
         9wh+iGfOtK5jRtgdr1Xqq4BUF0mJqsstP0FAWiDWf4n5m7JIPAVqxIkSVAYAUQcJJNh8
         n3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709898853; x=1710503653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AJqfP1AAZ8opcqsCNeYdbwalcWiPkzV/nLiirCz1Z4g=;
        b=C/qcp7T3t7bXoDxr9jnBsLbRNNXCW/nSrKApcmmnadaf9rUsC9sypFxh6PnrrARq0M
         +lsJcsmi+ojY4jBi1BC+WeAz79wIOcB/xyCuMsBZ2ib29JaGifj71E10D4XAU90FReNA
         q+934B1fMQAo9Yu/M8ZVdMS/WzoA9EmNYnbYpPfUEMT88eWzzBNP/yWZhmccoANCuYuL
         YkdjLROv1MNBF9a2vh15R2IJVS9m0lIEtIG+Dnfgw3yC/zelEtiSKhd1dEFsI9MlY+v/
         yAgq1e1sqX0TA7rAtVxeXhN9WzSIp9UEZHBjlRlYs4PiNgkv3SiTzsii58UBm9I4z78+
         u90w==
X-Forwarded-Encrypted: i=1; AJvYcCWnOs8uksnPO/9oWZRjMR0qv3E+DjtJgrNFiV2rcSbZXKkX+t5MQ2CynhvXn0LG4XqE9b2gTm0Ic4rfiamuOUqSiJWaA0PgpdRUwQ==
X-Gm-Message-State: AOJu0YxfY6m8EzVpCn4lro8kyVjL3aVXFQMZImWHGM2nah4TGLKbRJZe
	9ZZ7OpCgleoXcVpELMzi1+xssdxi2eY04vcrNvfIdpwuT2Q1yZV45GwRLCyISPY29jwg8GrDSug
	Dy9/fNEqGuB3U9T+7fDLkDKcSVkhG/qUlDfdiuA==
X-Google-Smtp-Source: AGHT+IGP2ARwJiuBZcymnXJV+Xt44d1Hys7QasIbFgms8QtGVNvpSeqesp2i1294OGHSHgDc7jaFfgX0Os/hrKIfuf0=
X-Received: by 2002:a25:8b01:0:b0:dcb:be59:25e1 with SMTP id
 i1-20020a258b01000000b00dcbbe5925e1mr18074057ybl.30.1709898853391; Fri, 08
 Mar 2024 03:54:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240229-camcc-support-sm8150-v1-0-8c28c6c87990@quicinc.com>
 <20240229-camcc-support-sm8150-v1-4-8c28c6c87990@quicinc.com>
 <18567989-fb60-49ae-92e6-94e1bc2fa1c7@linaro.org> <83fd1995-a06e-b76a-d91b-de1c1a6ab0ea@quicinc.com>
 <4817a5b0-5407-4437-b94a-fc8a1bfcd25d@linaro.org> <e2627a99-307f-1e10-abfd-ce688cc2ec03@quicinc.com>
In-Reply-To: <e2627a99-307f-1e10-abfd-ce688cc2ec03@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Mar 2024 13:54:02 +0200
Message-ID: <CAA8EJpogCOQ4W26hkBm6v_yemZ2F30z2TsO5vLKLUqRKkfYxvg@mail.gmail.com>
Subject: Re: [PATCH 4/5] clk: qcom: Add camera clock controller driver for SM8150
To: "Satya Priya Kakitapalli (Temp)" <quic_skakitap@quicinc.com>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@codeaurora.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Mar 2024 at 12:47, Satya Priya Kakitapalli (Temp)
<quic_skakitap@quicinc.com> wrote:
>
>
> On 3/6/2024 7:25 PM, Bryan O'Donoghue wrote:
> > On 06/03/2024 08:30, Satya Priya Kakitapalli (Temp) wrote:
> >>>
> >>> Anyway I suspect the right thing to do is to define a
> >>> titan_top_gdsc_clk with shared ops to "park" the GDSC clock to 19.2
> >>> MHz instead of turning it off.
> >>>
> >>> You can get rid of the hard-coded always-on and indeed represent the
> >>> clock in /sysfs - which is preferable IMO to just whacking registers
> >>> to keep clocks always-on in probe anyway.
> >>>
> >>> Please try to define the titan_top_gdsc_clk as a shared_ops clock
> >>> instead of hard coding to always on.
> >>>
> >>
> >> Defining the gdsc clk allows consumers to control it, we do not want
> >> this clock to be disabled/controlled from consumers. Hence it is
> >> better to not model this clock and just keep it always on from probe.
> >
> > Not if you mark it critical
> >
>
> Marking the clock as critical keeps the associated power domain
> always-on which impacts power. For this reason we are not using
> CLK_IS_CRITICAL and instead making them always on from probe.

Please consider using pm_clk instead. This is a cleaner solution
compared to keeping the clocks always on.

> > static struct clk_branch cam_cc_gdsc_clk = {
> >         .halt_reg = 0xc1e4,
> >         .halt_check = BRANCH_HALT,
> >         .clkr = {
> >                 .enable_reg = 0xc1e4,
> >                 .enable_mask = BIT(0),
> >                 .hw.init = &(struct clk_init_data){
> >                         .name = "cam_cc_gdsc_clk",
> >                         .parent_hws = (const struct clk_hw*[]){
> >                                 &cam_cc_xo_clk_src.clkr.hw
> >                         },
> >                         .num_parents = 1,
> >                         .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
> >                         .ops = &clk_branch2_ops,
> >                 },
> >         },
> > };
> >
> > and then add this to your camss clocks
> >
> > <&clock_camcc CAM_CC_GDSC_CLK>;
> >
> > The practice we have of just whacking clocks always-on in the probe()
> > of the clock driver feels lazy to me, leaving the broken cleanups we
> > have aside.
> >
> > As a user of the system I'd rather see correct/complete data in
> > /sys/kernel/debug/clk/clk_summary
> >
> > Anyway I'm fine with setting the clock always on, I can always send
> > out a series to address this bug-bear myself.
> >
> > So yeah just fix the cleanup and then please feel free to add my
> >
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>


-- 
With best wishes
Dmitry

