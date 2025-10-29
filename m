Return-Path: <devicetree+bounces-232683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C72C1A1B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FAC93BF1BC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54ED3346B9;
	Wed, 29 Oct 2025 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NxBezuy8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zdm687jO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3231B2DA757
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761738443; cv=none; b=EOnnLrrnsBNoi9gelkad/byV33Ws3ksYa9xCyg/njvfx/mcj8Hc183KrZBrGnArIKFrM5ftpiV+Vltq2K6j8NSTfvXmPIgNP+44MAzG1KH6caRQt3w2FxQ0PckxCMw9V3sFjcvkeBkQ7gW/eZJjnZg0IHWZ0uhr5/sDDO1b9jj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761738443; c=relaxed/simple;
	bh=zQW56MY8/fmoEjo3YSWmEiuHao1YlEBqdj1faZ3VTIA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RNgqCBUK+tfrf/yxzOR5X0wtf2OmvpycuaBzhR2hjmemMY9ccqsc4SQpvhfG3dANtXIUgSPfmNmcYsh37UCJ4GPvyfAwMuy1eS/i6coqRptTVwTGPy8jyHLX8osLMRT5F45HbR8oRLyx7E2Mgdayc7IsV9gNHIPrxIOJ5/EI6ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NxBezuy8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zdm687jO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4utkw3692111
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eWIVaztRJnGDpziqVI3cUWs9sstpy2ewlY1U9XBu3GU=; b=NxBezuy8pPfWRack
	LZdgSs8D9iEEwyDzVGDe7q/wonepwFHT1+QFjbCwDvZpngqVQUsnAMOVs/MNa2aN
	EfWvRffKjvLCZM06AmKZTUuz9LMMMhiKp+iqvSoxC2Llm6f52sSCfTcPu154RQtJ
	bqIqFlw+UGyC6wQGCltj9/QyObeLaBPpeQc09infOa59KkImjZiMINg+dumgiPdU
	ZPPm0S/EA4E9wNB2Oc2qwFc5IHdp6OdKH2g0v8hU+96q+gEd/vRHOPcINhJZUag1
	5I+clmzeY+VwBBx7boTPAp6KLvV1yjY3oDCC21hX+OpVLlMEvxpomttSGvF5zbCD
	QwGjtg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2jd0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:47:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-293058097c4so25489345ad.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761738440; x=1762343240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eWIVaztRJnGDpziqVI3cUWs9sstpy2ewlY1U9XBu3GU=;
        b=Zdm687jOfjgCwDEnunnKpORGD0LfQeyoTV0IVTBa8Y5Nv2e6eZQags3AB0kaR19xvh
         d9StlL/8KCr3GQKtOBkKLkZmYtCP7Mh4RDnmfASy3n1GWHx9RZMyySrHW7iUw44EEDMe
         J8zrQXHXPVdM/LHe+F8CpU6td23r2KFx0LwgBEpSmqPs9YDVgk+JckSFiTuvO6l54KV9
         3F9tC+bhrYYPv2OpvKdaQpkljDzlTz/Gs6ivEj+jbb8WQ4VF+rJg2LrLr2rcvFaK3NZQ
         KgQAbJBivETyzxBcqYQ2P8CMYyW/75y6UVxoAgxFCvSK3Eq2vOn/RErvv4zZM5fHWUm6
         Hm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761738440; x=1762343240;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eWIVaztRJnGDpziqVI3cUWs9sstpy2ewlY1U9XBu3GU=;
        b=klcWiUsSO2jIeLuSzN8DyMrk/rJFhtGoXvymcb+uHD9aBB1D4rVH0VFxeetb8RDOk1
         AE5r88FGTxobW0PAHNfSDGp/LLCAZ/x1FbxxFn1/YDyr+AlhyxksjrCi+9Orkor15+io
         wzq3fysHMhkILMECmOS/umnD4FhTOqR9ceYTn2/pLzHhllb7RBqspZkCwb1deaZBzgPh
         cwsi0OH4NXkFDsEmbaUmmMg2BViBZO5NZisJWtQecPDj1QUic08Qhd/eBwcPWnAtkYug
         ZRHkwf4v9EbHJ5u6O8ki2AFgK7UiqSzD1fPPvt/PlMT4LqSwsfUhaGtO2X8NQ1Ny5/95
         79jg==
