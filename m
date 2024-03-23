Return-Path: <devicetree+bounces-52597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C0E887626
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 01:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4341C2187A
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 00:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DA4A55;
	Sat, 23 Mar 2024 00:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zGlgkUMb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FA7624
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 00:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711154004; cv=none; b=F3zWJwlR35Dw4JTh7ztG0tMgBt1GFxdl+SfjA1dsH8xwjMdWbJb0Nd+FS+lK6iQt/MYX125PXXu9oFbsgglJXesHX9NH+x0FKA7/sFHP/ls2IIIW71tfk406kzzn8ifcOgb07666qKtujsyvn7Mbzv8zx8pzgobph1OxkpWPiIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711154004; c=relaxed/simple;
	bh=qRatC590E6b0IOeG6lRfhCABOutlgVwESB/qkgefRXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iMQ0ekLfMM9+45vnLl5t+MspOlV3axolaeVDBE3MGDhc4UpHUGtlI7aywJ9e9YLxlWibXNkVqETyzuCWZgVX/Kqs9gHmY/Na9tICoYfJ8jOcte6o1eeCHrDqxz5xX0+dReduwl8RcbEheZWZQrwk9g8RvBlBP7aYgrHv76P/590=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zGlgkUMb; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5157af37806so3135138e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 17:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711154000; x=1711758800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1K9Gr4xxseb63O+ZIp/M+lMupGMpWBFPhuDFz3NoIi4=;
        b=zGlgkUMbzclH1HSqRwzgDFzsqKGpOSwHKMAzNDPAoiYmY0Fm6NrkVA6lI2HVmYqp/2
         LIhxqi1yRKTpYV2ZhMz+54Fo67Qt1IezGdvfja0RpntlON3Varc51V/ln//AY97riS8m
         Q4ipJHNkROBYX8ZhEqSj2N7+KlLTE+fcg9BL1am+EHlhFoQqZ6E674/8nGMojhFMb0CI
         uFRyXPGcUKli0KpwxxEVzGUMG0PlWgRYjpn3Pl6Wu6HpPuvCJVSSpUen587kBkw6tXQj
         wBKcW+ooM5z2MIE6Be4CPdmalDASnqO2HPQ7jM0cOjTFldKUj91regDXr6cRfGNq2zGe
         IBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711154000; x=1711758800;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1K9Gr4xxseb63O+ZIp/M+lMupGMpWBFPhuDFz3NoIi4=;
        b=Sid1CMe6zA0sHfHRl/svDnDDGrn3P0/OuKOMWM7XMhpeWZg7uqAUuz2P/P4ucMXyRs
         lRkEeFVdApVsNnRZ2wBAggENJKIyCTzx4tTVqyPyb4T6zg8Wlr6TmIrfwAyE/46ncpaf
         Sgbf0l3poOb+C4NmsbkoWy2uxO+UhGt72dR9I+0St8SBA+om2mTt4cgu840jrzLrs4+3
         nYTFlsZ/e9S7CrrBBOpN0QNitXkaW+CzMo14VraxG0yJxAevTX2lXQsgMNF7hTbwRJLP
         +LIUdmtqS67hTA+qUXrBvCMYBUi1KMFPw8Ei2zHtXAAiscxXh+XPrbYDB0Xc/CMXvXVn
         Lr/w==
X-Forwarded-Encrypted: i=1; AJvYcCVB+FLBhYuzQa7p8MR0VS9vFatYkmcQX45WEVA3luTBjLvW7RaNKiCSlke9TxxgMj55wIQ5XNCL6qn1v+HKhpS6AwNtJMv+iMdgEQ==
X-Gm-Message-State: AOJu0YzaD25DCHbZnDbnf8Pb223wo0teg4jAK/pRFz+BQyo3o4/n1dAO
	TQTY1UBhIIO7VoeK5iEryi6aXIgMDUY5AWq/sGPi4w26GwDq6IwXNIIANjZgOp0=
