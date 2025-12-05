Return-Path: <devicetree+bounces-244646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 984CBCA780C
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 13:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C9D63010FEC
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83A8533031E;
	Fri,  5 Dec 2025 12:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HLiHqHen";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZYleLIDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB37329389
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936200; cv=none; b=YrOPqUQPv1zbtmxvvEhVKzD02S279whHzW/lu5LBp8K7qE04e2EI8cbIzok7ckS4IQMBjh8e7CeNlQ4gjk4/pvWUHX/Uya9wT0cYnoKnAa+UODbaxN9cEvyzApvvwD1EXCXzbuMcngBAxqrLSOIUE/ophzmgaimxF24P+eNj0rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936200; c=relaxed/simple;
	bh=v9h+kkuk56zMsB4Du/PwkY7JPFHXv/drmxI+Nn0ItY4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOgWVLmCJNlwpbUu00E/G3AiSpz2zWTZISrIWHQimulLgCH938iDBtg0Q8UGR0yDSWVbHSF4OopAphFjyP1BjFgaaySV7yK75ewYZRz2pqLqL9oUkVEwv+Ob13emUaXbpDNzcpobRxiveF0vlAM5Y7EZEWy+oumej79kd11mUSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HLiHqHen; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZYleLIDG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AOTTH067664
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 12:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7ibRns9NpT7LfaypmozZ00h9uMW/vCu+51UfOTwa4xw=; b=HLiHqHen3PiMkldG
	650qsThVHMEsBaLSxlhAqqxkXk9hyckjX3twAM+eVhqgQPo+buHuUVkViDY4U5M3
	x4mjcu+QuAVSXxAJEZGIFzlwFJ9A3urUPBK89UyW0aOYcdMl2LXBtqoutVl/xLX3
	2YMDjUDdmcQPNNiezzjWfbzFc8+/40uzOfO++SQdqu+doThtkmzU/kdxoJnMC0UF
	3/sti3IUArB9nsozpPc3e39+uHwWfGA/UzaDY2yoFuetG2l6+MhdxTpYJVEupz49
	qI1eJlXHXr9ppj2MGZucS7ebu3RbhBoMRClYC0uTfHBrOs2tcBYCmDWZFh4qRH/I
	K2knPQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm4g8mk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:03:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8882d5908a1so2678466d6.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 04:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764936195; x=1765540995; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7ibRns9NpT7LfaypmozZ00h9uMW/vCu+51UfOTwa4xw=;
        b=ZYleLIDG4nAxGsMeG6j4nUxbKEPAFpcQqY1HtzYYUxjIqM6mkVZpkCLCCqBBVoB6g3
         nWoZ3ab7dwO94sYhKvrqHAbetitDUy7yOkK7JB1RySZetRtd3+OOxKxEoH1hiYCmJe9E
         q8p2udcbu6/9fm18C3cuYO0BAxOz+qSpA/FySTBl7CrtOIw5LCjKDayh+e1DvYK/sWwn
         hvT0xzLAY7zSa+aM8HaADx2259aR7Vj5wLUbkbYUd8xFE7/nkqTnJ03Fibr9sbqZH1uc
         BdZDQI2CVgJ8++f15fhXYIeK0rQz621rQoyT4+bbC7mZRGRAmrWNzKywyHMHFqmZdf5X
         VNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764936195; x=1765540995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ibRns9NpT7LfaypmozZ00h9uMW/vCu+51UfOTwa4xw=;
        b=mpEP1DXBYumbyKznApbkqaYd7isL6ENfI49Sy/avCgEqKUTseO2PItE3axsx8j0HbL
         mktjLXOwpP0J1jZ8uSuTWTANM85zYtpOWcZJKGFvwYyO37w/C8iClr6G2QtbwUmPi6S/
         O2NdwHPBi2lNQ0W4qZqqQYUoZ+ANgNoo/+Ka4QCLzx9A6CaGZPT/w3vqf+JWtc8dz5e4
         LntmDSHzR8Gt5Z2MUvfhh8m1DqxsLuZyoVgnI6VAvaiub+BWdbu0KM+JnehAlxwJWGRj
         Y3ZXgycyTdQo4Q3n4azV6rIZ2v5owTAN29/4pjUuatIg5gqKo1pNJRv6SZH9jIhHN9H/
         uE7g==
X-Forwarded-Encrypted: i=1; AJvYcCWlmJcRSPin/pet6ADGT+x/IT2SV71XRa+T2sg7fmKoRbNATMReW1tTjr4S4+KkqJydiVO2HBaIF3zN@vger.kernel.org
X-Gm-Message-State: AOJu0YzL4tTefBYxg86n+e+3mUMRXhL6e7i0Ohzs6863rb1+zDOsglZQ
	f/M865hdpcOtWkfHPu55Rbf50MCquPPkYfTOHNds2YA2yj5Lb79+7N5oO566GbT+Y2K42fwRbtg
	ueRWhyET47XOI/tP4bgE0KTn6NE9YnRPnQBOIIfJG5R2RYoC/4c/j1JGibcjP1FiA
