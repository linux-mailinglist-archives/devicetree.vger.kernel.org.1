Return-Path: <devicetree+bounces-113030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 422169A463B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 20:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C307D1F2485F
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A170520492A;
	Fri, 18 Oct 2024 18:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tKjg7ysV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54596204F79
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729277196; cv=none; b=D6hqOSXvDJAnxCU5GSOvjqeUK2hUfCaZ8b5DmIdguRLu6nx0JwEx4IXahgNlyFDBfJzlsRvJ8ILp6kYB80rJHy9yRffd9SYVL9v+ngS7K66BNL0lBw9FVGLFjR5B1gJV1Abk8Fhhuwl/kZVs6GGWEonNng0s+lw8SdSVEfSEDd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729277196; c=relaxed/simple;
	bh=iiF/iqYRiu45yTxffz/ijQIZQ8eLEifGJ+mn4QK66qk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QLtEiuIYctNIHdP9wqk5J3nZ+1CU5xDd5d69ylGhKeoiVaBk9lARxK9Q5FA2hutLF5u5EOuvF0GWdPk/E/3hnOH5BB0iR2ObEDXiPqWd7QdO0HlPKdSmhQLsTfnM5E65uCHOR4b5VoXAU1H/gqN+neYLXtBz/JK9w9GgOIVhv34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tKjg7ysV; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539fe02c386so3553223e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 11:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729277192; x=1729881992; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qySaWXXkrwmDT03ehuJXVekr/k61K5MvAp+B5Hja0FU=;
        b=tKjg7ysVy0x9vvWpW3CfD67rSGcXoQf9pngWY3tTk3mr8oTFI6VAaaLBXdOAYJUuIh
         WJi1Gbf3gelwAjgCTo7YGJzO3JoJ8DSQqr0jXLM4EvrK2klO4T9O5J2ZV2T8OLP3Mxuy
         DItmACEwUjFRUfSN9drYjjFVwH96muvGO8MGQlf/N04U8HGf9g7GU7bcE+tl995xaqU3
         QNP3YJKE2Ba9zb0weMRPLB57bNgROl+Efa3x6FY/bZHhD4jhZq88vUYwzDzgt670AsTX
         gNGdx0Uw48x5cX/wbzu7uG5j12a4IpdoYLX+2qC0H9Au16cdP1hoPp1bK6Tb5f6lym9C
         stng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729277192; x=1729881992;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qySaWXXkrwmDT03ehuJXVekr/k61K5MvAp+B5Hja0FU=;
        b=kyndbgtRHuJhUHqSKwdZlRocSq03PCWMz5HH8Q+dt7coSv7xVf0ku/f6hiAH0okFPB
         vrxF3WNCxK7cbHqlNP62ht9/K9uDMhutk9G/B4MSWuOd/VHta6Dh30BqVi4omFzRLtPY
         Cfy7V3u9VCDnwWqKqiCfr6+5S6IltlRw9mV/sku6pSJXLLTPQQvJqt6x+hZYw8DVk6MH
         T+Kmf45+3VmMjE8gVbwtm8fR6Uq+5M3WnHiv9EjIDHMnB2Fi8xhdzJ8WSSRO29Dz2EvB
         QTQf1WhDRPHMdoXulEuPPpbRFVFKcL/JCT8eIlJ/eT1O+hr4uWFZA22G4tvRfYxz5LBr
         NQng==
X-Forwarded-Encrypted: i=1; AJvYcCXdPK4YHgBVK/98kpuOCstDtQfPYaXeqJZ6/TusSMqIslApFXrBz9gT7IoTLgLBiaocGRabWLQ6kRK2@vger.kernel.org
X-Gm-Message-State: AOJu0YyfuTgTogBrF5H1+J8gZEDfrppK3k9/ZswRUh64es0c5HLJQ0Fo
	pdtOh7FyWTsaw3SMf9825F7Vm05KyPNzhC7psGji6dl1t5fXi+ML8L+Alyku5qU=
X-Google-Smtp-Source: AGHT+IHcTXealoenjwjaH04th06Qrdau8HBNM6BI1gxY955Qk1Fu36XMvT2aaESzzxFES0p+7+jh/g==
X-Received: by 2002:a05:6512:3b99:b0:539:fd98:d87a with SMTP id 2adb3069b0e04-53a1583d155mr1105910e87.5.1729277192311;
        Fri, 18 Oct 2024 11:46:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211ac9sm290980e87.252.2024.10.18.11.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 11:46:30 -0700 (PDT)
Date: Fri, 18 Oct 2024 21:46:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] clk: qcom: gcc: Add support for QCS615 GCC clocks
Message-ID: <7bumydtmwbd7tecurxioqqzw4xj4rkm6mpm527fpwgetai5xzh@rdekj226xfbr>
References: <20240920-qcs615-clock-driver-v2-0-2f6de44eb2aa@quicinc.com>
 <20240920-qcs615-clock-driver-v2-4-2f6de44eb2aa@quicinc.com>
 <gokgyvnunjswjdjmbhfvjzvdc6ag7r3dztj2hqk3cglwyz5f5a@aarbe4rrifme>
 <f1080f46-ed96-4360-ae91-0d5b7aa138ce@quicinc.com>
 <kgtg7seem6jhidn4svxttobwvs44uwezsj2f6hydjm7er4qt5d@kehfmwi437wg>
 <bdd2a873-3d5b-4986-a79c-d2bb54997b43@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bdd2a873-3d5b-4986-a79c-d2bb54997b43@quicinc.com>

