Return-Path: <devicetree+bounces-175964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E77BAB2789
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 11:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D5D77A2339
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 09:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F58C1C8613;
	Sun, 11 May 2025 09:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FnGTEvYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4A61898E9
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 09:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746957230; cv=none; b=jlI2uyGRVbjmccsGj8pe+0B8e8PZpBlX1ptSbKGy3pr67FJbd8jD8325hDx+GJYIk/mlvJ324BPfWFnDCP/F4y+oG9KgUlBwf3e/3uqnJEpN4nVu0We2RX9CkPjoQhUNw0z9z+TeBB1xGD/4UUzYLIwCqds0JBaK5eU9dD9Um+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746957230; c=relaxed/simple;
	bh=LZUKTqSRIzcTe3Oi+qurbGORduHQ3aDEWoEgQumaS/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mXn4m8kLIQsGabKK7sZK/pB88M/JreUMi3lp4J03rZGXkmbHCPYOSTiYbGAR5OAdwbin7FLU8aFDfji5/wq303XJB2D0zhpkHTYzZCGYn1iZLEUMwJwpp6296gm5Dlp2+5KiVOyKeN8GlskI9wiCV+AXppXyK/LxV2wSlDQLu2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FnGTEvYB; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-441d1ed82faso23879295e9.0
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 02:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746957226; x=1747562026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=svOIBgOqEfJz5rl1KUebw1DSPQLmx16oiBp9+Pj6aYI=;
        b=FnGTEvYBuQPrh6lZoo+7yjOEfmZXAOnlTG6rsaoRM4P5pLlpA5ojiAd8CCJeBQPGcU
         HmIBdOyBijm8yXQyE6vQGRL1eK/rK36zM7QvA2mmplueo62QbKex1OAtnE6sCTmKDmic
         Vb+k8Bi5MMYVpdWJJQTZlPg1N6KpwWTbFE1yKkTTDb5ooM0RkIJGbQGT2jbO0Pvgk+GW
         RyMflzzzzJ6WOLNwp/SWWyI7OcWVLmDxElYAO087eE18aUjJSc//ERu4sjndnwlY7Tc5
         cHVjAKcjyLovstlcFgJYU9ElhEkZ3sGXRjtYWsiYoMd5WB7YT5nEAUqm05HUrp/k+Oh6
         IS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746957226; x=1747562026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=svOIBgOqEfJz5rl1KUebw1DSPQLmx16oiBp9+Pj6aYI=;
        b=TYy/GRgwJLUX4MG9lUr1iDHBhJPhOVaT9Hf6Dk1BfAiIWSn4Tvq4NnHduriudHXWK8
         0cJWEtCI8W7xdA5BoaWEQYAn09QSsxZhJi7jzl9/dGw/z1N/d/LlOkmWbBFcnE5/BtAH
         JzXcOT4on/pdam0MGrZEghogQe29e0DiEA46jeSZjypa2IdYCfaxtj58KzbbCq3c4EmW
         hCHszVtMkHsfKyDQQniFIscTrKnkS44C1xmyjxxqiQbzlXoO/CgtDI456P3YW1+wDWhG
         uXK0Jtp4BAU3HcnpBRvm3BsGeihP1fpth25/XFdIsJSdbP1sr7bCmcyxYwM0+1Q3ZS1d
         PuFg==
X-Forwarded-Encrypted: i=1; AJvYcCXu9jemT5sz4WEntdNjlvQocb0bevosuJLh8NCMEKKp1MyCuW3sphwFkGWoyFMrI1wBhmX7frk6hCzI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2xhndLZ/No4F+wSd1JROLD1PBpX4I887IsYef+I7Fk27eMKa6
	+pFEKhn+VAuuozMhQ50Y8Vh1UwNu0zcSi5/FmulYqcHYx7IOWaOXkOWKMhX3id4=
X-Gm-Gg: ASbGncsT5/5We553tc0gQy0HYgR9P4VawrhGC6I3bIaqPeWHdTtLUMEUM6MNnVdDuAK
	nH0V6RNu13gWHWTPhM0XLk1jP/4f3TgdQy6S2nMI3duqCU9MYMMc6q0+o88OFpip+Yes4TOIhoZ
	XxW10+h6IIpGhmlW8RNhZn3JMwDgVfO3cjvjugyVliV+iEbr7X7N2hyJQZQRE4m+vFvOt/r6pwQ
	9yNhh3G+AfI81IYdG3Bb/Z+ke81NHuaU9hcSy2Xxja4+M9bKW3zU8fdc0c8SPfjKiDQgcQAMxX+
	5LHi58vN8BB72DftpjyOstX5zPWyACZNkcszS4rMtuC4ojMvQQL4s0ySkv5UdkbTPySFv5ylcDW
	Vzefx6EuOjb2Sw4Oo
X-Google-Smtp-Source: AGHT+IEaXwLtr3ulVMHDoKRGiNLV/K4UKtErrKqyimNqORo5mIpZHz11BKqYDHNoxO5NUXC77uulTA==
X-Received: by 2002:a05:600c:4e45:b0:43d:46de:b0eb with SMTP id 5b1f17b1804b1-442d6d44814mr82270705e9.12.1746957225872;
        Sun, 11 May 2025 02:53:45 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d687ae10sm87083295e9.37.2025.05.11.02.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 May 2025 02:53:44 -0700 (PDT)
