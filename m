Return-Path: <devicetree+bounces-243659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E085C9B036
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4F76A4E37BC
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2DB25785E;
	Tue,  2 Dec 2025 10:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MupdOExJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gVtrjUG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD781FD4
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 10:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764669690; cv=none; b=iuJIT03cnmSJ+HyjIo2PmDxdvzo8JzzrP116Y8ZvkGbrtvh7SUijz0PlqxLoDuM0SUAydJCJwBSy5X45qSf8RWVS8tkDq0cE9H4JSrufT5+gN2OTawCOmJqtHF9kTs+r2L5l6nTNjATKGdT2Nodj5qVCTORMmVxklCm9cdqXekA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764669690; c=relaxed/simple;
	bh=Gt8pt1UiVrV3Crxj1QNKCmXBQMKVZfXbou/+ylLscKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BlyA4WIKrK0OFjGOes+9U2FjgLLcJpSVvc3pFj7Zao2602TxOkgjhG52/jFkQjy+C9xKZaTtd2AH2ccyFeNXM7XZkMIAo6AlnALFmHNyzGV1JlGCUOZz4/cdCWuZvUmnkxLywu4d5jVP7Q0rnumasY/dk3BALA+Z0Glgelrz7XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MupdOExJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gVtrjUG3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B27NF312584292
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 10:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VCgyHpBwQTHzIAgBMQn8Tj44im5JyB4dlR9ZKOC00xw=; b=MupdOExJPHKS91JK
	OrTN9mOgl8emGkBoTUnDHrT8uwVXEEVM64XYfBDrx8YSK7ssxm/goPpPyZM/3F3j
	8cYu4Elmc0aqyBGMzjU+LzmzYWG/ZOvD7ZOYwp1uK2jNjCR1mfLCl7M4/kMKEQS7
	VIcmBelIqaEuPt3XpXcgrXxHSHWIbRHrwt9KJdwlYBudCN8dVo11oJNW3jWsr0XM
	jmyRHEBcHE66FH7uFHtrWgfoxxa0Z2ZxMmmUOL6bSR3Ln/fqKK1kfl64vXlFc9/A
	x2vt7ESELlZaNnGrzfM9Dlhr4YtlrtORn9QXbCnGK1Ire0mKsbH3UV7wPlTGLXXR
	U20LIg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asup3ggs2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 10:01:28 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b609c0f6522so8314510a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 02:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764669687; x=1765274487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCgyHpBwQTHzIAgBMQn8Tj44im5JyB4dlR9ZKOC00xw=;
        b=gVtrjUG3a6TQFmbmVEtMwevOVgwEYDei4xK0mmQmKgeOZ1Eld9StTpF3ml7vvwkFYg
         qflYD1GIYL3h922Q6H/J/hWP8jbrx9jrS1mYQg0LBFXR0j6HOs6ecP+4eFrvG2XjT+SK
         FrbRuQU+VZ9Bf+lqHi/aYyHGPjzk1l6PojrpStyPlgSdfepwrFGWuNzykyAw7V4tTVxQ
         H09k5FUYZyj0Ql9DkIzKPJ8RbCkqidX9Fri4NgYWBIugZsbiR4jcO8yrxEcpP7EaeYV2
         EtHxZS4WrdZ2w0oulMqJy4kXOzh1J+IiWkOLBOm/+7bqWp3A/BZPcTrwRj55GpOxOCPN
         E3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764669687; x=1765274487;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VCgyHpBwQTHzIAgBMQn8Tj44im5JyB4dlR9ZKOC00xw=;
        b=r9oTqegQB7iZza5jZCIYjSZolMkhTvYWfkF+mrnmAJBb167iAAsltMgO2wl3Bj78Kz
         9DNBF6lAbEndBVyC7CcraMbKPcBpnTmG+qV3cQ8M+8nThJNpTwFUy57WqrYOOtdz6Ipb
         ZDYV/+pR4TncNem8tBnRyKD1A62Kx+4Rry2OAaaMc9B/x9shj+GOomv7rsI6QzlFDuux
         xIHMK0xeOhiYyQzF4twDtkzhiRSLd5O/OBIRaKq/Uk9Xd2FhAi58LAFZIDogm//SntGa
         N2Kt0pG8Eq8l32ukwh683bl6Dv5v9klz5w5v0pUsjjLrm6kPr5UjGxpip1aGXZMSi7ag
         QmMw==
X-Forwarded-Encrypted: i=1; AJvYcCUIzamYUO3EkT3og/KUmECDPNbb1RGiP7yCZHTmx7HsMR2nX6yQMM7A4t2Awq4OTBR9NkNIfWjDNbTE@vger.kernel.org
X-Gm-Message-State: AOJu0YyOEFbKzRNtPBWR8n7o8m63znxFXqjTEWuO1BxWv8xajghJqxa6
	m20fJUNO8FpJbgQisYwEaV2085LbL77mEbCJx/CgkoDorHd5hpgXtCipCfJSGaOreGNespQht3A
	18/CSxVWBzIIvNSnDULuiIrB7KEx7NRxCElSgsMs7P353WaraCfNEWn+kGKFzmVYB
