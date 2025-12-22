Return-Path: <devicetree+bounces-248928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD8CD6D7E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAFB2302516A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC8E334C22;
	Mon, 22 Dec 2025 17:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VTClvcLF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g7WPKRBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1501F32E738
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766425095; cv=none; b=k82P/czhRFin7RIE7efIW7cHrrdeYDkcZONgv2W1t3lmNIqJztOYOIk9GsJSGwKldVPwxjPF5uO2T4tuKpaovan7RXu8iyBC+xJ+JEAdq/uweP6xtP4r3+2KQqHUBSjdkBwY/hs1p2BSgpEJV4/aDcq5nOU/0tuVEWmRa6IS56o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766425095; c=relaxed/simple;
	bh=mO0/SrtfKSUrtCRnVm13vpWFL6f6wXbWQSxVdbJjYSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gX8GVjmWxdWy+BypqF75UM0M8YEC/707Tpjp3WNfYW7pTWu+fMBNHzGspw4r9Pii6RfNCPBnRLkPrxjLVAZJqXZI0FuJZtODmvpmcV6LX5ocw9vUWmbbm+zhadgtqNOiO//YEeFqP/hk2lTfyxKK7IM8XllvcoaP5wfYBpL4Kh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VTClvcLF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g7WPKRBl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC3Kv2198999
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:38:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vZKjH8eI7ms5s4pu+ziOvk6xlDGrE1j+26EfG7WOy6c=; b=VTClvcLFONEQxj6q
	+7V0cdqa9g9ypnGS0HyIULP9NLE/P7uR70pDTMyekU4HNjV4Wr9eFhq8WfWNBfRp
	rf/1Sd6RKFRA6CVtnkJ+P1ZQsOBUwmMVZN1ZuNFGcwEAWaViWPDpWZjI06a7X466
	F1GyXFtzaffhyDqNjCvdbETlhEHs7m4tTk1PUcsK9I3EvKPUgGRq5PU6hONj8cZ9
	6Ri6BmpBql5/H743Ga8dS6LkV27G1i8FJAhKAPAGymsw9GyMnKDLc46rQTAS8/I4
	/j4G1V4skuO1PMM3Yqx3eCUKJgBPUo9cF4P7AEKQW/c6eN/53LSPqTIhM/nRcpBn
	gF/Q3g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b73fws8pf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:38:11 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34aa6655510so5625596a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766425091; x=1767029891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vZKjH8eI7ms5s4pu+ziOvk6xlDGrE1j+26EfG7WOy6c=;
        b=g7WPKRBlGoxCNOg+Znml8tSvGe076LRyooejnW3QikPLbrWnVwbvCVbQdJML444iXV
         4AJE3JYK/vhwEjOKg0aQBitSa79vNk8rPXhH68nYxH77B0zBMpwUSLZb2LNajLQEjPWB
         3BNbw54fmDwrybl7CCOfuQqztD0IA1mu7+sPUZ100S/+n/Ec5xXqiRGUSEIBurW0pg7T
         EXA+fUbsgqi1xxWoDEKUj0c3vT3p7oJpNYCrMXrFQUYDx+NW/9lNAvQBJKBERyGQCqsT
         QSd9qTpivuN2osw4iB1GwIOp+2kesS364IQDkP2fu8cYLsNee8AEhPeBm1ClIAshsW7d
         bzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766425091; x=1767029891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vZKjH8eI7ms5s4pu+ziOvk6xlDGrE1j+26EfG7WOy6c=;
        b=fQeUMaJ/MKX5BiWKxDqv7dlJCYgngXWmXuovdEXTG2tHOWaqb4LVcSoUzEyuwUHc6L
         iaol5x+bzCZw/iEQDthF5wffKzt2efurJ9DLE1MhNBb01ylTTIrAtnQ0e5KAV6PKRrLW
         PjHgmQ4Zt3bNneVvdIzAZvesaUMrrklfdfaIPU8SZUmvxowTfGy0IGe4UTGaVLr/ACk6
         xSSSQeggKM2luleFyX2nusSw2eAYm8lJFW/rbkNvs6OVTdvNY1iI1LSsGkZu5Z6KexEU
         642azPWgj4MD06reFdRH4Cv8WAz1ABlWOBFcYJ09aA+XBnjtb6c9iSLU6ZQ9qMHXXkFM
         mKhA==
X-Forwarded-Encrypted: i=1; AJvYcCV+WcE2sV2x79YiKT5iMaIwoIlPNyYnAlKw4TMLejr4sq5MoJJEvIn4505pegcQqfTmaaCOlzkLL183@vger.kernel.org
X-Gm-Message-State: AOJu0YxjaWNHTYmf2fVJp7+21vYaKuBkpZFtX9aJclyRPMquB9aZd9t7
	rDTAJLS0u5qwFjqnZtLxlPd07FKSO3xwWcMYQ2p77iVVmiZtPq+1fCGhmcj8xqOyRz/tbgv3fxF
	ON08HkWQNTvqfqo4K8ZQkFmHbvJOwd09jS5Ma/5dZ7N5l8k3xU3E0sDERuZN4SDNh