X-Google-Smtp-Source: AGHT+IEnQFm26TVm1mHLqzW2v5Ftxjgc99itX5oz1q6CRFPx53zTkewQtYDpJdM5QfEG/6fafz+e6w==
X-Received: by 2002:a05:6512:54e:b0:513:22f0:c3af with SMTP id h14-20020a056512054e00b0051322f0c3afmr547669lfl.4.1711154000463;
        Fri, 22 Mar 2024 17:33:20 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id n19-20020a170906119300b00a4660b63502sm360863eja.12.2024.03.22.17.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 17:33:20 -0700 (PDT)
Message-ID: <9ac4117c-755e-4e49-b3a2-661e7195a7ed@linaro.org>
Date: Sat, 23 Mar 2024 01:33:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 RESEND 6/6] arm64: dts: qcom: sm8650: Add video and
 camera clock controllers
Content-Language: en-US
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-7-quic_jkona@quicinc.com>
 <0a7da687-18fb-437f-b33a-e4a1de20177e@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <0a7da687-18fb-437f-b33a-e4a1de20177e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 21.03.2024 14:07, Vladimir Zapolskiy wrote:
> Hello Jagadeesh,
> 
> On 3/21/24 11:25, Jagadeesh Kona wrote:
>> Add device nodes for video and camera clock controllers on Qualcomm
>> SM8650 platform.
>>
>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 28 ++++++++++++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 32c0a7b9aded..d862aa6be824 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -4,6 +4,8 @@
>>    */
>>     #include <dt-bindings/clock/qcom,rpmh.h>
>> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
>> +#include <dt-bindings/clock/qcom,sm8650-camcc.h>
>>   #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
>>   #include <dt-bindings/clock/qcom,sm8650-gcc.h>
>>   #include <dt-bindings/clock/qcom,sm8650-gpucc.h>
>> @@ -3110,6 +3112,32 @@ opp-202000000 {
>>               };
>>           };
>>   +        videocc: clock-controller@aaf0000 {
>> +            compatible = "qcom,sm8650-videocc";
>> +            reg = <0 0x0aaf0000 0 0x10000>;
>> +            clocks = <&bi_tcxo_div2>,
>> +                 <&gcc GCC_VIDEO_AHB_CLK>;
>> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
>> +            required-opps = <&rpmhpd_opp_low_svs>;
> 
> Please add default status = "disabled";
> 
>> +            #clock-cells = <1>;
>> +            #reset-cells = <1>;
>> +            #power-domain-cells = <1>;
>> +        };
>> +
>> +        camcc: clock-controller@ade0000 {
>> +            compatible = "qcom,sm8650-camcc";
>> +            reg = <0 0x0ade0000 0 0x20000>;
>> +            clocks = <&gcc GCC_CAMERA_AHB_CLK>,
>> +                 <&bi_tcxo_div2>,
>> +                 <&bi_tcxo_ao_div2>,
>> +                 <&sleep_clk>;
>> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
>> +            required-opps = <&rpmhpd_opp_low_svs>;
> 
> Please add default status = "disabled";
> 
>> +            #clock-cells = <1>;
>> +            #reset-cells = <1>;
>> +            #power-domain-cells = <1>;
>> +        };
>> +
>>           mdss: display-subsystem@ae00000 {
>>               compatible = "qcom,sm8650-mdss";
>>               reg = <0 0x0ae00000 0 0x1000>;
> 
> After disabling the clock controllers

Clock controllers should never be disabled period, that defeats the
entire point of having unused clk/pd cleanup.

The only reason for them to be disabled is for cases where platform
crashes on access due to stinky "security" settings (like with audio
clocks), or when people are too lazy to upstream panel drivers and
end up partially upstreaming display-related changes and continue
using the bootloader-initialized framebuffer. This takes away from
the very little determinism we have.

Konrad

