Return-Path: <devicetree+bounces-1546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 572C97A7021
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49CAA1C2083A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC0417D2;
	Wed, 20 Sep 2023 02:08:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE88917CD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:08:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 426BBC433C8;
	Wed, 20 Sep 2023 02:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175687;
	bh=YUTPoteLEsnI9uYlbmDVFgO/ezPSaPVSmDi66jXEgj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F5wWhvhVK0q6mN8GzybymtBfptjKK6Kk9ncXw2rJL58oP6UNhOMi6YLNr7QqikZ6G
	 Q+z3QVzyyvXRQ5pkvLpsqP0+h8hUxw30Si3mCtkA79TzPbshOF2qzkxiQ62OpTrIir
	 I5nFmLX67VH8BBodvHclrsbbNvTt250oU4VOnRCwqFW2xCk3KRCu4sJC+vOC8U8ito
	 HS+euQbZA2wWH66n9Ks0JNKVyZe+ZziYe6AxtpYVJt+fkPlb9cnli0rvtCwv/wb5YB
	 fyzVS6FycCfjC+Pv2lHesvFRFwkZJO3hI0Y+n+aCcvlrw33e9CkE963rBYuBnlXX3+
	 b7ts/F6s5Mx/g==
Date: Tue, 19 Sep 2023 19:12:15 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sm8250: Add DisplayPort device
 node
Message-ID: <4eaekxgmikdacvvprysb6btdqootbc6paomzhuqjtzd6rgqxkc@birohtqp4rbo>
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
 <20230817145940.9887-2-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230817145940.9887-2-dmitry.baryshkov@linaro.org>

On Thu, Aug 17, 2023 at 05:59:37PM +0300, Dmitry Baryshkov wrote:
> Declare the displayport controller present on the Qualcomm SM8250 SoC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 89 ++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index eb00bbd3e1f3..8d705a1713fb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -3638,6 +3638,8 @@ port@1 {
>  
>  				port@2 {
>  					reg = <2>;
> +
> +					usb_1_qmpphy_dp_in: endpoint {};
>  				};
>  			};
>  		};
> @@ -4405,6 +4407,14 @@ dpu_intf2_out: endpoint {
>  							remote-endpoint = <&mdss_dsi1_in>;
>  						};
>  					};
> +
> +					port@2 {
> +						reg = <2>;
> +
> +						dpu_intf0_out: endpoint {
> +							remote-endpoint = <&mdss_dp_in>;
> +						};
> +					};
>  				};
>  
>  				mdp_opp_table: opp-table {
> @@ -4432,6 +4442,85 @@ opp-460000000 {
>  				};
>  			};
>  
> +			mdss_dp: displayport-controller@ae90000 {

displayport-controller does not seem to be a valid child node of the
sm8250 mdss. Please make sure that the binding is updated, if not
already done.

Thanks,
Bjorn

