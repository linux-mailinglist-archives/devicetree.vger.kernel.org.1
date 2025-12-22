Return-Path: <devicetree+bounces-248792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 084C4CD5B6A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8F1930305B3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 556F8295DB8;
	Mon, 22 Dec 2025 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BjRHVZd/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N59LyUzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEC2314D0B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766401383; cv=none; b=kkmDlrUK0+QVKONPVQqgaH10vPC9Bti+tINohx+LsTM2y/MPpjOsS9ViIW/HV4hZ+FtAWPf/k1guoLn3YJhcwI3mZN5KdBogIxpD9ukpEOUuQ3a1z/cU9jjvlltPdcbhtIdh6OkZYSRTZWBlLVtl/+gTd1qKClpQpVtnaxMr5QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766401383; c=relaxed/simple;
	bh=V58aHeBvB4nTNxTrIGwrE3WLIbUB4XyGJoqOW2PqIao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kOUSJtNyNuBF5yGVq5vOmfPo/31ZE2LGfDrb8UfZqtphFEgoUniC4TEspfYLbq1cawUaYLA43UOgO4BoY7x9rxuJTOIyMLiqdQORfkfsYp765ogJ4xqvr9hGBKVU4grZO0IJlMqe+qElC1iCgz1JJ5slPf9ESvs18Wc8HHBtyuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BjRHVZd/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N59LyUzV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7p1uw3517171
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7aZ6s36kqSpgkeg3q72AMD6l8/vhyS1oDG7MzlNzu+U=; b=BjRHVZd/3nQ8hnOP
	NhIrhAjKw1Rchi4jS6RJYfv8P26N+OWl/TJesrk2oj4rP6MzGOMx347Xif+vDwgn
	dNZpcn7vpGEGGPSR9T58rFDm/1bYT1CnJ9M5u9CfJwGIBDZvhHrmztxrDZLBZu9m
	wQcwa0cWqlBZqC0kbCKxfyCiwSEYrj+UlZwpIAsCEl85fUz4ETuVSiyVuEQ4ZPsS
	Z1K0pdg1AffVMgjID1hIhv4NFTwDZsJxidqRPzgIFV6efH6bJEMopSFIglJWff50
	grzhbuL/q+3wOpKIn7cXKfMPGmXSaL29WJLKH7TfydIzU95CkEmqrCTHNQXdtwAA
	TC6rjQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b69ahk2eg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:03:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e9b2608dso781282685a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766401379; x=1767006179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7aZ6s36kqSpgkeg3q72AMD6l8/vhyS1oDG7MzlNzu+U=;
        b=N59LyUzVpB/0MkOxd0AjLFZK5/Z79Nzo1egC470CPA1tAuHgKXSBHyXxzvQB6CoIy2
         0LLgV31C4NUpcNJvqYvaPJ8Qkx1ZxGIPBqcu/tEgTujWr/7Rbi6dygOer1Er4tK+v7NL
         ZOD4BRMYf6vXipSKwi2wjMOFcxWfGDbn23CIN2NkbfCYRQxEJVRZLXYqiDdpclGBoBfn
         VWNv0rHrk/s8lSTwf1IAgBRw6gorxxsWX4sLQVF6oNNI2LPXFip6Ivpb8s9xnC8m6d7H
         cDoHfbvFh5GrH8KYrQqdJtPuASpuejD9waFNaT7YlLhwrJX2vZb1k9nmow7fZce2bJVn
         pXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401379; x=1767006179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7aZ6s36kqSpgkeg3q72AMD6l8/vhyS1oDG7MzlNzu+U=;
        b=aOSaa7SAoapUlUxF4TVcZP5tzqIFW/9DTHtTfX8FRSujgipzW71nMZaJ44LbAE8IJ0
         j67DplooKJ2ZJlvA1js5S8dBC5eOAOqI4ztxDFUim6I8ZFYHst5gNoQbox6/1XLL2Pgc
         aauGKObHlYgBeYaMei/Ke5n6JzEooGuqx/BfPOmTvLeV/4Xf89Y8XGrlOhTcib5R+Dim
         +065x4L/dDP4YeCmN0E0F8dEPPsqWXTWCf48nLEMhXp96MP6FW4qi5tMIAmQrrTv4YGl
         rixhDU8V3TUG9vVOn9j5Ze5cINtFCkMcCaqX0UAHB+6KNpDrq1uBO2wgvQ6VI/Qiuqny
         Apbw==
X-Forwarded-Encrypted: i=1; AJvYcCXTiy13Fsegt+z1Q+Yz5TdkbkuMCQpkhF/AuVMu8xQBnzgly7iqaWUR9p+rEixdR/VdpUm59fPqwkuq@vger.kernel.org
X-Gm-Message-State: AOJu0YzvBkN/vL5uz6inEL7MI4hgVLR+Rp946IVEu7/U0HlM0TA5MWcs
	0rdeZIELLzhSBZBWLBwlNTcu4i/tPTIjGFsQ6syfVnxfmByoQpzHYEKc0sOu1jHmLZ08b6ai+mi
	j5R9T+0EaxMoGmg7KfYDL+2asIteUg8i6367w5qxFDqwazRum8SEUcsblkfyK/ywO
