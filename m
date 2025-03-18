Return-Path: <devicetree+bounces-158415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B93A66964
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E225177D3E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BEEB1DDA0E;
	Tue, 18 Mar 2025 05:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OTPYGDSP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CA1A256E
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742275850; cv=none; b=T9St0BFuJHSV341tvaJyE60xwu84lMAIorJa2u7tfQXZFx22JBsxeSfgN7MCJUNd03gZeo0LPXSXniLcfK2kn3BnRRA4zdgdxqDINqvjdDm2oMdNaXumF5fkD9LOhgIphLipiY4G2XFRCSVe2a/drTTXxtOAdLvEwyqxU2yOS/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742275850; c=relaxed/simple;
	bh=FM8tOSiWZN6ldhIz1/RdvJxSRCOBEVALQYCx8ILxKVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gGEzR1TOIJLB7jEXz+WDY6CX4dQFqFPrA5/q+v9vvjcMzzcX1QUcdxF1uYURHRdyec+svMJ/B0/wV6tgUuN33TVPae3rtACtY4UAUIcEMGoDhiMb9KyjEiMkRJB38X9J8rZOj0KSBTewVRv1FqxTqUzUzTtUllPVFOKvYBiLp/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OTPYGDSP; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2243803b776so58383545ad.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275846; x=1742880646; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vVrlX5/yKFewVW4DNtsi/TcZgSdsi6s244vHzJco34Q=;
        b=OTPYGDSPuJcHCpdTTYvM2a8a1E0/0KwwgJmxisPzpXfqmDaf5VMeC+MeWQfEwfVVn2
         P1mHRPT0TPQJhgH5IvmMTnN9sIQ18jhmDTzXnhvUG4glBNVxbgeaPy1SWpQIlBXkC26k
         HBg0XHRRMFxOtXJoNIJPZJXVake1c9Zn2/P9d+uCyb8BYMibT/SeDWs+I0JP8/67y778
         jKgDf9MV2wBon06Tc1hNYZ/n28L91hckW3Bhp+PVQylcoy4iVdLKVkcYni/ah35eGAX3
         Yn2lD6XKjNF1Jx5hubcGLYQZmiHJI4HI8bHBCS2rKd7cGdoPI8D1cWFJrfyV673hfs/j
         tQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275846; x=1742880646;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vVrlX5/yKFewVW4DNtsi/TcZgSdsi6s244vHzJco34Q=;
        b=Ky9hjIKVBL2VQfGRwfYk9gGYZJdjWh9w5fQxfeU0Laq0Hl/yjDHKVwmbnKCXZd4RHi
         yHT8EwtlJsxGzWp1MTqDxYg0IVSLeArhkvEu0/ypa6HP2lqTsBLtaHItVarPyE+OxkV7
         Hcg6Z8pkufQGHMYWLlHEqwWvjMOilnaozqDyzFuYLGAGwhmg6AnWIEr6Vqk+vsHQmVLh
         7T+Sl6aUviG4iOLPG2BEXYl9Sz71FhRHmdWHC5qFgn5PvJYysJNqsergqqJrRwCliXkZ
         JnHawhTqEd+4R/WQbP9eXTBWZR7WQy2SIzxUZDmznWythageBr70UAF6xJ8t0eWBreHd
         O3Iw==
X-Forwarded-Encrypted: i=1; AJvYcCX/Ej8gBxy0n5CU7cmB5lvyV1Z1src7y1J5QsuOcloL1fvjNLtVcYPe6PAlh87+TqFP1X3as99VBCV0@vger.kernel.org
X-Gm-Message-State: AOJu0YzcpFIbwKscbYL6Ibm7MxhTvq7kjtxqWuVmbFIHaUqAfhzs74VH
	EWg/Bf7fuaW9qi2njqjjbNw5GIu8sfB2tIgY1n1hCqMprTtxMHZUWL4NPpNfoA==
X-Gm-Gg: ASbGncu5RHT9Oo9GLDv32d8EQWHP5l9XznOeZMrjGJH/gUunSLyhH6EP/DK/5BvseCz
	kjFOS7a4sXWafetlEs7SypLwPPdVquwyvVZsuKP6/kH9nAzcu5aNXX4kXGNWWYvPeEs1HTAdUIb
	EHi6dJWXw0frzuAcg64eHc37a+ppocSeLPDP3UF6fw1IzAj9ajYeg+jvAZk9Xde9NXyNVF1pxkJ
	YP24QdY50U6l4fzLLASdWXCRLsvxZdhEsgstSPIAKq5IdoHstj+Ss1tGq5m1fseV2C0xui5sUiu
	6dHW16PXC3Y7QJD4jCyjwjjIAKMCdFDxWiOg4Spj1PvoatYp5Jd1Kcrw1KX2/Juv81w=
X-Google-Smtp-Source: AGHT+IEtt4J+fZu9T/XWxc1ZJtom12OamyfKq1wK8CZ3f3/gBNHUNIaz9zHfTwn3v99uwCqK19+WIQ==
X-Received: by 2002:a17:902:db0a:b0:220:faa2:c911 with SMTP id d9443c01a7336-2262c53587bmr23587095ad.14.1742275846568;
        Mon, 17 Mar 2025 22:30:46 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bbffc2sm85375845ad.162.2025.03.17.22.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:30:46 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:00:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sm8750: Add UFS nodes for
 SM8750 MTP
Message-ID: <20250318053038.k25p26qsxqozqyvb@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-5-0dfdd6823161@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310-sm8750_ufs_master-v2-5-0dfdd6823161@quicinc.com>

On Mon, Mar 10, 2025 at 02:12:33PM -0700, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 MTP board.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..9d34159e73948e7f3f939593d1ace444cc5dcd15 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -792,3 +792,21 @@ &tlmm {
>  &uart7 {
>  	status = "okay";
>  };
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l1j_0p91>;
> +	vdda-pll-supply = <&vreg_l3g_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 215 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_2p5>;
> +	vcc-max-microamp = <1300000>;
> +	vccq-supply = <&vreg_l1d_1p2>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> 
> -- 
> 2.46.1
> 

-- 
மணிவண்ணன் சதாசிவம்

