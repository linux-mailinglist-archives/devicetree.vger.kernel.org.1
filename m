Return-Path: <devicetree+bounces-240582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2941DC72F8B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 09D1D350940
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775FA30FF34;
	Thu, 20 Nov 2025 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kn4aEkxk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bPboAzIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956812FD69B
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 08:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763628634; cv=none; b=nDJPOtO5aNnxZOqcFUcQGmAHBYp9hPu+Usy2RUv/N7OWhTBUu/HbqvXOuhpvEvgQ+8/Llrj33cPOQo6/fa6omrLM/mlQGDgokzGvmv3Bo6tQGMSGDVRBLK85I/NtmNFdUxuk9m+Ekbm+XXxBpEp0fQu+GyiyKlZ38rBbE5kVGQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763628634; c=relaxed/simple;
	bh=0a+aMY2AvKY+SVtB/SLDAfmBgE3e7OMpXfbKTWmc+TY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YBrmoSfSKaY6qBhirMhT4HaU8TflTs8ztjz9R1+113hdUKMUlv0cKrCCGQ55H6lNZgak0RFeeeo2cQb/isv7XV61XeSUgeSKmSoLUrbf1jhqtZ1i0TKsGCtOj9D7TzXXou/WqcC9fA4Ar+XLO3s3PgSRLJQxAjEcm3mY31q1jhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kn4aEkxk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bPboAzIH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK4pWCV047680
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 08:50:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MQdXNnL44A09mVHT/J2nQdOu6KSRmB+G1LLCgKu+ExM=; b=kn4aEkxkN/w4/uNv
	ETH9KeDaMOSAT9ohjPzbkrGVSnmr9nZQ764zegqSV5zKZApG9Qq7FJl4Kwt97fWX
	tNsCf5ZrHQ5jWp7X9CRkPyNg65CMzxBd3kFOpjEXVeoDYpfV7dcv+qSxR2XxTO7k
	habT4ArmGEXyC0FmEYq5qxNKFcLJsz591kbAtFSnBqz9cUzNT4WyNxyQCKMN7/wV
	UNtycA1Fxt4oMP5o4cLlgThNLcetpkSK+pCkoj0Xhwcdr+fg+XJN76rLWuEKqui7
	3z9ueM6JCGctw//WRBBpRbcTgkBYReklaJd7r6b1WM/bvMx2xQXNPo7FAKLgNrG/
	5w6tXQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahcqnkfgj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 08:50:31 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7bec29e62faso226006b3a.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 00:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763628630; x=1764233430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MQdXNnL44A09mVHT/J2nQdOu6KSRmB+G1LLCgKu+ExM=;
        b=bPboAzIHkRJMcLOCcNY/HAc8lp20XtBfjoUpxI865/e7cBbYaHOBol5lKnNxy3uLTW
         E5yOAx91/oltnfDZFG4ZqF82PG9CYu7rpoFlUoWOAuRwy5G7watTp5gBzLnYqb7rHR4B
         /QbWb/jEJ/VkxIqdJa0TZksoYE/3IlkI5YJ2FcUVz06+3Hqs9zMoCIIVcnKyy2vzDx/1
         qKPS3ijRUIrQ6jhKYbrtCFevmDpLogKaM5i22r8oqi+Y6MtZsNKkqlGpdEX+8Q7Gq8G9
         yAYGultc8Uc3KR55LMscX0iEDYBJU4yldm2ZWeIe/URhCh1eMK9oxacbdf/tuUoWnsp1
         yn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763628630; x=1764233430;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQdXNnL44A09mVHT/J2nQdOu6KSRmB+G1LLCgKu+ExM=;
        b=eovvxVfQNIUIfSZmBehhKLynBgXXbFA1n3eDTPAgueeXkavnO1jCq3fXkzSmGVEvwM
         /E3h84yle7UWDOG41L5ifH11W0yuqWW6V7pL3ycLkplUpGOqfCuwzztHNhx53vdlvIxZ
         wBq3/f7o+y+CkrM4GblDVEDkkSctZkpRk8fCatasEpgtLtBvWjcsaDJEG/RwYncXrbbK
         +L1gAJVygbGRGHg+i6SqhERyQ4oDAISHot3zv0Td0PXMtZhEN1SLVmfbhszT3KSwMBPr
         APOzPclOD9x06lq9vdyNnmypkxy/6RXWC1Bzvz3lx64NGgTnU4iciQhrJq1mDA13APC+
         rx4w==
X-Forwarded-Encrypted: i=1; AJvYcCVsutitAeivqs6dz5ponExk5ntax3Pxq2Hi06emtDqGhOt6E30Ne2CUHdVuuu0sbouCw5kqpieyaXe3@vger.kernel.org
X-Gm-Message-State: AOJu0YzqNQcvgj8N/IulXtbZrugxLhBJ8hfjdtwoyCPOLDC9x5sUg4at
	vakgueUKlmob1Z6UDykcLyGUBC9zi5wYJOgd/NQAci2yzh3WuX8hWipqX+nAo+Kjo14ZN/Jsq6P
	C0JPEbn1EAtGqC2BaJp2S+D/eSjCpeGSlnoBWgyAY4GU5NDEZ0yEx5FJmxotIgnSY
