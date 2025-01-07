Return-Path: <devicetree+bounces-136125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B627AA03F5F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 322BD1886FD5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E8A1EF09A;
	Tue,  7 Jan 2025 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OIFVmpaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B7A4C9D
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736253417; cv=none; b=XEbqS6qCZ8u5IjTX68ZT2G4T4GteOEy0/Zbju8GugH9Wr75rcLu1ajob58lTWD1uGMf3ye0B66jhROscQTvnuwbeB2GSTzux4QdXVAXiafBB8UfTMDhpAPGB85xl6vTBG9hUIFn5pyd0TVQGAs9ffOyhHcZvjH53oE24fKle+N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736253417; c=relaxed/simple;
	bh=6mrw4fSn7qi9tJ9B32OnUA5Ho5ERm0pRHovMgS+21dU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CTxcRpvxrYSWcAGjbn4qltHDXTohae0LcsdPvGmOnUv9m97IOO9CNFUd6ytSwVFJvriVpnNq/8I0O8uJIMGfddoJ9YMJf8mAwAH3gag9NUbLiMWGpfhjSPkKDR08zKBCvy2l2Spx2HPBe7YQ07OjLkkueypAZBujOo72OrSdx0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OIFVmpaT; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5401fb9fa03so14391819e87.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736253412; x=1736858212; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5iNvZalbLYQ8Bg0nS+hkF7lJIYaC+1upZ95vfPfhmX0=;
        b=OIFVmpaTZzHDH6yNC0vgojC9j/oQ/RbUYDABeh2jHKEpggO/oYzbFIv0s6PjmeFJaj
         tpfcE6lZNm2vW0kHQZFyhQsbLpXRK/e496ZeYbZhG7hyYlAoR0SvmU+NbqdHTto4dzoN
         Jme4j4HXwSpAfc3vLv98912H0CEHuo3yu+WHYPUSVc6pRw7Rw6Ka0SuPw/o1FipERU63
         f1bB2/MEILKm4HW9cm+l6zoyq/iliLsNQjFDP5BdzaQAgev/NLhOx3Yk/c8wafQ5Qc2g
         l1xIZRdjx1boIcbc8Y5Ti5lq//KTzBUsNf6OGi+9iQWlJLvzsoH/AyCds44BwPOEu2QA
         TNkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736253412; x=1736858212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5iNvZalbLYQ8Bg0nS+hkF7lJIYaC+1upZ95vfPfhmX0=;
        b=mzOGGJ2x9outWiLb9Pv8/JnaehJ6c2t/VfkcqtfSYIUSzf90mhziEBn+X8+gyhUdzE
         PCnxb4zzmUb/yvMeR1sZGBDSqEHnA8yquXegJZBUSWktlSaQwwr564shWUw0HBiudRLl
         gs9Rq52eTAes8n9wucP2reajDC5KTK+dir0l1lCM+t8e74U9k8Ft58tjGjFn34eCpM5A
         Q3l1bHYcQ10oWopX1QOhGPOH9hHe7cNVKQC/7a89gIKYQhpi8K5bS8SRlRGRKUAftO1r
         IOAw4hrb4qy0D9fj6XGLbaEn7dlEQeO5LHaAtyyFmWiYL4WB4a2M0T9QuCeClqKf7kOW
         AcXw==
X-Forwarded-Encrypted: i=1; AJvYcCUm7qNxIXjoz/DtmzySs0Pl5J4XG7uySbjRLKZRMGKoG8x+A3a4mF0ywudtSlOgI7C3Fyy5v19ovyCu@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxjc/kqQZbI5hcjc/B+6pJknQcjg3SjytJ2rzUdDaaFsAyOSYz
	47rUwzcHhYw5szFZh7ADTfSNsVVMrSPIDjyUBT5SDnpnl38XwbNyX90uc7vy+2M=
X-Gm-Gg: ASbGncv+oZ61m/H65odvqkO7RsjXVutgYUKfIX1l5fuqOnB7M6cEfpsc3iGCE0UljBh
	ZnpycPx/n9S5sgpTkdqop9mXMQrE3y6RJAZ63xK01T3hOHdM/RYmmGERO0Z3B44yW2RKu5K4u6n
	SF2nIIbSAY1lvbJlpsNkobqoirEV6vyxdbf//sBZ9sjVMKDXB0IaFKeMLdLUr1GM7sYn5fzFRrU
	Sf68UUgUVw7Bi1LH3iljIa6kIGnoBg8w0bRlxTKUDk392f/7K+LjyyFkLBqxkEAEcL2V7183PF9
	eadp3UZPSX2SPhjLeOctDe7Pp2uGPFglc/+h
