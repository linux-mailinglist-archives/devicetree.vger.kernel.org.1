Return-Path: <devicetree+bounces-11109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA817D4443
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E77C1C20A5D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E9A1118;
	Tue, 24 Oct 2023 00:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHXuYbFP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E72E7E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:48:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE16C433C8;
	Tue, 24 Oct 2023 00:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698108503;
	bh=hDqlVLfIF2Hifcp5Msw9iNRqkC7H0PnW326FpusT624=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=UHXuYbFPF1F6hZViXJ4I+IIPTzjRGgeNgsoruXx/gOSCuCUuLXgw9TdAE4jPQafBf
	 n/V/GSlflJtVk6fUDGt3RabMKlZRmbpJvyp2JelB0SrG3mc64V7BP0XF40OJsCpSzr
	 g1FRvq2rDzws6QNzTf5k4YX/In63m0L7UoQd9FdQJGXBCterDC80UeukE+ZXjN3Sg5
	 hNdhfrxfAZ94Tv77jyz1oc+GjD3i+9kF5/HvwJb2i3FWbcB5N/pi0dz29JV7/iryag
	 FJ83oHo73zJSvfp2aLcD/OcrYd8GXEJzkFw3OxRvtH4VkiBua+HFsaUYSBVNtYpkr5
	 URjqaczsK8CsQ==
Message-ID: <73db289df68b179ac0e0388260b4f939.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <49422d258d67d33a2547fbb7f4f6e72d489c2301.1697781921.git.quic_varada@quicinc.com>
References: <cover.1697781921.git.quic_varada@quicinc.com> <49422d258d67d33a2547fbb7f4f6e72d489c2301.1697781921.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v5 5/9] clk: qcom: apss-ipq6018: ipq5332: add safe source switch for a53pll
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, sivaprak@codeaurora.org, viresh.kumar@linaro.org
Date: Mon, 23 Oct 2023 17:48:21 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-19 23:19:35)
> Stromer Plus PLL found on IPQ53xx doesn't support dynamic
> frequency scaling. To achieve the same, we need to park the APPS
> PLL source to GPLL0, re configure the PLL and then switch the
> source to APSS_PLL_EARLY.
>=20
> To support this, register a clock notifier to get the PRE_RATE
> and POST_RATE notification. Change the APSS PLL source to GPLL0
> when PRE_RATE notification is received, then configure the PLL
> and then change back the source to APSS_PLL_EARLY.
>=20
> Additionally, not all SKUs of IPQ53xx support scaling. Hence,
> do the above to the SKUs that support scaling.
>=20
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

The Kconfig change (patch#1) should be squashed into here. Otherwise
there isn't a call to qcom_smem_get_soc_id() in the clk driver.

> ---
> v5:     clk_notifier_register -> devm_clk_notifier_register
> v3:     devm_kzalloc for cpu_clk_notifier instead of global static
> v2:     Handle ABORT_RATE_CHANGE
>         Use local variable for apcs_alias0_clk_src.clkr.hw
>         Use single line comment instead of multi line style
> ---
>  drivers/clk/qcom/apss-ipq6018.c | 58 +++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 57 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/qcom/apss-ipq6018.c b/drivers/clk/qcom/apss-ipq6=
018.c
> index 4e13a08..e6295b8 100644
> --- a/drivers/clk/qcom/apss-ipq6018.c
> +++ b/drivers/clk/qcom/apss-ipq6018.c
> @@ -9,8 +9,11 @@
>  #include <linux/clk-provider.h>
>  #include <linux/regmap.h>
>  #include <linux/module.h>
> +#include <linux/clk.h>
> +#include <linux/soc/qcom/smem.h>
> =20
>  #include <dt-bindings/clock/qcom,apss-ipq.h>
> +#include <dt-bindings/arm/qcom,ids.h>
> =20
>  #include "common.h"
>  #include "clk-regmap.h"
> @@ -84,15 +87,68 @@ static const struct qcom_cc_desc apss_ipq6018_desc =
=3D {
>         .num_clks =3D ARRAY_SIZE(apss_ipq6018_clks),
>  };
> =20
> +static int cpu_clk_notifier_fn(struct notifier_block *nb, unsigned long =
action,
> +                               void *data)
> +{
> +       struct clk_hw *hw;
> +       u8 index;
> +       int err;
> +
> +       if (action =3D=3D PRE_RATE_CHANGE)
> +               index =3D P_GPLL0;
> +       else if (action =3D=3D POST_RATE_CHANGE || action =3D=3D ABORT_RA=
TE_CHANGE)
> +               index =3D P_APSS_PLL_EARLY;
> +       else
> +               return NOTIFY_OK;
> +
> +       hw =3D &apcs_alias0_clk_src.clkr.hw;
> +       err =3D clk_rcg2_mux_closest_ops.set_parent(hw, index);
> +
> +       return notifier_from_errno(err);
> +}
> +
>  static int apss_ipq6018_probe(struct platform_device *pdev)
>  {
> +       struct clk_hw *hw =3D &apcs_alias0_clk_src.clkr.hw;
> +       struct notifier_block *cpu_clk_notifier;
>         struct regmap *regmap;
> +       u32 soc_id;
> +       int ret;
> +
> +       ret =3D qcom_smem_get_soc_id(&soc_id);

You need to explain why this information can't come from the compatible str=
ing.

> +       if (ret)
> +               return ret;
> =20
>         regmap =3D dev_get_regmap(pdev->dev.parent, NULL);
>         if (!regmap)
>                 return -ENODEV;
> =20
> -       return qcom_cc_really_probe(pdev, &apss_ipq6018_desc, regmap);
> +       ret =3D qcom_cc_really_probe(pdev, &apss_ipq6018_desc, regmap);
> +       if (ret)
> +               return ret;
> +
> +       switch (soc_id) {
> +       /* Only below variants of IPQ53xx support scaling */
> +       case QCOM_ID_IPQ5332:
> +       case QCOM_ID_IPQ5322:
> +       case QCOM_ID_IPQ5300:
> +               cpu_clk_notifier =3D devm_kzalloc(&pdev->dev,
> +                                               sizeof(*cpu_clk_notifier),
> +                                               GFP_KERNEL);
> +               if (!cpu_clk_notifier)
> +                       return -ENOMEM;
> +

