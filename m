Return-Path: <devicetree+bounces-66589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D0D8C3D91
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 10:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99867280E21
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 08:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F812148300;
	Mon, 13 May 2024 08:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="dqJr2p+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBB81482F2
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 08:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715590314; cv=none; b=cTBmqVHiuLo90jT1dCG3djM3jKOVY8Ge2fCG64svyFpMDr5JprXiJnLxvXIAJldlbNplNt6oBlkdQXckdVAp38Y+FJcAH5vCcD4nUYlJmCuXTr6LHtrLOiA4exW9KFeHW6XIJaoStgfKZAUIwLNmptTOteIWLEvhbCEFG+WT10g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715590314; c=relaxed/simple;
	bh=z5Z7uapwXbkUbxpFVy5XmE1gJYtNsO0d2cLn0Xvvnvc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=faIt/HMpwQlVtZkRl9sIMmwC4R7HfrT2m/FOiL/D9YVLNGx4dzuVyBHgK44/7vSfC0R6iHB2vi932NM0Iyf57yqnrq89qHlMisCjezkc/hT2JaTsAQ2Vxn/63waJQPB+WToGv06Q7P7Q99kqNHk1Odm49lZYwdZ1Rmw0AJDKnOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=dqJr2p+b; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-41ffad242c8so17473125e9.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 01:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715590311; x=1716195111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mq/uD1dC/7z1I5LAURM1IjfFE6NOjVkUpk7Uo6+ZcRo=;
        b=dqJr2p+bluAmqCplD4r+hncW2Zi2MUeunOjo4OZ9wJiUDuzpsZw6a55wjHAfv6KCOU
         TR7Abesjfg7HaBUZg2SnOCCo7ivMXkuhXpHpE7pTCZ06LPKC6gbgwXeMR0yb78ebQC1u
         gyAqre8LvvK93dXyRNlkqSOkMjg4FAF4FdOovNi17tXFofFq6LFwwqAqa+8qSOgdBHIv
         lv7RCCSMvObQi8M7Q92KGEXWTQ/ipA4Me0L7m3Cdg9rbAIiyH9Og+oWYespVt6bvJLw2
         PO78rYZwpll2fKEMXxRT5q0BA4Ui9XOW5O/TGbVeiiB6xC0EqWGOf69DvCZi5/ecA8Ho
         g3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715590311; x=1716195111;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mq/uD1dC/7z1I5LAURM1IjfFE6NOjVkUpk7Uo6+ZcRo=;
        b=CkLofbeDW2qbhxvvmOPawqLefpJP/u8AYQ1WHJmyqjUfBLYDyPr7+/17EWk5QJ5lK6
         5xvaKKd9TkLMoT9nhgiFuJgAmHREvLKg9Bu82DwMXkw66w8tYzRKcckQUkiSYV11xyZq
         E4/T/HpsdqaGTNiGPGJD/h/sPGCd+gt+HU4SjIGn7zCaVkGs9PAykcXasMfFpGfkpemf
         ITTsMco40xYE1qV7L0K6Gdim37f3AL4ZxE8xoMRYKhL/vTDtKNmiKET4WyHpm1LMWX60
         8hJvxNmneP4dZQCADCo/tPZxLMUGoT3rbrbOzIWVct2tWG7ewMmWk/n9rTjIDMBo580U
         AuBw==
X-Forwarded-Encrypted: i=1; AJvYcCVYL7pflHJPTHwuyAPB+dXeX1QhETtHKB65ja+eheTvsiCBNPx5T4GqfJfv++op9KaQe3R7OjR4wFB6kpfA537wH/v3+lCJwnENIQ==
X-Gm-Message-State: AOJu0Yw8a+Ev9viRSTzxWvV7XO4QZwdk19GiX3quC5Luwt0v20p83BWJ
	xr+nBf49CihahNGSFREUdzZlSusVjNS/vOlUy14Bo6hGoZl6LYVdpqedlguC8CI=
