Return-Path: <devicetree+bounces-166481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE602A8770D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 06:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F11E3AE72A
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 04:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C1C155342;
	Mon, 14 Apr 2025 04:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VanVoaNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96F74C6C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 04:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744606033; cv=none; b=UGCnjF9XgLMwiby0bHRQk8eAZseEMpoEFJoC7nBCqfDrUpXKCtAXgGQAjt3D9zk80kCVZ3UnFvIrSe7K8iS5QBQiPGePkwygE8lQ97N9uZ5Dun3l8f4dAQTBi0BRx7PQrVw0r1MZ2KqkLrEDT6mIZRYeuzR3Ds8tv1Ds6NSuLq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744606033; c=relaxed/simple;
	bh=Lzn3nHg6frC70bwlGUP9NFlYU6/Ims181gO24nFkAeA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=L+O5ypriXUjEWj24H9sV3Meq4pDKxcmN/b1RaTPZRKt2BAYp6Fvk7X+C98aXnSzYEjpEEt33BtKxVOCXI8nJPHkveGB2QtPKAxyhPWQaxme1DXMAVF32pk+HpBjMqLYV9XWmw8zzXTLmEAwnVEs6UCIz/RvcjWDPajoS/IXWbOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VanVoaNy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DNpiJr030194
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 04:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d6LHPGzKPTme7TI+asF2UgD5YaL0iWt97fab/CoRnI0=; b=VanVoaNycbpUTBNM
	dc7qcCbPBr1jrTZCRwy4kjtcwAUVShM2Cfalrhp39gh5DTz2IGv3V565CbsWTqaz
	1tnOKpeRjPbME5WndUinzXjWLmuRdQ5tr0T+UGGhmz8/sBMJt8qCI7ls/kkZnNM8
	PSOC8l/OCPUDEmrTpvPkXhWzztvgmZ61DkPiqykCzDi4pWs84oH/PhzlTJfQv5va
	F9O8ez0rpEaLViiww/mVhaEGM302joHI38LuEdE19gA8MD9BU2gYppgp2ZngTk9f
	pCfYPVxQPzqanJmxqLqLXJnpHcKqQGHmDmnL4K7V+s9dB60MuC9cwYXRfhMIzT19
	U0+95w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpk6n8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 04:47:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-306e76c04f4so3316035a91.0
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 21:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744606029; x=1745210829;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d6LHPGzKPTme7TI+asF2UgD5YaL0iWt97fab/CoRnI0=;
        b=YqWBkYEMIgShr567B9iT8a9deAKNKD5Jd9JGih+QiNTvgmlGOSR+1QmfoZjBejWf8a
         CMXdwAAxgVOo1kLofWgag9DuHudwDcWdWVuQFEF/tu0eNx7K9v4/wIu59jbqB0CpGWZs
         PLNXFlQ8tppB89mDQGRntKzqMBBDCUoCCuAxVA/BUYFZ8P+TK1xV0J73kFlaNCw/OdiA
         Yj59qF3cdElvF3ae0HxViMqoGYVaBLVQdUBArAfa0CyK1Zs41iY2e1eOwoQMJ61tR+5L
         I7AMC7Fr+dLwLiDsSHjAwkWvIeGn5Szi6dqmwhW/jEK/ES6eOQkIOwWyo75c50nXXZgF
         sbyA==
X-Forwarded-Encrypted: i=1; AJvYcCXuMzBGTOnHKqtMwZIgCsw7/qoMKuGOcekfxJJO7wLB8XGcK6r/sdP00azofadSnrHy7BN4BPnY1cLh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6MN7uapU8JYQdR1AaxYf4AhAoad7HEddE/545tu2XpOUfqEdn
	uDajDfN3REpi5JE2cVs8Cpl+wP6641Jolz3eKzvb2uGOThCz47buPciXQP519xsqHHt/beZcFsZ
	PmR9sRQUaNp4KRuwI2liIGL55fmcz9ZKkpOFcsLo6Z0Ah/JVbnUT3Msnfaxe8
X-Gm-Gg: ASbGncvMxPUbWdIUdiCxqHXpu3jCxwzkYZveNtrL58ixzN3s1SpGahvPpU9mTwjeF+b
	p/xOL3IGs4reWqR7OyriVCIiqZuGmLLXhiRNkFuWkG7sHeTiRfvsGwxTavagsVydYKymhOl76ne
	RHjGsvCq1rO1usQviwtVLjW3akhRKLUrFbr/p/g4rzzxtHEUqdh3iICEFiA42gENIE2NpkucOLZ
	G+vQn4iLRCt6FinrAA8b9Dm/oHBo/n0jmFozuGBTO830FBSF0hjNUytdO4Gr8xwcZVXypEXiMl9
	CWyh0fdo1gbCTU6KwkT7Ty7AVPdvK48SIUCjNDo=
X-Received: by 2002:a17:90b:5845:b0:2ff:64c3:3bd9 with SMTP id 98e67ed59e1d1-30823672b9bmr13074702a91.23.1744606029147;
        Sun, 13 Apr 2025 21:47:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENsOydhWzBxYmE9zqg+BUpla0g1wkLIqAB06iaNVVVSJnMKCP1JKLevtKvj7kV9klIR7euew==
X-Received: by 2002:a17:90b:5845:b0:2ff:64c3:3bd9 with SMTP id 98e67ed59e1d1-30823672b9bmr13074666a91.23.1744606028211;
        Sun, 13 Apr 2025 21:47:08 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm90866115ad.148.2025.04.13.21.47.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Apr 2025 21:47:07 -0700 (PDT)
Message-ID: <8451d951-4876-4dbf-9a64-6284f4b194f8@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 10:17:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/8] dt-bindings: remoteproc: qcom: document hexagon
 based WCSS secure PIL
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
 <20250403120304.2345677-3-gokul.sriram.p@oss.qualcomm.com>
 <6b33d7ea-4ad5-454f-bd26-0ef961cf7ae3@kernel.org>
 <91bba481-5871-48dc-a7d6-86f3bcb60d0d@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <91bba481-5871-48dc-a7d6-86f3bcb60d0d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JdaZuAGb05wOv66RxnyrHMj2-JpVUzGc
X-Proofpoint-GUID: JdaZuAGb05wOv66RxnyrHMj2-JpVUzGc
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fc934e cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=I_bNZBVWta6x9M9XHmAA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=809 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140033


On 4/4/2025 12:38 PM, Gokul Sriram P wrote:
> On 4/3/2025 7:51 PM, Krzysztof Kozlowski wrote:
>> On 03/04/2025 14:02, Gokul Sriram Palanisamy wrote:
>>> +    minItems: 1
>>> +    items:
>>> +      - description: Q6 reserved region
>>> +      - description: Q6 dtb reserved region
>>> +
>>> +  qcom,q6-dtb-info:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> NAK, you added new properties which invalidates review. You must drop
>> review after making such significant changes (3 new properties? Several
>> other changed).
>> See submitting patches.
>>
>> Anyway, NAK for the property, you don't get DTB info from DTB.
> Sorry for the confusion. My bad, this Q6 DTB loading from rproc is a new
> topic.
> The HW/FW has not changed, will revert.
> I will repost V5 with just the comments from V3 addressed and introduce
> the changes
> required for Q6 DTB in a separate series. Is that fine ?
Hi Krzysztof,

while posting v5 with changes to dt-bindings in v4 reverted and retain
it the same as in v3, can I keep your reviewed-by ?

Regards,

Gokul


