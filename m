Return-Path: <devicetree+bounces-144618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D17FA2EA53
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A3301655CE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 11:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F1F1DED57;
	Mon, 10 Feb 2025 11:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YGqm8akA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072821CAA86
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 11:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739185293; cv=none; b=E4s3bWMRYFhH7L6Fo0wnlTMEWfUWSCZU+V2ZogwmSDLfC2XYsC1lthGV4I/nLHvXou5tBth9+LEHGz6K+9a7Vx+DumWJSa5eN5wDmD7GPBow3WrNO0mfPSfycCLbz1XZE0ctckcvFF6Jq7PcJ/58AqyflRBWTw83T4e5lobmXO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739185293; c=relaxed/simple;
	bh=WgW6ZEWyu81z7BrqyHmBRuGMtk2zuQXDhJEjREDVx6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eA+hyo+7k7PadJo5oy0iGNUE5zfytQc1XHJFKpVMuCCTm19Q//14q8wQmAxSUFnPjp19bwqG43Mo0xajfK9Cig/HLfqeqvBVC5M7EbcLAh24sFsEttbubgi11nweo8xA3aBz9nHG9EBGcdBkTmBmn4gpQeI8jggXkY6ELdjo17E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YGqm8akA; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30738a717ffso38276751fa.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 03:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739185289; x=1739790089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GtTBVwp4J9apExhc56rvDYwcShHHaMo1N7lDCxauzzY=;
        b=YGqm8akAE8gSZd1S7vpanZvGYy1GVJ+v6hmPJkO+E2m72RZYbt7eZZwHva2orJ5w58
         4EovFDkM1tJwKmTA95tLhs5Ua+hVJUv3jazgqT9mecFlUI7TEhhcIBTd6YzIqQyTdIXf
         t5H9wZFSIMi0l8wN98n3/F4ZNU8TtXMEG2pAjzhL0QK1oxiY+cegCvEdRrHOhSOEAL0H
         yQTGXF6WUPtszeZFs9wqbJzoZSXqXav/im/Y9U83Hcrmn3af0p/j9Zz0nPDBbzVKGnhB
         07zG+9YyVNtm8t5AVYm3+XqsfWjTPhAdyzrsJXgQYREiG4W6MVzmqHgZZrIOO53zcCqh
         7jvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739185289; x=1739790089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtTBVwp4J9apExhc56rvDYwcShHHaMo1N7lDCxauzzY=;
        b=Jy6L7Tv71kBbhF9dD4uhWdzD0Cxgm/ejeo+qPPDHXxSJTJCea5QcBrOoUMj6O2ZofU
         7ctvYlvo8SCYVTsJX6tSEpvm+GAeY4DtEQm+p657X/B72NUlhjIH98q/3cbyHCnA3dYK
         v2yp6Us4/Lbt8zMLqi7sdCg0gpo7H2lVCcyKfzT3yXBoCQtkjoLU+l8HJwZtUVJMa0mA
         JbSPjZRLA1noxFEb+rRoe+YJB+of/wZLAg2SSKC84GFVr49rEujy2BNrL5GX8+PC9GEv
         r0F2Zy8wmtLCJZHJpbw9LxinOIcnkRE2vnjbzT9m4UARkcg5B+Mf1Irm+T5dcKKb3SPF
         a+4A==
X-Forwarded-Encrypted: i=1; AJvYcCWRY99YVPbpqV3BRC6w717bTZzJXvjrf4SUGkX7ooVzLnfV7fFiBf5wMuYuKWynYC7S/7mmnOKhF8a+@vger.kernel.org
X-Gm-Message-State: AOJu0YytSxF69wPdcBG0uLs/Uutn9J3h/v5r3hRKe93/bMvwhIuYqbx0
	T7jIL2l/cJoLa028AnecEhhpF10+/d/NIA66rs5XUVeaiygeK6aLfDXRk4rhIJU=
X-Gm-Gg: ASbGncuqGN9+L+QXQ89+wJiOvkdSsMU5CgsXpOqolbnZ2EubqOEu1l6YZD3BxdaV+LY
	ob6HMJE3pK80zl0cdcfdG5RA+T5rFBhsZvQ4ZrvsxyQgiN5G2iR1gq5j5sCjFCKX+jviOC31jNI
	SfFbr0bXI4JcXZadI72hQ+1ND0NL9A7ufsgjKwOwypxulr1OQ+u0ZIzPtmXCO6ybUKhuiqocKko
	+M27vXNCnboueGl0y/2eap0vYFunqirDhTj3BQL8+GMizcS5cDSVtROR7UJeGYtvJcmHmM4+r8m
	il9b8P5m8yMUGd8WbBbWWbA1fHfHa0i94MA0DB6OyxXX+X6xvSJWOUwSrcKFx8aAJnqXPsY=
X-Google-Smtp-Source: AGHT+IESGWlTJg2cuv8Kgo6v/dDQZjg10SE7StQf8S4vcvj1tAiGKln4CJ/xT6Y54Ae/tQTmSnk31g==
X-Received: by 2002:a05:6512:4022:b0:545:ae6:d740 with SMTP id 2adb3069b0e04-5450ae6d79amr1090753e87.41.1739185289056;
        Mon, 10 Feb 2025 03:01:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450c0823acsm321386e87.118.2025.02.10.03.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 03:01:28 -0800 (PST)
Date: Mon, 10 Feb 2025 13:01:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300: Add device node for
 gfx_smmu
Message-ID: <464vbzwgv44fn4iw5vj5yzpstzhcsb7rzuedf4fwl23hmdhews@d4q33ro6hxq3>
References: <20250203-b4-branch-gfx-smmu-v4-0-eaa7aa762f48@quicinc.com>
 <20250203-b4-branch-gfx-smmu-v4-2-eaa7aa762f48@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203-b4-branch-gfx-smmu-v4-2-eaa7aa762f48@quicinc.com>

On Mon, Feb 03, 2025 at 11:17:02AM +0530, Pratyush Brahma wrote:
> Add the device node for gfx smmu that is required for gpu
> specific address translations.
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 39 +++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 4a057f7c0d9fae0ebd1b3cf3468746b382bc886b..7a8211bec139375b5aab939f123d88fca7aceff2 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -2674,6 +2674,45 @@ gpucc: clock-controller@3d90000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		adreno_smmu: iommu@3da0000 {
> +			compatible = "qcom,qcs8300-smmu-500", "qcom,adreno-smmu",
> +				     "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x3da0000 0x0 0x20000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <2>;
> +
> +			interrupts = <GIC_SPI 672 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
> +				 <&gpucc GPU_CC_AHB_CLK>,
> +				 <&gpucc GPU_CC_HUB_AON_CLK>;
> +
> +			 clock-names = "gcc_gpu_memnoc_gfx_clk",

Stray whitespace after the Tab symbol

> +				       "gcc_gpu_snoc_dvm_gfx_clk",
> +				       "gpu_cc_ahb_clk",
> +				       "gpu_cc_hlos1_vote_gpu_smmu_clk",
> +				       "gpu_cc_cx_gmu_clk",
> +				       "gpu_cc_hub_cx_int_clk",
> +				       "gpu_cc_hub_aon_clk";

clocks and clock-names do not match.

> +			power-domains = <&gpucc GPU_CC_CX_GDSC>;
> +			dma-coherent;
> +		};
> +
>  		pmu@9091000 {
>  			compatible = "qcom,qcs8300-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
>  			reg = <0x0 0x9091000 0x0 0x1000>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

