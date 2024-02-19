Return-Path: <devicetree+bounces-43456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AD385A67C
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDF241C21E21
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BF837708;
	Mon, 19 Feb 2024 14:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wPoO9OlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601B8376E5
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354429; cv=none; b=QALdlyotPrYqrRTYNCbfJx6XBrHmNIuEENkNowvhPpwLNuNSzVmyFxuLfh2HM19bAPPyIahTjr7hZ9ZoCfaZgZb0G+DZERQnayFMjDu5SFXUqyCbwoZEfU6ODNfhz6ImD93v82OxyluGzZrLU2/qNwMLBQvXv2y8frhcH8azo9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354429; c=relaxed/simple;
	bh=A4nq5x7Ib9yQ12vGKrkxl7Fvyza54Vi2OAWKmupXEmU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IURDGDTuKHMV5jrKXpJQkY5jpAtaesoNtdynTA6hSsHHMZZppW4he2bVWXWHZLenN0m6jNpisrgHdoEjaw3sw2lPnaDef9rVzkHdBZjg7QoRJaz/s0MqdOGtADAQjwwU8rsvYYDfYUW/LKaN//F1aFpABPjmEZUeM6PyNx9sUQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wPoO9OlU; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so3738746276.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354426; x=1708959226; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uHNd0ZyJA4gTbxBaC9YDXwkG/RiI5KMLPKGCG7+Wzlo=;
        b=wPoO9OlUVufnAf15roXstTKVzMAu1tMpxJ9G7/TfjFY+zenB/R5GIxdFNmUPiTBQQc
         hZ6TTce2WQZs0gTrX/tD3FURpVVNgXQsW3qGCbFsRmYmFhS8thhbcz+fceb9nXx1zsD5
         Zr9RSbKWq8X60QPHrKGCAEyRp0pzgYkUfG7z5axKU+bzIoUkZzkyQG8rnf2LnQhRL7OV
         IRSMFmxxruv4xTnrHEkT0ybTOKD/GKLAYxShmC3DeXKifv2J0jgD27Oy35/GAITsNXCy
         ajw43y1MenblC4WRwNMEhfJpwR1bShRS4HeLwRbyslzuYStTD8/wseZeH92JO5jLhnPJ
         /ofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354426; x=1708959226;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHNd0ZyJA4gTbxBaC9YDXwkG/RiI5KMLPKGCG7+Wzlo=;
        b=u1BM//YDxaILHOOHoF+16nYiq38mq7qMtndhqeHESimFttRuLrWVXS9dD50zE4L/dV
         T4Zdyu/B1UfAentLW3laPR8CqtVh9HHH7dCMDkzC9H3c2detUUmz25UvAzaTUvdKUrzx
         +1t8BJqvYUyUGotNfqkoYgqzXwhwT+t7UaGZdA59KOCu/aM1RwovFJGHj5lD+RKJ2yDF
         qLjH2JNZeeZeDxFeMc79+yNJYU47cgaIR1ZvIyv9wQrX4Zu+O8sNqpLqnGpZn2Y0xIzR
         wWc8mMh52WMZ5G4C84s1+A6hQ52BUgR/lcGFewy87aNRt5ocyvd/pp56Bu0TzabfeYJs
         LVmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuBa7CejcMy9fVEV728ZVIFFGYmxpC1Es/XTEUh+NGNxxCnLcP4fuIb9zUl9r5zigIiL0ROGZJOftZjjb+IliSUv5n7Ih160FUMw==
X-Gm-Message-State: AOJu0YxciGynB2jqIav3jhgd2YCc3zywMzvi++dCPDee7Wxyi3DLK3KY
	UlL1k2tOZ5ueD82m/BLToQMquKkjL8RqTRcSFUyKFrCdp8jWHuynCOJGmeNR26HqR43Un5xfbDp
	6mSqOS1WfflpGGcWy9/pX0/fa6Iz5jfwhFYm49w==
X-Google-Smtp-Source: AGHT+IHY/le6C7LNc0DIav/5O65P9EcFeh1YIyPzIjc+EV5s2EcaI1Ea6U5pWMuSdfWLBVIgW0qC8w2mR4a/yKRxOBo=
X-Received: by 2002:a81:5287:0:b0:607:9d63:f5f5 with SMTP id
 g129-20020a815287000000b006079d63f5f5mr12422677ywb.12.1708354426245; Mon, 19
 Feb 2024 06:53:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org> <20240219-topic-rb1_gpu-v1-3-d260fa854707@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v1-3-d260fa854707@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 16:53:35 +0200
Message-ID: <CAA8EJpq8XvQm9B3RZq9PNMqA5VAqKUyVn5qt8-WEYMQMWniDZA@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: qcom: clk-alpha-pll: Add HUAYRA_2290 support
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

