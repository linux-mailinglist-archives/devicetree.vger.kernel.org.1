Return-Path: <devicetree+bounces-242217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBF2C881D2
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F0BC835360B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D059031282C;
	Wed, 26 Nov 2025 05:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hcFAy0Zo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JIMOTTgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44495212FB9
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764133373; cv=none; b=DpemfI3nj337MrQcI8lbsquB4kQDfsC9S+tw8J8LWxSRP/nMKy5OaYXAAnxE64DfEVvgiRI4VQyqBXOksgKz54apDxLY3/n0hXUfjigWezs/a8eXBKOZjU4+CDlcQom4KVj4uLP4oeh4eOjHp2Rx1u7IiQE9XKCj/TpUmHtYAEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764133373; c=relaxed/simple;
	bh=R6z+JuNw17GWK2WWqNmceSWXaJ0ZYu0e1e3N7eCHe7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SS8wJ9N4z5+o/+0Fc9vOSJ+NFnzt2ZsLLPUMHC98f/EBZOmmgOGoU+qEMUnXV9LVPANvneouYAOHYD3qMSGeHq4P93DS7dPxoTGAo4bSLq8bBITuSKP8HatxD5GYaD6hMMw+Drb2HqAmHYbdF9+sVQjYtPDiuYS8rIskJhsN4qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hcFAy0Zo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JIMOTTgC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ3IhpW2726963
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:02:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mV/kwgq94/oUz0P92yA7lY/+42yYHAlMsyEagn8bYfI=; b=hcFAy0ZoWQIgqcQs
	TZg8yIrkioJ5Z4LlEaIsi1ikXzxVyA1l6ShH1+u6oZqWAA7OqIwSIUqEz0Fcb2qH
	I7BoSV4c4bNqrJ0adbxQ5bH+3UDoI2OWPUpoXSg9aHgi+QXDN3MN6iYzelnOHrHU
	olvGXJr4fv1Kx0rrYyBC+eoTT9okjF/LFFPHOn88wbav1JV1v0QFHZZmIcGlKFW+
	uL5+rzYvZi86YbwE2+alCY6TPoj0tG26ROw4xu2oBX3DWGvF1HcpysDYAlZ7SkcW
	Av1n0Zr6SncSNJzoF3D1VMgJZbNGshKekLepTZwFypbzSpC+RwbYKuf+oVHFbJL/
	5WP3gQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an8rvu6ya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:02:46 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-343e262230eso7281663a91.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764133365; x=1764738165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mV/kwgq94/oUz0P92yA7lY/+42yYHAlMsyEagn8bYfI=;
        b=JIMOTTgCMfvkId2va3wFMfVGIdNbdaAmCOqcrdWyi6tS0bhdWnO4WnJaFk15RwsdAT
         1TIGWq9xAPvboEH5seexmWpKqpds8OJNl1/eDCmnSK7qQAVCiQUmSpwO1IOgQXLisWfr
         wJa9tEtGQem2HhIHSBdABUSvlY5M8dwaKSaFSUbt3REomJmfjxwWfym3vTJEzUhd/xbm
         wWG+r5QpSxutCsy304jqFgHN6G6n3RAb0nOb5bu/3BkXrVITGSZXFIaamEJRRogWLEkx
         Ac47D2hXD3co9pLn4I36/gBmviyib6os7tI44ksfEyx0LrM4VD2YNIajy01Csn+nU+o9
         aqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764133365; x=1764738165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mV/kwgq94/oUz0P92yA7lY/+42yYHAlMsyEagn8bYfI=;
        b=f3OxO3nG/Q7CjrtMcJGho0bBPr9efElaWYF443/hrYzndawZ03QmiIwahU2QwfmQZS
         97JgqxP2B+EtuIV2vkAL38qpmf5jP0UwkEEfnWF3y9a5dbZWpqs2Iq9aok6agHhvS2th
         oeHR0O51qqzTvmbw+GPf62PIt0DcAVX7KA/X+FtMii87/XWke/gCcq+3Zxi0r/7jrcOU
         wo3mfJW9+vzH8pjQiNeX8msvFPfm01eEZIo7ee04MUe+HlveOypfoNGD6jqfv5nZX5GD
         scxpDiyJtZO8OlUvIM0RUQvC8NjI9odiGv99/PeeE9eD35WvUjG+X6sEEwQNd0kDw2Ge
         chdw==
X-Forwarded-Encrypted: i=1; AJvYcCX30ED/mCNCd/0ndBlkQ14/ufN6VcLJTjtZsajqh/qN0Vb9G5dcEz3lieuHK6QUKRCIgbt0bFMPAKDK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx25WY+XCuHDsN0ct3ggURmbYDR9FvLJX9QC9TrxaaZms3TP4C1
	/7xF91KAoeW5nR13pplr4bujVDPVCubr/TB+kIJ4VGYP/eKjliMy4MwNtlOxVbOFKe0YiH5EGGW
	ErpcDh7lhskLiGiR7PxkP9dbkKzFyHJi14ckvGoHkfUNO02rDiKWFrvpuAxzITZMX
