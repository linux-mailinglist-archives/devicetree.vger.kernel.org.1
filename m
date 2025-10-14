Return-Path: <devicetree+bounces-226363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B45CABD76C8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63C043A9704
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B20A22DFB8;
	Tue, 14 Oct 2025 05:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CGuputJM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3C31AC44D
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760419831; cv=none; b=PY1EmBqAnAPwZm888tPoWiuKIAYwNcCfbTC9zorrULi1eUKE5BMbAuWFpHdd/Iz3d6rPaReUuL0AD8F/5zsXkbap0e9YwLXhXVby990qrYc2CTuSCFCIvWfR66ZDbXHPSlus3wva2U5vbM9EhsWCF6IwSL14PNjfcTcMSF+vxYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760419831; c=relaxed/simple;
	bh=6C+0mVJBfwJ6eEKuKpzptD3vV13l/Xs2RlUk1P/FkIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HcLJTRG+Z3p34Nb1MZMLTAxJrOMy0pPWrTmAPVrwL1eE3i7LMsLCRLPreyAdwRhvA31NgvKP561A7Lj0NSEGEWQGVtqxAEG8XTv0u9g6G9uPSeKvqJ+1GRN4p0nxCkRLGEz4KntXAo7z0FN6go1Ju7cds48A0GLyeyOed6L2WiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CGuputJM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDKQ5012552
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mGf+luYW4jgMb+B3RwqAY4OAaUUBYWHpzhztabveqmE=; b=CGuputJMqrAfvxoz
	AlWw35VONHpoCCW7a3fUEMDBGpJQZvbN4MVdgvsMUuto+Gl2TrZAK3cJh1uXLzRb
	YKc0bAG7MMROO9xz5jDF39LEv3K182ZzBV3sg78VVf3l1RLefrkWwmelI966gDFq
	oPxb1pJXbdnyi6UPIKTpMGtxLiKx3Nkm3Z9MBl+CCM6v9BorFz3r+nvPlGY+vi93
	bwAcDBLPzGdFKUNDDMPNyxDohyTxt2B+Hwt1ULKDMapCKXxQ2s/5VXn6+q5A1l4w
	rP8wkOuq74tVyEq68BF6r/wCZe6ujqjCgwgFT3gMuqmDat2bFz3JCdojbWnEDD3z
	o5TJog==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5f96s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:30:29 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-781253de15aso16019548b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:30:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760419828; x=1761024628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mGf+luYW4jgMb+B3RwqAY4OAaUUBYWHpzhztabveqmE=;
        b=rppHIYpdlL5HS83bAg6geIgmGA0u9lH/Fb/OwumyW+krxA7fYU896vqwJLP8sZMO/+
         gijNIjL7TlMEXyD3oBjKlntZzs9kTVCaJjjdXKRTocwj5ZyZBkL/oqVoOJmA3phiO0Yc
         tpspdeLNP4qbouQn4EONBMhQZCLOj+Dtf0IyOfnJrklYSiTsGgoUU2k0Q7DBHPz/cnrk
         WL4oQ2bja3TCCKce7sO/exFQGJpOYlKHuew+zSl5qvfMvguLHTkbOE/l7gHTC7WpbvAw
         T+yFfHn+SqtIFAaspNNVBpYtgokIsATQ9DzagweMImqUYUd65OgvAaSMA04GmSdaHn/u
         DgmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaH5LtFNGnDBvXHRETSmBZOJU2oiV7NAerpyHesq40XVH2u4FZLlVJ9IYnTvIIR33lUPWjbceEl5Wn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzes8Nm9bardPdyiNnDu0Qq8YmRUaY6TppvnWpP6fazapqE2B2G
	rHu/KDQSu37MggH0t8uBh9tERrmtYzwQO8VYAPfevp8jsuCcYzbgCum4aCWJvmefCtWjjch3Ha5
	1WkRo22vSuUs/hCnL+TLJKhTsppUt8aFq4C7YMCJQzCBP3+9KahqMB/4bQTJiuY12TVg2eJi432
	A=
X-Gm-Gg: ASbGncuVsMLc03vjgLKAWMn8aLld+RfR2PYfy0Nvx+3Zq4fdAqeOFUluK1U2kX4dEPo
	tAJCLpP9CCcYAW9Kk9CduzQw9ooOBWdaZMZGhLkIrmFBRIJ1o/1rRTrht6PV/H/35Osq5WmsB+s
	M3VESWTZzpIn/L8P1uNcReURTjQ7jBJGPi6FdBmO6WYNZUdX21RJjQ4I4azKvyRQKZ0TgjYTn1k
	ZITrgl8jkQIJwuE4j6GUFWUxYBw/paMLkuLrM/AbZhe3rVlVwbKgvg+xzt4yjSr/OwRgRw7RXXa
	5EaiuuNtzakLQru/PpZLqAMpqwzCIrXOoZ4IG2PSVSBGgLX1W5mzIT6zwNyB8O4Q9dUCZ1kYr3t
	TzVSqvv1y7pMU1SbD3sC91SXox66Vye9pC/c=
