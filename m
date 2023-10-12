Return-Path: <devicetree+bounces-8298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C137C7839
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F54C1C20E75
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8987C3D981;
	Thu, 12 Oct 2023 20:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgO5/hLd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C30636AF1
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:55:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C26BCC433C8;
	Thu, 12 Oct 2023 20:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697144138;
	bh=m9flpVKMwQXZtGkfSUe6b4uSPp366RZ2/kvGUm5Xl70=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=RgO5/hLdpTJ/2+u7XCaw07k/yQ4nie8zNnB3ds5lPdxB0F0rRVHujCHPXWaGYqfLX
	 VNfK2wBVrTXj7nDkqd5rH9lDK839cU5OmSx40grKHAmx4PoiWGIXq1Gy5GMdadSm9a
	 Kko1WtC5kknew5+aE/AW1uAEGmqZh1Dt6199nqAqGrRx9P9kKEIV514wht6zLN0xHT
	 p0b30PrqnXDAhJQHDMzfNMwrhmPDkzonaF3VrAicc8MwLLVRQITeDc5M3E41rh14AM
	 rArYHbQ/bpzaSPW9OM7B3wPSWMOtD5zVKfKhxbyHt1e4XkOizljX4e2t0f9ljytR+U
	 IWKOaNhpX3qRw==
Message-ID: <06b823d5c2ec05a940849ac341c48090.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8f578277cc015cfe9cdca06586b2c82f1a728bad.1697101543.git.quic_varada@quicinc.com>
References: <cover.1697101543.git.quic_varada@quicinc.com> <8f578277cc015cfe9cdca06586b2c82f1a728bad.1697101543.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v2 1/8] clk: qcom: clk-alpha-pll: introduce stromer plus ops
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, viresh.kumar@linaro.org
Date: Thu, 12 Oct 2023 13:55:36 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-12 02:26:17)
> Stromer plus APSS PLL does not support dynamic frequency scaling.
> To switch between frequencies, we have to shut down the PLL,
> configure the L and ALPHA values and turn on again. So introduce the
> separate set of ops for Stromer Plus PLL.

Does this assume the PLL is always on?

>=20
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2:     Use clk_alpha_pll_stromer_determine_rate, instead of adding new
>         clk_alpha_pll_stromer_plus_determine_rate as the alpha pll width
>         is same for both
>=20
>         Fix review comments
>                 udelay(50) -> usleep_range(50, 60)
>                 Remove SoC-specific from print message
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 57 ++++++++++++++++++++++++++++++++++=
++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  1 +
>  2 files changed, 58 insertions(+)
>=20
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alph=
a-pll.c
> index 4edbf77..5221b6c 100644
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

There's a theoretical problem here if I understand correctly. A call to
clk_enable() can happen while clk_set_rate() is in progress or vice
versa. Probably we need some sort of spinlock for this PLL that
synchronizes any enable/disable with the rate change so that when we
restore the enable bit the clk isn't enabled when it was supposed to be
off.