Message-ID: <cfe66826-fe23-47c6-8292-74066f021330@linaro.org>
Date: Sun, 11 May 2025 10:53:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/WIP v2 4/9] arm64: dts: qcom: sa8775p: Add support for
 camss
To: Suresh Vankadara <quic_svankada@quicinc.com>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250427070135.884623-1-quic_vikramsa@quicinc.com>
 <20250427070135.884623-5-quic_vikramsa@quicinc.com>
 <cfc85bc0-1808-42ac-b0b0-41e4935ec74d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <cfc85bc0-1808-42ac-b0b0-41e4935ec74d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/05/2025 08:14, Suresh Vankadara wrote:
> 
> 
> On 4/27/2025 12:31 PM, Vikram Sharma wrote:
>> Add changes to support the camera subsystem on the SA8775P.
>>
>> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
>> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 187 ++++++++++++++++++++++++++
>>   1 file changed, 187 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/ 
>> dts/qcom/sa8775p.dtsi
>> index 5bd0c03476b1..81eadb2bb663 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -7,6 +7,7 @@
>>   #include <dt-bindings/interconnect/qcom,icc.h>
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>   #include <dt-bindings/clock/qcom,rpmh.h>
>> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
>>   #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>>   #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>>   #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>> @@ -3940,6 +3941,192 @@ videocc: clock-controller@abf0000 {
>>               #power-domain-cells = <1>;
>>           };
>> +        camss: isp@ac7a000 {
>> +            compatible = "qcom,sa8775p-camss";
> If more number of nodes are added for CAMSS, adding isp in compatible 
> string helps to differentiate.

We need to keep a consistent upstream schema.

If we were adding other hardware blocks - say the BPS it would just be 
appended to the end here, declared as another v4l2 device and then 
wired-together from user-space via likely a qcom specific libcamera 
pipeline.

> 
>> +            reg-names = "csid0",
>> +                    "csid1",
>> +                    "csid_lite0",
>> +                    "csid_lite1",
>> +                    "csid_lite2",
>> +                    "csid_lite3",
>> +                    "csid_lite4",
>> +                    "csid_wrapper",
> csid wrapper is top register set, which is applicable for both csid 0 
> and csid 1. It is logical to keep along with csid0 and csid1, instead of 
> alpha numerical order.

We've had it feels like an eternity of debates about this and 
compromised on alphanum sort of of node-names as the most consistent 
with prior art.

> 
>> +
>> +            clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
>> +                 <&camcc CAM_CC_CORE_AHB_CLK>,
>> +                 <&camcc CAM_CC_CPAS_AHB_CLK>,
>> +                 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
>> +                 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
>> +                 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
>> +                 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
>> +                 <&camcc CAM_CC_CSID_CLK>,
>> +                 <&camcc CAM_CC_CSIPHY0_CLK>,
>> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
>> +                 <&camcc CAM_CC_CSIPHY1_CLK>,
>> +                 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
>> +                 <&camcc CAM_CC_CSIPHY2_CLK>,
>> +                 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
>> +                 <&camcc CAM_CC_CSIPHY3_CLK>,
>> +                 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
>> +                 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
>> +                 <&gcc GCC_CAMERA_HF_AXI_CLK>,
>> +                 <&gcc GCC_CAMERA_SF_AXI_CLK>,
>> +                 <&camcc CAM_CC_ICP_AHB_CLK>,
>> +                 <&camcc CAM_CC_IFE_0_CLK>,
>> +                 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
>> +                 <&camcc CAM_CC_IFE_1_CLK>,
>> +                 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
>> +                 <&camcc CAM_CC_IFE_LITE_CLK>,
>> +                 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
>> +                 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
>> +                 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
>> +            clock-names = "camnoc_axi",
>> +                      "core_ahb",
>> +                      "cpas_ahb",
>> +                      "cpas_fast_ahb_clk",
>> +                      "cpas_ife_lite",
>> +                      "cpas_vfe0",
>> +                      "cpas_vfe1",
> Maintain consistency on vfe/ife in complete camss node. In reg section, 
> vfe is used for full and lite version. in clock-names section ife lite 
> and vfe are used. As clock IDs upstream and ife is used for full and 
> lite, this convention will be followed in camss node as well.
> 
>> +                      "csid",
>> +                      "csiphy0",
>> +                      "csiphy0_timer",
>> +                      "csiphy1",
>> +                      "csiphy1_timer",
>> +                      "csiphy2",
>> +                      "csiphy2_timer",
>> +                      "csiphy3",
>> +                      "csiphy3_timer",
>> +                      "csiphy_rx",
>> +                      "gcc_axi_hf",
>> +                      "gcc_axi_sf",
>> +                      "icp_ahb",
> sf and icp_ahb clocks needed?
> 
>> +
>> +            interconnects = <&gem_noc MASTER_APPSS_PROC 
>> QCOM_ICC_TAG_ACTIVE_ONLY
>> +                     &config_noc SLAVE_CAMERA_CFG 
>> QCOM_ICC_TAG_ACTIVE_ONLY>,
>> +                    <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
>> +                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +                    <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ACTIVE_ONLY
>> +                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>> +            interconnect-names = "ahb",
>> +                         "hf_0",
>> +                         "sf_0";
> sf_0 needed?
> 
>> +
>> +            iommus = <&apps_smmu 0x3400 0x20>;
> 
> 
> Regards,
> Suresh Vankadara.

