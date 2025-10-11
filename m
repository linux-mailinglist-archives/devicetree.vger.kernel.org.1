Return-Path: <devicetree+bounces-225593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D975BCF429
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 13:12:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 872B33B01CB
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 11:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968AB266B66;
	Sat, 11 Oct 2025 11:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D1f/+Ssv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF69F261B96
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 11:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760181119; cv=none; b=EHvr/2w6l2mi7EuGm7NTDYI5SHwhNWYyRSfpMdFeEuK1WC9pMwBqkBqviQR+6+swLdT8LK/u95AcO99yX932+RERQ9w1578rQ0XzOhbhbiq9hxVUpCzde/THw6xHlzVAQ+IfY7ui07FkAf9t+OeJTgJwtC/YYbMhjdsY9rAAky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760181119; c=relaxed/simple;
	bh=VLNehFa+74G6ouliisMmWydo212BwNFmsaIJWfmT1OY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pi9ZczS4ihgnz1/K9Lu7sPmlh6YwKMxFAdEDXkmyT1dd2rIey4leVhIQ23RivdcZ6EcBKCl5JyO/7/nt4ZzmNNDG1rAA9CqY3zbqTFJW1TrlzRzaJV2AJ8OcnasUNShv9evd4qPUphlBYbxQ5XbiXrX1Q5yBP2KpV+WFhGok4kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D1f/+Ssv; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso2482103f8f.2
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 04:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760181111; x=1760785911; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BNDhaIuD7OLkGqc/qEfwOdLoM3WbuTz3vo+ZGfTaAzo=;
        b=D1f/+SsvcoGN/DOnJT9cNhyLHomqqSBs6nP58pFDgoUVJ90QwiGz4Fu9PymoEBxmYb
         dBICfJt4l5K03bYhpoBF43SiHUnbhWIxPEVmC6eEYQ/GGYSBSt2oz47uD9RyORj9MGty
         GrU5RnZWaPAOUJwzVK9v/6WbCl0zPInNx5GebblMjIv3Q+39U6OJFWBA0DTs49vxJF/c
         nwZBzsfIX/REvrgEZabdPRWzh8lQJTggXKYPm5UYxR3IYbnp2oZYMa4bLrD0uPd7NdDW
         F9ggExgc+GUK8JK4/JbNmojSm19FnewyzGMqPD9feT3r4Y79aILFGYAQG3bqtrbf8yl5
         RSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760181111; x=1760785911;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNDhaIuD7OLkGqc/qEfwOdLoM3WbuTz3vo+ZGfTaAzo=;
        b=s0IZoSUa/p4T1b4E1YD3nbvcuLQxNlmPbnYqAS81cIUACVJKyNtYTR7ogAB0q/oYjp
         zem7LG+p9HjoAu322UE+/uH8PpGjv+VgwHBaQtGG0UYcn1tibpbwzuMM8ecQtjn96+Cu
         uwy6brw1mGCPW4nsyGi12D9qWKz6bKuQqLjIrpU9mffb/bvwa+eEcE/LlfoAsgJLU7SG
         lMh68Y3ZkBhnIS/qEeXt/pKxxzbvii6wHCqNCo5Ljor7yiMrWh7uRmMOamb3Z9Eh+jfX
         qg0mmI04CeaXZSbJDLrSx/xD4zLKcZsuuFekgit3tWM9xQP6wUFWKwwZrcgLeEAW27XB
         UELw==
X-Forwarded-Encrypted: i=1; AJvYcCXCmqIwElJfc4aqilhM2rxgbKjMOTlqtSG0S4Q8P+W/vlJMKfcpRbM7lj2cxK5xyuSUOz/JFgaSI7Jp@vger.kernel.org
X-Gm-Message-State: AOJu0YyAL0JuJqh39vvaLHEO0XrRHFq8/qBjdju51uin9gPwRBS3pwG3
	q1IigAczpbGcK76lqkt8mKTJKX1lo83Jpn1yYuDSrSK8HNlzLZiHEmvwoPs1Kpd2lvU=
X-Gm-Gg: ASbGncuJ3//kHO328JSwgcuhwxibr7cSU6a1zqPYfrLBPQ1wBoOxKRS9dP+R566E8uJ
	CxCHe8nP4vdC1NBYKV+6fGdgUrBf7Ey7/bHPbA7pdCRUE+GXeD2qFYRKSY5flwSbcC7ICSDAloS
	TciHn74yHCMZakStAMRZNsVMVlxCkErrVOWI/3+NNKd40pXyjAOIZiT4nWRXm91GNQO4FHK5rMP
	azV9dmI8FgAizGnnVZMGkcd1svGf4KtqjjBlfw6UgGrHqqrAd2gBmhMDNhWV/9f8FbmACxrDjaa
	C5gijng3QEU9rz45sAmv4lPc0zjyhahPpayekQt7FXIHIyJnJeYgTwWJiPivDX9hO/UPjIDmPJ0
	wgmA9b9KJoKTzfQvKzRkab34FDFYQPhU5MVGHz5EcGjB8ulOEdA72
X-Google-Smtp-Source: AGHT+IG+Po5fydvrqlUM2RboMwUIiJXKPtq/u/N57XLVk2dGSAzVv03PCDsidqqc+aLMpsY6TSwuaQ==
X-Received: by 2002:a05:6000:603:b0:407:77f9:949e with SMTP id ffacd0b85a97d-42666ac7026mr9133286f8f.21.1760181110654;
        Sat, 11 Oct 2025 04:11:50 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce582b44sm8555148f8f.16.2025.10.11.04.11.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 04:11:49 -0700 (PDT)
Date: Sat, 11 Oct 2025 14:11:48 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
Message-ID: <odjto4fjqoi5ct33unring22s3p6vwnbrafyrcmrppwcdnm4zq@aabot4m6q2rm>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <3af57kktkwevbxkno4o54w3o2qajoco5x7dlj3ckepcutlzmdh@2bnqqxndbvf3>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3af57kktkwevbxkno4o54w3o2qajoco5x7dlj3ckepcutlzmdh@2bnqqxndbvf3>

On 25-10-11 14:06:44, Abel Vesa wrote:
> On 25-09-25 12:02:12, Pankaj Patil wrote:
> > From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > 
> > Add device tree support for QUPv3 serial engine protocols on Glymur.
> > Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
> > support of GPI DMA engines.
> > 
> > Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts |   43 +
> >  arch/arm64/boot/dts/qcom/glymur.dtsi    | 3041 +++++++++++++++++++++++++++++--
> >  2 files changed, 2936 insertions(+), 148 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index f1c5a0cb483670e9f8044e250950693b4a015479..8674465b22707207523caa8ad635d95a3396497a 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > @@ -707,6 +707,32 @@ gcc: clock-controller@100000 {
> >  			#power-domain-cells = <1>;
> >  		};
> >  
> > +		gpi_dma2: dma-controller@800000 {
> > +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
> > +			reg = <0 0x00800000 0 0x60000>;
> > +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
> > +			dma-channels = <16>;
> > +			dma-channel-mask = <0x3f>;
> > +			#dma-cells = <3>;
> > +			iommus = <&apps_smmu 0xd76 0x0>;
> > +			status = "ok";
> 
> s/ok/okay/
> 
> Everywhere actually.
> 

Actually no. Maybe drop entirely like Konrad already suggested.

But then everywhere else you do "ok" please replace with "okay",
otherwise dtbs_check complains.