X-Google-Smtp-Source: AGHT+IFwk0vfiDcXRC31OJIVLjshvIF9bF/YLOZzdPmOjhYIp+YNNm+1djecvNteWO6LKr/mRpAdEg==
X-Received: by 2002:a05:6512:3503:b0:542:2e05:313b with SMTP id 2adb3069b0e04-5427e988ff7mr916026e87.21.1736253411670;
        Tue, 07 Jan 2025 04:36:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422382156dsm5126401e87.186.2025.01.07.04.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:36:50 -0800 (PST)
Date: Tue, 7 Jan 2025 14:36:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] clk: qcom: clk-alpha-pll: Add Pongo PLL
Message-ID: <nasilduqcbrdtfnx7ef5rzp4blyvbwhyypjpkzlmv4o6oohj4e@gz2a6kffkf7p>
References: <20250106-sm8750-dispcc-v2-0-6f42beda6317@linaro.org>
 <20250106-sm8750-dispcc-v2-2-6f42beda6317@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106-sm8750-dispcc-v2-2-6f42beda6317@linaro.org>

On Mon, Jan 06, 2025 at 02:44:30PM +0100, Krzysztof Kozlowski wrote:
> Add support for Pongo type of PLL clocks, used in Qualcomm SM8750 SoC.
> Notable difference comparing to other PLLs is the need for calibration
> for internally generated clock followed by wait_for_pll().  This is done
> in configure call and at this time clocks are not yet registered, thus
> wait_for_pll() cannot use clk_hw_get_name.

Is this still correct?