X-Forwarded-Encrypted: i=1; AJvYcCUld94cdwQHjrcHWEHvIULnBognzTGR8NlY/Yjj1kQ22EoEqpG1F62WJ2fycc6BrDPnjD9WX2UthwPl@vger.kernel.org
X-Gm-Message-State: AOJu0YwJxJYUyvUPy4vF8F3HvqoqqQ2UoZh2d6obIE4F3z5u8/C+VTB/
	J6gRuxpYzBsEs5c8/vQ4smbCOoX6G0kDZRiAiyfYMBRDBsgVUg1TIFUTJ05btdBXSG8FeVWyTiz
	YVM5FerD7XHLOOZcdlUotvsOsQDXk44v3FOUkPTfKw+T7/dBbhxEqIigdSTTsvOhG
X-Gm-Gg: ASbGncsDrO+64aeHED8SFTXqHGUWxKf9tZXfPi6mVHXhyOCUjKuLtD7s7hr0oLkIAAj
	k4fetWKGKZlZcOcPfu8ShQYRqWGcAs14Z/kxRla5tsgs0VjYMsFkDymCONWJ/1CFTg3ZQ+uVbR9
	Mk8dpzC94J+V0wiGPjBTPyoBouEhaaPO+gpzlbhwoKcCbTM/cw33Ms8IIanyga7vvlJ5L6Jl2at
	807QE4ol9Ok+qh2lxeNIjRnQcCPp2S2G11XbQdjq3VqkyEnsUpsoz3ut8iKufB4AZzAdbY0mESJ
	gnN9FpkW01MR4rG7i3BaOUJbd4gp73f+hUMItNJwv0P8sFKmP2yr1Tqjj9ODnNo5AlL5lIb6e98
	kYJr40UwcAPo6lozETKIpB8TICc9h21HF5jqLPescmcUUtpwfJHzKxjH591KywdGv
X-Received: by 2002:a17:902:e0c3:b0:27a:186f:53ec with SMTP id d9443c01a7336-294def4777emr10974755ad.9.1761738439907;
        Wed, 29 Oct 2025 04:47:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV2MUUUkmmFjRBk1T4Mw8HQRwufvyCSapJ8Hglp9lTk963xdOkVLK/H5Zn4FZRsX5XZBO4Cw==
X-Received: by 2002:a17:902:e0c3:b0:27a:186f:53ec with SMTP id d9443c01a7336-294def4777emr10974595ad.9.1761738439235;
        Wed, 29 Oct 2025 04:47:19 -0700 (PDT)
Received: from [10.133.33.95] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2317csm149794305ad.48.2025.10.29.04.47.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 04:47:18 -0700 (PDT)
Message-ID: <a7cdd2b3-6097-4a8c-a639-af974292cc8b@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 19:47:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Eugen Hristev <eugen.hristev@linaro.org>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
 <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
 <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
 <dwfvko3hszsoh4ihnz3qdpsugmocbkrbhosijdw5q3bxh64kuo@o74as2li74px>
 <lz4sbvzfiij3qsa4d7jeblmi2vfubc4ltf435sh6tcs53l6fbq@7f3tfm7yiyjc>
 <mwin3lfvpcwxxhsub2whcpibuayk36f4ljrodvithfygqad5w4@cg4h6peh4v4a>
 <ygqgzflpavwgd43e5zedgcijm3lz27nqlzprttalgcroedz45u@ztqkppajpyry>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <ygqgzflpavwgd43e5zedgcijm3lz27nqlzprttalgcroedz45u@ztqkppajpyry>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4rhzjONA8-tqrA1IdmXkalvRRoT2tEK0
X-Proofpoint-ORIG-GUID: 4rhzjONA8-tqrA1IdmXkalvRRoT2tEK0
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=6901fec9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=PIc2Ezaej9RGvccHy-YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4OSBTYWx0ZWRfX2M5PEwRdRXby
 OM1wizkWzYekgpcY1lO5f2pr1t3+mVrmtV3Wa3gbQUa8MpQ4KhFIDz6gZ4G9Mb6iOr9eaUk3zXq
 AzZYTOWXPMaJtvoDP3XoSrVLo88gee46596jOfy+WoKpqkhbbcaic5lMqTN3NbdTzEok+GnyWLc
 yS8edd9CnbjcWs9jo3gZbGPMbGY7kOXGIXH5GtJTeUkUpQ7pZuWfL+WQHVfnraHh9uuFYLdCZD+
 cIU88btdF/sARsgYCogbyzNj5XYCV0cA9Jfwxr/bUvsVCSkwMq1q16RSctiJJq+fFPLcQnrucEL
 up0ZbSAUUCY02U/C0fmH+TlrQYdooKZIracXPP5ryGS6OZxbcw65mhFxDgLfie4otTDdskz8ZUi
 XrV1tD5yz1E0aTEZLMQNVwUi1mT3bQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290089

