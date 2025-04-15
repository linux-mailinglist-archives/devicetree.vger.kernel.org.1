Return-Path: <devicetree+bounces-167121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59686A897B3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A449A189D6D6
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10C427F75F;
	Tue, 15 Apr 2025 09:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p4+61tZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E101CEAA3
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744708542; cv=none; b=H0Q+YnyC7YhcOQyq7B0RWVctBR7JyzkUUHKDM47tdNZ0ORXl63vKKT+LLDrh7A21txPrG/sUE8+GXzsRswwfX8EQ8HZgaTTcI67QXXmeJShGwSEpTuE0SwWdq2izdYGyNFnIGc/RTyj7jHYlyUbpxDSGuu/+y+7/x3IOvDiNob4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744708542; c=relaxed/simple;
	bh=Xb56mDUhjw/Q1oLqLQeKgmtGUX5Xo/aS80fWKCCJGY4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ekQ2dhXvLs1EYVn4k3C0UwtjAi9MuXFTN4LKAa6AVvwAk5EAGb/jAGXGycpTFJNk4mLXai+x1XPlPKfPXPOZrWqNWN1DOXKpO5VTL+coazNGQlgXqFAKiNlcpsOtIa1iwSn7QFamAE4D9RxRUApmthfkBvxXGOmqPtp0pVjxdHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p4+61tZf; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-39d83782ef6so4062243f8f.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744708538; x=1745313338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a5vJVCTJwtq6/DnoPIdPI95VzLb9KuC0ho+ih6r4jso=;
        b=p4+61tZfZsRtLrQ5oB37BJMO/eOm3NYN/GGX0TK1gaFwTEzG4G5504m4qJcZRKljQw
         3a35414jm03uVrhdE5YSOQmyd6J7PdHIjIb/qm31TRuULvZWYWVAxAatDKZets0dP1dR
         h+vMrEEgq/qPRq5r/QPTQFWX0TIbJ4KwvVjDMq+mE77WPNuprKFQadF5re9zM3vmEbDC
         gN+VJ7/EF8w9QwskePUs92+BzzQKhdR98W34Z6cXhGCn5HLsOu2yFGbX3V3q3TRDrlag
         AsaXTepufABky3aHTLlUIEX4LCWO+N+HdK/1ouOvi6pqgbyeTOzNeN/6qYpKj/4rKzgz
         r6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744708538; x=1745313338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a5vJVCTJwtq6/DnoPIdPI95VzLb9KuC0ho+ih6r4jso=;
        b=Lg47U180e1uk4E/q1wYECLax7rpi6NMyuI5I4S77zVLGBQn8e8m9VYVo7uHF2r5Pc5
         aRfQXuhtVHesKtwt6O+ARurv93b51eOWPOEoGSHWKpBlFiOA7q9f8zumqiyN0sNsxhUy
         kFu76QMQewvfdfPmMNCBT9X+vfDJ+cvAuqu0e3OZyxExaj86xGc54Wst+UKdw+0nmipS
         ysTtKoIxPyMCi1RlW/2BLw87QKXrVhS2i3NIFoC9O1wzRBrqL59fAWFWuGZxDyZMxaHd
         Py5vuozcPhFiEQfFAgQg87IL56uVJ7zElGXoxyRgPBmNVy1JP/nkhk2hi/BfCy8JhWrq
         YnZA==
X-Forwarded-Encrypted: i=1; AJvYcCVp5uGkr+jKukw9w1mVhqL//8DLoWrFyXxAdUltyFKfWsaIGsTXvZmiS4+4V3HF14pp9ZdgAh3KzigE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv5+/w9hASVt6ZyvZ75LXxXOAbEoNZlp5RHy18qHHyMuhGeC/d
	0t01IWPdYtxqymrfDvIHtWh4aGdxX+9AZJIfU8a7m+n1sr3TmqX7sLOCHjTEJ8c=
X-Gm-Gg: ASbGncueds0o9IzbHhBI5T2D/dbucpWeMwGxUJvdStINMZIR3LLX1CWjPlc858Z0AmJ
	PSNzaTiseZFs8Hn46j6IjP2xi/Y7WeMjeb8A88EjdOWKMEyZDo64AwSpRpEFUmtzzdDLKhGDDI5
	4ghRoAMnsrjBatOK9L5J2Rz+4R4J/dBNvBgK9Ea1YGnDLz3sK86DFfIKanva2/5inbgdmTgNbwD
	DQa8rUibb7Vh2BsnViSrAgcTkQUrA75+D4Yrk6zEjB52EjIq4MlqeNZYHYT2p3ofv17HBXGYiti
	OCjLjwTdaiTI1n5zde9G7iWKamAtMqVikaKIP4iDy78ndR/WF7sNHJ6Xjzt26XCLipYXQJI=
X-Google-Smtp-Source: AGHT+IEfr/Hk5p9L21/uIcg8UOwfZhTDJAOMWzS89QUdqyXz4YBi2QMOGRnZPOYkn8+5CJxQQ8lFQQ==
X-Received: by 2002:a5d:5989:0:b0:39c:11a1:21d6 with SMTP id ffacd0b85a97d-39edc30b4fdmr1951577f8f.17.1744708538062;
        Tue, 15 Apr 2025 02:15:38 -0700 (PDT)
