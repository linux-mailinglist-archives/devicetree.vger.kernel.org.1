Return-Path: <devicetree+bounces-222322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4116BA818B
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:21:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 012C1189A51F
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F4125228C;
	Mon, 29 Sep 2025 06:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iBz9Lq7K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC85024E4A8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759126872; cv=none; b=NLtWkuIQRwlKf1bERxWnZ6Fz59iKM/g28JItw+iC5huz8LfOeiu4IK1gKdj5VvQrn5fW263CTv8NAO1iUuIETSgTSjcnUQrm7t5vW4GmeqOJFnQVjeEdyolNlE28w0dlh/otxsDapVua4DJh4c8UAX1RixaMyUgUXHacd8OpJAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759126872; c=relaxed/simple;
	bh=q2Ex45lu0UO1PvLVxP8lWfrNJZYuJYUaYkJPz++bp7Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ct7eH3cUeFJsIRRHCASZYEvt0mOgrlBC9wgeFTt0apJW+q5ebdP9chGxZ2TuTYa470lNC6lt7sbUtcvh+sT9yTEnB7SbgpxUrG654NvFTbY3j5dkKBep6yiqbtscEi/+x6+KLv/DMs4yGd0zaP5ZsUmymAgiXnkp/fVGIwOCKgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iBz9Lq7K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNRW16029567
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:21:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T5RCAnxQPgz+f42q/uUJ/xybCFPufzjjYf6jemuzLns=; b=iBz9Lq7KZUAWV5e2
	M2gRNFr9+vsxwYogYHviBud2IpabKlqDVZIp38xfQ9RDWLmS6ghYCO2RbJOtrroT
	UrT6chIkaQSSw8VmH/E5qavZtSEHXfUtuPjOdUqerdCSMJWaOzcHJA0lORQyrh7s
	WXnvoCj7puHQ//FiCls57Et4m2cehQ8TpTXyqf44sW3Wx6AcFQqOzVx6C0Bqhj4y
	rZe1iUjb1pKlxN3B91CM5Zpp/rUjzjz/KHE5gFM4Ybss48ei139M2ZsWj+ttlAZY
	nn50H+OCzMEZBD27ssozrEVZrTm9YlXWXB67itOyQHBHWGatMpDBJ0MmRewKTkfE
	0I9+1A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdbwfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:21:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77f610f7325so3547965b3a.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759126863; x=1759731663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T5RCAnxQPgz+f42q/uUJ/xybCFPufzjjYf6jemuzLns=;
        b=cmuQXvpG5Ck1TMvm1NnRc3n1ikyI61TJo/ydjBC5wthivMJr1JZVfNh3S25L3ihSq4
         EfwFq3JxO5n3zkWzi4TzxJdQw6R75MrtGttAEe9IuHlPMJ1ikUzr/gOx44iEIEVf18y8
         k9KSGQsbWoiHKiGKhPp/bJ9Ypvyje2EY9LpY5mgt7+yKF6F0Gszhk2l5Lm4Ty06aJ1qV
         bWDxRFNeVDxsfqGyTthLHqTehrLMoL6P97v7ORhDaZDVvVERmUn0Uns9nosIGAGKH2eb
         EG697LKrgBK3QktGJ4fUfjCDRRYDIpRpN0ft3FXTg2x6RNnZr9a72yIQPkt+EPj7BukU
         /M6A==
X-Forwarded-Encrypted: i=1; AJvYcCVcCJdFeahmqd5hxmcZAIVh8Uc4Xx97qnkefw+ZM6v5RQ9y5gyGgdQgk7ptqkYrabwU1IGLSiHWB3q1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa9os4kEN+UQqO/w/opePwMreaGFxqDmIKFTF9T1Btz4I0aCH7
	7YE/adkZz09diNbHP2mI7nISLF26/7iyGFw5PWvPlKzRsl/jo3nNSbc9UI2TT7XCZdtOIEkIWRl
	rG5+3LeIzp5+7O0XC3ipKCsMXSof8W3FtjzQk+Af/FY7DhL8rmX6G99kQDKkWN9Pu
