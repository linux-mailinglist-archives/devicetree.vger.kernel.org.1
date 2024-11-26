Return-Path: <devicetree+bounces-124640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D73359D97C1
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 13:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB3B8165B85
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C3C1D4354;
	Tue, 26 Nov 2024 12:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tUZNBKqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0D1D4324
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 12:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732625785; cv=none; b=Tb20BZqwLhue+yBVXSTT8DJul+2Umgwk58yqrhDmWOVrS1GCobkTHmu4r85u2fH5E7Jiv/0L10DpzvVyZMhzEjJUlN1HpNsqMxHVXzHbRwdzojxtzTLrBH2ethQ8l9tX+nxbk4SctVaqI3xb8wxBwDGZVdNfpXONRkA1VBrPaNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732625785; c=relaxed/simple;
	bh=TfjTGWQaDFmp9+wS6+9ipI5j9jCprYMO03bsaV8msQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fArYyvnd48PSrfqbngv/lTvGfudNJijdgdE6G1nBYb3QRz0ncABHIH6rgJgfUBNWwzZHwcrQIEPaX8eHtRjNcWWcnqJ3GVWW+YeouHQat6vtTGbd+THlBPJDkE+THgqqZ028FvWdfcJ8dFM2YZE+E7+lugNEuf/f780Sud2MQKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tUZNBKqo; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-212a3067b11so46494345ad.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 04:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732625783; x=1733230583; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YY215mVBF/BsyIyjPcQ5YdAmE/7mcXahP/kNz5RyMwA=;
        b=tUZNBKqoYN5o9F2YcDoN5qwCVmv5Leka0vhz1kNI1bZLv13ecMRELbhRCZZ3XUi/jp
         HUqytxkeMOtxdO801G1fYdEC1Auy8x9BMlbqp/uCMBbPAjwl/c1iFDdypFHUTvJhRbAD
         6uNSTiUfOCRGL2lL0eoymokAJTVataOZvUSg3XfdtCNxN3wzi+foKhfzG5ZG5yI33Lpj
         Y6g08Lc1PQ4NpwAH41U0qLfDAN+evzz+rrGfi+CoZw8X94/j52kwKh3R1TRxgI2ryfzb
         bJkyTo1vURXOJew30cq87YH1R8usbHFAu+bsmzDDypXFjxshJX8Bb1rsJwnsNfyy7gQ5
         5MWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732625783; x=1733230583;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YY215mVBF/BsyIyjPcQ5YdAmE/7mcXahP/kNz5RyMwA=;
        b=t65axHW9wZ2VQtZQ+xRuXgK3R+gLLAVRkl8ta4k2r/VLIulDoJcY269PHWeb8KG0EF
         Lo4tZFORdat1NXzYlM1646vA3dUOewRtpq3MQnY87w2tKIsKZ6u359v82LFVABpJ4BIN
         w13nUAspbzRK51q0x6HgTT/pCJVXjcQCaEshzp8k/XdVXPyEpyYB3YIha1Fc8nQXaXMH
         ht6anoAPXhMyVHScrF6Ve4twdRpcIsmJN57ndBa0jjsYDRUkJ8IyJC9YbnsZ+q3QwzwV
         oLCNawmvd+IJY0aJ9Hj1CeVhaCWO5ByJ8kFN38en7Qqf1pjpPfiJYWxQ+cM2AWzm/7jq
         VvFg==
X-Forwarded-Encrypted: i=1; AJvYcCU6zl2V7hDLmsXocpxTj9B+t5XLynL9Lc07GNEUjjiGh/GSoUZDeVlksFmF5gK5sYhmqFUq31aCd8pQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyOnkaC5LKPUh6pWgP92/LNMGj3mx0olqkoGcuP5audBmx9Z7ed
	s2c3ShtlbPPM3ptq+D7H9W32KW/8D3Bkzlk84awHsnHy0C6LBqBHhOFSFzitHw==
X-Gm-Gg: ASbGncs7QFP3isQEvn7nzPd9ZWHynClb1JNlumoqyVk1N0E0xM7h6Ffgy6vhlJZuC4l
	CmwmCa2omG/7o+iLvhqB3Sm7o2vKjmZxZzLQa+tFOO4X70GenTngiLK7LtJQO2+7jGxlhg5DVcb
	MGr20eOi9TX0tX9xkGDjLt5dECGHsA/LHGINXvqgi0ALRtHFaVTbYTTLSqhP8kiF7nu3UkcmHhO
	F33G+TB0tPt8MIIeBoQXn/dHedp3v5YK7VkNT+1MLOBgn67Pk6QltilZB23
X-Google-Smtp-Source: AGHT+IFGZO6YwIydzhnaKn6anetOGg2+48yG+FxdkhfkcKfSo66F6npaVl3d/51tMhwslnENrkjuQA==
X-Received: by 2002:a17:902:fc4f:b0:20c:9821:69af with SMTP id d9443c01a7336-2129f797977mr204224095ad.45.1732625783658;
        Tue, 26 Nov 2024 04:56:23 -0800 (PST)
Received: from thinkpad ([120.60.136.64])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129dc2210dsm83601765ad.245.2024.11.26.04.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 04:56:23 -0800 (PST)
Date: Tue, 26 Nov 2024 18:26:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650: Add 'global' interrupt to
 the PCIe RC nodes
Message-ID: <20241126125618.v7spvqvm4cdqpa5g@thinkpad>
References: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
 <20241126-topic-sm8x50-pcie-global-irq-v1-3-4049cfccd073@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126-topic-sm8x50-pcie-global-irq-v1-3-4049cfccd073@linaro.org>

On Tue, Nov 26, 2024 at 11:22:51AM +0100, Neil Armstrong wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPUs. This interrupt can be used by the device driver to
> identify events such as PCIe link specific events, safety events, etc...
> 
> Hence, add it to the PCIe RC node along with the existing MSI interrupts.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 01ac3769ffa62ffb83c5c51878e2823e1982eb67..f394fadf11f9ac1f781d31f514946bd5060fa56f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2233,7 +2233,8 @@ pcie0: pcie@1c00000 {
>  				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "msi0",
>  					  "msi1",
>  					  "msi2",
> @@ -2241,7 +2242,8 @@ pcie0: pcie@1c00000 {
>  					  "msi4",
>  					  "msi5",
>  					  "msi6",
> -					  "msi7";
> +					  "msi7",
> +					  "global";
>  
>  			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>  				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> @@ -2365,7 +2367,8 @@ pcie1: pcie@1c08000 {
>  				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "msi0",
>  					  "msi1",
>  					  "msi2",
> @@ -2373,7 +2376,8 @@ pcie1: pcie@1c08000 {
>  					  "msi4",
>  					  "msi5",
>  					  "msi6",
> -					  "msi7";
> +					  "msi7",
> +					  "global";
>  
>  			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
>  				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