X-Google-Smtp-Source: AGHT+IF1vjY/l97xX+3YM2pxVOc0i8Y8BHs5vGidJPHg2uTeTLpKgj60714olHOATJCWNs1sv+58Sw==
X-Received: by 2002:a05:600c:4fcd:b0:41b:9e4f:d2b2 with SMTP id 5b1f17b1804b1-41fea931aaamr95401755e9.2.1715590310656;
        Mon, 13 May 2024 01:51:50 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4201088fe8csm68995455e9.32.2024.05.13.01.51.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 01:51:50 -0700 (PDT)
Message-ID: <e187c5ab-0241-4a45-8d74-a33ec12deec6@freebox.fr>
Date: Mon, 13 May 2024 10:51:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: msm8998: add venus node
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
 <c2fca6c7-2421-42b4-a43d-68b251daf9b4@freebox.fr>
Content-Language: en-US
In-Reply-To: <c2fca6c7-2421-42b4-a43d-68b251daf9b4@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/05/2024 11:29, Marc Gonzalez wrote:

> From: Pierre-Hugues Husson <phhusson@freebox.fr>
> 
> Now that the venus clocks are fixed, we can add the DT node.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index 5f5b90a6e2bf1..3d3b1f61c0690 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -3010,6 +3010,54 @@ mdss_dsi1_phy: phy@c996400 {
>  			};
>  		};
>  
> +		venus: video-codec@cc00000 {
> +			compatible = "qcom,msm8998-venus";
> +			reg = <0x0cc00000 0xff000>;
> +			interrupts = <GIC_SPI 287 IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&mmcc VIDEO_TOP_GDSC>;
> +			clocks = <&mmcc VIDEO_CORE_CLK>,
> +				 <&mmcc VIDEO_AHB_CLK>,
> +				 <&mmcc VIDEO_AXI_CLK>,
> +				 <&mmcc VIDEO_MAXI_CLK>;
> +			clock-names = "core", "iface", "bus", "mbus";
> +			iommus = <&mmss_smmu 0x400>,
> +				 <&mmss_smmu 0x401>,
> +				 <&mmss_smmu 0x40a>,
> +				 <&mmss_smmu 0x407>,
> +				 <&mmss_smmu 0x40e>,
> +				 <&mmss_smmu 0x40f>,
> +				 <&mmss_smmu 0x408>,
> +				 <&mmss_smmu 0x409>,
> +				 <&mmss_smmu 0x40b>,
> +				 <&mmss_smmu 0x40c>,
> +				 <&mmss_smmu 0x40d>,
> +				 <&mmss_smmu 0x410>,
> +				 <&mmss_smmu 0x421>,
> +				 <&mmss_smmu 0x428>,
> +				 <&mmss_smmu 0x429>,
> +				 <&mmss_smmu 0x42b>,
> +				 <&mmss_smmu 0x42c>,
> +				 <&mmss_smmu 0x42d>,
> +				 <&mmss_smmu 0x411>,
> +				 <&mmss_smmu 0x431>;
> +			memory-region = <&venus_mem>;
> +			status = "disabled";
> +
> +			video-decoder {
> +				compatible = "venus-decoder";
> +				clocks = <&mmcc VIDEO_SUBCORE0_CLK>;
> +				clock-names = "core";
> +				power-domains = <&mmcc VIDEO_SUBCORE0_GDSC>;
> +			};
> +
> +			video-encoder {
> +				compatible = "venus-encoder";
> +				clocks = <&mmcc VIDEO_SUBCORE1_CLK>;
> +				clock-names = "core";
> +				power-domains = <&mmcc VIDEO_SUBCORE1_GDSC>;
> +			};
> +		};
> +
>  		mmss_smmu: iommu@cd00000 {
>  			compatible = "qcom,msm8998-smmu-v2", "qcom,smmu-v2";
>  			reg = <0x0cd00000 0x40000>;

Hello Bjorn,

This patch is supposed to be merged through one of your trees, right?

Regards