X-Gm-Gg: ASbGncuxXbi7hQKAeBrwpf/iQmWHKHQfS+uMqZHhMGohF0wZdnFZpk94KUI3OXW2q3Z
	aX4o46xksqyV2HHGrUAHwyqo7xx9/5I0e35xfYXGj/REGzcRlj19cNzrYCSggNS91WeUF4XzlI6
	ajL8/CY+2D4eTTEyS/f2hcNz3koOkzeWpWyshSxFx8CMOQTKUxGM643LRz6NlFgjuMSzQESiLQ0
	ZfXG5Kgh+Rau6vqOZSoCMMfgqKVoKBDNOIG4KvQJrogQRhOWIHQUszb8ze6L8I8gezAmitTohHM
	IAzWnODr/c0bWvxIUJHTjrT2ExH/+z5lEOc+vLViqRX6E36WZLNPsR1imlLK8HMmXjG5Q/IEMtf
	dp9/Wb+E2Cr4clPIPCr7/voSDf7GiXaXwanDFxXtH2w==
X-Received: by 2002:a17:90b:1c04:b0:340:dd2c:a3da with SMTP id 98e67ed59e1d1-3475ebe6a55mr4902921a91.8.1764133365012;
        Tue, 25 Nov 2025 21:02:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFD5nE8fwNVpEgMkbfCnBkcSgEl++BprsbU95B/wKtEMLewWrDYFhTsIgaLcK4LEfjE1VLzLg==
X-Received: by 2002:a17:90b:1c04:b0:340:dd2c:a3da with SMTP id 98e67ed59e1d1-3475ebe6a55mr4902869a91.8.1764133364290;
        Tue, 25 Nov 2025 21:02:44 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475ff34831sm1928487a91.5.2025.11.25.21.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 21:02:43 -0800 (PST)
Message-ID: <60487c80-c5ea-4c71-8ba3-e638ae3035a2@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 10:32:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 07/12] dt-bindings: i2c: Describe SA8255p
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, psodagud@quicinc.com, djaggi@quicinc.com,
        quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
        quic_arandive@quicinc.com, quic_shazhuss@quicinc.com,
        Nikunj Kela <quic_nkela@quicinc.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
 <20251122050018.283669-8-praveen.talari@oss.qualcomm.com>
 <20251122-rich-imported-buzzard-b7aae7@kuoka>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <20251122-rich-imported-buzzard-b7aae7@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kyuWV7g0y7tYHl8oW64THfxNaecWqsXP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAzOCBTYWx0ZWRfXznq0Km8qOZkV
 MgWhu/a0XCMb9qBe82clZPBJu6ozKsvmRHnL4K5LcTrW8L1gj3p1OM3c3CK3D1IrpzgVuZwXp9F
 urjMMKVchwtFnpR0NhrDQd6P4d5K0XS6qoZVSUk8YBUroY/xDI/+HuGdUpY5/e9X+tMLkXYwM6B
 uRGKfS9YhE9m4L1If4xLe+xoMhr34hd/LeFNHMnqbWmahTm/T0fVfjYdcBKIGyfbVLvvCsoZ/+I
 TMXYm5MkXY9/ssZJY+4v/6UfcP6vTKC1DsZzvT4SU0HBPwORBkHnBQz/XEK+u3jGZAxDTyGJjCz
 dKRifuGf9cbRp0GNXO2VgCP2UOfjNdIrnsttKV1OknRWs/oNsxCMLS0Xec1938FHwfLlB+nFRxn
 yE50vv3Nm9Ur1wJhpADBQx7xed9Fjw==
X-Proofpoint-GUID: kyuWV7g0y7tYHl8oW64THfxNaecWqsXP
X-Authority-Analysis: v=2.4 cv=Ushu9uwB c=1 sm=1 tr=0 ts=692689f6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=T-be6ljfY82ZG89evtEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260038

Hi Krzysztof,

On 11/22/2025 5:10 PM, Krzysztof Kozlowski wrote:
> On Sat, Nov 22, 2025 at 10:30:13AM +0530, Praveen Talari wrote:
>> +  dmas:
>> +    maxItems: 2
>> +
>> +  dma-names:
>> +    items:
>> +      - const: tx
>> +      - const: rx
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    minItems: 2
> 
> Drop
> 
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: power
>> +      - const: perf
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - power-domains
>> +
>> +allOf:
> 
> So common SE properties are not applicable? If so explain why in the
> commit msg.
> 
>> +  - $ref: /schemas/i2c/i2c-controller.yaml#
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    i2c@a90000 {
>> +        compatible = "qcom,sa8255p-geni-i2c";
>> +        reg = <0xa90000 0x4000>;
>> +        interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
>> +        power-domains = <&scmi0_pd 0>, <&scmi0_dvfs 0>;
>> +        power-domain-names = "power", "perf";
> 
> dmas and dma-names

For this platform (all Auto targets), we primarily use FIFO/CPU_DMA mode 
rather than GSI mode, and these are not defined in the Device Tree file 
as well now. Should we still include the dmas and dma-names properties 
in the example node?

Thanks,
Praveen

> 
> Best regards,
> Krzysztof
> 

