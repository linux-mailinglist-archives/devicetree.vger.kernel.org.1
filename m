Return-Path: <devicetree+bounces-4392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDAA7B2563
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:38:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9E0D628277F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C3B11C82;
	Thu, 28 Sep 2023 18:38:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1295F63CA
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:38:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EFD6C433C7;
	Thu, 28 Sep 2023 18:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695926298;
	bh=HMv3aMNoQ1ckn87bJWhrEpphtLY+eMk4huwl12R2LLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wkr5Pf+3amVHfP6FSk/1eyM89AvNhWEm0oU7ROMuZE7CO68q1DrLwATVVqjK4kuSQ
	 +9ImYpuMaANe3g+fFzXcQk4wKnE5xJ9kiz7ls8hod3JB/dbrhBD81GmvyJxyH7KsX0
	 jfGZ2jcwqqi6CAPwcwS+Wj6a9C0JazEgxAX4afFUlYmjuH9DjYTrDdaOjiowdVi4zz
	 WrCz6jwRI3s/xZxyieHQZFnq0GtBtgdyJf3iEumhfYv2banu/bAOiL8QyniI9gRmCg
	 UxqA8ZXzuPewLgHMma/dTf/ANd+czFg72Eb2ymH+ooXLqz70H7T2aMBaZj/9Mg1eLB
	 vKiDbKzik/fXA==
Date: Thu, 28 Sep 2023 20:38:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 2/5] arm64: dts: qcom: sm8450: Add opp table support
 to PCIe
Message-ID: <20230928183808.GA10963@thinkpad>
References: <1694066433-8677-1-git-send-email-quic_krichai@quicinc.com>
 <1694066433-8677-3-git-send-email-quic_krichai@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1694066433-8677-3-git-send-email-quic_krichai@quicinc.com>

On Thu, Sep 07, 2023 at 11:30:30AM +0530, Krishna chaitanya chundru wrote:
> PCIe needs to choose the appropriate performance state of RPMH power
> domain based up on the PCIe gen speed.
> 
> So let's add the OPP table support to specify RPMH performance states.
> 
> Use opp-level for the PCIe gen speed for easier use.
> 

So, you just want to control RPMh performance state using OPP and not clock
rates? What will happen if you switch to lowest performance state of RPMh but
still run PCIe clocks at max rate?

- Mani

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 47 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 2a60cf8..a6264a5 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -1820,7 +1820,28 @@
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie0_default_state>;
>  
> +			operating-points-v2 = <&pcie0_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie0_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-1 {
> +					opp-level = <1>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-2 {
> +					opp-level = <2>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-3 {
> +					opp-level = <3>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +			};
>  		};
>  
>  		pcie0_phy: phy@1c06000 {
> @@ -1932,7 +1953,33 @@
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie1_default_state>;
>  
> +			operating-points-v2 = <&pcie1_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie1_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-1 {
> +					opp-level = <1>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-2 {
> +					opp-level = <2>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-3 {
> +					opp-level = <3>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-4 {
> +					opp-level = <4>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +			};
>  		};
>  
>  		pcie1_phy: phy@1c0f000 {
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

