Return-Path: <devicetree+bounces-5055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CD47B4FA2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4F213B20ABE
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBD2D2E8;
	Mon,  2 Oct 2023 09:56:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DC7C2EB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:56:10 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C36CA7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:56:07 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5045cb9c091so18818946e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696240566; x=1696845366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VI6ALURCYFTZzB2n0KbkvH0CnC/yIlDD9PmeGJooHMM=;
        b=kMWAElZ1iknV5CgzRu9hpyJO+jTSMH8408YtG+t/fVy0KnKWByRIG4+FGr0D/tX3y/
         SrBBcw+9CDWoOdXLv0oNnwy66IrlnssODrwmw7THAEbNXzuij75V/YuKG2n4tJYmGofh
         QR3lbWWcIAmv9tPkPlDazuqRTyeLyIEy5XbNWxKTqfLb3hTv7rBpZq+OFuTeN+ofQgKf
         764B7Qx+N5XGFwLLGhz3w43c0GUVVeliiGdqoKbm5GI4byHCrtqA195up+IGWv1+/7kB
         +0+PwNpi/+OVfExZhmRnGZnFJjBxdvsLmiiHqrfqSeB/Cx6BJ4hLGoD20AYNY3mkNa68
         9yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696240566; x=1696845366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VI6ALURCYFTZzB2n0KbkvH0CnC/yIlDD9PmeGJooHMM=;
        b=FH4KHBlvC+eCeC+8vgp1FIITCkwvRXyqUCCoaVJzlfvQSF1oINB0XP98pNId30tQgi
         EQxfpmDIwRWDyU9uV6E82AuBTZyxvCC96LGZa29A2fwgrgqj9oo9s6+V5A86yyc+Uc5H
         mzXywniFTwuUU7ngiBh69+b115eDINeVKzc/zPZ8aGtTK+L96+eawBc6nkVQ/fqVD0sh
         bsdtJp9MJ+PC3DBCEqxzZTM81nHCxpgH3ZPx2vacmtEx0zabjqw3XJoJ+qzMKCjAcPb4
         puOX5hJnzD+Z6OHYLnAiicOH9GNxMlPzRNLIQFuZHUKGOXcyYAQGCe4v4szGN6NR01qV
         CqHA==
X-Gm-Message-State: AOJu0YytlvudTVCR4jUCqrekC0HowHnk+9A+TdgpSfxQn1rMLBEcVm5x
	MbalOHBVMqiHxfN7ZFLBGcs5XQ==
X-Google-Smtp-Source: AGHT+IEyPY2VWrXaKI4eQ9fWZwqFimDpZkQ+STvWpRTjmOVGlI4ZzlEncK2E1RdAljpCJEvp4OTGQw==
X-Received: by 2002:a05:6512:485b:b0:503:3707:66ed with SMTP id ep27-20020a056512485b00b00503370766edmr8580902lfb.34.1696240565714;
        Mon, 02 Oct 2023 02:56:05 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f8-20020ac25328000000b004fe37339f8esm4687715lfh.149.2023.10.02.02.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:56:05 -0700 (PDT)
Message-ID: <36e790a6-a9e8-bca9-226c-48339fefffb1@linaro.org>
Date: Mon, 2 Oct 2023 11:56:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 5/5] arm64: boot: dts: qcom: sc8280xp: Add in CAMCC for
 sc8280xp
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jonathan@marek.ca, quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230930134114.1816590-1-bryan.odonoghue@linaro.org>
 <20230930134114.1816590-6-bryan.odonoghue@linaro.org>
 <449cd202-a7d8-4d20-3a41-17a3ba1355cb@linaro.org>
 <ec28c662-8065-4bfc-bd5e-af0b9f3e87ac@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ec28c662-8065-4bfc-bd5e-af0b9f3e87ac@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/1/23 01:01, Bryan O'Donoghue wrote:
> On 30/09/2023 17:41, Konrad Dybcio wrote:
>>
>>
>> On 9/30/23 15:41, Bryan O'Donoghue wrote:
>>> Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
>>> similar to most of the sdmX, smX and now scX controllers.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 16 ++++++++++++++++
>>>   1 file changed, 16 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi 
>>> b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> index cad59af7ccef..ca43d038578b 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> @@ -8,6 +8,7 @@
>>>   #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
>>>   #include <dt-bindings/clock/qcom,gpucc-sc8280xp.h>
>>>   #include <dt-bindings/clock/qcom,rpmh.h>
>>> +#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
>>>   #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
>>>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>>>   #include <dt-bindings/interconnect/qcom,sc8280xp.h>
>>> @@ -3450,6 +3451,21 @@ usb_1_role_switch: endpoint {
>>>               };
>>>           };
>>> +        camcc: clock-controller@ad00000 {
>>> +            compatible = "qcom,sc8280xp-camcc";
>>> +            reg = <0 0x0ad00000 0 0x20000>;
>>> +            clocks = <&gcc GCC_CAMERA_AHB_CLK>,
>>> +                 <&rpmhcc RPMH_CXO_CLK>,
>>> +                 <&rpmhcc RPMH_CXO_CLK_A>,
>>> +                 <&sleep_clk>;
>>> +            clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", 
>>> "sleep_clk";
>> clock-names is now redundant :)
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> Konrad
> 
> BTW.
> 
> Looking at the block diagram for the Camera, I see why Cam_CC_AHB is 
> included in this list. Its not called out as a dependency in the clock 
> tree but when you look at the block diagram you can see it gates the AHB 
> bus to the CAM_CC block.
Yep, that's why using is as pm_clk for the clock controller makes sense

Konrad

