Return-Path: <devicetree+bounces-93880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC10952CFD
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 12:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 600031F21565
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 10:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7861BD016;
	Thu, 15 Aug 2024 10:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AC0JdNfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA51D1BC9F7
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 10:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723718849; cv=none; b=lxtd7XzYxsZoLI77OrWPn0+jq8wXwooT0gvFRh07Kt19Jnw5Cg20jRZBMhMsnfEhGXIjYw4eUDX61IsS2nBShuska4noPwNbDC2QxTuvDp527C11/z6bvDRaHsSPw0mbT0+pKzZECDS6LscA8W3g6pZml13d3TUSdURsyMgCtto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723718849; c=relaxed/simple;
	bh=6tGzmiTzEPMRyKJk0PGvlaJdsO9+QLBrYLK+b36RDG4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=irA0qhyleUU6TIKNpZolwxKkbcI5PaglgKYQ/QB3lTc8mrUzu+VKUCoAuWVqWrFetIF0AOC0wsbVwzBKHSOkrymahVV4rBXPODVnZc8OCcJu8BFjEgJVkhETIph76lAq+otkmSMfN+942P+lQ36Btp69q4crpluzDS/V3FNYzI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AC0JdNfy; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ef23d04541so10163711fa.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 03:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723718846; x=1724323646; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xFiBa+U9hFlCzSJ6jAO6RRxbfDnmoUHchd4gNuf1fR0=;
        b=AC0JdNfysm7QLop8eLtmUM9be0fBWrj+5i0eGDY41c6besVtOenu6hv7N537snTW26
         lAJ5A9rRqf+IdBDVEjk/6fXY5Vjlo0ING9NWD0AgBQEgMUaqFRq5hTatv4dz+zUR822B
         uttVva25bLKgjxGIbkYP37Gvjdz8VizJ8xT+ZKJdSnaKEiV34Q84WuvPAZlhIbWVxCyY
         CyTXU7UHqSXONX9lCgqnuAXOnwLFQr7eIG58T/clNsC2IA7oFxMDUCjLMjDwevoNL1l7
         6rae/sWckiwq0xmdq1wwmgiHApaNWwcge6Us0bxu/5E5UVu7EnYyak2uJVc4HoEjf00E
         uErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723718846; x=1724323646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xFiBa+U9hFlCzSJ6jAO6RRxbfDnmoUHchd4gNuf1fR0=;
        b=tzL3BjbnDFLo/OnO8/TltJFOh0l/z/eN78Pk+v+QR1uVtvdm+IocNSqiW7l1RxLW22
         7HKSOt8TZiYZTFKv1g5i8EAVb6Qilg3paJS4yFEjkro1RfYZ3DOrthWi8HS/QrBHqYcv
         gBOcqC+c6abYpN0Tc89GV+5pF68SGQuTyAtpA86KnPN60OFi8/M8JU7I5575sk7xnhYP
         kUVHLLklF4OIZLj0IavUxXFRh1GnEL1gjMJgZRPn0By097yUHaS6rOKGGkjScvUmm+dq
         qG3kpRHV7Qsxw+ZSeDMmQJw4PngVVS19/sOmKj2tGrA6UMaHoJ1xk/0uF412sUOwBlVx
         fMBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJpkQlpvmJj7NzetgrglT15DbUpXJYuhban3AUc66ljPVIKMfWkhynipnaH3M3QcP8ShJ3MT86gAV/RKAyR450MnTUTtvPSob7pw==
X-Gm-Message-State: AOJu0YyRj3NWSBRZnLmHBFWVoteoueY2YVxOuDoZkKDbVCOffXPBp2Cd
	Azbe8+NbqM6LrVwzo3lraep5sOPFPxkOCZZMM6V0JMfkPGlOZ2QR8DdzKEk0Q5g=
X-Google-Smtp-Source: AGHT+IFhIREb9DDHPxPjjEWsOsR0T8cVRKEasMD22RcTYJZf7Fjoq4Bq9TP7VGvZC1uKvZYxPNDGdA==
X-Received: by 2002:a2e:3210:0:b0:2ee:7bcd:a52 with SMTP id 38308e7fff4ca-2f3aa1f9d0dmr31464881fa.46.1723718845647;
        Thu, 15 Aug 2024 03:47:25 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebbbe29c3sm753708a12.14.2024.08.15.03.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 03:47:25 -0700 (PDT)
Date: Thu, 15 Aug 2024 13:47:23 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Marcus Glocker <marcus@nazgul.ch>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: Add UFS node
Message-ID: <Zr3cuxv4EdxMQa9C@linaro.org>
References: <v2iah5yrne4u6uzrnzg36tvtxzqrpiez6io2gyyfrht2x42umw@5ribqndiavxv>
 <ejeph4wspggkmvhl7qmpvw5jlojyvma7epqd67i6vk5p6fncrk@de56nvgi6vzi>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ejeph4wspggkmvhl7qmpvw5jlojyvma7epqd67i6vk5p6fncrk@de56nvgi6vzi>

On 24-08-15 12:42:29, Marcus Glocker wrote:
> Add the UFS Host Controller node.  This was basically copied from the
> arch/arm64/boot/dts/qcom/sc7180.dtsi file.
> 
> Signed-off-by: Marcus Glocker <marcus@nazgul.ch>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 71 ++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 7bca5fcd7d52..235e20e4b51f 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2878,6 +2878,77 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,x1e80100-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";
> +			reg = <0 0x01d84000 0 0x3000>;
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <1>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +
> +			iommus = <&apps_smmu 0xa0 0x0>;
> +
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk";
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
> +			freq-table-hz = <50000000 200000000>,
> +					<0 0>,
> +					<0 0>,
> +					<37500000 150000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ufs-ddr", "cpu-ufs";
> +
> +			qcom,ice = <&ice>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,x1e80100-qmp-ufs-phy";

Can't find any phy patch that adds this compatible to the driver.

> +			reg = <0 0x01d87000 0 0x1000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		ice: crypto@1d90000 {
> +			compatible = "qcom,x1e80100-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0 0x01d90000 0 0x8000>;
> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> +		};
> +
>  		pcie6a: pci@1bf8000 {
>  			device_type = "pci";
>  			compatible = "qcom,pcie-x1e80100";
> -- 
> 2.39.2
> 