X-Gm-Gg: AY/fxX5KMXyH9yH9bRJx0qwfKlkxWQZI+jy5u1czDWKZ0lwqY5ThaFkHt6lgQIDQQ2U
	NHwK1Fb9IKgyCEb+qfaiVJCymn4Ffe+foA1n3L1gYdKwTzHK5Elcf3dH7/jZL+PSKtXRYnFNGWq
	lxYnPPXd7lF+eyTENljYp49gDu5ypUgryMITTk/I2y8F9rt8HjCtKGruuIo8oacZFkLCcT78sTZ
	+t5VyBOKacLjvqvnvj5nfLKuq2N3yIrusw5O1u3VTLSAiqmfMM8ZsKFi642AZY0MWsFwFwwrjyA
	KjRehL2Glco4gtXp4Gm8+HkMm2Yffv2poYE21fUEebIrwH0CpSquUQoQzukzgR4Iz9EfDC30Gyx
	R1SKhQDntmRIRCC90Ftkb/QOU8vueMPmXHd6Y
X-Received: by 2002:a05:6a20:728a:b0:2fb:2e04:eeae with SMTP id adf61e73a8af0-376a7afaeaamr12510928637.21.1766425090693;
        Mon, 22 Dec 2025 09:38:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFekOsk3KSjYhm1q2sKf3Hzdnd+yeet1Lb5PxQgEn3JL3LXbsaZSnqZMahzotRMjxZrNGiF9Q==
X-Received: by 2002:a05:6a20:728a:b0:2fb:2e04:eeae with SMTP id adf61e73a8af0-376a7afaeaamr12510898637.21.1766425090149;
        Mon, 22 Dec 2025 09:38:10 -0800 (PST)
Received: from [192.168.1.5] ([27.57.93.98])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48cffesm10906282b3a.49.2025.12.22.09.38.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 09:38:09 -0800 (PST)
Message-ID: <ef51aa03-4478-42f4-88a3-510457c4b917@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 23:08:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-2-odelu.kukatla@oss.qualcomm.com>
 <bf8fbe4b-d89e-424f-8445-0da2f80422c1@kernel.org>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <bf8fbe4b-d89e-424f-8445-0da2f80422c1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ELgLElZC c=1 sm=1 tr=0 ts=69498203 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=luqpl2TCSyK2LuNNAmtdDg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=57ojg8xjcnJcsMbD-uIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE2MSBTYWx0ZWRfX/pDRWY07qqAi
 JqOhD6Xm1RJ4idvd22rRBGa61vnYXKm1UhVTYQuMf8ZhUrXzdq5axARODIhSyUSAmXasK0VLtmn
 NNQVorLPbf9xs3T9RZhVBWTdAS3VTQqm0IRNj40MsI9OhnhTleWE2Y957114VZJeoWUDt8Udl8K
 dM6slrY2sJpFU58Z1wYng3eDNdsT9aKDz0WYOpcW+v10sJxRQxi+CRSIzOg+qi60cMulpzAg7/U
 lTEDalXRGZvdZ0Jx/GZc8C/WM+DUaqYVMQKfuGGtF1ma9EPBlINqxBVlIj4DmLvvIeDsOFVp4/m
 +90Z7w4KO/SGYYvcuWia9ND6nOk38BQfn28z2l3xjnvz2AolKQRd8ioZTKxtuH/lCpM6xBwUoy5
 ezK+sxeNvALkrxCWmaJ1nKVgJfxwTAG/c1yavtygTW/aWcRDCPxjWYs1LLJqazpL+J4Iwfuxnjo
 WIbo2v4E/ZoNymPJfRg==
X-Proofpoint-GUID: ucVzTgRHJke2gt2x2Eyc0Tqs2zCBWyt_
X-Proofpoint-ORIG-GUID: ucVzTgRHJke2gt2x2Eyc0Tqs2zCBWyt_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220161



On 11/29/2025 3:03 PM, Krzysztof Kozlowski wrote:
> On 28/11/2025 16:01, Odelu Kukatla wrote:
>> Add 'clocks' property to enable QoS configuration. This property
>> enables the necessary clocks for QoS configuration.
>>
>> QoS configuration is essential for ensuring that latency sensitive
>> components such as CPUs and multimedia engines receive prioritized
>> access to memory and interconnect resources. This helps to manage
>> bandwidth and latency across subsystems, improving system responsiveness
>> and performance in concurrent workloads.
> 
> I don't see how clocks property help here at all. Are you getting clock
> rates in the driver of some other clocks to make QoS decisions?
> 