X-Gm-Gg: ASbGncs/G8nRLcZ7YkX1HIL2Ko/Oxkj0J/JQ+UKXvgH7/YGz+SRaA72kBMejxgSXm8C
	wB60aumzESKVPcvPf+E3+HUMcbh0/JhU1uv5dujlCHZ4n75sNQxuTEfB/T1PAWpcPVIx1M0fEoE
	o9T8HKYQCGQibpLkJ0BtfH6QN7nzrxL2R81SjupQ9O8US4hs9V5DRrgIFMCMoAOGokhlb2uWLOl
	RyJLzv7sEEDVbWzjbz5l8Y2tjPQuLJRXdGybYPEEDHFsCf0gXnGsgmdDXFkmNbwVhfjQQEEdngD
	SmGkoHwAcpng6+IjlZReGabkLKyiHATO/aW5kvWkn4TE+lBRYvlaOBBXOXB+1/Kv4edJa6Lxbxk
	3NFxNVDEI26FKoyKKY+ChA6tyPdRRn82baQhSwsamhgjnNXpBoW7aLSfAuQ94QwCY8UVF+IPc4c
	09
X-Received: by 2002:a05:6a21:6da0:b0:35e:11ff:45b5 with SMTP id adf61e73a8af0-3613b5d9722mr1620557637.4.1763628630461;
        Thu, 20 Nov 2025 00:50:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8hKzfeiw7KUajTVWUT09IM1IcYXum+16NeNzetDk7vnr4SOyPqlNRi8JzANnxDGUvWJs9IQ==
X-Received: by 2002:a05:6a21:6da0:b0:35e:11ff:45b5 with SMTP id adf61e73a8af0-3613b5d9722mr1620534637.4.1763628629868;
        Thu, 20 Nov 2025 00:50:29 -0800 (PST)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ecf7d849sm1974455b3a.14.2025.11.20.00.50.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 00:50:29 -0800 (PST)
Message-ID: <77bcb402-dc38-4f04-95e4-ff4fd5812ac1@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 16:50:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: cpus: Add Qualcomm Oryon compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com>
 <20251120-tacky-perfect-barnacle-0fb27d@kuoka>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20251120-tacky-perfect-barnacle-0fb27d@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA1MiBTYWx0ZWRfX6gdp/ehImx7s
 wyPjL8wAkq5yQn//ovj89MdTCFauJXdRCmEe9daaqMkTQF3ioiC6mc8A3q4g7BtZKQ5adSneq9a
 Yid8wkANps1vcvvMBLT0jJwH/Z6TLg6maTkCZxcLMTXVUSp2p6pyAgf7GoIDcT11yhimLJBNYJI
 YRK10SZBo5bfkpVoJ2oBmfJ7GqjZM+j1it1z3W46JZwcTRh7/W2zuZkmLIL2Kpf9wVReHSYimzb
 4b+QR1yMxuSIg+/qYN1+oj1jgWrDV0lXSXKmIPgcXp67vqWhYZWTUXUj3uNZ2aY2S0p+Li0IVnb
 Tu2nZZ0msMWRJadbfmCB+27CCGH0u/22SlmNBnF7Bdo5u3qvNCzFjcR1OA+QIyP2jS13HU2zm9q
 wnOuk30DZtgo1sM+8JNolwuWHEKg2Q==
X-Authority-Analysis: v=2.4 cv=ApfjHe9P c=1 sm=1 tr=0 ts=691ed657 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=CHWKSyAXehtCaGvrorQA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: zgnWT8J9j-64hJoD0EYOdfGla7boqXpH
X-Proofpoint-ORIG-GUID: zgnWT8J9j-64hJoD0EYOdfGla7boqXpH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200052

On 11/20/2025 4:24 PM, Krzysztof Kozlowski wrote:
> On Wed, Nov 19, 2025 at 09:50:53PM -0800, Jingyi Wang wrote:
>> Previous "qcom,oryon" is too generic, add specific cpu bindings:
> 
> Why is too generic? Why gen1/2/3 is not generic? Both sound exactly the
> same for me - arbitrary number incremented from 1 does not make it less
> generic.

This is align the qualcomm announced cpu information, there is no other
more information revealed publicly. The reference is from [1].
For me, it is likely the generation numbers information is having more
information compare to "qcom,oryon". And the current patch is to be
address the comments like [2]. What's your specific suggestion on this pls?

[1]
https://www.qualcomm.com/smartphones/products/8-series/snapdragon-8-elite-gen-5
[2]
https://lore.kernel.org/all/2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com/

> 
>> qcom,oryon-gen1 for X1E80100, qcom,oryon-gen2 for SM8750, qcom,oryon-gen3
>> for Kaanapali.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 


-- 
Thx and BRs,
Aiqun(Maria) Yu

