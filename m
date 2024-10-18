Return-Path: <devicetree+bounces-112915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8B9A3DDB
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC9791F23EDB
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2367918EBF;
	Fri, 18 Oct 2024 12:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eX6Lu9Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241BB2746B
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729253286; cv=none; b=Ohl5R0SstG2L5bQBnBWhrDvff/pcEusCtGERfthILNcsaiPtka1QxGVpdupsongoaVKOpz7V/GoPz+v1EV9YK4dL0rpz57ehzXTuI0NlkVPd8rwo+jJqM7nfuLBfE5SHXlGwIQVGHqkuW0lRFJ93jDrMBkMDz4L3BHqUAM39zk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729253286; c=relaxed/simple;
	bh=xUrIQHUCjZJyYr9h9a2ncIVx9VCCBKv1v97TddV3KfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hAHodHanYUV0QmMcnMveC4RMzJ1cjYiHmGZXTRgAeCMen+nzKFDTxfL4hUc/65epvLfHm+T042073z3ljpfwZZLCHfDZVrMeF9nefqiEtVN7SLuM0bjTblmyJebtX//WqtLWNrU+7Ql69aRa6MtipTrAWQ8n0rYhQuiW9qBPKbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eX6Lu9Vg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539e4b7409fso2080024e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729253282; x=1729858082; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FHlkL/8BsxsxPx0ZFvj8OHCJ0PsZn0UFcrp/m+9hZV4=;
        b=eX6Lu9VgCga0XNR7tPve1HZUlAFp1KAjPmualYOD8kABcnUW2Vi8R3KNUMe4vN89DW
         0IvT/DzAZAqq88nNm2+JOd3H25DiyNkHPMjJvW18UaSWDwJpkZSMIw2tyJuoYGFORQ8J
         UPBmw5EIQPaJvf1YdKSNW1L3awpMhXqAND1wTUL4K9ptMqJLWCD5wtoFW+8fugJjxiT0
         Ff9WrXegpln/ybC4cTgMQP7/Xoqbpb+bEE5dblHx/U56hwOexDZa4EG+rv0oGJxT/qKu
         a3MzinVS2qVytQjnDtcmJopePFL1adb8oN+gymdhHTuVCvfxtwYXThrPGxSYKUSDgXri
         Tb8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729253282; x=1729858082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FHlkL/8BsxsxPx0ZFvj8OHCJ0PsZn0UFcrp/m+9hZV4=;
        b=djydXImZfrkcM119yAik8mrERBB7lghZnnQ51oyCYrmv0cAtyP2eykYZoFHxbSVJYj
         GN3w1ZAixZxhFhSJKgQ5zu/EvwK+1DebzZOm2gX5saduLHJ+ft1CaRROGRM8yeNtYaKA
         UGM+ddLKUIvRiLKaLD4pspeLpF9czLV3iMQJ66NhAoHohMvTVWtVbMU/h8/iiRds9EU8
         212IUpCM5graIT0ecvfya7vT6YA9R3XDsdDf/yXnfMm5rvBNUIWeCcmGpOw6d00C+2Tm
         Bh2zzXzXdtpr1GxR9t5GlNO4YD0qr9hwvNrjP4DcOKBxhZoYMHoyM1FzsHR26P0vf6Zf
         gQ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVo+nHAe1EIHn0w6McpIp3PijppoCkWc0hr/urKy5MrUrd5vdg5WcldV2oINWQEYO9sS6mUmN+NX0Jv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu7vJ+k1bWYZPxfwEx4RqcQZ+p+TkZk2W8GSWfSwf6y3tmZVfV
	+eh+xhNegFqAqDP5b7PmJ+WV5II94TcNYvQZr2UfAwDrU7zDkztZISEyvgQ5QvI=
X-Google-Smtp-Source: AGHT+IF4fR2V0+fs1LXk4Y63ajxHi6PYbJ7RvuQfAL/I4PlXjbgYR2WgC4CbmULEBhDbBQYXpb2fEA==
X-Received: by 2002:a05:6512:2316:b0:539:f51d:8273 with SMTP id 2adb3069b0e04-53a0c6a56d0mr2408613e87.1.1729253282197;
        Fri, 18 Oct 2024 05:08:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211a8fsm202174e87.261.2024.10.18.05.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:08:00 -0700 (PDT)
Date: Fri, 18 Oct 2024 15:07:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Imran Shaik <quic_imrashai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] clk: qcom: Add support for Camera Clock Controller
 on QCS8300
