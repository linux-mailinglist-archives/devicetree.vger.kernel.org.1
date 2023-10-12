Return-Path: <devicetree+bounces-8286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 617217C77D9
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92E8D1C20DE4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C7B3D38F;
	Thu, 12 Oct 2023 20:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0OQJ9K4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B563D38C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D34CAC433C7;
	Thu, 12 Oct 2023 20:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697142284;
	bh=2MF86sytX4fTZh0mQJESXVz65SbrM4mAf50g6EPGAGE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=g0OQJ9K4UECZWSfUIe4ERxixLwb2xg8590fKPYaqH/6dL3LcSejut5Z633jLleNGT
	 Xq0gL5XPBf1GODOb4nZEkRFykpDAcRUdMh0vRqMqntw8djf48L9xEr+KDEhYd47ee2
	 NnQmEaDZ19xHh7vVSxZlNwcqzyP4X4oSxEsxschiglljNmuA78asTgl3JL74Lx0PBH
	 g55M00+m/GdiDQBGWhF2vaIHFYd/paULQ+UzhL1SFwp7yiapiRsq6GdZzcLshZ+l98
	 a5GRlKJUVg5G6E5EeEmbY6EsmbwINBXcpd34Dv4XHWaiwkrjmOsRxpdhR8mKsL8D6M
	 TdNtxsp/Aiscw==
Message-ID: <9888cc31bca1e1e148e3a0e4be4a0b5d.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231011090028.1706653-3-quic_imrashai@quicinc.com>
References: <20231011090028.1706653-1-quic_imrashai@quicinc.com> <20231011090028.1706653-3-quic_imrashai@quicinc.com>
Subject: Re: [PATCH V2 2/4] clk: qcom: branch: Add mem ops support for branch2 clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Imran Shaik <quic_imrashai@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>
Date: Thu, 12 Oct 2023 13:24:42 -0700
User-Agent: alot/0.10

Quoting Imran Shaik (2023-10-11 02:00:26)
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index fc4735f74f0f..9ac8d04b425a 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -134,6 +135,42 @@ static void clk_branch2_disable(struct clk_hw *hw)
>         clk_branch_toggle(hw, false, clk_branch2_check_halt);
>  }
> =20
> +static int clk_branch2_mem_enable(struct clk_hw *hw)
> +{
> +       struct clk_mem_branch *mem_br =3D to_clk_mem_branch(hw);
> +       const char *name =3D clk_hw_get_name(&mem_br->branch.clkr.hw);
> +       u32 val;
> +       int timeout =3D 200, ret;

const int timeout?

> +
> +       regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable=
_reg,
> +                       mem_br->mem_enable_ack_bit, mem_br->mem_enable_ac=
k_bit);
> +
> +       ret =3D regmap_read_poll_timeout(mem_br->branch.clkr.regmap, mem_=
br->mem_ack_reg,
> +                       val, val & mem_br->mem_enable_ack_bit, 0, timeout=
);

The 'mem_br->branch' is used a few times so please make another local
variable for that called 'branch'.

> +       if (ret) {
> +               WARN(1, "%s mem enable failed", name);

Needs a newline on the message string.

> +               return ret;
> +       }
> +
> +       return clk_branch2_enable(hw);
> +}
> +
> +static void clk_branch2_mem_disable(struct clk_hw *hw)
> +{
> +       struct clk_mem_branch *mem_br =3D to_clk_mem_branch(hw);
> +
> +       regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable=
_reg,
> +                                               mem_br->mem_enable_ack_bi=
t, 0);

Please add a newline here.

> +       return clk_branch2_disable(hw);
> +}
> +

