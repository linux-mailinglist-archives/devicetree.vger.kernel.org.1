Return-Path: <devicetree+bounces-161366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C667A73A75
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D73AA189EF32
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 17:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4092192EE;
	Thu, 27 Mar 2025 17:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zGykoCHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59464218AC3
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 17:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743096583; cv=none; b=nAy6Sp1wMmAcuR2CoWi9RFe+8ND/++V1McqvRbvKI6K1S7fRXq56P+wApSPzMFQOzAJFyBxOmiy2QVjOSQB/VJlCURUDmpFf0dlgUhUEhruXxhRfi5wUHu2662OwmyRCc2JSTE00oF3Oq1cFmIx0v4OSR7FMhO8oNeSOnEjEF78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743096583; c=relaxed/simple;
	bh=OZOUMn7eWVEe+quoJzHzusizR9zi54OhgtUY1wqnIkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qT3GMd02NUe1cIa5yNtfgljHCe5FVhjVLp8h4au6GEmKN7oYnaK+Xuewdx3axmoO8GyFbKr8sMZrVS+f2f+jmQMO782iEUEuYS6FVGcT3WgKoEsUJRsn9kQaJrZ3hKQmuxx9281bGk/IHQwIxmXMamlbNuI+3kgYVRGkvJ6bRWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zGykoCHF; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-224341bbc1dso27427585ad.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743096579; x=1743701379; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xUAnTAtDNuNnJIdSSQ+Rk9ZfVSwofE0KN7R4UOP1qhM=;
        b=zGykoCHFQPArIFXkw7/cqDhWopIJKCzoJDZQo8VeFRWwdgralGhrO85LVSys/keiwA
         C2pCPo5TcsVuql02vgUuuERcoXCBYfA1wXcXI5JaixleBVOVH2mj3JnLPuKouQbSCUfG
         hO+5wZxLaphMo8FOpeELjXzJmBYiwmHa6k2Yzv3xXN4Fv4noUvLoMuT44P6EqAipg5/0
         krsmPUBQXngU4UY4F7MkxjNmc4s7tBuMMheSjOJ5/grgCjiRG3fiLWuFSpKqHwC9QjzX
         1WL3O3f0b4IJfCE1cIK/wyv/kkztjPpByYkRKd2nhLeIkz+UvrPwx5xEJKUnKzRU5bKB
         7KiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743096579; x=1743701379;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xUAnTAtDNuNnJIdSSQ+Rk9ZfVSwofE0KN7R4UOP1qhM=;
        b=uRoz67SOGRWJOA5iyILtskiSEmwMicg9lUsdFzbxpG9E1m8JbyZNitfeYxol2GJYZL
         8ipfYNUBXE/iYnhwT8YZRiS85xn2GP8GFri8HpsE4OdoU6v/UbLTYg6GBRVyIBGLvD/W
         mTKpLZTjUDSYdgB1ztegZaFrWI/BVNGcHsZ5cVV5+MeHV1tZ7vWJtIyz4BW7r/Moobuw
         u++PgC+aHyu4tq+WUoTWPsAMhnnlytELIQAA16htzIhy6YFsQWjJ81J+GZl6yd/6lzw4
         pJctBR2A0e9pYKP8uFGDG67hrlBre+izT8zUnVMs3xqtoI4RpKN+P9inORcDbbq9D+m8
         bglw==
X-Forwarded-Encrypted: i=1; AJvYcCVT+uolgkPFq9PJdtjeGJxQQuQ/G6s+pkszo/j3uHvSbr5+A631q7afZaovBqGIwrX+SYkf75RgcsJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YyNSmUcMVSFZ0moACyj4sILJD3vTih1ZYbx5mHGAK1F/HQkXVPh
	G4VHs3O02CJtYXHWaqZcn0oEHt3H1tqRG+LuLnkLELKqC+DCCsI9L4QuFfB7cg==
X-Gm-Gg: ASbGnctIpwVjkec8v96xysQyekB0rnEMCXUq1W4Nn1O4eeXhY+HKGQvIpcrSKBh3LYI
	i9fgl0Vz/51Rvo++QbLdpwYFIl+WTenkrZ7bWHjgH19zLv7Zp6DzEkUhTb6HC8f2pnJeGwb4W4r
	B1RnKq1oEciTwUKlwjnU9bja7fYlyNRrdmgt90Zh39PzsurmYfVi3YMLOzNVKOlv/r59/nYNcmu
	IFqisPKGllbd3hk7RCqD3W32mkcapm4wa3aFj5XChkUdXy8nt8xV4XGKM6IRZQNjjgJ8Ctzigu1
	5uHDL6WHrfWSlfdH2BWkqoBHZqt5bznZ80u7N5LQvzc7NGb5tVD3JNw=
X-Google-Smtp-Source: AGHT+IGq9WA9Mg+aD9Pf6gxE2w7nofLRKq3e9u+4e1o+z4k8xCGL05Lgi/yGgHNUkZz6Z+X/JLWE9w==
X-Received: by 2002:a05:6a20:2589:b0:1fd:e9c8:cf3b with SMTP id adf61e73a8af0-1fea2f4c4e7mr10560727637.30.1743096579450;
        Thu, 27 Mar 2025 10:29:39 -0700 (PDT)
Received: from thinkpad ([120.60.71.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deeea2sm81237b3a.21.2025.03.27.10.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 10:29:39 -0700 (PDT)
Date: Thu, 27 Mar 2025 22:59:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-1-quic_varada@quicinc.com, 20250317100029.881286-2-quic_varada@quicinc.com, 
	Sricharan R <quic_srichara@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v7 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <vmka3ediym33gjwy6vztxn25j2gwfeeht3s3nbx3ozinuz2k7n@7nho6bfvsuo5>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
 <20250326-ipq5018-pcie-v7-5-e1828fef06c9@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326-ipq5018-pcie-v7-5-e1828fef06c9@outlook.com>

On Wed, Mar 26, 2025 at 12:10:59PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and
> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> NOTE: the PCIe controller supports gen3, yet the phy is limited to gen2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 246 +++++++++++++++++++++++++++++++++-
>  1 file changed, 244 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 8914f2ef0bc47fda243b19174f77ce73fc10757d..9f695f0d9c6b7f29c4564977cadd6a78b55a044f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
>  			status = "disabled";
>  		};
>  
> +		pcie1_phy: phy@7e000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> +			reg = <0x0007e000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			num-lanes = <1>;
> +
> +			status = "disabled";
> +		};
> +
> +		pcie0_phy: phy@86000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> +			reg = <0x00086000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			num-lanes = <2>;
> +
> +			status = "disabled";
> +		};
> +
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq5018-tlmm";
>  			reg = <0x01000000 0x300000>;
> @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
>  			reg = <0x01800000 0x80000>;
>  			clocks = <&xo_board_clk>,
>  				 <&sleep_clk>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie0_phy>,
> +				 <&pcie1_phy>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -387,6 +421,214 @@ frame@b128000 {
>  				status = "disabled";
>  			};
>  		};
> +
> +		pcie1: pcie@80000000 {
> +			compatible = "qcom,pcie-ipq5018";
> +			reg = <0x80000000 0xf1d>,
> +			      <0x80000f20 0xa8>,
> +			      <0x80001000 0x1000>,
> +			      <0x00078000 0x3000>,
> +			      <0x80100000 0x1000>,
> +			      <0x0007b000 0x1000>;
> +			reg-names = "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "parf",
> +				    "config",
> +				    "mhi";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			/*
> +			 * In IPQ5018, the PCIe controller supports gen3,

nit: no need to mention IPQ5018.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

