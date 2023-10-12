Return-Path: <devicetree+bounces-8228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8507C7396
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B9E81C20A61
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7196B30D07;
	Thu, 12 Oct 2023 16:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IY2BCzNq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2F5200AE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:59:55 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E946CB7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:59:53 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-53df747cfe5so2246487a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697129992; x=1697734792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pJa6qviOc6NfzgcGhr4/+c108cgp9z9RgjqREJMTdj0=;
        b=IY2BCzNqXfCcIAGU9WRWO08GgaNnvaSyI5DSjLBfzxr0fcTQ2xLNxyhdgrRJuV44aN
         4UJ4fmukpO8gztRMcp3F5SMoNO9BgJlXqY3LRCfyCf/3IMP1UyYFcassG9uVkb2ifrNM
         pnGVzncsS2rK+ozKa67udn1ReVYj0L3rxAu3mXLmb6bf/2G0UUinHX/oBoFUdfRXZZG9
         h/1UfXxlTw6Je2F5vmGREQ6PRXrq4meqi7dZVQcXKvs1Lna3ICo2Qo4tk2lSNHANeGBa
         T3GpSe7MqrLMfGFheLEGb4n+FNSlLtjko0FkSgNXIspKfl+SQiXkXd6a4Wmx+AS6zFk4
         /oQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697129992; x=1697734792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pJa6qviOc6NfzgcGhr4/+c108cgp9z9RgjqREJMTdj0=;
        b=nB8tG2e7E0ffRdvlltjd46DwST0s9iWrepYCsatkm68OfXOg9Ylh6Z1TzQGFS88Kdk
         RpKJQgj3dpbqPDm5hl+68BnsPu4SVkzXiK3ARNoK7XkQA4lTcEz9x7CJ1KOyMUPQ1NeX
         iJIDwdWHlbxAwVsbFvvtSJipK32pi/RU0bi2XX+LwTYd6yuYXsl2im/88dyGi/IjDCBZ
         wPBP+5934MbauQQ3QQpdasNu+3iDIUj5I4ZQYJuVKLsBW1nbeeqzHQSJPouEthKpWQRI
         B2wPXsnxbHrez21741MMZ6lNiK3RO/da5MT5UfgAZZBaYdeftdXCvzSf3o5DhLKXbcNA
         ROLA==
X-Gm-Message-State: AOJu0Yw161oFcjcNAqx9odxbJdH3zYx+j1A2l4NRT06bW1cSHGtkwp6g
	8VFGqgC+ezN5XYicQC6HNKv6TA==
X-Google-Smtp-Source: AGHT+IEuPBo53ttTwjsowx5rW5/ddy4SAjK+lkxugYZUqKOgBzbExw2Vk+lqy5i94nS17dqL4kq5Nw==
X-Received: by 2002:a50:9f4b:0:b0:53d:a1c0:410e with SMTP id b69-20020a509f4b000000b0053da1c0410emr7604135edf.7.1697129992402;
        Thu, 12 Oct 2023 09:59:52 -0700 (PDT)
Received: from [172.30.204.175] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id bf14-20020a0564021a4e00b005362bcc089csm10152630edb.67.2023.10.12.09.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 09:59:52 -0700 (PDT)
Message-ID: <fe4da875-36d4-4eeb-ba83-8c24899c9097@linaro.org>
Date: Thu, 12 Oct 2023 18:59:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: Add interconnect nodes for SDX75
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1696406908-9688-1-git-send-email-quic_rohiagar@quicinc.com>
 <1696406908-9688-2-git-send-email-quic_rohiagar@quicinc.com>
 <3a042a26-81b4-4ab3-ba03-a38ae876634b@linaro.org>
 <6da8dc86-0b9a-488f-9046-9d9d269beeaf@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6da8dc86-0b9a-488f-9046-9d9d269beeaf@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/12/23 18:57, Rohit Agarwal wrote:
> 
> On 10/12/2023 10:18 PM, Konrad Dybcio wrote:
>>
>>
>> On 10/4/23 10:08, Rohit Agarwal wrote:
>>> Add interconnect nodes to support interconnects on SDX75.
>>> Also parallely add the interconnect property for UART required
>>> so that the bootup to shell does not break with interconnects
>>> in place.
>>>
>>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sdx75.dtsi | 52 
>>> +++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 52 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi 
>>> b/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> index e180aa4..b4723fa 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
>>> @@ -8,6 +8,8 @@
>>>     #include <dt-bindings/clock/qcom,rpmh.h>
>>>   #include <dt-bindings/clock/qcom,sdx75-gcc.h>
>>> +#include <dt-bindings/interconnect/qcom,icc.h>
>>> +#include <dt-bindings/interconnect/qcom,sdx75.h>
>>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>   #include <dt-bindings/power/qcom,rpmhpd.h>
>>>   #include <dt-bindings/power/qcom-rpmpd.h>
>>> @@ -203,6 +205,19 @@
>>>           };
>>>       };
>>>   +    clk_virt: interconnect-0 {
>>> +        compatible = "qcom,sdx75-clk-virt";
>>> +        #interconnect-cells = <2>;
>>> +        qcom,bcm-voters = <&apps_bcm_voter>;
>>> +        clocks = <&rpmhcc RPMH_QPIC_CLK>;
>>> +    };
>>> +
>>> +    mc_virt: interconnect-1 {
>>> +        compatible = "qcom,sdx75-mc-virt";
>>> +        #interconnect-cells = <2>;
>>> +        qcom,bcm-voters = <&apps_bcm_voter>;
>>> +    };
>>> +
>>>       memory@80000000 {
>>>           device_type = "memory";
>>>           reg = <0x0 0x80000000 0x0 0x0>;
>>> @@ -434,6 +449,9 @@
>>>               clock-names = "m-ahb",
>>>                         "s-ahb";
>>>               iommus = <&apps_smmu 0xe3 0x0>;
>>> +            interconnects = <&clk_virt MASTER_QUP_CORE_0 
>>> QCOM_ICC_TAG_ALWAYS
>>> +                     &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>;
>>> +            interconnect-names = "qup-core";
>> No qup-config?
>>
>> My brain compiler says this would cause a dt checker warning, at least 
>> on next-20231012.
> If I check the tip, then there is only one interconnect entry.
> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/soc/qcom/qcom%2Cgeni-se.yaml#L50
> For the debug uart, the qup-config is added.
> I did check the dtbs_check before sending these patches.
> Please let me know if I am missing anything.
Oh, my brain compiler was correct, but for the wrong input data :)

I thought you added this property to the UART itself, not to the QUP 
controller. Yes, you're right.

Konrad