On Fri, Oct 18, 2024 at 11:14:00PM +0530, Taniya Das wrote:
> 
> 
> On 10/16/2024 3:46 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 16, 2024 at 09:40:07AM +0530, Taniya Das wrote:
> > > 
> > > 
> > > On 9/20/2024 4:33 PM, Dmitry Baryshkov wrote:
> > > > On Fri, Sep 20, 2024 at 04:08:18PM GMT, Taniya Das wrote:
> > > > > Add the global clock controller support for QCS615 SoC.
> > > > > 
> > > > > Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> > > > > ---
> > > > >    drivers/clk/qcom/Kconfig      |    9 +
> > > > >    drivers/clk/qcom/Makefile     |    1 +
> > > > >    drivers/clk/qcom/gcc-qcs615.c | 3035 +++++++++++++++++++++++++++++++++++++++++
> > > > >    3 files changed, 3045 insertions(+)
> 
> > > > > +};
> > > > > +
> > > > > +static struct clk_alpha_pll gpll0 = {
> > > > > +	.offset = 0x0,
> > > > > +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
> > > > > +	.clkr = {
> > > > > +		.enable_reg = 0x52000,
> > > > > +		.enable_mask = BIT(0),
> > > > > +		.hw.init = &(const struct clk_init_data) {
> > > > > +			.name = "gpll0",
> > > > > +			.parent_data = &(const struct clk_parent_data) {
> > > > > +				.index = DT_BI_TCXO,
> > > > > +			},
> > > > > +			.num_parents = 1,
> > > > > +			.ops = &clk_alpha_pll_ops,
> > > > > +		},
> > > > > +	},
> > > > > +};
> > > > > +
> > > > > +static struct clk_fixed_factor gpll0_out_aux2_div = {
> > > > > +	.mult = 1,
> > > > > +	.div = 2,
> > > > > +	.hw.init = &(struct clk_init_data) {
> > > > > +		.name = "gpll0_out_aux2_div",
> > > > > +		.parent_data = &(const struct clk_parent_data) {
> > > > > +			.hw = &gpll0.clkr.hw,
> > > > > +		},
> > > > > +		.num_parents = 1,
> > > > > +		.ops = &clk_fixed_factor_ops,
> > > > > +	},
> > > > > +};
> > > > 
> > > > Should it be clk_alpha_pll_postdiv_foo_ops ?
> > > > 
> > > 
> > > This is not the PLL output, but it is a fixed divider which is placed as
> > > input to the RCG.
> > > That is the reason to use the fixed factor.
> > 
> > Usually OUT_AUX2 is the PLL output, isn't it? Even by its name. See
> > gcc-qcm2290 / gcc-sm6115 and most of other clock controller drivers,
> > except gcc-sm6125. Maybe I don't understand the difference between the
> > two usecases. Is there a difference in the GCC / PLL design?
> > 
> 
> Yes, your understanding is correct out_aux2/out_main are the PLL leaf
> outputs. But on QCS615 the PLL dividers are not used and thus the aux2 and
> the other leaf outputs are at the same frequency as the main output of the
> VCO and instead there was a fixed divider placed after the PLL to divide the
> VCO output. There was a GCC design change required to meet timing closures.

Ack, please add a comment that this PLL uses fixed divider instead of
a normal postdiv (and to other out_aux2 clocks too).

> > > > 
> > > > > +
> > > > > +static struct clk_branch gcc_pcie_0_pipe_clk = {
> > > > > +	.halt_reg = 0x6b024,
> > > > > +	.halt_check = BRANCH_HALT_SKIP,
> > > > > +	.clkr = {
> > > > > +		.enable_reg = 0x5200c,
> > > > > +		.enable_mask = BIT(4),
> > > > > +		.hw.init = &(const struct clk_init_data) {
> > > > > +			.name = "gcc_pcie_0_pipe_clk",
> > > > > +			.ops = &clk_branch2_ops,
> > > > > +		},
> > > > > +	},
> > > > > +};
> > > > 
> > > > No corresponding gcc_pcie_0_pipe_clk_src?
> > > > 
> > > 
> > > On QCS615 the pipe clock source is not required to be modelled as the mux is
> > > default Power on reset is set to external pipe clock.
> > 
> > And do we need to toggle the source of the clk_src together with the
> > GDSC toggling?
> > 
> 
> AFAIR, QCS615 didn't require toggling for GDSC, as even on downstream kernel
> we do not have the pipe_clk_src modelled in our driver.

OK, thanks for the explanation.

-- 
With best wishes
Dmitry