X-Gm-Gg: AY/fxX58wws7CUfHb0uQxJDp4F8mjh0bmLwoeco9HU2jAzZod02yauEEIBZovyMplN8
	pF3dwy7c0qcsKhPcq436GlnikGEBPOaKly5TMG8UOrC4MOLfio4b4hHSefKr7m60v4VnMxmiCWK
	Ek6DsHNqlg2AK0veE1YHgFHH1vQgBiZZ7l40xN5jaMjE+QqOWPC11SL68nsnApkQMPFTWE0krD6
	TB4Jww2sPqCqc3L8eOw65mgADYwJL9u5RMBIbJHTahzjIpe4TypOx5UjUd7gYya3sjeYqnhzjho
	CzE+NP0IMBBmrihc4MbIxXjB7QPXgC9av6rat9bJTgSX4I0vs2cP60tEkRI4NhwWU1LcTCN3K2H
	opjZ8wUdiHSUuj/+h6P4uhA3naO3sqrpGv43zoLp/VQlqSMD3ibjwwuhdZRwc1JRN8Qsg5SpQ
X-Received: by 2002:a05:620a:2697:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c08fd32cebmr1637527985a.60.1766401379480;
        Mon, 22 Dec 2025 03:02:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFgc4/mbxP1v0Y6Y+66GXLM/In3vvQag3zr/Bzdv0DzMO4r//tvzBx5y45NhOvo3FD7nI95Q==
X-Received: by 2002:a05:620a:2697:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c08fd32cebmr1637522485a.60.1766401378889;
        Mon, 22 Dec 2025 03:02:58 -0800 (PST)
Received: from [10.38.247.176] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0975ef6a7sm777484085a.55.2025.12.22.03.02.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:02:58 -0800 (PST)
Message-ID: <a371b7d4-4a6e-4d9c-b86d-14b4cfe7a6eb@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 19:02:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-1-4d260a31c00d@oss.qualcomm.com>
 <43efa6fd-53c3-4680-8aca-7b37089ca295@kernel.org>
 <68dffe33-fe4a-4c4b-890e-87e0229d84bf@oss.qualcomm.com>
 <b96c10a5-942d-446e-b67e-a566a7d09274@oss.qualcomm.com>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <b96c10a5-942d-446e-b67e-a566a7d09274@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JuH8bc4C c=1 sm=1 tr=0 ts=69492564 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jtnMdLYT_4TzbHYvX8gA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 3Qz1lRF4zol4veF09OuhHefkSQN49lja
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDEwMCBTYWx0ZWRfX6UYkh7qwfNc2
 DdHRCRu04DTT5g+em+oH45yHJ9fH5rWky5yyhlfcNXB9hqnJQOO7Eg6yAIf4GvFsXLpeCiM6NE+
 cGEWWU0yIb8cClwONFf793KzFa+f3VCtra0rcrakhqf+JVhIMLk0oHRn/2t9lo48AGicpFAe3u4
 rJtd3jIUeaL3Tubyq3ZKqeVsIQUGYWblUa2m2w4VjkABye001Rs5W1kTjuOTENRhQSsSpkZB0eK
 y81HLIEFl61T7DvEK5DrK0Pr7WDAEBQTnJg5YYhyBp5VJSVgpodDNW9qRBkiyoWAvh1tGRWDNmf
 t8E74knom1wZUizBGsjBi7JE2MBApKKe35mY2miEKm5l7oJy0YRqJRdGgPo/4G/dr5wyYfGpQbT
 NwnzT6eo/VEl0yJn36OCm+6dfkm5Pc1YsKyTklbHRm4r9pQb/zJbil21xKSKLbh4yz/S/s1JEAq
 AiK6+pcxGppSj+K4Ulw==
X-Proofpoint-GUID: 3Qz1lRF4zol4veF09OuhHefkSQN49lja
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220100



On 12/22/2025 5:49 PM, Konrad Dybcio wrote:
> On 12/22/25 10:13 AM, Wenmeng Liu wrote:
>>
>>
>> On 12/22/2025 4:58 PM, Krzysztof Kozlowski wrote:
>>> On 22/12/2025 09:44, Wenmeng Liu wrote:
>>>> Add the sm6150 CCI device string compatible.
>>>>
>>>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>>>> ---
>>>>    .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
>>>>    1 file changed, 18 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..cb5e6fd5b2ad1de79a9b29d54869d093c952d778 100644
>>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>>> @@ -33,6 +33,7 @@ properties:
>>>>                  - qcom,sc8280xp-cci
>>>>                  - qcom,sdm670-cci
>>>>                  - qcom,sdm845-cci
>>>> +              - qcom,sm6150-cci
>>>>                  - qcom,sm6350-cci
>>>>                  - qcom,sm8250-cci
>>>>                  - qcom,sm8450-cci
>>>> @@ -263,6 +264,23 @@ allOf:
>>>>                - const: cpas_ahb
>>>>                - const: cci
>>>>    +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - qcom,sm6150-cci
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          minItems: 3
>>>> +          maxItems: 3
>>>> +        clock-names:
>>>> +          items:
>>>> +            - const: soc_ahb
>>>
>>>
>>> Isn't this just camnoc_axi for this device (pay attention: to this device)?
>>>
>>
>> On this SOC, both soc_ahb and camnoc_axi exist.
>> Is it suggested that I use the existing ones below?
>>   - if:
>>        properties:
>>          compatible:
>>            contains:
>>              enum:
>>                - qcom,sdm670-cci
>>      then:
>>        properties:
>>          clocks:
>>            minItems: 4
>>            maxItems: 4
>>          clock-names:
>>            items:
>>              - const: camnoc_axi
>>              - const: soc_ahb
>>              - const: cpas_ahb
>>              - const: cci
> 
> Are both AXI and the two AHB clocks necessary for the CCI to operate?
> It wasn't the case on other similarly-aged platforms
> 
> Konrad

The test conclusion indicates that all three clocks are necessary.
all of them are necessary.

Thanks,
Wenmeng



