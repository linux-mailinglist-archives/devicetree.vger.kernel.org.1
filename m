Return-Path: <devicetree+bounces-223804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B616BBDA66
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 618B14EA4D0
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E818C220F37;
	Mon,  6 Oct 2025 10:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ix2ep30w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77358192D68
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745781; cv=none; b=Jqa/1F1rg95mTH8/+fA3o0wzfASTe1ljI3TtUbkd5sCA6rqIyfT1nn80OPYlrzU1/FgK40BsjuhHH8IbKVnQwBCQ9ASAgnGnNvfX6Edsf+LXIK52rTJqiQWlAdimiXq7VTa8mq1SDzxozLJ78l75xOnrV//eD78bqbxr9E958ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745781; c=relaxed/simple;
	bh=Eh0d0qZba8BtpAV24kNLwWp4pX6k+8EBFDG1/TTxghE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IadMk7BKSp26NZm8Z6qnznJJy3qfJmuNHQu1KwR8Pz/eiLTpV0+nBfjDclYifO/IdheP0TUb9AWaYwze0PEDisKZIyPMmQDsVkEJfVsCUQt1/8NM6ejZzFQzBTEF9r/SmQoRdPDFcn8wuY5Q0tlGbQsX4casNB3XVqLk+vqm800=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ix2ep30w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NB94s010297
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9HMZPOeln5HgZr8mqiZ5+a+U8n0huJ7s/8ub16Ui27Q=; b=ix2ep30wcLX1e/2B
	GWNuTi8+6aA4bntOApoh/Iu8O4cZgIEWYYMQNNiYKKRDgep2Eh5gase833c96zR7
	wy6bvnzMV9AJ7BokPIXpQASHjQb2kLpIGvFLF8jjWHRBaJ38scnazrHas/SKMuFr
	PKc77AyJJcZLYwKGpHIpzADt7+wPuP2NVkpel3g5FRU3Kah2kcmvIm/BOpAr/qkB
	D7tChDwVwzw90cnHRSeFIO1gYb18JcSBIIIxTbGwxa1RKW0JSYKCQWSg2VotO3zN
	tEL6LnvqPKhJkaq1KgYcRQaq6yhGok9XO0DPzeUC8hO3NN8ytkgM7oB8QeJA2tz0
	X6lVSQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1kgmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:16:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e56b12ea56so9698461cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745778; x=1760350578;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HMZPOeln5HgZr8mqiZ5+a+U8n0huJ7s/8ub16Ui27Q=;
        b=nZEGpp9rvxBTwwZsvmPZ1TvPtc04qXSkFbC7FRxiwpGa7LmsAfi/ik171mUaf9yO9N
         UjgF8lBkPJSl392Xu7h5cnzsWgMYncEUTH73zQRHVRI+0/o2uaMB3YmUru4WMiD/kTYO
         8G0LrbtgVFIMB6opvuRTfUG7xW+rIEALcvXZVTPGZ/Uu6KcJQg6w3UfUBdDVmkijRAEC
         g9levtvLT3jCw0frFzPI2Y3FnAP5j06FtuckWAD3XyQUTjEC/no2A1BPuLgHp1UoYp+g
         jWa1W85XqVREczXIw1hMjzqvWj+VrFGkEHHFqic7t8+h5LEtGbpGjpvrEmMtrRjvZ8f3
         pPGA==
X-Forwarded-Encrypted: i=1; AJvYcCUrCL/4ElSPvSKUb6rOtooC8mtLBcCKmX+b4zNfMZ+7MirzcULiEi/9+R9Abjo6O+FoS2/0BLQ9l00V@vger.kernel.org
X-Gm-Message-State: AOJu0YwKgFNXvSBm/AUS6Yvh+LzQ2X0HIu0qHlFQC9/5gDngckDvvwrj
	Y+zW5HXO+2DFje7aBlraJpcMCxBxRxHkSMdhRhew3IqwHOwe99tunMKvXUfPNAANCSw5mlOwfTG
	rnHaIEkcd0n+AdtKQIh2KOMz5XyC5R7fwsU/bvdBZ8O/ci2+YFPnomC6199rdQWbr