We don't need to get clock rate/frequency, just need to enable the
clock(s) for QoS register access for which we need to get the clock
handle in driver.

>>
>> Both 'reg' and 'clocks' properties are optional. If either is missing,
> 
> No! They are not. How they can be optional in the hardware? How SoC can
> have for ONE GIVEN device optional reg, meaning one board with the same
> Soc has the IO address space but other board with the same SoC does not
> have it.
> 

I agree, I will drop the “optional” wording and rework the schema so
that `reg` and clocks’ are required for interconnects that implement
these resources, and not allowed for the NOCs without MMIO/clocks and
the virtual providers.

>> QoS configuration will be skipped. This behavior is controlled by the
>> 'qos_requires_clocks' flag in the driver, which ensures that QoS
>> configuration is bypassed when required clocks are not defined.
> 
> This suggests that - driver is not helping. Please describe the
> hardware, not your drivers.
> 

I will remove the driver related description from the commit message and
ensure the binding text stays strictly about the hardware.

>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
>>  .../interconnect/qcom,qcs8300-rpmh.yaml       | 53 ++++++++++++++++---
>>  1 file changed, 47 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,qcs8300-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,qcs8300-rpmh.yaml
>> index e9f528d6d9a8..594e835d1845 100644
>> --- a/Documentation/devicetree/bindings/interconnect/qcom,qcs8300-rpmh.yaml
>> +++ b/Documentation/devicetree/bindings/interconnect/qcom,qcs8300-rpmh.yaml
>> @@ -35,6 +35,10 @@ properties:
>>    reg:
>>      maxItems: 1
>>  
>> +  clocks:
>> +    minItems: 1
>> +    maxItems: 4
>> +
>>  required:
>>    - compatible
>>  
>> @@ -45,14 +49,39 @@ allOf:
>>          compatible:
>>            contains:
>>              enum:
>> -              - qcom,qcs8300-clk-virt
>> -              - qcom,qcs8300-mc-virt
>> +              - qcom,qcs8300-aggre1-noc
>>      then:
>>        properties:
>> -        reg: false
>> -    else:
>> -      required:
>> -        - reg
> 
> Why do you remove this? You cannot make random changes.
> 

My goal was to add clocks for the interconnects that need them, not to
relax the `reg` requirements or change the behavior for
`clk-virt`/`mc-virt`. I will restore the previous `reg` handling and
only add additional constraints for `clocks` where they are actually
required by the hardware.

>> +        clocks:
>> +          items:
>> +            - description: aggre UFS PHY AXI clock
>> +            - description: aggre QUP PRIM AXI clock
>> +            - description: aggre USB2 PRIM AXI clock
>> +            - description: aggre USB3 PRIM AXI clock
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs8300-aggre2-noc
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: RPMH CC IPA clock
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs8300-gem-noc
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: GCC DDRSS GPU AXI clock
> 
> So all devices have clocks now? You made the schema less strict now,
> removed pieces of it and you add more relaxed code telling every device
> has a clock.
> 

Not all interconnects have clocks/MMIO, I will update the bindings as
you suggested in the fix:
https://lore.kernel.org/all/20251129094612.16838-2-krzysztof.kozlowski@oss.qualcomm.com/


> And none of this is explained in the commit msg.
> 
>>  
>>  unevaluatedProperties: false
>>  
>> @@ -63,6 +92,7 @@ examples:
>>          reg = <0x9100000 0xf7080>;
>>          #interconnect-cells = <2>;
>>          qcom,bcm-voters = <&apps_bcm_voter>;
>> +        clocks = <&gcc_ddrss_gpu_axi_clk>;
>>      };
>>  
>>      clk_virt: interconnect-0 {
>> @@ -70,3 +100,14 @@ examples:
>>          #interconnect-cells = <2>;
>>          qcom,bcm-voters = <&apps_bcm_voter>;
>>      };
>> +
>> +    aggre1_noc: interconnect@16c0000 {
> 
> No need for new example, it is the same as previous.
> 


Understood. I will drop the additional example instead of duplicating
essentially the same content.
I’ll rework the patch accordingly and send a v2 that keeps the schema
strict.

>> +        compatible = "qcom,qcs8300-aggre1-noc";
>> +        reg = <0x016c0000 0x17080>;
>> +        #interconnect-cells = <2>;
>> +        qcom,bcm-voters = <&apps_bcm_voter>;
>> +        clocks = <&gcc_aggre_ufs_phy_axi_clk>,
>> +                 <&gcc_aggre_noc_qupv3_axi_clk>,
>> +                 <&gcc_aggre_usb2_prim_axi_clk>,
>> +                 <&gcc_aggre_usb3_prim_axi_clk>;
>> +    };
> 
> 
> Best regards,
> Krzysztof


