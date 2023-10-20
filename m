Return-Path: <devicetree+bounces-10232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 954117D04A4
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 00:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C7C42822D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 22:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F86C42914;
	Thu, 19 Oct 2023 22:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCC/P6Z7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F0D42909
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 22:08:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7149C433C7;
	Thu, 19 Oct 2023 22:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697753323;
	bh=0xUExZaCnpOZe09w1IymOILE+jJMJDYlYAh9fZjofMw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qCC/P6Z7UE87jxBHLuDwBwT+KgZtuqPAHBmCFVYxig53subGe5m/UnXrOlQ1Kttxa
	 jHQ9vw1yma/irMtt9GBQsWafuxPEoxiRWnA0GU7VmuaxbveT4JBxu/b3ck3oQljMbu
	 J+rIs5mj40Ud/DefXs1Jzmu6Frp/rEI/BujGJIChvpy4PcE4+izgmrkMSHyUtVIG3Z
	 Xka4WoIrLTURuZrBfnFMC1SN/ijke3yG0jWrNymZ1tbywZ4jprIOCnnS5Wg6KUOxLr
	 J5f9qRyKtnqNXVlVSsS6DJ0jQxSBipUNP1vQCFrMYW5/mLuoBOOAi2Twt2xDZT9wuH
	 9WvO+5K4DSVMg==
Message-ID: <4f4803d538c6727990cda8f2e4fd7397.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <76b652c8-041c-49d6-9804-2781fe2ccfe3@linaro.org>
References: <20230913-gpll_cleanup-v2-0-c8ceb1a37680@quicinc.com> <20230913-gpll_cleanup-v2-1-c8ceb1a37680@quicinc.com> <76f3bc23-8677-42bd-a3a5-43b17cbe552e@linaro.org> <c3dfeecf5cde513cf675b2f1a382f7a4.sboyd@kernel.org> <76b652c8-041c-49d6-9804-2781fe2ccfe3@linaro.org>
Subject: Re: [PATCH v2 01/11] clk: qcom: ipq8074: drop the CLK_SET_RATE_PARENT flag from PLL clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, stable@vger.kernel.org
To: Andy Gross <agross@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Devi Priya <quic_devipriy@quicinc.com>, Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>, Jassi Brar <jassisinghbrar@gmail.com>, Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Sricharan Ramabadhran <quic_srichara@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>
Date: Thu, 19 Oct 2023 15:08:41 -0700
User-Agent: alot/0.10

Quoting Konrad Dybcio (2023-10-19 04:22:33)
>=20
>=20
> On 10/19/23 02:16, Stephen Boyd wrote:
> > Quoting Konrad Dybcio (2023-09-15 05:19:56)
> >> On 14.09.2023 08:59, Kathiravan Thirumoorthy wrote:
> >>> GPLL, NSS crypto PLL clock rates are fixed and shouldn't be scaled ba=
sed
> >>> on the request from dependent clocks. Doing so will result in the
> >>> unexpected behaviour. So drop the CLK_SET_RATE_PARENT flag from the P=
LL
> >>> clocks.
> >>>
> >>> Cc: stable@vger.kernel.org
> >>> Fixes: b8e7e519625f ("clk: qcom: ipq8074: add remaining PLL=E2=80=99s=
")
> >>> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> >>> ---
> >> Stephen, do you think there should be some sort of error
> >> or at least warning thrown when SET_RATE_PARENT is used with
> >> RO ops?
> >>
> >=20
> > Sure? How would that be implemented?
> drivers/clk/clk.c : static void clk_change_rate()
>=20
> if (!skip_set_rate && core->ops->set_rate)
>         core->ops->set_rate(core->hw, core->new_rate, best_parent_rate);
>=20
> ->
>=20
> if (!skip_set_rate) {
>         if (core->ops->set_rate)
>                 core->ops->set_rate(core->hw, core->new_rate,
>                                     best_parent_rate);
>         else
>                 pr_err("bad idea");
> }
>=20

CLK_SET_RATE_PARENT means that "calling clk_set_rate() on this clk will
propagate up to the parent". Changing the rate of the parent could
change the rate of this clk to be the same frequency as the parent if
this clk doesn't have a set_rate clk op, or it could be that this clk
has a fixed divider so during the determine_rate() callback it
calculated what rate the parent should be to achieve the requested rate
in clk_set_rate().

It really matters what determine_rate() returns for a clk and if after
changing rates that rate is actually achieved. I suppose if the
determine_rate() callback returns some rate, and then we recalc rates
and notice that the rate determined earlier doesn't match we're
concerned. So far in the last decade we've never cared about this though
and I'm hesitant to start adding that check. I believe some qcom clk
drivers take a shortcut and round the rate in frequency tables so
whatever is returned in determine_rate() doesn't match what
recalc_rate() calculates.

It would be interesting to get rid of the CLK_SET_RATE_PARENT check in
clk_calc_new_rates() and simply always call clk_calc_new_rates() on the
parent if the parent->rate doesn't match what determine_rate thought it
should be. The framework currently calls the rounding clk op for a clk
and gets back the parent rate that the clk requires to achieve that rate
and then it blindly trusts that the parent rate is going to be achieved.
If the CLK_SET_RATE_PARENT flag is set it calls clk_calc_new_rates()
recursively on the parent, but then it doesn't check that the parent
rate is what was requested. That's mostly there to figure out if the
parent also needs to change rate, i.e. calculating the 'top' clk in a
rate change. Note that this also calls determine_rate again on the
parent, once from the child clk's determine_rate clk op and once from
the framework.

I wouldn't be surprised if some driver is relying on this behavior where
the rate isn't checked after being set. Maybe when we extend struct
clk_rate_request to have a linked list that allows a clk to build up a
chain of rate requests we can also enforce more things like matching
rates on recalc. Then any drivers that are relying on this behavior will
have to opt in to a different method of changing rates and notice that
things aren't working.

