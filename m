Return-Path: <devicetree+bounces-46007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C83867B87
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 17:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E10E8B30084
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6165812BEAF;
	Mon, 26 Feb 2024 15:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HdzRKzUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66D412B140
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 15:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708962104; cv=none; b=AwNC2BRq0sd2+P11vP+udxhfqHZB/SseW0cQw4IsWXVN3tfmV7kFonIPOY3998k96XDtBX3M5XsAxdjR6Dde5UI088M3LDIJCkca81/bmW4XSK1mES80LIYPAoSlW5ZGLfMEPktbNIVAQQsCNDfPQ3BX5HpsYtwRuM8eVdkuJpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708962104; c=relaxed/simple;
	bh=ROfZL+8h3faUigYCfFD1t/VZMW/wKSl1v3AwMMgB+iY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qsW0aI4rA3iKXGtUKplGVe+GE/SaKDBUCpDgG8W8PDWPyjFrqul0ggA4fThs8P3JcBTw+nXst4NRTZGQDIK9DduhYcOV9bj8Q2tX3B0q1DTVaUXSgY4yjr0kwCvBCEAEkknRSPjeVGH03mq9ilBWc+3uVJbqqigbUHFj6BIQ6QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HdzRKzUT; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5ce2aada130so2923593a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 07:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708962101; x=1709566901; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zqorEYJP95Qb8X25T5MHrt2/iyFyV6PT4PckHw2t2nA=;
        b=HdzRKzUTRsyKnH+I97qyXKvLRBzIkq5BpbpQNM57PmgMk3/LeJU+SWCvvgcG93YsSn
         KI8JVnlSfCTbwjCln2cG5mc3SvT9SlNvOPB7lZLxbegf2eU69C4YIncSQxa9Go0HjW3z
         AbwYbTpDTyPxEZueZ8hCG1L1arL/yEBSLuS9gPRISpjD5yFd0mJFYRbKPAl12KoLr0S8
         M8mR76/J1W5/h3ypHspLD2FY/V2GtlyYZKjN/Y3ByC2lk5mHZhN7TrK/SUazS58FJEEB
         qy+yqwcNdTCNQwUMYECM4EFxjIM2BFM7GI898qlHyXFbQ3o6P4xNg0e6318HHWpX/ZsS
         NHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708962101; x=1709566901;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqorEYJP95Qb8X25T5MHrt2/iyFyV6PT4PckHw2t2nA=;
        b=KVbecFq5EJQsznA+ETcLvo0MgjoAINKA0FXZGxp9m0RSjPnwoD8fTZEVsVbXNcrHdV
         uStAbdDKWifKiP5VBj8jWwSAWAq4rykLUbvHS20u1Wqis0cQgYAqzCO9dUC7ij5RbFUT
         tkhyHmEF9WNKRyQ1cdv/tcWjr29FQ54HZuVRr0jdVhEsf0+PLz5cvxiZ/CGvXN1DNvsK
         PpzwyJnBePApeYqW/r/ea3MJ30eX1xJajd98GyYQWKwFCngc9ZgMStHcDiMYiVLe9jdb
         QEdnj2Y3VUaV0fU3UKfbaMSUc9wY5KWtEYhXAxBJxmMDKWk+aZdJ8xAa741Kv/CKrhch
         CK+w==
X-Forwarded-Encrypted: i=1; AJvYcCXeLqSCOjBbgObzK9UCfvkKm22FezAw0AHDf5UZoPAy+Vh7kDbB/p+Gl/yFmDM5xOOmjLDe4JYKimEpqy4b7uk2mq8Kz7aOfTOdbw==
X-Gm-Message-State: AOJu0YxLXfqXTXLQ6W8YC+W+xjVHKtXGsLslhK27eg1BpaKKwMcK3nA6
	nNpfI+xWouC3vAbHz/+rXCmEEnOJSiHAxOZM0mf7/22GXUFTeMEe5xsnLTsMsA==
X-Google-Smtp-Source: AGHT+IEz5RGOjmGJm6K+8JAvLy1n3CFVFLZcKYWZ/CM3mfcFa3J1NmyxKtra4CQAUyHjYaen+sgS8A==
X-Received: by 2002:a05:6a21:3988:b0:1a0:e9ad:7f29 with SMTP id ad8-20020a056a21398800b001a0e9ad7f29mr6816478pzc.6.1708962101003;
        Mon, 26 Feb 2024 07:41:41 -0800 (PST)
Received: from thinkpad ([117.202.184.81])
        by smtp.gmail.com with ESMTPSA id v13-20020a17090a520d00b0029ab17eaa40sm3252777pjh.3.2024.02.26.07.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:41:40 -0800 (PST)
Date: Mon, 26 Feb 2024 21:11:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
	quic_vtanuku@quicinc.com, quic_cchiluve@quicinc.com
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7280: add slimbus DT node
Message-ID: <20240226154136.GH8422@thinkpad>
References: <20240219051455.25927-1-quic_vdadhani@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240219051455.25927-1-quic_vdadhani@quicinc.com>

On Mon, Feb 19, 2024 at 10:44:55AM +0530, Viken Dadhaniya wrote:
> Populate the DTSI node for slimbus instance to be
> used by bluetooth FM audio case.
> 

Just curious, where is the patch to enable bluetooth FM?

> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
> v3 -> v4:
> - Correct email address for linux-arm-msm.
> 
> v2 -> v3:
> - Fix patch title by adding "PATCH" string.
> - Update commit log.
> 
> v1 -> v2:
> - change 0x0 -> 0 to reg property.
> - reorder the DT property.
> - change node tag slim_msm to slim.
> ---
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 581818676a4c..1d6afde915aa 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2672,6 +2672,31 @@
>  			status = "disabled";
>  		};
>  
> +		slimbam: dma-controller@3a84000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0 0x03a84000 0 0x20000>;
> +			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,controlled-remotely;
> +			num-channels  = <31>;
> +			qcom,ee = <1>;
> +			qcom,num-ees = <2>;
> +			iommus = <&apps_smmu 0x1826 0x0>;
> +			status = "disabled";
> +		};
> +
> +		slim: slim-ngd@3ac0000 {
> +			compatible = "qcom,slim-ngd-v1.5.0";
> +			reg = <0 0x03ac0000 0 0x2c000>;
> +			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
> +			dmas = <&slimbam 3>, <&slimbam 4>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x1826 0x0>;

Does both nodes need IOMMU translation with same SID? This hints that only one
needed.

- Mani

> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		lpass_hm: clock-controller@3c00000 {
>  			compatible = "qcom,sc7280-lpasshm";
>  			reg = <0 0x03c00000 0 0x28>;
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member 
> of Code Aurora Forum, hosted by The Linux Foundation
> 

-- 
மணிவண்ணன் சதாசிவம்