X-Gm-Gg: ASbGncu7EV/XSFF/Mw7956Ugy0fwDAoXabOcw9KD/3n+BK0souckYfp7E4Yw+BrnxZR
	YyIHdGpqX4le/FyvWdlUuGzXpxymjUwasSo2q7GTJFCc3PGNGCOvCiXUIkFZA2Nrde5dglYpQUB
	6nSFE9N54qi8nJbUfU8D0G4//7kQQ4lMJyIxDNM1RIib7yBaD3DftIaiZmxr2FQ5Ejdzm1oIr3L
	X5aczoubpk6qhfwY8U2yJKy9nQJ+CJRP40Xvjms9ITeiz4fSa8CtfKq+zua1eF51ddiMlHfAxcH
	NfHKhPgdkZszhR+vv+3qmVowps0vD0iYYMD2A/jQPvawsN9kP/XlGncbQGYeAlY+yur57SfUxDs
	0iPwF0nmDOlj4MZfWH1ch1iBOkRrDlbjmg/0gnulixi0tp6v0iCyHdRbuc/kZXjRWpg==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr100919591cf.11.1764936195069;
        Fri, 05 Dec 2025 04:03:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDtA69UwRIJoySS2OMMEYNqbCpINvG3hPdksp1reab8w5GlGFxHYYfb5cJEmOse38qlA5hXQ==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr100918911cf.11.1764936194568;
        Fri, 05 Dec 2025 04:03:14 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975dc1sm345503666b.32.2025.12.05.04.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 04:03:13 -0800 (PST)
Message-ID: <551b45ae-0980-4bd5-bb83-2fac6d7e2ce7@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 13:03:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
To: rob.clark@oss.qualcomm.com
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
 <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com>
 <936b6a48-a5e5-4efb-be7c-215ac670677d@oss.qualcomm.com>
 <7b4bcb6e-fbb1-45f6-921e-dd1340a8cece@oss.qualcomm.com>
 <CACSVV03buEzs9UyDaDpamyAXwM8vrkp2P_N67Wqt3oRjhdc-sw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CACSVV03buEzs9UyDaDpamyAXwM8vrkp2P_N67Wqt3oRjhdc-sw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=T92BjvKQ c=1 sm=1 tr=0 ts=6932ca04 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QGPp5zjhHj0ErSlcMgEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: BrjfyDHlpPqXS4UmvFPr7qrBVv4g0R4l
X-Proofpoint-ORIG-GUID: BrjfyDHlpPqXS4UmvFPr7qrBVv4g0R4l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA4NiBTYWx0ZWRfX+l+4lEfcV2Yk
 0ynVa27nyoJVCHZUii2rzmsng9UMOWLX3Q+vmEalgjnEk8vqK5y8gPc7qGD5KMc0jSBaPDNuhE6
 yLW76pOj448fEZpU4RkH+prmYEJ3IkWUBTn4zCBtNOktaFkwp6qfZ9hQbQWtQTUTXiD23QkyRu+
 hW+IMfCDwBW3JIKObWLrk9oDowVFVCe9qkk5FXjwTZ8cNbirUD5DZv/GAZ2SYkWw9yKSgOQn1pE
 ZkoqJzzccCsu4Dak4h/1R7vd9B+Lixu+CUXIaBBjvK/VK2zvC/Fko3NxmGDR2MBhlP3WiAh0UBs
 dDpP6slbdncGYS7b72NL73bT2bxgcJIDKSShN0Jxw/RQPbb8c59Q+kIkjmBg2Ddr1uClWcyoPHj
 uvg8HT6PvwN4edH3vSbIgDUi+lJIbw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050086

On 12/4/25 3:34 PM, Rob Clark wrote:
> On Thu, Dec 4, 2025 at 5:30 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 12/4/25 2:10 PM, Akhil P Oommen wrote:
>>> On 11/22/2025 7:08 PM, Konrad Dybcio wrote:
>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>> Some GPUs like A612 doesn't use a named register range resource. This
>>>>> is because the reg-name property is discouraged when there is just a
>>>>> single resource.
>>>>>
>>>>> To address this, retrieve the 'gmu' register range by its index. It is
>>>>> always guaranteed to be at index 0.
>>>>>
>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>> ---
>>>>>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
>>>>>  1 file changed, 6 insertions(+), 8 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>> index 5903cd891b49..9662201cd2e9 100644
>>>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>>>> @@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_block *nb,
>>>>>     return 0;
>>>>>  }
>>>>>
>>>>> -static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
>>>>> -           const char *name, resource_size_t *start)
>>>>> +static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev, resource_size_t *start)
>>>>
>>>> Can we drop this and just use devm_platform_get_and_ioremap_resource()?
>>>
>>> This API seems to lock the io region and fails with -EBUSY if the region
>>> is already in use. I am worried it may regress other chipsets. So, I
>>> dropped this idea at the last moment.
>>
>> Is there any specific platform where this would be an issue?
> 
> IIRC we've had this problem before and ended up reverting a similar
> change, due to gpucc and gpu overlap

Argh, sm8350.dtsi for example seems to be affected..

Hopefully one day we can fix that..

Konrad

