Return-Path: <devicetree+bounces-3866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3319F7B048C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id BBA52B20B8F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005E928DBA;
	Wed, 27 Sep 2023 12:43:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B8C23742
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:43:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E8D0C433C8;
	Wed, 27 Sep 2023 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695818606;
	bh=hot0489NCeMODOQPnfql7FbJn28GF6c4vF2S/pF88X4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tyWPcsVLiZasHkrVXcm9nVnluFasSlBWl5wPJQBuv+eho/mQs2sCvJD+87VwOWmpf
	 0JclVCe+5GHl9GEkjM0aTOmQN9XqmW0zIDD/bDtRMUMx3FLjK0qwsgv2GkJHCGzZVt
	 vzB1HDekfqQROvqSd/RQbhjJ9N/5KhAqMDTD1jT113/dcGpJOfR8lgitEe9S5yn/u6
	 nK1VB7/iUTzFXaxKAkdTaaWxwXDaY1LOzWfmOb8xjq7Cw5NtuOHivPuABzN6Fh4iG9
	 /l2LruT31kaTAoa/cEIgOOe24Ir/M8POKw9CTlYbboazOmH35rDosXOdHnsR6MRT2l
	 qCwZUpWUnJ+yA==
Date: Wed, 27 Sep 2023 14:43:17 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	alim.akhtar@samsung.com, bvanassche@acm.org, avri.altman@wdc.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: sc7280: Add UFS nodes for
 sc7280 IDP board
Message-ID: <20230927124317.GC18050@thinkpad>
References: <20230927081858.15961-1-quic_nitirawa@quicinc.com>
 <20230927081858.15961-4-quic_nitirawa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230927081858.15961-4-quic_nitirawa@quicinc.com>

On Wed, Sep 27, 2023 at 01:48:57PM +0530, Nitin Rawat wrote:
> Add UFS host controller and PHY nodes for sc7280 IDP board.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 2ff549f4dc7a..a0059527d9e4 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -499,6 +499,25 @@
>  	status = "okay";
>  };
> 
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l7b_2p9>;
> +	vcc-max-microamp = <800000>;
> +	vccq-supply = <&vreg_l9b_1p2>;
> +	vccq-max-microamp = <900000>;
> +	vccq2-supply = <&vreg_l9b_1p2>;
> +	vccq2-max-microamp = <900000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l10c_0p8>;
> +	vdda-pll-supply = <&vreg_l6b_1p2>;
> +
> +	status = "okay";
> +};
> +
>  &usb_1 {
>  	status = "okay";
>  };
> --
> 2.17.1
> 

-- 
மணிவண்ணன் சதாசிவம்