X-Gm-Gg: ASbGncue7TtmgOyxWntWbYLcVz3xl3uOI4yF2W8PGDNFevN1j1VpriHSM47nr1UvZPH
	R9jUpRAREoOFSabJ8jFE2pzh+a9kMPGYa7VgUAdvzAJ8sImWAH/0e0kLTgLdcgZJY2KfMjWyiF6
	TCwSWVQGrzgQuWjHMhUJV6jiPkFwGuKD9khFtPwcnnIpGqoVBODshE5EUH3m+9Dm4POBW5ILvXE
	h2qkp/cKFeaaQIqjHBnrt8k2ajB8Xtlld5RWuS6qFXnOwWpFHpeedf4ShEusNjR5vButANE0dQx
	iAM1wYKhyVV2MhrtKg9le6BZ3+4SjHrU3QyLPGXuY4iQIy2c6C+uvPPT2cc+LTCr/TcEiE8q+MG
	7qufrTLxCjLlJzvnODp2SVfwiikaq88k1Et1mCL0Mqw==
X-Received: by 2002:a05:7301:7194:b0:2a4:3593:c7c1 with SMTP id 5a478bee46e88-2a7194ab2a1mr19578313eec.1.1764669687354;
        Tue, 02 Dec 2025 02:01:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKRFsMylJah6XxPplvV9ZpzzT/gex0k0NSf2YPvwqBcH7AOdKS2xzxMzA1XuIz16ntn4kKiA==
X-Received: by 2002:a05:7301:7194:b0:2a4:3593:c7c1 with SMTP id 5a478bee46e88-2a7194ab2a1mr19578297eec.1.1764669686707;
        Tue, 02 Dec 2025 02:01:26 -0800 (PST)
Received: from [10.204.86.123] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcaed5fcasm83627991c88.2.2025.12.02.02.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 02:01:26 -0800 (PST)
Message-ID: <ab942177-a8a7-4047-9b6a-634aa3d15b21@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 15:31:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] dt-bindings: misc: qcom,fastrpc: Add compatible
 for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>, kpallavi@qti.qualcomm.com,
        srini@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: quic_bkumar@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        linux-kernel@vger.kernel.org, quic_chennak@quicinc.com,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, ktadakam@qti.qualcomm.com
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-2-kumari.pallavi@oss.qualcomm.com>
 <191e6be9-5e61-43b7-a75b-e2d211bc6630@kernel.org>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <191e6be9-5e61-43b7-a75b-e2d211bc6630@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=MaZhep/f c=1 sm=1 tr=0 ts=692eb8f8 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9uI-NWsv2U5wCxV133oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA4MCBTYWx0ZWRfX781CuXnDlRc5
 bEFDDq4q2XMQ48ME0iEKGCRQeOhSSNnDACpgeZAfvLq0SFKHDb+rXuUUw16onPOvqa3pxPeF6+c
 zjhIgflm6VTqI+u91fgfudzSjL6zN1KWygZRY06L7IymdiHHA+2tOb7Qc/dXTjNnNuBDKSWpow4
 u57xN2BewIj9SJ8uQnfjXybUxOtct/odrRnu0McDRabG1y8Ds23OEM85C2L232I6Dbe7OIKAHQF
 aRucEg0jAPoYjVA1oO1g6kCiHWaIAThy0Ca5YpvF1SPNpFxNOpxFqlMqZi2sY4Q27eMOKR2Ud1k
 0VfmXu4LoDRhTVsp0+RTKctPaOPBT3r5EtWCXUL2odA6u/gFMxwOiC0njcvOgBgm6FeEy3ZN/WE
 jp9jb0amEBhf70krtfy8rPiuubF4og==
X-Proofpoint-GUID: _oTi1a0hgxl77uSu0cH8PiS3nIYOD-R-
X-Proofpoint-ORIG-GUID: _oTi1a0hgxl77uSu0cH8PiS3nIYOD-R-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020080



On 12/2/2025 1:47 PM, Krzysztof Kozlowski wrote:
> On 02/12/2025 07:06, Kumari Pallavi wrote:
>> Kaanapali introduces changes in DSP IOVA layout and CDSP DMA addressing
>> that differ from previous SoCs. The SID field moves within the physical
>> address, and CDSP now supports a wider DMA range, requiring updated
>> sid_pos and DMA mask handling in the driver.
>> To apply these changes only on Kaanapali, add a SoC-specific compatible
>> string "qcom,kaanapali-fastrpc". Older DTs using "qcom,fastrpc" remain
>> valid.
> 
> Drop last two sentences, redundant. Patch contents tell that.
> 

ACK

>>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
> 
> You did not test the v4, so is this one tested?
> 

Yes, I tested all possible entry combinations for this version. For v4, 
I only validated the best-case scenario and did not cover all possibilities.

>> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> index 3f6199fc9ae6..8bf7d4d83c8b 100644
>> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> @@ -18,7 +18,13 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    const: qcom,fastrpc
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,kaanapali-fastrpc
>> +          - const: qcom,fastrpc
>> +      - items:
> 
> I asked last time to drop the unnecessary items. Wasn't here before.
> 

I’ll update the schema in the next patch series to remove the 
unnecessary items. The revised version will look like this:

properties:
   compatible:
     oneOf:
       - items:
           - enum:
               - qcom,kaanapali-fastrpc
           - const: qcom,fastrpc
       - const: qcom,fastrpc


>> +          - const: qcom,fastrpc
>>   
>>     label:
>>       enum:
> 
> 
> Best regards,
> Krzysztof

Thanks,
Pallavi