On 10/28/2025 2:44 AM, Bjorn Andersson wrote:
> On Thu, Oct 23, 2025 at 03:06:00AM +0300, Dmitry Baryshkov wrote:
>> On Wed, Oct 22, 2025 at 05:42:58PM -0500, Bjorn Andersson wrote:
>>> On Wed, Oct 22, 2025 at 12:34:58PM +0300, Dmitry Baryshkov wrote:
>>>> On Wed, Oct 22, 2025 at 05:05:30PM +0800, Jingyi Wang wrote:
>>>>>
>>>>>
>>>>> On 10/22/2025 4:49 PM, Dmitry Baryshkov wrote:
>>>>>> On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
>>>>>>> Document qcom,kaanapali-imem compatible.
>>>>>>>
>>>>>>> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>>>>>>>  1 file changed, 1 insertion(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>> index 6a627c57ae2f..1e29a8ff287f 100644
>>>>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>> @@ -19,6 +19,7 @@ properties:
>>>>>>>        - enum:
>>>>>>>            - qcom,apq8064-imem
>>>>>>>            - qcom,ipq5424-imem
>>>>>>> +          - qcom,kaanapali-imem
>>>>>>
>>>>>> Can you use mmio-sram instead?
>>>>>>
>>>>>
>>>>> Here is the node: 
>>>>>
>>>>> 		sram@14680000 {
>>>>> 			compatible = "qcom,kaanapali-imem", "syscon", "simple-mfd";
>>>>> 			reg = <0x0 0x14680000 0x0 0x1000>;
>>>>> 			ranges = <0 0 0x14680000 0x1000>;
>>>>>
>>>>> 			#address-cells = <1>;
>>>>> 			#size-cells = <1>;
>>>>>
>>>>> 			pil-reloc@94c {
>>>>> 				compatible = "qcom,pil-reloc-info";
>>>>> 				reg = <0x94c 0xc8>;
>>>>> 			};
>>>>> 		};
>>>>>
>>>>> other qualcomm are also using imem, could you please give more details on why
>>>>> we should use mmio-sram here?
>>>>
>>>> https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
>>>>
>>>
>>> I considered exactly this when I wrote the binding back then...
>>>
>>> But the binding defines mmio-sram as "Simple IO memory regions to be
>>> managed by the genalloc API." and the Linux sram driver follows that and
>>> registers a gen_pool across the sram memory region.
>>>
>>> I believe IMEM is SRAM (it's at least not registers), but its memory
>>> layout is fixed, so it's not a pool in any form.
>>>
>>>
>>> What Krzysztof says makes sense, but rather than just throwing a yak at
>>> Jingyi, it would be nice if you provided some guidance on how you would
>>> like to see this turn out.
>>
>> I tested, pretty same approach seems to work:
>>
> 
> Now you're shaving at random ;)
> 
>> 	sram@14680000 {
>> 		compatible = "mmio-sram";
> 
> You can put "pil-reloc-sram" wherever, because it will perform a
> of_find_compatible_node() to dig up some node with the compatible
> "qcom,pil-reloc-info" .
> 
> In other words, this line created a genpool for something that really
> isn't a genpool, but luckily that didn't have any side effects.
> 
> 
> There are however other users of IMEM, such as the "reboot-mode", which
> relies on the "sram" device probing child devices, and is implemented by
> "syscon-reboot-mode".
> 
> Perhaps the solution is to not support any new users of that?
> 
> 
> But no matter what, the definition "Simple IO memory regions to be
> managed by the genalloc API" will never be true for IMEM.
> 
> And as this isn't a syscon, simple-mfd, or mmio-sram...how about making
> the fallback "qcom,imem" (in this same binding) and omitting any
> implementation until we need one)?


Totally agree. We can remove the "syscon" and "simple-mfd" compatibles
for Kaanapali.
For Kaanapali, the reboot reason does not rely on imem at all—it uses
nvmem cells instead.
Previously, the syscon-reboot-mode required "syscon" and "simple-mfd"
compatibles for older targets like APQ8064, which used imem as the
reboot mode solution.


> 
> Regards,
> Bjorn
> 
>> 		reg = <0x0 0x14680000 0x0 0x1000>;
>> 		ranges = <0 0 0x14680000 0x1000>;
>>
>> 		#address-cells = <1>;
>> 		#size-cells = <1>;
>>
>> 		pil-reloc-sram@94c {
>> 			compatible = "qcom,pil-reloc-info";
>> 			reg = <0x94c 0xc8>;
>> 		};
>> 	};
>>
>>
>> -- 
>> With best wishes
>> Dmitry


-- 
Thx and BRs,
Aiqun(Maria) Yu

