Return-Path: <devicetree+bounces-158423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A06A8A669AE
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F9F73A7BB6
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8E91D9A49;
	Tue, 18 Mar 2025 05:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F/J9r5qU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AE11D6DBC
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742276587; cv=none; b=sJjYRloEhVJeiLocK39/4P1RaE98b47nH5NprFd0ASFniBtxJQaCm8IlWCtcksve5UHDqx1HiqNFmDRwHb2zLBWJ7PqihiS8y9nTC7HjId9ilvLM7MCeedgVG6Sj5hFNrqak1FEKHGXtb4xllNQO526w6mjqVzp88RyJmHutAjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742276587; c=relaxed/simple;
	bh=pTkKiqBvzqQ4A08SySDFb1VvCKVdJT+dQzkGmZq4KOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vmx9waXlOTRQoyUfUZ25cXDDgWDlQXjgwE/vAmeAaTNHYzahn9iYuiwMNoaK41daco/LrJxiiktahynlocRMP/qKQIAOx7kJEI4/hvG1WDHSJdQFa4jnCwD7RyvKcELyrw0XBrDdhwla5EltvEn1/dyIgDPqKdjkEjGXSj6Bq5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F/J9r5qU; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22401f4d35aso97076285ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276585; x=1742881385; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FEoinY9MBp6fBxPU4owelu4oiM4ylGd59Qy+F2Dob3M=;
        b=F/J9r5qU4UC6PMKiEue+5968TYEuv8V6Va2RJPdU8XxPamP6Bl0fmsx/iQsje/qHlJ
         7NRjKGwq/b8tSEGQHZbp3yE12ykIZ2260mES2Xx3yfzvKs8GHsaI4D6WoIB7QjND82Nc
         xjMZ6wtO6TYo5V26nW+LgR85eOMdjNohYKyKBbxR2rJPxRUXXLeC6oRlBxoWq9jVoCrh
         DHC6ApTMIxag1slJz/3rzO4cR+dlEtUeQFEZkIzDU++vtFz/z+H+Zoyb5zO/bu7Ml1Um
         mGr6JgIf3pK+XBVaFGojBpDJ7KyfUBklLuwqgqcpZGfoxycA+iaDBpduEMDt57ZzNPZ6
         ZAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276585; x=1742881385;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FEoinY9MBp6fBxPU4owelu4oiM4ylGd59Qy+F2Dob3M=;
        b=e7E+KCaVJa9W1fJfHMzjen2SIoTGB6607AizqisrX7DJex5SEa+eJuEkckwb6+LSks
         d9YWyrw9OYlUSGFrB9VUWeKQl7Rd5OZZ+439Wb29rVCQP9+57rmALWRF7WCqiQh89Rrn
         dl42Y6fRZLaTY9S9hHN6uNP3rRsnotW2rvHnOR4pzT2+bEyfhUbe2H7FtKhf1fuQFQC9
         ZtZVTTIwy0wjwqlf50rKWiF6zdICn2X0SWGpQpGJvlQ24L0veQ8WUsuuqoaoK7kudy/e
         cYraRAcZZ6mYy+ZRDvvDAI1NarVbO/xghkfgA19JxPaNtgnwjJ2ndNuu1StTRD9yEwY8
         1Ayw==
X-Forwarded-Encrypted: i=1; AJvYcCWw+Y+kssoTj0CC/zALLoiDSegI5PcG9kcZDVB9WE/8DOo/Nz8eerOZKVWeJglRcrOu53MNli00/Iyl@vger.kernel.org
X-Gm-Message-State: AOJu0YxJiKT76veyyLqLl/TVDto74UDnguPdMiYmc6plL73wovVGABJE
	z8NxoasFZ3AXQSub7rn3vLfoYHCPjaBP6l/0s20d0vmOERdmLdAl+bsCSPhdCw==
X-Gm-Gg: ASbGncs5uuOmYzq9nxAckmLiFPWSSy1aBo67BSP8q+2oAtfhhqYIojE/UOEp7UHmRx+
	TZWnhoN/JwQVkwV983AhNL2Hz8wM8CTYVBGmYqSjuOBkH3D7F2Lit55BW9jjz3kWsXJ2zl6PcN2
	crlDgkjQXutFqEBPj397QLXMzr2YagX6PHJhYhZJ2l6DWKSVfeFb1yajr5VxZT+7lH71rOsIlSs
	ZN2l2xyit7zu/OXMYXBuN/IcXbotNjK6eJPywAc2s56jkCyNYeEXeEdDAmok5n/VgwgtKO6NYeC
	o8/lE1Vm4kps/pUKfFQ1+IgIPd0XIzO4RSseMYJTOYNeeG/FniPWRmia
X-Google-Smtp-Source: AGHT+IHFAYycRh8yAvQ6rzKtJ7IEEozCZPfvduhinevYL/RlGjWqSKDVBSpP0w/WLSUpzr4TkOvmSw==
X-Received: by 2002:a05:6a00:98f:b0:730:7600:aeab with SMTP id d2e1a72fcca58-7375723f9afmr2788650b3a.13.1742276585611;
        Mon, 17 Mar 2025 22:43:05 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711578a67sm8596953b3a.78.2025.03.17.22.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:43:05 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:12:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/8] arm64: dts: qcom: qcs8300: enable pcie0 interface
Message-ID: <20250318054258.roq5zifhqfkjge4e@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>

On Mon, Mar 10, 2025 at 02:31:01PM +0800, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, board related gpios,
> PMIC regulators, etc.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

With subject change mentioned by Dmitry,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index b5c9f89b3435..c3fe3b98b1b6 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -285,6 +285,23 @@ queue3 {
>  	};
>  };
>  
> +&pcie0 {
> +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie0_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	vdda-phy-supply = <&vreg_l6a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -310,6 +327,29 @@ &serdes0 {
>  };
>  
>  &tlmm {
> +	pcie0_default_state: pcie0-default-state {
> +		wake-pins {
> +			pins = "gpio0";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		clkreq-pins {
> +			pins = "gpio1";
> +			function = "pcie0_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +	};
> +
>  	ethernet0_default: ethernet0-default-state {
>  		ethernet0_mdc: ethernet0-mdc-pins {
>  			pins = "gpio5";
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