Message-ID: <pw6p5mhspqnhoszefljcuwsbmtwbywzequmsgkh366lam54fve@xpf7mmxeorkx>
References: <20241018-qcs8300-mm-patches-v1-0-859095e0776c@quicinc.com>
 <20241018-qcs8300-mm-patches-v1-4-859095e0776c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018-qcs8300-mm-patches-v1-4-859095e0776c@quicinc.com>

On Fri, Oct 18, 2024 at 04:42:32PM +0530, Imran Shaik wrote:
> Add support to the QCS8300 Camera clock controller by extending
> the SA8775P Camera clock controller, which is mostly identical
> but QCS8300 has few additional clocks and few other differences.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
>  drivers/clk/qcom/camcc-sa8775p.c | 99 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 95 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/qcom/camcc-sa8775p.c b/drivers/clk/qcom/camcc-sa8775p.c
> index c04801a5af35..0ef3c6015c34 100644
> --- a/drivers/clk/qcom/camcc-sa8775p.c
> +++ b/drivers/clk/qcom/camcc-sa8775p.c
> @@ -1682,6 +1682,24 @@ static struct clk_branch cam_cc_sm_obs_clk = {
>  	},
>  };
>  
> +static struct clk_branch cam_cc_titan_top_accu_shift_clk = {
> +	.halt_reg = 0x131f0,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x131f0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "cam_cc_titan_top_accu_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&cam_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
>  static struct gdsc cam_cc_titan_top_gdsc = {
>  	.gdscr = 0x131bc,
>  	.en_rest_wait_val = 0x2,
> @@ -1776,6 +1794,7 @@ static struct clk_regmap *cam_cc_sa8775p_clocks[] = {
>  	[CAM_CC_SLEEP_CLK_SRC] = &cam_cc_sleep_clk_src.clkr,
>  	[CAM_CC_SLOW_AHB_CLK_SRC] = &cam_cc_slow_ahb_clk_src.clkr,
>  	[CAM_CC_SM_OBS_CLK] = &cam_cc_sm_obs_clk.clkr,
> +	[CAM_CC_TITAN_TOP_ACCU_SHIFT_CLK] = NULL,
>  	[CAM_CC_XO_CLK_SRC] = &cam_cc_xo_clk_src.clkr,
>  	[CAM_CC_QDSS_DEBUG_XO_CLK] = &cam_cc_qdss_debug_xo_clk.clkr,
>  };
> @@ -1812,6 +1831,7 @@ static struct qcom_cc_desc cam_cc_sa8775p_desc = {
>  };
>  
>  static const struct of_device_id cam_cc_sa8775p_match_table[] = {
> +	{ .compatible = "qcom,qcs8300-camcc" },
>  	{ .compatible = "qcom,sa8775p-camcc" },
>  	{ }
>  };
> @@ -1842,10 +1862,81 @@ static int cam_cc_sa8775p_probe(struct platform_device *pdev)
>  	clk_lucid_evo_pll_configure(&cam_cc_pll4, regmap, &cam_cc_pll4_config);
>  	clk_lucid_evo_pll_configure(&cam_cc_pll5, regmap, &cam_cc_pll5_config);
>  
> -	/* Keep some clocks always enabled */
> -	qcom_branch_set_clk_en(regmap, 0x13194); /* CAM_CC_CAMNOC_XO_CLK */
> -	qcom_branch_set_clk_en(regmap, 0x131ec); /* CAM_CC_GDSC_CLK */
> -	qcom_branch_set_clk_en(regmap, 0x13208); /* CAM_CC_SLEEP_CLK */
> +	if (of_device_is_compatible(pdev->dev.of_node, "qcom,qcs8300-camcc")) {
> +		cam_cc_camnoc_axi_clk_src.cmd_rcgr = 0x13154;
> +		cam_cc_camnoc_axi_clk.halt_reg = 0x1316c;
> +		cam_cc_camnoc_axi_clk.clkr.enable_reg = 0x1316c;
> +		cam_cc_camnoc_dcd_xo_clk.halt_reg = 0x13174;
> +		cam_cc_camnoc_dcd_xo_clk.clkr.enable_reg = 0x13174;
> +
> +		cam_cc_csi0phytimer_clk_src.cmd_rcgr = 0x15054;
> +		cam_cc_csi1phytimer_clk_src.cmd_rcgr = 0x15078;
> +		cam_cc_csi2phytimer_clk_src.cmd_rcgr = 0x15098;
> +		cam_cc_csid_clk_src.cmd_rcgr = 0x13134;
> +
> +		cam_cc_mclk0_clk_src.cmd_rcgr = 0x15000;
> +		cam_cc_mclk1_clk_src.cmd_rcgr = 0x1501c;
> +		cam_cc_mclk2_clk_src.cmd_rcgr = 0x15038;
> +
> +		cam_cc_fast_ahb_clk_src.cmd_rcgr = 0x13104;
> +		cam_cc_slow_ahb_clk_src.cmd_rcgr = 0x1311c;
> +		cam_cc_xo_clk_src.cmd_rcgr = 0x131b8;
> +		cam_cc_sleep_clk_src.cmd_rcgr = 0x131d4;
> +
> +		cam_cc_core_ahb_clk.halt_reg = 0x131b4;
> +		cam_cc_core_ahb_clk.clkr.enable_reg = 0x131b4;
> +
> +		cam_cc_cpas_ahb_clk.halt_reg = 0x130f4;
> +		cam_cc_cpas_ahb_clk.clkr.enable_reg = 0x130f4;
> +		cam_cc_cpas_fast_ahb_clk.halt_reg = 0x130fc;
> +		cam_cc_cpas_fast_ahb_clk.clkr.enable_reg = 0x130fc;
> +
> +		cam_cc_csi0phytimer_clk.halt_reg = 0x1506c;
> +		cam_cc_csi0phytimer_clk.clkr.enable_reg = 0x1506c;
> +		cam_cc_csi1phytimer_clk.halt_reg = 0x15090;
> +		cam_cc_csi1phytimer_clk.clkr.enable_reg = 0x15090;
> +		cam_cc_csi2phytimer_clk.halt_reg = 0x150b0;
> +		cam_cc_csi2phytimer_clk.clkr.enable_reg = 0x150b0;
> +		cam_cc_csid_clk.halt_reg = 0x1314c;
> +		cam_cc_csid_clk.clkr.enable_reg = 0x1314c;
> +		cam_cc_csid_csiphy_rx_clk.halt_reg = 0x15074;
> +		cam_cc_csid_csiphy_rx_clk.clkr.enable_reg = 0x15074;
> +		cam_cc_csiphy0_clk.halt_reg = 0x15070;
> +		cam_cc_csiphy0_clk.clkr.enable_reg = 0x15070;
> +		cam_cc_csiphy1_clk.halt_reg = 0x15094;
> +		cam_cc_csiphy1_clk.clkr.enable_reg = 0x15094;
> +		cam_cc_csiphy2_clk.halt_reg = 0x150b4;
> +		cam_cc_csiphy2_clk.clkr.enable_reg = 0x150b4;
> +
> +		cam_cc_mclk0_clk.halt_reg = 0x15018;
> +		cam_cc_mclk0_clk.clkr.enable_reg = 0x15018;
> +		cam_cc_mclk1_clk.halt_reg = 0x15034;
> +		cam_cc_mclk1_clk.clkr.enable_reg = 0x15034;
> +		cam_cc_mclk2_clk.halt_reg = 0x15050;
> +		cam_cc_mclk2_clk.clkr.enable_reg = 0x15050;
> +
> +		cam_cc_titan_top_gdsc.gdscr = 0x131a0;

Ugh. I see the point, but I can't say I like it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +
> +		cam_cc_sa8775p_clocks[CAM_CC_CCI_3_CLK] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_CCI_3_CLK_SRC] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_CSI3PHYTIMER_CLK] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_CSI3PHYTIMER_CLK_SRC] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_CSIPHY3_CLK] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_MCLK3_CLK] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_MCLK3_CLK_SRC] = NULL;
> +		cam_cc_sa8775p_clocks[CAM_CC_TITAN_TOP_ACCU_SHIFT_CLK] =
> +				&cam_cc_titan_top_accu_shift_clk.clkr;
> +
> +		/* Keep some clocks always enabled */
> +		qcom_branch_set_clk_en(regmap, 0x13178); /* CAM_CC_CAMNOC_XO_CLK */
> +		qcom_branch_set_clk_en(regmap, 0x131d0); /* CAM_CC_GDSC_CLK */
> +		qcom_branch_set_clk_en(regmap, 0x131ec); /* CAM_CC_SLEEP_CLK */
> +	} else {
> +		/* Keep some clocks always enabled */
> +		qcom_branch_set_clk_en(regmap, 0x13194); /* CAM_CC_CAMNOC_XO_CLK */
> +		qcom_branch_set_clk_en(regmap, 0x131ec); /* CAM_CC_GDSC_CLK */
> +		qcom_branch_set_clk_en(regmap, 0x13208); /* CAM_CC_SLEEP_CLK */
> +	}
>  
>  	ret = qcom_cc_really_probe(&pdev->dev, &cam_cc_sa8775p_desc, regmap);
>  
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

