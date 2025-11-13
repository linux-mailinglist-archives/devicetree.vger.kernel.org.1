Return-Path: <devicetree+bounces-238039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B21C569F2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B0B73BFB5B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD032D877D;
	Thu, 13 Nov 2025 09:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTwEa0O0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GLRQIUer"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFA42D7DD3
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763026157; cv=none; b=dF5bIIiFQMHIM2lzv3m8Ymyi8bKWIHfVrzn0WyuQZOzpaF2NkKaZ31QOEnjYnfGeyzFKcVd56/ReDembvh+GTtR2DkihtOT2ntBgruUzBTrdCaOkJpkt/9Q2RDgj5C6EohKY4EHH98O7vREI/tcgVEJmWzbrvqG8maHbjvAV+/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763026157; c=relaxed/simple;
	bh=8MJNIVzao8j2hrbn+0QUZMXmV+Ny6jHql9vsW3ffK/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZRpbuMpGFHDWVzkhc14+3yvF22EBk04QDtm7UmMWTh6fsesSLiTlqnH23Wr/KN/X/DSXTunf6cgjVtDyk/YtqsuFU72loomTkoX8Ugayfg+vnmHwRBX53u07RCB2urflrtQHF6cZzQjBbPRYLOFBtLjP2tbh6M3BNeedW6bfJaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTwEa0O0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GLRQIUer; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD1SRCZ3120573
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:29:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dk2V+f97R7FIH+RWhnR8qR74s5z0Cna6ABS6uSkhx9Y=; b=pTwEa0O01ggQkmZ+
	aheH+/m17sgjioEGYcDKKAHqaOCVf9Ch/1rOlFiqgbN8wMlMEssOojpkhNjULEA3
	bmifele/wxUqi/ey7vdSZTQ+OWlIFhL32vvnyzt0SVXs2F63ljSbPcaEJ85OG5Zz
	vNnUQa0Pyj3BkfD4FoQx3nnB9Dih/8AGkiZIHqlitAfWYroWhJvMagRXnaVglk64
	QaA1Ywc8LWOb2r7zDljj5Yxq2VdZyMJWSeVNZTNDIjNKqv3bmDD5++hxbp7H69+g
	CCcJjvk/IIqNDt94IWpVbfYjDlcoZuIONdBk1PG5k9ihEPhCbcBkFK2wAQ+eU+Ue
	Y5HoGw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad5pusagt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:29:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edace8bc76so2263261cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763026153; x=1763630953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dk2V+f97R7FIH+RWhnR8qR74s5z0Cna6ABS6uSkhx9Y=;
        b=GLRQIUerqk5nEXwzxrVOzGCuNxpnZBRPM2OW0t3+a1CWh7yhtKU3GkX0/Mq7cOlvLq
         WBzW7BFdLlpMVFiLe0vSBvwZxghSKMCqHfPajJzjWkpq3lrqCEZIjirXmuSzZsYIkMVD
         EbfA93y4JaqM/6i/VfleVmvLhPuKwRiXspue4/IgqIfvlogRmURyzqTw7nxFtK76473+
         U6lnwErPVqPwXizthMQQ2j6CtDLUxcQuscjec4ojnjYZzfufVWmNWyRRw8cq0p8JcJSR
         B2EFY0GQ60EDiwIbujJq/9tQimYzbo9/9K82dr5UoDaG5QZ2jFNrDJwnXOkbGSDiRvJD
         Gw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763026153; x=1763630953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dk2V+f97R7FIH+RWhnR8qR74s5z0Cna6ABS6uSkhx9Y=;
        b=TBjkpgWQ15UZNeEq3Ig4jfrDSLsfVLXhnWjXK6doEbDp213WURNFj5UGQKBBVbNZik
         sFuDnKe7tQt7hC6Ll3Pk31GgKpgBa7TOY7dF9BwNIJr6q+G8AMacHAL4sI+ZBHFy+MPN
         Ee0p3t3LY9qTA9v9ZrifD6I2SpjmB3yEC/2wGLIpT1Gxd3omrR6aTVejrCnpMKSKdMo6
         y3RQRVOx0uwdrhOF0bE3yNjCtKCtgBq0XiS4DcY3k0MEl4oTDiDwBjlJ0wqhybiQ/cBQ
         RSw1x3crK2WjpiWwJBmXeMG1wHOVLGSAQQbI2iejm7Eqb8m8d3xRy6r4zQ9y6UaD4WWh
         /7NQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3z4B+WDWHsXPfMeLy5zPrccLt9ML/eB1MSJjb8v7isr8sAlZ0rTBuLTpPi4I4sJGmSw/0POoNbCr9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx43db1sdkwKGEBSwq9I2T1Eoxx9LZ06dJsVgWrKB5AlNmpIrTR
	pyCBX/aJbZ6oaIPusXombvG0jUZtOwRdF1hv8sAdETli8+QD9KscCwHJb71e0L02Rne1MwLy3pC
	kSvO003Q1dFh3yBvlpnAYJRAKfois8GYDkc0iG8rAi7bQ3AlGzdLcja1/UMjJnzDJ