On Mon, 19 Feb 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Commit 134b55b7e19f ("clk: qcom: support Huayra type Alpha PLL")
> introduced an entry to the alpha offsets array, but diving into QCM2290
> downstream and some documentation, it turned out that the name Huayra
> apparently has been used quite liberally across many chips, even with
> noticeably different hardware.
>
> Introduce another set of offsets and a new configure function for the
> Huayra PLL found on QCM2290. This is required e.g. for the consumers
> of GPUCC_PLL0 to properly start.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 45 ++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  3 +++
>  2 files changed, 48 insertions(+)
>
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index 8a412ef47e16..61b5abd13782 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -244,6 +244,19 @@ const u8 clk_alpha_pll_regs[][PLL_OFF_MAX_REGS] = {
>                 [PLL_OFF_OPMODE] = 0x30,
>                 [PLL_OFF_STATUS] = 0x3c,
>         },
> +       [CLK_ALPHA_PLL_TYPE_HUAYRA_2290] =  {
> +               [PLL_OFF_L_VAL] = 0x04,
> +               [PLL_OFF_ALPHA_VAL] = 0x08,
> +               [PLL_OFF_USER_CTL] = 0x0c,
> +               [PLL_OFF_CONFIG_CTL] = 0x10,
> +               [PLL_OFF_CONFIG_CTL_U] = 0x14,
> +               [PLL_OFF_CONFIG_CTL_U1] = 0x18,
> +               [PLL_OFF_TEST_CTL] = 0x1c,
> +               [PLL_OFF_TEST_CTL_U] = 0x20,
> +               [PLL_OFF_TEST_CTL_U1] = 0x24,
> +               [PLL_OFF_OPMODE] = 0x28,
> +               [PLL_OFF_STATUS] = 0x38,
> +       },

Can you please move them next to the standard huayra PLL regs?

>  };
>  EXPORT_SYMBOL_GPL(clk_alpha_pll_regs);
>
> @@ -779,6 +792,38 @@ static long clk_alpha_pll_round_rate(struct clk_hw *hw, unsigned long rate,
>         return clamp(rate, min_freq, max_freq);
>  }
>
> +void clk_huayra_2290_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
> +                                  const struct alpha_pll_config *config)
> +{
> +       clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL(pll), config->config_ctl_val);
> +       clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL_U(pll), config->config_ctl_hi_val);
> +       clk_alpha_pll_write_config(regmap, PLL_CONFIG_CTL_U1(pll), config->config_ctl_hi1_val);
> +       clk_alpha_pll_write_config(regmap, PLL_TEST_CTL(pll), config->test_ctl_val);
> +       clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U(pll), config->test_ctl_hi_val);
> +       clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U1(pll), config->test_ctl_hi1_val);
> +       clk_alpha_pll_write_config(regmap, PLL_L_VAL(pll), config->l);
> +       clk_alpha_pll_write_config(regmap, PLL_ALPHA_VAL(pll), config->alpha);
> +       clk_alpha_pll_write_config(regmap, PLL_USER_CTL(pll), config->user_ctl_val);
> +
> +       /* Set PLL_BYPASSNL */
> +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_BYPASSNL, PLL_BYPASSNL);
> +
> +       /* Wait 5 us between setting BYPASS and deasserting reset */
> +       mb();
> +       udelay(5);
> +
> +       /* Take PLL out from reset state */
> +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
> +
> +       /* Wait 50us for PLL_LOCK_DET bit to go high */
> +       mb();
> +       usleep_range(50, 55);
> +
> +       /* Enable PLL output */
> +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_OUTCTRL, PLL_OUTCTRL);
> +}
> +EXPORT_SYMBOL(clk_huayra_2290_pll_configure);
> +
>  static unsigned long
>  alpha_huayra_pll_calc_rate(u64 prate, u32 l, u32 a)
>  {
> diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
> index fb6d50263bb9..91d3d6f19eae 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.h
> +++ b/drivers/clk/qcom/clk-alpha-pll.h
> @@ -29,6 +29,7 @@ enum {
>         CLK_ALPHA_PLL_TYPE_BRAMMO_EVO,
>         CLK_ALPHA_PLL_TYPE_STROMER,
>         CLK_ALPHA_PLL_TYPE_STROMER_PLUS,
> +       CLK_ALPHA_PLL_TYPE_HUAYRA_2290,

Also next to standard huayra PLL, please.

>         CLK_ALPHA_PLL_TYPE_MAX,
>  };
>
> @@ -191,6 +192,8 @@ extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
>
>  void clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
>                              const struct alpha_pll_config *config);
> +void clk_huayra_2290_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
> +                                  const struct alpha_pll_config *config);
>  void clk_fabia_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
>                                 const struct alpha_pll_config *config);
>  void clk_trion_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
>
> --
> 2.43.2
>


-- 
With best wishes
Dmitry

