Return-Path: <devicetree+bounces-35329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C6783D0ED
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 00:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ED511F23AA6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F747134C6;
	Thu, 25 Jan 2024 23:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tIsiumNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767AD125BB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 23:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706226603; cv=none; b=ofBF+9rgu7wl4+wmrk1sLu4Cp3qnguEFN64m+bVRuGEF6GCe0x0M8xnqvF2iiO9LIU/fGjFzutjjiBOogfcbfTsmIo4DXr08UM1k/L/+yqFUpkMbD6xWC6nbr5mFLw84lR5ptfhEWgJpbj4RvDKQJe7Sr3p+tV+UWwjuQ+FJ0UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706226603; c=relaxed/simple;
	bh=zuALxgKBNdz+cz2IZmkcUCnj/b8C1xkO0iZjdzgUinY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ozYxMD7apD4Ug8Ucb/aXWIM5ot7iWByiQ2hBG1jZsqhXxHVgtzWEa4Ty6ymJKNQLbGPzDPIRwWrfdymTxw1IZdHKkpMc1a9/vd5dn/yZ5kODIxuYuaohch+5jPAfPzhrzAIMLnJresUMgO7itdGzIyg1cQRFY+wk35XEnljbWi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tIsiumNM; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50eac018059so10062779e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706226598; x=1706831398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=84suYuoX3RAYz2xiQa2wUmKN0Xu6H16i6mQrUX9bctU=;
        b=tIsiumNMfL0iUN8MvtCecFqU5qtshFGq0vlfx7W/OQ1xSpR/SYygjYTngiITZ5I7Vt
         Uokmv0T4uNOACKHf433uGzWy8k49sQB1avUmrJCmEBnadsrc/rmxPiUGJEwZw5d5v2c5
         Zlda83u4cRSXOx14AsXz5V5CZWTVZyziN9WsYV7Abn1Dy4zsoLAqeEgAlz9uFw6TXbu9
         V2OOHv0Hc0d6tcPTjhT3b2isGqBAdd1VZBYVUHjYtw/Tsf9Vq7Y4frJ7lwGBngV79ByW
         nWq97FBai64sQxiA0XMCss7I9sWikDtQmbv6TTMS1ygfjyqyXimtLOAVbgC78YHZhwkl
         Q66w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706226598; x=1706831398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=84suYuoX3RAYz2xiQa2wUmKN0Xu6H16i6mQrUX9bctU=;
        b=c8HCdhaVKoJYHKp61Khc2TDb8EHEs4t3ysOgantNLom1KkdSMBhAEAfx3CFKw6tLQp
         UNYEhCizjDzM/YlSaPJtTlIdVZDiLxIRACVv++U60I1l+jYeYSLyaDtFUf4pv8dydhdg
         15lXQU8qqh5Xj2/wxQsXR+kibVy1Yzgnb4tfiY8ZKqA4mO/WlddLAGI0t3/KM0OaKACN
         mwnvDlM9v/MnL0C8WeFItkOeB+hg9GxOtUfI0xkFuuLgvdAhvCs6iM4wWfA8Hhfx700o
         S5fYi/5wgsZSeiI5IRk72Ew0srr3bKBNom9a6LT88jFD+zCQxq0dPcFNTysaHqWJjQj0
         2/Mg==
X-Gm-Message-State: AOJu0YyDrPTBk5eej3jBWlDemEMH5k16mLLXXaLm62cl4y6OVTpfVvd1
	9XhFag1W6ih9q8M7U1BOpz43gYSl9TLArWwoUllJ0H2/R18u4W3bdhK/73jSEIo=
X-Google-Smtp-Source: AGHT+IGlZCfDWZKPWMU55TCy+VJ2zTqmY3SNUSR/poAl1Jl1Szh+xGqeR9Bx7VhdXjmN9sTmz8nYAg==
X-Received: by 2002:a05:6512:70:b0:50e:74e2:af58 with SMTP id i16-20020a056512007000b0050e74e2af58mr288823lfo.52.1706226598453;
        Thu, 25 Jan 2024 15:49:58 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a21-20020a195f55000000b005100af37fbcsm10614lfj.166.2024.01.25.15.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 15:49:57 -0800 (PST)
Message-ID: <a75d8b2f-a55a-4087-b039-60769678a480@linaro.org>
Date: Fri, 26 Jan 2024 00:49:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/2] arm64: dts: qcom: msm8953: Add GPU IOMMU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vladimir Lypak <vladimir.lypak@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240125-msm8953-gpu-v1-0-f6493a5951f3@z3ntu.xyz>
 <20240125-msm8953-gpu-v1-1-f6493a5951f3@z3ntu.xyz>
 <d576e655-5d00-44ff-9405-0fceaa2d3935@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <d576e655-5d00-44ff-9405-0fceaa2d3935@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 1/25/24 23:24, Dmitry Baryshkov wrote:
> On 25/01/2024 23:56, Luca Weiss wrote:
>> From: Vladimir Lypak <vladimir.lypak@gmail.com>
>>
>> Add the IOMMU used for the GPU on MSM8953.
>>
>> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
>> ---
>>   arch/arm64/boot/dts/qcom/msm8953.dtsi | 31 +++++++++++++++++++++++++++++++
>>   1 file changed, 31 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
>> index dcb5c98b793c..91d083871ab0 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
>> @@ -1046,6 +1046,37 @@ mdss_dsi1_phy: phy@1a96400 {
>>               };
>>           };
>> +        gpu_iommu: iommu@1c48000 {
> 
> Nit: most of the platforms use the adreno_smmu label. But maybe the msm-iommu vs arm-smmu makes difference here.

Not really :)

Please keep the labels unified
> 
> Nevertheless:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
>> +            compatible = "qcom,msm8953-iommu", "qcom,msm-iommu-v2";
>> +            ranges = <0 0x01c48000 0x8000>;
>> +
>> +            clocks = <&gcc GCC_OXILI_AHB_CLK>,
>> +                 <&gcc GCC_BIMC_GFX_CLK>;

And align these

Konrad

