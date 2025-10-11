Return-Path: <devicetree+bounces-225591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA16BCF40E
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 13:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E21B420849
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 11:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10AD42652B0;
	Sat, 11 Oct 2025 11:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ydMxZPQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD72262D14
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 11:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760180815; cv=none; b=gGc5ltZzeg/YUe7aJd+ukdjNqUVCCxevpQrplazJ84eaX22e90KHg7Te0zhE++2DOW7zk9EO6M+6LvziqfGhNbufQ1zjVTZzxg7q8IePAmHwaLNNc++dHHisQOcd0Gk3NhvCVmI83amq7Zb/cku606Aei5lyxS6Tfsl+i0NQeI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760180815; c=relaxed/simple;
	bh=DFtPK8eRVHr4jByOoKRmS2GzzHVM9d7Kax895/EA/ng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=REyQQUkQcYnX93F4nEc8/SlJlRum+6cGwW90TN9Bac105uiBVBGyJ2ClhpCSDUWHC0CdHsvi63NI3PnZbqtAvnDPzLn3VniCMXmOUxmLozvfbglqN5cjX8wlHsYQACUT/H6/V/Z7VKON3PGM/bLlRUwra1uFk2DlIJXCZwL42Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ydMxZPQo; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e48d6b95fso26254355e9.3
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 04:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760180807; x=1760785607; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hUM2/URIhgfzGfcKYQTjSM1umO6xjx3Kxpuxk6gO9mM=;
        b=ydMxZPQoVOFT3LP7//xVCQoQhrIDuSx77DVHOEHLILHf8VLDRy71a0qNVbqc3TJT7F
         rkKjX3u4H/j+OQnFd6ooORKGgaSvK7lpcYu4YK5SLXP9aeMMNEv+YafBIC0vxGRteKuF
         OkOf+1E0euv/1PNYk05oET/ivPsTpJZktr4owVGsFg1Er86ha/5O9sbUISSrZntx8ZcZ
         FhCaAkxmPDs3ZDnaJUOQGlfpLW3ZRSzmceId4vS0K/uaX77WX3UMWP0xsZt7g2RJ/EZN
         fjDXbVeOyxH1momBW8t1TCTZP/i3n9tGVQW8+Ek7aaI5NF+xY5itPXA90pX9FneR2ggj
         jaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760180808; x=1760785608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hUM2/URIhgfzGfcKYQTjSM1umO6xjx3Kxpuxk6gO9mM=;
        b=whbCqclTQlVSWbOHex6KVEVD6Lv758Su/qLJ+2ICBTjX7f4r79kws4ICUoFrdTMOB4
         Ld6SqKYUsbymnbJo9UQpO/qj2aBg2LJ5m6GgoJIESnUPH9+ck3bBu9x/NIkworEGxm1a
         Nn7c9c5PsiDDUq6EAqjzFuLJzOvcEuVHWR0olId2IrLpFRaK4UJQfH9RffZ7P+IDfkcB
         kMW3IhGy22WW5XeoWEe9lQZPAeE2W/9w6h0bEw85hdRctvrIeqkJRANt4WeXNC0SL5zU
         gOwQbMWbjCJaxVnIXl6QqShU2PCdzUwL4dbHPnvDy+zBc5MG017/AXDJZ9s0re+j/xwK
         S8IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVP+UqNiVYcIQV1tUC8NEXPALSkd2eE2Jm0qq06NRW9p2bYQdSj05WbxFV/sMoOA0rIb4PRm+Vt8kOV@vger.kernel.org
X-Gm-Message-State: AOJu0YzF8kffyLT8EbjJlRyakWJ1Non54W64lJGDFrNrkFK1CVtAOC3i
	c4DDtxIp2M4sOYZceHQQI4ljP3icz8JV6qpCwa22dJRDd9ScMcVTOzYGeRo8iv/1Pow=
X-Gm-Gg: ASbGncvSrKpnli/pX+MSBVPWll03nQPSLxTOmPmBtxTvGNeTBdwFa9WXKbyDAOgTavj
	7vfcTrHIqNVgV84rg20lvLFxHKH9sUHdvt8M6VI1Yh3WC2jRLiXXDz/rtgzx7QyGyCEDP1khcgu
	Z4kxcBktERcTR7T0NWZUf54mr/KWJcSPfBINmXOuiUTxl/RU1+VK++GeT5PujBZoJFIdykVdDXW
	gSs3NlSubVg4+EWn0DE4ZicrLH59X4V9M/ThLpqv4fDuyeHiaiWp0lMMLGnmRTl4ncgQG4+gkmd
	e6mG2r2mJ8uk+9VpfR5w8cqKmcm3Fve1+nUzbbBRyUjaV8a5xbhraEt9h4qb+vHylrkgbrjUHjJ
	6bdyfwW8ng9aa9FWuD9wWnF0/Nzy+GZt2Wtv7mdGXbgdG1k89VJ5R
X-Google-Smtp-Source: AGHT+IHGR+So1TUHRFxgxBeilcnqZpteXvOpesOn1YzO553Yr7iIOWcb2MOwachFSdxEjwsl+4NDYQ==
X-Received: by 2002:a05:600c:34c2:b0:46e:502c:8d6a with SMTP id 5b1f17b1804b1-46fa9b06499mr93510435e9.25.1760180807403;
        Sat, 11 Oct 2025 04:06:47 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489ad27sm88785185e9.15.2025.10.11.04.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 04:06:45 -0700 (PDT)
Date: Sat, 11 Oct 2025 14:06:44 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
Message-ID: <3af57kktkwevbxkno4o54w3o2qajoco5x7dlj3ckepcutlzmdh@2bnqqxndbvf3>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:12, Pankaj Patil wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Add device tree support for QUPv3 serial engine protocols on Glymur.
> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
> support of GPI DMA engines.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts |   43 +
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 3041 +++++++++++++++++++++++++++++--
>  2 files changed, 2936 insertions(+), 148 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index f1c5a0cb483670e9f8044e250950693b4a015479..8674465b22707207523caa8ad635d95a3396497a 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -707,6 +707,32 @@ gcc: clock-controller@100000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		gpi_dma2: dma-controller@800000 {
> +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
> +			reg = <0 0x00800000 0 0x60000>;
> +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <16>;
> +			dma-channel-mask = <0x3f>;
> +			#dma-cells = <3>;
> +			iommus = <&apps_smmu 0xd76 0x0>;
> +			status = "ok";

s/ok/okay/

Everywhere actually.


