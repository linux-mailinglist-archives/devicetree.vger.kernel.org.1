Return-Path: <devicetree+bounces-32304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B082582EE9F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 13:00:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF8CD1C22E92
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68DF01B96F;
	Tue, 16 Jan 2024 12:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wuDGRZwC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CD41B944
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 12:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e7dd8bce8so11753134e87.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406407; x=1706011207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Wev8/+JRwMgshjlE6OA248QtJUcrnDfEQAw9G9glt4=;
        b=wuDGRZwCaOjiLTlWozSgUpoRxBdZfw22TJp3Fb6RYgOxZGvT2QZO10nl6uZSUcWx62
         BtDFU2m6gPoSjJ7MPUnccJAVcYI5aqyLXqVAO9OAAdH3zJ1abkt6CCnrcC6Q0NEz79zO
         GUA9651QrtLh4VMBcH9HUDUTrlTrs7tQC+UWNOjkbnfwt+rcjpgntxMbBdmmTByAJjD5
         NMZb3aSjrYcsEn0fWevDNQ8TlDqeL3jcZYhpRqVOf6NkojoXWNCpzzOrEvnarzIPeX4s
         +/ImilVI7jSFDAhJIs74sijhdDCzsUQcTlsqgtsfDtqkVkN0pK0Arap/L1OhR6UyZXy8
         GHOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406407; x=1706011207;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Wev8/+JRwMgshjlE6OA248QtJUcrnDfEQAw9G9glt4=;
        b=BprBW36hXlZoMeulXhgmJ01EUGCSDqWWb8xhx3a3nn4c7UR3WxSkgQRkbnLFHcp/z7
         TR1ONbBY9Uva2dxGO84AMQ2wpQSqBzgYL41Igt+80MGZ2YWtl1OYnNKSFLFiA7F24Z/y
         eh9qGHYq9TGMvc9kEigkXSejHZQOWqDmE528P3fCxQVZGs2KS20lIZQr9L31PCGDV27N
         cgG56zsUuxcd7f4HGxeP0+OcZGci6oTssPlru2DlUvrsbIrfmcvhCSlAEAUabvRDd4+F
         j2tUZopnwU5V9GFYEiqxCOMu+6D/xA2chthaxQ/Q3iEHve4tHr21j95vhMSWaPERvSbe
         lN3g==
X-Gm-Message-State: AOJu0YyJVcOzWDEaK5EKJpeL/t8MgFvww8jA+In/GxjRk16wbNhUhUkc
	FWWXFadPFokafM5+YZSsTCfiOYG4WiENUg==
X-Google-Smtp-Source: AGHT+IGfc6+yVYgBAet9fiwwSrpIoLDwtTHC0NEVx2i+LqboNZyB4n5xocQOM/TgazP+gwt7vgS4Mw==
X-Received: by 2002:a05:6512:39d2:b0:50e:7b01:70df with SMTP id k18-20020a05651239d200b0050e7b0170dfmr4282250lfu.72.1705406406987;
        Tue, 16 Jan 2024 04:00:06 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512092300b0050e7a2be0f8sm1724362lft.191.2024.01.16.04.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 04:00:06 -0800 (PST)
Message-ID: <7c86a91f-0339-4100-81a7-55f95cfcc18e@linaro.org>
Date: Tue, 16 Jan 2024 13:00:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP register
 for USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/16/24 02:08, Dmitry Baryshkov wrote:
> The USB3 PHY on the QCM2290 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 0911fb08ed63..68b52e8faba5 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -442,6 +442,11 @@ tcsr_mutex: hwlock@340000 {
>   			#hwlock-cells = <1>;
>   		};
>   
> +		tcsr_regs_1: syscon@360000 {
> +			compatible = "qcom,qcm2290-tcsr", "syscon";
> +			reg = <0x0 0x00360000 0x0 0x20000>;
> +		};
> +
>   		tlmm: pinctrl@500000 {
>   			compatible = "qcom,qcm2290-tlmm";
>   			reg = <0x0 0x00500000 0x0 0x300000>;
> @@ -690,6 +695,8 @@ usb_qmpphy: phy@1615000 {
>   
>   			#phy-cells = <0>;
>   
> +			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;

This also leaks outside the syscon space.

Konrad