X-Gm-Gg: ASbGncvGLq8af2A4G4e8ffDog1HVoYF/4eW7RPzJ0n2M7dP+k1J9oB/lnv0+xHfODbz
	dI+hepHBVqU0Y+imVN7LqkH2/9EJYkaST2YvuvTtmzV3oG/l36FDwjfkPTclHNZmkKNA4kva9Oy
	3YLOzlzHcO5IUbDakCMmLhmm3r7BT4oH/k1YXtLAIaz3GTdHWF8kwFy5HUjLH+8Iu0m0eRlxqzn
	MDC+gxIQXJB9+IIcrIz/p6fAsN2Q8uamMc8J2zjePa3QqwKCZEjQ4l4EI5Th6qgB8Y1ZmHShDAa
	cWVDN6+P8BkiPSe+afBg9LwrlDWQBRCbO8XSb6Gv6qsgaVB48VMnJd6uRrZWLDpB7Z4dYDe3plc
	eRWYwuVMCLiZKv/TGyJ9BO/Px8Jo=
X-Received: by 2002:ac8:5890:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e576a2e554mr104006791cf.3.1759745778338;
        Mon, 06 Oct 2025 03:16:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPvGGEXMKSW3PR78XzS/AjAzDzBYLQ9l2XV3dnRRFJTzKidEAVeQO5t8uTCr9+KbX0iB5dOw==
X-Received: by 2002:ac8:5890:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e576a2e554mr104006501cf.3.1759745777846;
        Mon, 06 Oct 2025 03:16:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e78242sm1110936866b.35.2025.10.06.03.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:16:17 -0700 (PDT)
Message-ID: <f5526ac7-6e5a-43c3-a8eb-9f75cd3c6c36@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:16:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: arm: qcom: Add Pixel 3
 and 3 XL
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-1-ab8b85f6133f@ixit.cz>
 <bq3jeaxksk33ntdk32ojsdyh2d3qkglvgj6segtc3acizlkrhm@fvdsccdbuook>
 <6807638b-b212-44b9-b7cb-e53e1f11c0d9@oss.qualcomm.com>
 <012fdcbf-3089-4f49-9c65-1d0cc24ea2d5@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <012fdcbf-3089-4f49-9c65-1d0cc24ea2d5@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: TzNGrtRmfetPKglaKoY3mCsLU_EA622O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX+jJbfCFs4RZ0
 o39TXpTdGUfLzldie/U3Vm9+T6nLWTp+RB8LqheKAjCGX3gOV4yKJTcCpELKF9TVpwSgQVSY4P7
 WKGjSNPRJSFGjEmA3gFOIqDYp7tgs8Fnh8mI+buO4dNZ9lqCjF+YXhMzO/U6s+veu2+QOBjFEN2
 O+ObmKQ1jmdh41aG+4aidjfmK4yEjeuHnhjY5hkoE7oqItEBoZPeB5TDBWHltN7IVATK0/+tASJ
 U0fXGLBbqRczr3iJNd71qVT4Gmz/12JuGc4vu0Hxxn6IyKhuGihP1VXQUoR5DRY6R9wndDpIqq2
 BNJ5vh/ViY3DXURnUWT+FExQOlNKfUVuA2lLKHqyDxUMCv4cjJrfseZ7oAKCvyRDqlTbv/jbMPY
 aT9tNWEjrqYFtIyaiAfDDx2r/SwoLg==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e396f3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=U46Y8RmMCvoGOKAdW7wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: TzNGrtRmfetPKglaKoY3mCsLU_EA622O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On 10/6/25 12:09 PM, David Heidelberg wrote:
> On 06/10/2025 10:09, Konrad Dybcio wrote:
>> On 10/6/25 12:21 AM, Dmitry Baryshkov wrote:
>>> On Sun, Oct 05, 2025 at 03:16:28PM +0200, David Heidelberg via B4 Relay wrote:
>>>> From: David Heidelberg <david@ixit.cz>
>>>>
>>>> Document the bindings for the Pixel 3 and 3 XL.
>>>>
>>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>>> ---
>>>>   Documentation/devicetree/bindings/arm/qcom.yaml | 5 ++---
>>>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>>> index ae43b35565808..2190c5b409748 100644
>>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>>> @@ -976,9 +976,8 @@ properties:
>>>>           - items:
>>>>             - enum:
>>>> -              - google,cheza
>>>> -              - google,cheza-rev1
>>>> -              - google,cheza-rev2
>>>
>>> Why are you removing those?
>>
>> I removed these a long time ago, the base for this series is 6.17-release
>> instead of -next :/
> 
> I did purposefully base on 6.17 (and sadly the downgrade from next brought this mess), because the support for Pixel 3 is a bit fragile and as I have only Pixel 3 XL at home (not the Pixel 3, which I always asking someone else to borrow or test for me), I decided to kept 6.17 base so I know it's the state where blueline boots (in case sdm845 or blueline gets broken in the -next).
> 
> If you want me to, I can base the next version on -next.

-next currently contains changes from the past ~3 months, which
you're missing out on

You unfortunately have to rebase, or your patches will simply
generate merge conflicts

Konrad

