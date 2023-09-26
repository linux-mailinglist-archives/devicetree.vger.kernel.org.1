Return-Path: <devicetree+bounces-3390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D56977AEAA5
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8D5A1281715
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67F3107BA;
	Tue, 26 Sep 2023 10:42:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C2463AE
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 043DCC433C7;
	Tue, 26 Sep 2023 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695724959;
	bh=uOv8PdrWtsLNihg1nOXjcyj4Z/6c0nVcQrp6ZYTtk2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hHDVXVkJiaCH4ZTxAV3DGAcW+S2qikUXsr1qgSFP9PELvW+xi+lg0kJ7lGtQCcqYl
	 +/hU/c8MG5TXbiQZW3/pqTaHZrq+bAf5jrYEDAU4n4IOOqGbeYnc1lqDDIyQ1E2TEQ
	 USJmnGLwY6v9LdodPgMvUa224AI/1/jPjv458fNGlDG/d8TS15vRlKaRtq5zdtUg8E
	 kv5O7iuLCQQQDWFiHhyC/TDmIOokceUorcCUHnY+zgPiTtd7qyK4FGdeHIw3Bcf8YT
	 gwgHuWMR38mXyMsYevg/yK6ZYiIOq36yTjTBt6naKl3PK+RmBcF+Q/BoZKAd1CYLye
	 SurYRxYIqgGpQ==
Date: Tue, 26 Sep 2023 12:42:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 1/3] ARM: dts: qcom: sdx65: correct PCIe EP
 phy-names
Message-ID: <20230926104225.GA6393@thinkpad>
References: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>

On Sun, Sep 24, 2023 at 08:31:01PM +0200, Krzysztof Kozlowski wrote:
> Qualcomm PCIe endpoint bindings expect phy-names to be "pciephy":
> 
>   arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dtb: pcie-ep@1c00000: phy-names:0: 'pciephy' was expected
> 
> Fixes: 9c0bb38414a4 ("ARM: dts: qcom: sdx65: Add support for PCIe EP")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
> index dd711484dfc9..c9790217320b 100644
> --- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
> @@ -337,7 +337,7 @@ pcie_ep: pcie-ep@1c00000 {
>  			power-domains = <&gcc PCIE_GDSC>;
>  
>  			phys = <&pcie_phy>;
> -			phy-names = "pcie-phy";
> +			phy-names = "pciephy";
>  
>  			max-link-speed = <3>;
>  			num-lanes = <2>;
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

