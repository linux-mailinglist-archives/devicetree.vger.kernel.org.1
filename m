Return-Path: <devicetree+bounces-14136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 304D07E229F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E643128147F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898E91EB5E;
	Mon,  6 Nov 2023 13:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GjaU3l4k"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0444333D5
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:00:37 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B799A9
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 05:00:35 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d9abc069c8bso3715480276.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 05:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699275634; x=1699880434; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GsPAHuuacaXRxIMIbqeYFW832Idaj5Z8NonFcgzOGQQ=;
        b=GjaU3l4kia/urkfICgVHVWjT+p9YlH/qqqDFw37gEX1L1V/x4qDAjH64Gd7xf5jzyf
         7OWi5dB1JwWhPmmrwhfxXZFp+v2CBRhezsaeM6ZBwIdvKm+W1p/Rc6B+aaIuOx4MpgB8
         jgPW5wHgzxxrH1e9yQITzkPJBBUrlc3UQCMeYvT5l0O9ZxhH8taMyCEwWL4p8CGoGfGv
         Y3mxeEt3QVAYZrxViNVmi5EOqJOF5doYCaHKKsUF4e2YqjVveFp3oMWgCWKh/0mXEGvf
         0so/rckVg2zownx+OZw3J9bgs029mrhUS0+irYpdJvY7ghTpME/RWSoCOC6Kg6fpVOu0
         JUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699275634; x=1699880434;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsPAHuuacaXRxIMIbqeYFW832Idaj5Z8NonFcgzOGQQ=;
        b=TRUabg4hMWyG5DWn2YArZskmR8+udw7sLC66I2MM0gqnFJeDMUF8lsJ510TrWPTCgO
         uH/YkgXFVDI6LmX67CcEI5Ok7QUwTGtahmLRU/BTXXthlIGIYpstPAKG7ffbPIjUSz2N
         3uo+UYDkTV0mFVHTp5vpnpPEa4ZppcFw7v6dgoCUEQ9qN09MgFNcoaQrtfRLlWM7xN1W
         wq8uacbm6ad8dotn0ESjQUVuBM5Zl/BkiXjkyh80tDoKtIh22iPbM38sVVdSg/epGt5t
         M/bgVF1rqr9XNlkusO38EIUQSa3jM1XgpGe44K2J0btFOABnJG4FVwnv9C0iVPXAOVXO
         RbSw==
X-Gm-Message-State: AOJu0Yy3Nqa9JLHI/xXRCEfoICh0iejJM7yLA93CIXI0yHabS2tvPnAy
	MtbuAmwtr1iTO9fI9EdtrKp/AHG3muv8uUpachFYDQ==
X-Google-Smtp-Source: AGHT+IGGAQ0SPeS9k4vThxvaIdIq5zE1xB8+xmEuSjhUvM+qfy1Ks2t7vu34m9fYxaX8ybZo779u9UEx0SnF2U0/H4U=
X-Received: by 2002:a25:d047:0:b0:da0:3b6c:fc22 with SMTP id
 h68-20020a25d047000000b00da03b6cfc22mr24752762ybg.31.1699275634492; Mon, 06
 Nov 2023 05:00:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106103027.3988871-1-quic_imrashai@quicinc.com> <20231106103027.3988871-3-quic_imrashai@quicinc.com>
In-Reply-To: <20231106103027.3988871-3-quic_imrashai@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 15:00:23 +0200
Message-ID: <CAA8EJpqcyh1YrfHkdYaZfjyEDjKiV+HixrhcfPzsuTPwA5pzTQ@mail.gmail.com>
Subject: Re: [PATCH V3 2/4] clk: qcom: branch: Add mem ops support for branch2 clocks
To: Imran Shaik <quic_imrashai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 12:31, Imran Shaik <quic_imrashai@quicinc.com> wrote:
>
> From: Taniya Das <quic_tdas@quicinc.com>
>
> Clock CBCRs with memories need an update for memory before enable/disable
> of the clock, which helps retain the respective block's register contents.
> Add support for the mem ops to handle this sequence.
>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>