> Locking during this
> calibration requires much more time, thus increase the timeout in
> wait_for_pll().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> v2:
>  - EXPORT_SYMBOL_GPL
>  - Move the PLL calibration and wait_for_pll_enable_lock() call to
>    prepare callback.
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 165 ++++++++++++++++++++++++++++++++++++++-
>  drivers/clk/qcom/clk-alpha-pll.h |   6 ++
>  2 files changed, 170 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index 00d3659ea2124e26dd50c1b4e88ba71c1411442e..df609f7e394de2dc73e60df01b1ad71714c0719d 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -58,6 +58,7 @@
>  #define PLL_TEST_CTL_U(p)	((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U])
>  #define PLL_TEST_CTL_U1(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U1])
>  #define PLL_TEST_CTL_U2(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U2])
> +#define PLL_TEST_CTL_U3(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U3])
>  #define PLL_STATUS(p)		((p)->offset + (p)->regs[PLL_OFF_STATUS])
>  #define PLL_OPMODE(p)		((p)->offset + (p)->regs[PLL_OFF_OPMODE])
>  #define PLL_FRAC(p)		((p)->offset + (p)->regs[PLL_OFF_FRAC])
> @@ -197,6 +198,23 @@ const u8 clk_alpha_pll_regs[][PLL_OFF_MAX_REGS] = {
>  		[PLL_OFF_TEST_CTL_U1] = 0x34,
>  		[PLL_OFF_TEST_CTL_U2] = 0x38,
>  	},
> +	[CLK_ALPHA_PLL_TYPE_PONGO_ELU] = {
> +		[PLL_OFF_OPMODE] = 0x04,
> +		[PLL_OFF_STATE] = 0x08,
> +		[PLL_OFF_STATUS] = 0x0c,
> +		[PLL_OFF_L_VAL] = 0x10,
> +		[PLL_OFF_USER_CTL] = 0x14,
> +		[PLL_OFF_USER_CTL_U] = 0x18,
> +		[PLL_OFF_CONFIG_CTL] = 0x1c,
> +		[PLL_OFF_CONFIG_CTL_U] = 0x20,
> +		[PLL_OFF_CONFIG_CTL_U1] = 0x24,
> +		[PLL_OFF_CONFIG_CTL_U2] = 0x28,
> +		[PLL_OFF_TEST_CTL] = 0x2c,
> +		[PLL_OFF_TEST_CTL_U] = 0x30,
> +		[PLL_OFF_TEST_CTL_U1] = 0x34,
> +		[PLL_OFF_TEST_CTL_U2] = 0x38,
> +		[PLL_OFF_TEST_CTL_U3] = 0x3c,
> +	},
>  	[CLK_ALPHA_PLL_TYPE_TAYCAN_ELU] = {
>  		[PLL_OFF_OPMODE] = 0x04,
>  		[PLL_OFF_STATE] = 0x08,
> @@ -337,6 +355,12 @@ EXPORT_SYMBOL_GPL(clk_alpha_pll_regs);
>  #define LUCID_EVO_PLL_CAL_L_VAL_SHIFT	16
>  #define LUCID_OLE_PLL_RINGOSC_CAL_L_VAL_SHIFT	24
>  
> +/* PONGO ELU PLL specific setting and offsets */
> +#define PONGO_PLL_OUT_MASK		GENMASK(1, 0)
> +#define PONGO_PLL_L_VAL_MASK		GENMASK(11, 0)

Does it really support such a high L value, or are there any additional
flags / data entries? PLL2 uses 0x493, which should end up with 22 GHz
clock, if my calculations are correct.

> +#define PONGO_XO_PRESENT		BIT(10)
> +#define PONGO_CLOCK_SELECT		BIT(12)
> +
>  /* ZONDA PLL specific */
>  #define ZONDA_PLL_OUT_MASK	0xf
>  #define ZONDA_STAY_IN_CFA	BIT(16)
> @@ -366,7 +390,8 @@ static int wait_for_pll(struct clk_alpha_pll *pll, u32 mask, bool inverse,
>  	if (ret)
>  		return ret;
>  
> -	for (count = 200; count > 0; count--) {
> +	/* Pongo PLLs using a 32KHz reference can take upwards of 1500us to lock. */
> +	for (count = 1500; count > 0; count--) {
>  		ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
>  		if (ret)
>  			return ret;
> @@ -2527,6 +2552,144 @@ const struct clk_ops clk_alpha_pll_reset_lucid_evo_ops = {
>  };
>  EXPORT_SYMBOL_GPL(clk_alpha_pll_reset_lucid_evo_ops);
>  
> +static int alpha_pll_pongo_elu_prepare(struct clk_hw *hw)
> +{
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	struct regmap *regmap = pll->clkr.regmap;
> +	int ret;
> +
> +	/* Enable PLL intially to one-time calibrate against XO. */
> +	regmap_write(regmap, PLL_OPMODE(pll), PLL_RUN);
> +	regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
> +	regmap_update_bits(regmap, PLL_MODE(pll), PONGO_XO_PRESENT, PONGO_XO_PRESENT);
> +
> +	/* Set regmap for wait_for_pll() */
> +	pll->clkr.regmap = regmap;
> +	ret = wait_for_pll_enable_lock(pll);
> +	if (ret) {
> +		/* Reverse calibration - disable PLL output */
> +		regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, 0);
> +		return ret;
> +	}
> +
> +	/* Disable PLL after one-time calibration. */
> +	regmap_write(regmap, PLL_OPMODE(pll), PLL_STANDBY);
> +
> +	/* Select internally generated clock. */
> +	regmap_update_bits(regmap, PLL_MODE(pll), PONGO_CLOCK_SELECT,
> +			   PONGO_CLOCK_SELECT);
> +
> +	return 0;
> +}
> +
> +static int alpha_pll_pongo_elu_enable(struct clk_hw *hw)
> +{
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	struct regmap *regmap = pll->clkr.regmap;
> +	int ret;
> +
> +	/* Check if PLL is already enabled */
> +	if (trion_pll_is_enabled(pll, regmap))
> +		return 0;
> +
> +	ret = regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
> +	if (ret)
> +		return ret;
> +
> +	/* Set operation mode to RUN */
> +	regmap_write(regmap, PLL_OPMODE(pll), PLL_RUN);
> +
> +	ret = wait_for_pll_enable_lock(pll);
> +	if (ret)
> +		return ret;
> +
> +	/* Enable the global PLL outputs */
> +	ret = regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, PLL_OUTCTRL);
> +	if (ret)
> +		return ret;
> +
> +	/* Ensure that the write above goes through before returning. */
> +	mb();
> +
> +	return ret;
> +}
> +
> +static void alpha_pll_pongo_elu_disable(struct clk_hw *hw)
> +{
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	struct regmap *regmap = pll->clkr.regmap;
> +	int ret;
> +
> +	/* Disable the global PLL output */
> +	ret = regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, 0);
> +	if (ret)
> +		return;
> +
> +	/* Place the PLL mode in STANDBY */
> +	regmap_write(regmap, PLL_OPMODE(pll), PLL_STANDBY);
> +}
> +
> +static unsigned long alpha_pll_pongo_elu_recalc_rate(struct clk_hw *hw,
> +						     unsigned long parent_rate)
> +{
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	struct regmap *regmap = pll->clkr.regmap;
> +	u32 l;
> +
> +	if (regmap_read(regmap, PLL_L_VAL(pll), &l))
> +		return 0;
> +
> +	l &= PONGO_PLL_L_VAL_MASK;
> +
> +	return alpha_pll_calc_rate(parent_rate, l, 0, pll_alpha_width(pll));
> +}
> +
> +const struct clk_ops clk_alpha_pll_pongo_elu_ops = {
> +	.prepare = alpha_pll_pongo_elu_prepare,
> +	.enable = alpha_pll_pongo_elu_enable,
> +	.disable = alpha_pll_pongo_elu_disable,
> +	.recalc_rate = alpha_pll_pongo_elu_recalc_rate,
> +};
> +EXPORT_SYMBOL_GPL(clk_alpha_pll_pongo_elu_ops);
> +
> +void clk_pongo_elu_pll_configure(struct clk_alpha_pll *pll,
> +				 struct regmap *regmap,
> +				 const struct alpha_pll_config *config)
> +{
> +	u32 val;
> +
> +	regmap_update_bits(regmap, PLL_USER_CTL(pll), PONGO_PLL_OUT_MASK,
> +			   PONGO_PLL_OUT_MASK);
> +
> +	if (trion_pll_is_enabled(pll, regmap))
> +		return;
> +
> +	if (regmap_read(regmap, PLL_L_VAL(pll), &val))
> +		return;
> +	val &= PONGO_PLL_L_VAL_MASK;
> +	if (val)
> +		return;
> +
> +	clk_alpha_pll_write_config(regmap, PLL_L_VAL(pll), config->l);
> +	clk_alpha_pll_write_config(regmap, PLL_ALPHA_VAL(pll), config->alpha);
> +	clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL(pll), config->config_ctl_val);
> +	clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL_U(pll), config->config_ctl_hi_val);
> +	clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL_U1(pll), config->config_ctl_hi1_val);
> +	clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL_U2(pll), config->config_ctl_hi2_val);
> +	clk_alpha_pll_write_config(regmap, PLL_USER_CTL(pll),
> +				   config->user_ctl_val | PONGO_PLL_OUT_MASK);
> +	clk_alpha_pll_write_config(regmap, PLL_USER_CTL_U(pll), config->user_ctl_hi_val);
> +	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL(pll), config->test_ctl_val);
> +	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U(pll), config->test_ctl_hi_val);
> +	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U1(pll), config->test_ctl_hi1_val);
> +	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U2(pll), config->test_ctl_hi2_val);
> +	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U3(pll), config->test_ctl_hi3_val);
> +
> +	/* Disable PLL output */
> +	regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, 0);
> +}
> +EXPORT_SYMBOL_GPL(clk_pongo_elu_pll_configure);
> +
>  void clk_rivian_evo_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
>  				  const struct alpha_pll_config *config)
>  {
> diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
> index 87bd469d9c2c2ec4e0758c97231527b92fe6afe5..79aca8525262211ae5295245427d4540abf1e09a 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.h
> +++ b/drivers/clk/qcom/clk-alpha-pll.h
> @@ -27,6 +27,7 @@ enum {
>  	CLK_ALPHA_PLL_TYPE_ZONDA_OLE,
>  	CLK_ALPHA_PLL_TYPE_LUCID_EVO,
>  	CLK_ALPHA_PLL_TYPE_LUCID_OLE,
> +	CLK_ALPHA_PLL_TYPE_PONGO_ELU,
>  	CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
>  	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
>  	CLK_ALPHA_PLL_TYPE_DEFAULT_EVO,
> @@ -53,6 +54,7 @@ enum {
>  	PLL_OFF_TEST_CTL_U,
>  	PLL_OFF_TEST_CTL_U1,
>  	PLL_OFF_TEST_CTL_U2,
> +	PLL_OFF_TEST_CTL_U3,
>  	PLL_OFF_STATE,
>  	PLL_OFF_STATUS,
>  	PLL_OFF_OPMODE,
> @@ -138,6 +140,7 @@ struct alpha_pll_config {
>  	u32 test_ctl_hi_mask;
>  	u32 test_ctl_hi1_val;
>  	u32 test_ctl_hi2_val;
> +	u32 test_ctl_hi3_val;
>  	u32 main_output_mask;
>  	u32 aux_output_mask;
>  	u32 aux2_output_mask;
> @@ -196,6 +199,7 @@ extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;
>  #define clk_alpha_pll_postdiv_lucid_ole_ops clk_alpha_pll_postdiv_lucid_evo_ops
>  #define clk_alpha_pll_postdiv_taycan_elu_ops clk_alpha_pll_postdiv_lucid_evo_ops
>  
> +extern const struct clk_ops clk_alpha_pll_pongo_elu_ops;
>  extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
>  #define clk_alpha_pll_postdiv_rivian_evo_ops clk_alpha_pll_postdiv_fabia_ops
>  
> @@ -222,6 +226,8 @@ void clk_lucid_evo_pll_configure(struct clk_alpha_pll *pll, struct regmap *regma
>  				 const struct alpha_pll_config *config);
>  void clk_lucid_ole_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
>  				 const struct alpha_pll_config *config);
> +void clk_pongo_elu_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
> +				 const struct alpha_pll_config *config);
>  #define clk_taycan_elu_pll_configure(pll, regmap, config) \
>  	clk_lucid_evo_pll_configure(pll, regmap, config)
>  
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