Received: from [192.168.1.47] (i5E863ACE.versanet.de. [94.134.58.206])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2338dc13sm209176705e9.3.2025.04.15.02.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 02:15:37 -0700 (PDT)
Message-ID: <6275ada5-f7c4-42cd-8d47-f4cbf0a0d4cc@linaro.org>
Date: Tue, 15 Apr 2025 11:15:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
 <20250414-perst-v2-2-89247746d755@oss.qualcomm.com>
 <511f8414-bbb1-4069-a0a6-f7505190c1e0@linaro.org>
 <7atbwco3htsrfzfb5hd36t3tprqdgcxbtvggdww7pabibbs44i@zncb2tznzzvc>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <7atbwco3htsrfzfb5hd36t3tprqdgcxbtvggdww7pabibbs44i@zncb2tznzzvc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/15/25 09:59, Dmitry Baryshkov wrote:
> On Mon, Apr 14, 2025 at 02:49:00PM +0200, Caleb Connolly wrote:
>>
>>
>> On 4/14/25 07:39, Krishna Chaitanya Chundru wrote:
>>> Move phy, perst, to root port from the controller node.
>>>
>>> Rename perst-gpios to reset-gpios to align with the expected naming
>>> convention of pci-bus-common.yaml.
>>>
>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>> ---
>>>    arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
>>>    arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
>>>    arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
>>>    arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
>>>    4 files changed, 14 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> @@ -709,8 +709,11 @@ &mdss_edp_phy {
>>>    	status = "okay";
>>>    };
>>> +&pcie1_port0 {
>>> +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>> +};
>>> +
>>>    &pcie1 {
>>> -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>>    	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
>>>    	pinctrl-names = "default";
>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
>>> index 2ba4ea60cb14736c9cfbf9f4a9048f20a4c921f2..ff11d85d015bdab6a90bd8a0eb9113a339866953 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
>>> @@ -472,10 +472,13 @@ &pcie1 {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&pcie1_clkreq_n>, <&ssd_rst_l>, <&pe_wake_odl>;
>>> -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>>    	vddpe-3v3-supply = <&pp3300_ssd>;
>>>    };
>>> +&pcie1_port0 {
>>> +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>> +};
>>> +
>>>    &pm8350c_pwm {
>>>    	status = "okay";
>>>    };
>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>>> index 7370aa0dbf0e3f9e7a3e38c3f00686e1d3dcbc9f..3209bb15dfec36299cabae07d34f3dc82db6de77 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>>> @@ -414,9 +414,12 @@ &lpass_va_macro {
>>>    	vdd-micb-supply = <&vreg_bob>;
>>>    };
>>> +&pcie1_port0 {
>>> +	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>> +};
>>> +
>>>    &pcie1 {
>>>    	status = "okay";
>>> -	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>>    	vddpe-3v3-supply = <&nvme_3v3_regulator>;
>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>> index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..376fabf3b4eac34d75bb79ef902c9d83490c45f7 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>> @@ -2271,9 +2271,6 @@ pcie1: pcie@1c08000 {
>>>    			power-domains = <&gcc GCC_PCIE_1_GDSC>;
>>> -			phys = <&pcie1_phy>;
>>> -			phy-names = "pciephy";
>>
>> Isn't this a huge API breakage that will break using new DT with old
>> kernels? It will also break U-boot which uses upstream DT.
>>
>> This is bad enough, but at least let's break it a clean break by changing
>> all platforms at once.
> 
> Up to now as the kernel was the only and the main user, we allowed
> forward breakage (new DT breaks with the old kernel), only backwards
> compatibility was required (new kernels work with old DT).
> 
> Maybe, as this breaks external projects, we should allow a grace period
> and list _both_ properties, dropping them after the LTS?

This would be good, especially with some mechanism like below that would 
allow us to collect and list all the ABI breakages in DT for a given 
kernel release.

Thanks,>
>>
>> As I understand it, we seem to allow these breakages in DT for now (and this
>> patch landing will confirm that), but perhaps we could at least track them
>> somewhere or at acknowledge the breakage with a tag in the commit message
>> pointing to the relevant dt-bindings patch.
>>
>> Breaks-dt: https://lore.kernel.org/linux-arm-msm/20250414-perst-v2-1-89247746d755@oss.qualcomm.com
>>
>> Kind regards,
>>
>>> -
>>>    			pinctrl-names = "default";
>>>    			pinctrl-0 = <&pcie1_clkreq_n>;
>>> @@ -2284,7 +2281,7 @@ pcie1: pcie@1c08000 {
>>>    			status = "disabled";
>>> -			pcie@0 {
>>> +			pcie1_port0: pcie@0 {
>>>    				device_type = "pci";
>>>    				reg = <0x0 0x0 0x0 0x0 0x0>;
>>>    				bus-range = <0x01 0xff>;
>>> @@ -2292,6 +2289,7 @@ pcie@0 {
>>>    				#address-cells = <3>;
>>>    				#size-cells = <2>;
>>>    				ranges;
>>> +				phys = <&pcie1_phy>;
>>>    			};
>>>    		};
>>>
>>
>> -- 
>> Caleb (they/them)
>>
> 

-- 
Caleb (they/them)