X-Received: by 2002:a05:6a00:189e:b0:782:cc55:be67 with SMTP id d2e1a72fcca58-793870520a0mr25278553b3a.20.1760419827724;
        Mon, 13 Oct 2025 22:30:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoPKUcolh2erT/HShMlQQ9jq2kdIFbjddsu/zl8eo5idfZCP8/onE7f7VcV98H1IJ153XAOA==
X-Received: by 2002:a05:6a00:189e:b0:782:cc55:be67 with SMTP id d2e1a72fcca58-793870520a0mr25278521b3a.20.1760419827279;
        Mon, 13 Oct 2025 22:30:27 -0700 (PDT)
Received: from [10.133.33.138] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b63d90asm13463745b3a.24.2025.10.13.22.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 22:30:26 -0700 (PDT)
Message-ID: <0f0969e8-8668-411e-8ddb-a124703c9584@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 13:30:17 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] dt-bindings: remoteproc: qcom,pas: Document pas for
 Kaanapali SoCCP
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-4-611bf7be8329@oss.qualcomm.com>
 <a8796335-bec3-4c1f-afea-b5b7909d8ba3@kernel.org>
 <e9813a47-c40b-475a-8faf-de0811c9066e@oss.qualcomm.com>
 <40af8d13-1bee-49f7-946e-043b920d83fe@kernel.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <40af8d13-1bee-49f7-946e-043b920d83fe@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lck165oYLZWxeiEIrU8LjuThasVN9HsW
X-Proofpoint-ORIG-GUID: lck165oYLZWxeiEIrU8LjuThasVN9HsW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfXyfc+99TapQFq
 30pcw26V2VtAfBKGxPknGn0G7bO5O7r+t6b9BoQZ4QVHWNTut/Ok4wdoTfpiFw9H+776daSJnxt
 uG1EKXyl32nP+kO9SeqNNH9u23RvcN3E0M+UPnD9EhNX/0of4iHCayIwqnXXzHoLniQDJcUD/Df
 TF2nSKi3epJTUZkfiaEejjGUPwW1VPuL9Z3rRi1kbDLLLHRN5fsIXJUjoqoMEJuYbzqWol8/TwU
 uIVR2ViGwpd1EeVf3z6I1O57LexUM8qowESkW9pXKxQTsPAKXczEvzPe8BBduFdE7elISWKRgsV
 Yo1RjtAAXzRmVsl+Y7jy+qPiKLrbJve6pyS6CvMRySmvCIcBv0PGrfLtnpIQO/Y9CMAq0SMzGzS
 tXg5vihhVwgGgx0h8J79bToqYZzkFQ==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68eddff5 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u80fgmE9l9i9TYFULvgA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020



On 10/14/2025 12:47 PM, Krzysztof Kozlowski wrote:
> On 14/10/2025 06:28, Jingyi Wang wrote:
>>
>>
>> On 10/9/2025 6:27 PM, Krzysztof Kozlowski wrote:
>>> On 25/09/2025 08:37, Jingyi Wang wrote:
>>>> +
>>>> +  glink-edge:
>>>> +    $ref: /schemas/remoteproc/qcom,glink-edge.yaml#
>>>> +    unevaluatedProperties: false
>>>> +    description: |
>>>
>>> Drop |
>>>
>>>
>>
>> Will fix
>>
>>>> +      Qualcomm G-Link subnode which represents communication edge, channels
>>>> +      and devices related to the Remoteproc.
>>>> +
>>>> +required:
>>>> +  - compatible
>>>> +  - reg
>>>> +  - memory-region
>>>> +  - clocks
>>>> +  - clock-names
>>>> +  - interrupts
>>>> +  - interrupt-names
>>>> +  - qcom,smem-states
>>>> +  - qcom,smem-state-names
>>>> +
>>>> +unevaluatedProperties: false
>>>
>>> That's wrong in this context. But if you add missing (and corrected
>>> pas-common) then it would make sense.
>>>
>>
>> Sorry I didn't get this point, could you make it more clear?
>>
>> The property for Kaanapali SoCCP doesn't follow qcom,pas-common.yaml
>> (the interrupts are different) so it was not included here, like
>> "qcom,qcs404-cdsp-pil.yaml"
> 
> 
> It should follow. We want the common properties to be common. You cannot
> have new binding not using common properties, because you duplicate
> property definition.
> 
>>
>> So I think just adding the missing "power-domains","power-domain-names"
>> under "required" will be okay?
> 
> 
> You need to adjust pas-common.yaml, all other bindings and this binding
> so there is a common part.
> 

Do you mean remove the interrupts property from the pas-common.yaml then
define it in separate bindings?

Thanks,
Jingyi

> Best regards,
> Krzysztof


