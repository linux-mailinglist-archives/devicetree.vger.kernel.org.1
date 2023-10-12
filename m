Return-Path: <devicetree+bounces-8291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E717C7814
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAD771C20A50
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F152C3D971;
	Thu, 12 Oct 2023 20:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPSf6VYS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDD33715D
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:51:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86685C433C7;
	Thu, 12 Oct 2023 20:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697143862;
	bh=rV4lK4JGUrPmimJpLCdBBLhbiabz6+ijJVca0/lx3O4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=kPSf6VYSK5BQ3nE8zBMmnyNKnFSp/appVHQM6jBf6Ve3OBsW2QnIkohqv21Sn7Ksg
	 tYmgQqOyRulshSbD7Zf9rKhYpAowFGq9GKIU+rQk9k/3ImE4dDYVp6yL4zmAQISuwJ
	 qpCFQJx9bcw/FatgwudaCDzfc5pDizaRESeW5puhgo7A9jpr3n/WgifjySPe2sAklf
	 IAI2h1KjrBN79V6I5IGQdg4NCUE3fRvtflRbjZti2p2PYpPq8oopprzhFX1Hu794wq
	 2DRz1poNShwU0WHgsAy6PzqDyNn9YEMHIUNPDYAv5YAwBqZTt5XBDpd6fhJXFMtTid
	 e3YJZFRjNUWiA==
Message-ID: <1dfef5d380b3a5f920620fbf491280f9.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <000c61a028814f08a9fc6d1d5c446e8dad11a650.1697101543.git.quic_varada@quicinc.com>
References: <cover.1697101543.git.quic_varada@quicinc.com> <000c61a028814f08a9fc6d1d5c446e8dad11a650.1697101543.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v2 4/8] clk: qcom: apss-ipq6018: ipq5332: add safe source switch for a53pll
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, viresh.kumar@linaro.org
Date: Thu, 12 Oct 2023 13:51:00 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-12 02:26:20)
> diff --git a/drivers/clk/qcom/apss-ipq6018.c b/drivers/clk/qcom/apss-ipq6=
018.c
> index 4e13a08..c05c2b2 100644
> --- a/drivers/clk/qcom/apss-ipq6018.c
> +++ b/drivers/clk/qcom/apss-ipq6018.c
> @@ -84,15 +87,63 @@ static const struct qcom_cc_desc apss_ipq6018_desc =
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
> +       else if ((action =3D=3D POST_RATE_CHANGE) || (action =3D=3D ABORT=
_RATE_CHANGE))

This has too many parenthesis.

> +               index =3D P_APSS_PLL_EARLY;
> +       else
> +               return 0;

Maybe 'return NOTIFY_OK' instead?

> +
> +       hw =3D &apcs_alias0_clk_src.clkr.hw;
> +       err =3D clk_rcg2_mux_closest_ops.set_parent(hw, index);
> +
> +       return notifier_from_errno(err);
> +}
> +
> +static struct notifier_block cpu_clk_notifier =3D {

Instead of a static global can this be allocated with kzalloc?

> +       .notifier_call =3D cpu_clk_notifier_fn,
> +};
> +
>  static int apss_ipq6018_probe(struct platform_device *pdev)

