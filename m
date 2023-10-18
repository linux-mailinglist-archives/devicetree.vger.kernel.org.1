Return-Path: <devicetree+bounces-9840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E2B7CEC6A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:58:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB25FB20C3F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DDA46679;
	Wed, 18 Oct 2023 23:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQNuBF78"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DB546673
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:58:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 270F2C433C7;
	Wed, 18 Oct 2023 23:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697673530;
	bh=hhQCYOOCg448O1KYZrGigVrToJM8nwnoz1Z+VpjMS30=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=uQNuBF78XOoYTJdI6kLb9QzUVfw0sAthXjPMYLijxK0wznFlba/bFkGF+0INxNqLX
	 yvt4cjw3j4I+HmocmQoZ3U7bOcot80AdlcjjyyefSm3hiE4f4GUJFrkdI4civuNKFh
	 +z1pgEknD4Z9wdUBaGyhNTVVt1NTvwWge2XzyfjVxpFaqbPS+NTEDhnGejJ0+xo2jK
	 KW9h3j8YWeC8uBLlhAfmcdKw3g/h2fycwkbWLYkxLvM7aoiiZ+6rs5ehrO1pozxihP
	 u3AlFRCklqHsRD1BdZlr1Z+/09NWi95wEwBxQRwJWaWjXOvFyrRGC2vbFCQuNcpsZq
	 qJmeVDHnbtyrA==
Message-ID: <04645ece5398efdf03e8ab4bb874a0ba.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <248c5ad76abad07b2c710c5c561d4e37a099bd36.1697600121.git.quic_varada@quicinc.com>
References: <cover.1697600121.git.quic_varada@quicinc.com> <248c5ad76abad07b2c710c5c561d4e37a099bd36.1697600121.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v3 1/8] clk: qcom: clk-alpha-pll: introduce stromer plus ops
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, viresh.kumar@linaro.org
Date: Wed, 18 Oct 2023 16:58:47 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-18 02:29:14)
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alph=
a-pll.c
> index 4edbf77..f839a31 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -2508,3 +2508,60 @@ const struct clk_ops clk_alpha_pll_stromer_ops =3D=
 {
>         .set_rate =3D clk_alpha_pll_stromer_set_rate,
>  };
>  EXPORT_SYMBOL_GPL(clk_alpha_pll_stromer_ops);
> +
> +static int clk_alpha_pll_stromer_plus_set_rate(struct clk_hw *hw,
> +                                              unsigned long rate,
> +                                              unsigned long prate)
> +{
> +       struct clk_alpha_pll *pll =3D to_clk_alpha_pll(hw);
> +       u32 l, alpha_width =3D pll_alpha_width(pll);
> +       int ret;
> +       u64 a;
> +
> +       rate =3D alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);
> +
> +       regmap_write(pll->clkr.regmap, PLL_MODE(pll), 0);

It still assumes the clk is always enabled. Please read back the
register value and make sure the PLL was already enabled before
restoring the enable state of the clk.

> +
> +       /* Delay of 2 output clock ticks required until output is disable=
d */
> +       udelay(1);