It would be nice to have a description of what is 'CBCR with memories'
and how does it differ from CBCR_FORCE_MEM_CORE_ON?

> ---
>  drivers/clk/qcom/clk-branch.c | 39 +++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-branch.h | 21 +++++++++++++++++++
>  2 files changed, 60 insertions(+)
>
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index fc4735f74f0f..61bdd2147bed 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (c) 2013, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/kernel.h>
> @@ -134,6 +135,44 @@ static void clk_branch2_disable(struct clk_hw *hw)
>         clk_branch_toggle(hw, false, clk_branch2_check_halt);
>  }
>
> +static int clk_branch2_mem_enable(struct clk_hw *hw)
> +{
> +       struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
> +       struct clk_branch branch = mem_br->branch;
> +       const char *name = clk_hw_get_name(&branch.clkr.hw);
> +       u32 val;
> +       int ret;
> +
> +       regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +                       mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
> +
> +       ret = regmap_read_poll_timeout(branch.clkr.regmap, mem_br->mem_ack_reg,
> +                       val, val & mem_br->mem_enable_ack_mask, 0, 200);
> +       if (ret) {
> +               WARN(1, "%s mem enable failed\n", name);
> +               return ret;
> +       }
> +
> +       return clk_branch2_enable(hw);
> +}
> +
> +static void clk_branch2_mem_disable(struct clk_hw *hw)
> +{
> +       struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
> +
> +       regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
> +                                               mem_br->mem_enable_ack_mask, 0);
> +
> +       return clk_branch2_disable(hw);
> +}
> +
> +const struct clk_ops clk_branch2_mem_ops = {
> +       .enable = clk_branch2_mem_enable,
> +       .disable = clk_branch2_mem_disable,
> +       .is_enabled = clk_is_enabled_regmap,
> +};
> +EXPORT_SYMBOL_GPL(clk_branch2_mem_ops);
> +
>  const struct clk_ops clk_branch2_ops = {
>         .enable = clk_branch2_enable,
>         .disable = clk_branch2_disable,
> diff --git a/drivers/clk/qcom/clk-branch.h b/drivers/clk/qcom/clk-branch.h
> index 0cf800b9d08d..8ffed603c050 100644
> --- a/drivers/clk/qcom/clk-branch.h
> +++ b/drivers/clk/qcom/clk-branch.h
> @@ -38,6 +38,23 @@ struct clk_branch {
>         struct clk_regmap clkr;
>  };
>
> +/**
> + * struct clk_mem_branch - gating clock which are associated with memories
> + *
> + * @mem_enable_reg: branch clock memory gating register
> + * @mem_ack_reg: branch clock memory ack register
> + * @mem_enable_ack_mask: branch clock memory enable and ack field in @mem_ack_reg
> + * @branch: branch clock gating handle
> + *
> + * Clock which can gate its memories.
> + */
> +struct clk_mem_branch {
> +       u32     mem_enable_reg;
> +       u32     mem_ack_reg;
> +       u32     mem_enable_ack_mask;
> +       struct clk_branch branch;
> +};
> +
>  /* Branch clock common bits for HLOS-owned clocks */
>  #define CBCR_CLK_OFF                   BIT(31)
>  #define CBCR_NOC_FSM_STATUS            GENMASK(30, 28)
> @@ -85,8 +102,12 @@ extern const struct clk_ops clk_branch_ops;
>  extern const struct clk_ops clk_branch2_ops;
>  extern const struct clk_ops clk_branch_simple_ops;
>  extern const struct clk_ops clk_branch2_aon_ops;
> +extern const struct clk_ops clk_branch2_mem_ops;
>
>  #define to_clk_branch(_hw) \
>         container_of(to_clk_regmap(_hw), struct clk_branch, clkr)
>
> +#define to_clk_mem_branch(_hw) \
> +       container_of(to_clk_branch(_hw), struct clk_mem_branch, branch)
> +
>  #endif
> --
> 2.25.1
>


-- 
With best wishes
Dmitry