X-Gm-Gg: ASbGncse4m2w3FsvLNRBj6Corxh9hkPLoQ+TJ7QrGgrdG11RzhvB2bKL2H1ay1lf+IV
	3TGsXn5UzLrCNW9YErvICozaTDlSDpsoOHMMiRT1DrH/T4xul4/ow9uQBYt7KkP5hohuyjFqMsf
	1XooISRxfn7YBQJwVHEGZE+DxtIind1ism9Da1bOKkR8RZAJY07XX/9DIVKQccp1SG4B7pr5Q3u
	QMylhX/zeP8A+PFBgoyb1anqzoQr1YZlb5NI+ZY059OL6MFEcqvsr2Le42BRMyayjGWBPpRXANi
	/daXhOVvt9td9rArxJ2T4wlHdIctNXcYLhICw7hmDPHgVsmp4n64v9mj4vd6JwSukyuAZVRGCUX
	cS2u9ZUyMFreWBIc3sdH0ONIVRwWRgQx+/rnXaD50rZCPbGeF8yFWpKD7
X-Received: by 2002:a05:622a:16:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4eddbd65318mr52613381cf.8.1763026152889;
        Thu, 13 Nov 2025 01:29:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBKglDPCuRYE0ZGVzuJPGPVwQT3YRBKzTtOU5WmAoz7l8pjecUcIWj985OWak6SKf5r+bgQw==
X-Received: by 2002:a05:622a:16:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4eddbd65318mr52613171cf.8.1763026152358;
        Thu, 13 Nov 2025 01:29:12 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a2d746bsm1057796a12.0.2025.11.13.01.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:29:11 -0800 (PST)
Message-ID: <f76b51e0-43de-40c6-8be9-cad2bd2613ce@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:29:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/21] drm/msm/adreno: Support AQE engine
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-14-bef18acd5e94@oss.qualcomm.com>
 <1202b66c-6d4f-4909-a010-7e5e3ec7f0c7@oss.qualcomm.com>
 <cc4ff1c7-3158-402d-b746-5aa57b4a855f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cc4ff1c7-3158-402d-b746-5aa57b4a855f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E6/AZKdl c=1 sm=1 tr=0 ts=6915a4ea cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CPo_bn1fJaELX20lIFIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2OCBTYWx0ZWRfXwDJ3zaoG4J77
 KkIYBFm6nDiOW+Ei4vs+1LR/hd1Zq8FWlz6o/8ofPGTjGKxnNffj9nZRS1pZeB2BRcF+wQjAoTh
 NHQNK4a8R4wOKOougmXD/xdf5MjUqd6kqE7hdxTlffaQkbnuzSMnX+s/zhz/I1xPmbHdaw7GQqx
 xHJLvlWN2S7Qcz4tjECDOcSRJAZtc8/56kHYJ9I7to4ZCpINXZRrgrRmDH+KSngzML1SQfpxOhG
 tV1bwSxlZkq3xMYh6lGLnFFlz0dg7lIdo5jrGhzc1xAAbchDjplwMcLhGbCG5DMJB25zwN9z3sH
 XXUMxK61FNN9P7QoI+OSKJRE34bGa9S1sHPOX9Yq82eMEAqs4Iv6V6EMVMmAqfswjwvfpdT3A8v
 LqvMSvm/gpIHfyB361c2kQivtUtbsQ==
X-Proofpoint-GUID: QKLIL4_958RRnXD6dh3VCdWnTeatRFPc
X-Proofpoint-ORIG-GUID: QKLIL4_958RRnXD6dh3VCdWnTeatRFPc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130068

On 11/12/25 10:16 PM, Akhil P Oommen wrote:
> On 11/12/2025 4:37 PM, Konrad Dybcio wrote:
>> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
>>> AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
>>> in Raytracing related workloads. Add support for loading the AQE firmware
>>> and initialize the necessary registers.
>>>
>>> Since AQE engine has dependency on preemption context records, expose
>>> Raytracing support to userspace only when preemption is enabled.
>>>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---

[...]

>>> --- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
>>> +++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
>>> @@ -616,6 +616,9 @@ static int hw_init(struct msm_gpu *gpu)
>>>  		goto out;
>>>  
>>>  	gpu_write64(gpu, REG_A8XX_CP_SQE_INSTR_BASE, a6xx_gpu->sqe_iova);
>>> +	if (a6xx_gpu->aqe_iova)
>>> +		gpu_write64(gpu, REG_A8XX_CP_AQE_INSTR_BASE_0, a6xx_gpu->aqe_iova);
>>
>> I believe you should also set CP_AQE_APRIV_CNTL per-pipe
> 
> We already configure CP_APRIV_CNTL_PIPE for this.

Aaaah right the register I mentioned is separate on gen7

>> Should we also enable AQE1 while at it, to reduce potential backwards
>> compatibility issues? Would that require solving the iommu woes?
> Yeah, AQE1 is strictly for LPAC workloads. So lets wait for LPAC support
> first.

Sounds good, thanks

Konrad

