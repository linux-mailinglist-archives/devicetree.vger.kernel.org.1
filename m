Return-Path: <devicetree+bounces-29447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A644822EEA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C13182859D9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C572D19BB2;
	Wed,  3 Jan 2024 13:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vd1kB+fw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A74A19BCC
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50e766937ddso8476504e87.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704289806; x=1704894606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f1dvuFHKe4j17EX4txcAT9Lw2KXFp4kBJ6tMYnn9PJw=;
        b=Vd1kB+fwqMnU3QXvnkHQmAtVz/PSr+7wtqZzL/Dv/Ne7RNPqVhQzCbe3hZWdKMur5B
         CkuK0dR03IJ9NcdO1SNPGZ89tu6gIWAiCIR99glpAY1VUyKfPNheqcEDrh5G63YG0/yE
         1L9QZwnaTWu3lyVg+9sbJ2RG+XT8Z0/GdBEriayY4gx8TWK1a7s1MnovjDSBuBidYWmp
         xI7kyQ9SHQEWBqCsy/aBQRXERzDalaHfo9P7c0uFQFbXcLmHvVV5wBf+RhdkKXiyAStC
         EmBqguRzUszOVbWUUXnq7VePiG1MP0LrA21l+V5eY4yDbupjYdHN1MrxQHG0lhAo+O8+
         ObvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704289806; x=1704894606;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f1dvuFHKe4j17EX4txcAT9Lw2KXFp4kBJ6tMYnn9PJw=;
        b=ALltntayn+cJysAMPza0+XNvxiOKfsgl7oxloaAyAm8be3OREipGNtPtxibMrJ+ZwL
         iTM5zsBHhCtuTJkanjtSrefGqNCH/FXiXHathEFfBKIt9iltmNL5Bp3twqI0FbkLzr0l
         U+9P0LGRkXUI/YflXs7bgEo/59uqejT0SF7SEDmZFTVG9o9F2nj94LsXt+Q0VHKbtaNp
         yd3As/yl0w97YSM7THOf1aROezfmrz14GwQCTEOeMDNGZw3DPVqWPSUiupFPlaoCjsvz
         89yw6U/einfhEyZbG1qg5ckl5o5YlO0opw5Xmbbedv/tPbONF4/N+Je2clSjrm37x+iQ
         saHw==
X-Gm-Message-State: AOJu0YwUwMyuW6IWC+cn6RLJXZjxhUWv7EYfPgnvZn4zbBm5vWjDdCPW
	xqm6+zlscfYtCQpxQFv9skqr96qtuAPfcw==
X-Google-Smtp-Source: AGHT+IHKBy24cMcTBsmEGGMRYVASYXcuE3vV3BgZ0qtR4tJ+F1QDU88ZKxXyy7feuxWWsXnn+F85uw==
X-Received: by 2002:a05:6512:3451:b0:50b:ea8e:b42c with SMTP id j17-20020a056512345100b0050bea8eb42cmr7027914lfr.97.1704289806350;
        Wed, 03 Jan 2024 05:50:06 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id r9-20020aa7cb89000000b005550844cd1dsm11312288edt.30.2024.01.03.05.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jan 2024 05:50:06 -0800 (PST)
Message-ID: <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>
Date: Wed, 3 Jan 2024 14:50:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, quic_cang@quicinc.com
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
 <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
 <20231220083014.GB3544@thinkpad>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231220083014.GB3544@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.12.2023 09:30, Manivannan Sadhasivam wrote:
> On Wed, Dec 20, 2023 at 01:35:27AM +0100, Konrad Dybcio wrote:
>> On 18.12.2023 13:07, Manivannan Sadhasivam wrote:
>>> QMP PHY used in SC8280XP requires 3 clocks:
>>>
>>> * ref - 19.2MHz reference clock from RPMh
>>> * ref_aux - Auxiliary reference clock from GCC
>>> * qref - QREF clock from GCC
>>>
>>> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
>>>  1 file changed, 12 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> index cad59af7ccef..37344abbe8bf 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> @@ -2256,9 +2256,12 @@ ufs_mem_phy: phy@1d87000 {
>>>  			compatible = "qcom,sc8280xp-qmp-ufs-phy";
>>>  			reg = <0 0x01d87000 0 0x1000>;
>>>  
>>> -			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
>>> -				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
>>> -			clock-names = "ref", "ref_aux";
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>> +				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
>> GCC_UFS_REF_CLKREF_CLK
> 
> I'm not sure about this CLK. So I kept it as it is until I verify it.
I am quite sure everything *UFS_CARD_* refers to the other UFS host..

Konrad