X-Gm-Gg: ASbGncvMGXkXWvj1Rmu6E0IXoXB1Z0MC2PypXyJovoV8GKZdLLYQgN9ZZMVbdivmYW4
	s+dDMXJDvoJeXDcWy1RFeVSOzgljsOCRn5L4e0QOR6wgX/Jqk0ROo46p3WLh66HO+en7DyjWJ9J
	HvBAY9PrNdPnUt6vmoCbykWE5+64GsvDiIFzpKjvSa97HM+7uuBVzuXvP3TyYTf7WaPqxQhXCUl
	KSfToGsPkaXSdzZXFpP9h8g8QwSLBJDr+8osPbBz4aF622isoYW+LpQtfpLGpywSMT30xqp6WZT
	mKwGyb9986BbfK2U63OK9lAZLHoCt6gn/Iw3ldNoM5hQbj/CDmcklD9jv79KRpVlLEmJXcQTM5O
	6gzFsmtbGfcPK4xTECXKTeXG7GOuzgpxhfFg=
X-Received: by 2002:a05:6a00:23cc:b0:774:615b:c8ad with SMTP id d2e1a72fcca58-780fce0a094mr16191380b3a.9.1759126863011;
        Sun, 28 Sep 2025 23:21:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyXhVu5YJr/Bl08pETVz+ZdPLkfd/FjtkIFppmpYj1TwDX2jO0Olrp/Qot5cdvw17ItUB60g==
X-Received: by 2002:a05:6a00:23cc:b0:774:615b:c8ad with SMTP id d2e1a72fcca58-780fce0a094mr16191351b3a.9.1759126862600;
        Sun, 28 Sep 2025 23:21:02 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-782634d2a7bsm3892488b3a.29.2025.09.28.23.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:21:02 -0700 (PDT)
Message-ID: <5820a9a9-4474-4c4d-905c-0efd9442e5e1@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:20:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
To: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
 <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 25hIHX9ndGGIuVRLCkhzvMnZVVCR4ocy
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68da254f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=yr-pD6fi0WPqCAYln34A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 25hIHX9ndGGIuVRLCkhzvMnZVVCR4ocy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX4UdyE+hsFTYO
 9wNRnngOm3HtJLSUmTD37UTnIOifxN0rsFUXmfV+Pf0vQxnwjOGXZIlFwZ7ThETfTINjNv6eZoK
 0IkAiY4fhYFtuU7tWsS3HArh0IfMOjQtc3BDxFJJIjWCazKtK0a3gT/g9gToJFglisjrMOrySRa
 6G0gAQUmNG1ZwEI991jQD4NoEbbsiJ4T96Fcq4gsJ+mFuddrHWISS+btgzQVbzlllZdQCGIAY0G
 xzTP98wpPyXwYgOA66BHd/Acj4oEBgDOCahPft02aLB1FSDY0GRvVNnoHW1HeEbQkO0mBQBauAV
 ZyP//GGYDeLqkFMFtUqKPjmE8ElIlWVZiHuSEUX2tI816QmBRjRs6fZek+ouGYPiXT/o3bUQa/c
 V7IMLiyjaMyMp4j2EKLYvktC8pL/Lg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036



On 9/25/2025 9:48 AM, Krzysztof Kozłowski wrote:
> On Thu, 25 Sept 2025 at 08:37, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>
>> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
>> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
>> interrupt.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index be9e2a0bc060..031fdf36a66c 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -35,6 +35,9 @@ properties:
>>        - items:
>>            - const: qcom,sm8750-cdsp-pas
>>            - const: qcom,sm8650-cdsp-pas
>> +      - items:
>> +          - const: qcom,kaanapali-cdsp-pas
>> +          - const: qcom,sm8550-cdsp-pas
> 
> 
> This time maybe without HTML:
> 
> This looks wrong. This is not compatible with SM8550.

Could you point out what is the difference from your perspecetive?
it is the same as SM8550 except for there is one more interrupt,
which is also described in this patch.

Thanks,
Jingyi


