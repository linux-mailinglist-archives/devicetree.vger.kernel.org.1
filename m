Return-Path: <devicetree+bounces-9842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CD07CEC84
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFD0A280F84
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 00:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D003F361;
	Thu, 19 Oct 2023 00:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oozyOtg/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B142517E
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 00:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 365F8C433C9;
	Thu, 19 Oct 2023 00:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697673675;
	bh=rP7crk+7H3pWmLbFwNJV2ubulsPElMxFOiBSUaF9ogs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=oozyOtg/uHTOP/QCDQg98pjVL/M1zrPyUUl+49m99KSrXNF3HAfFEOFAL6lAXr0xy
	 orCLZQLlwrrzWvi1GT4Oa+CBHqvx01VZWV/qMTWQ03cCUPxX2EC5UcSsc7ETubQDOk
	 O2aWvsLOZuNxnahtX1WoiBFI+6BdjUth9LIuQsIHGkQCLflcua/YJ42BoesolaawKT
	 u2ttrlKMP9CKBEQ6k5FBDYLASj7+vQykp3rbGpsPBO8AqNXsXzzKsqNUqP84Aeijx6
	 uPu64+1Mb4jj6v5ZdKYTeWEW7d8obFPe6rJdX/l0M6CRHwN03XZjhHdj/HP1hB/2Kx
	 MOf1lwUUfYXLA==
Message-ID: <45b739e3c7dd15248b160487f7133fb7.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ccffe81713e207d517b5a9f0f1ef906db7add25b.1697600121.git.quic_varada@quicinc.com>
References: <cover.1697600121.git.quic_varada@quicinc.com> <ccffe81713e207d517b5a9f0f1ef906db7add25b.1697600121.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v3 3/8] clk: qcom: apss-ipq-pll: Fix 'l' value for ipq5332_pll_config
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, viresh.kumar@linaro.org
Date: Wed, 18 Oct 2023 17:01:13 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-18 02:29:16)
> The earlier 'l' value of 0x3e is for 1.5GHz. Not all SKUs support
> this frequency. Hence set it to 0x2d to get 1.1GHz which is
> supported in all SKUs.

Maybe also add the detail to the commit text that the frequency can
still increase above this initial configuration made here when the
cpufreq driver picks a different OPP.

>=20
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

