Return-Path: <devicetree+bounces-244695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1FACA7E4A
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60FC8312426F
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE220330B1D;
	Fri,  5 Dec 2025 14:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnDbn4l6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IEgYxk1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FB529D273
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764943562; cv=none; b=LsqKfbKdJ+r5bwHuv7Hzg/YY3+VSWYTfA0iGMnJ4cL5FVrOv+X59llW7/HOkev0vJ2ee0/BcXEVwZTdm6UCTxqZdTLITCUO3Mq7Fwzd5IYQ77DR7PYxBrfn7YSxqF2PP1X5S8QW0DFZE914pAuVBHVVTWV427TSYfl/06ZTa9EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764943562; c=relaxed/simple;
	bh=qgjgRy1MhqI+zYIPTlJkJsa0iUy01gpNRjojIHE4hcE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BDZXjjOuqYTNLJ8wrZrrJK+5GFyivYLMTnqVXUPoZkE9JGhS6XeilRE6I8kExCAyAUeRnyMdqOQmUA/Z21+LnACo4qlyPCdayOg+f92MvBGbET3WdRqhqwYK/xAku5YUr/mCAwCF7e3Pee9VdJcuqeZE83k7QB02zi+ctGf81WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnDbn4l6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IEgYxk1x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58MjnL2516892
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oiiUujtI15jg4TX5b4dyidcjhl4DklXzl6YsqkAAS+Q=; b=AnDbn4l6vqmAd2Cc
	NW/SXEIFH/WlPU/MIxhF8zAxjgSwn7p1rbhnJxS7nNzY17EnTAtv8/rgxXrNb4Wy
	fNc3LdPzX3zWwSE7uCFhGYGCCglHv2JcxT6f5+7OcA58q+SOgEnRZuV8Fxyn8LhT
	NkLX+QlNnnTQc6vEyfiF4Sw5zohZLESVDxWrZuNRxJUm9EdX4Ws0f4r52A9qrJP/
	VJ2kweuD2aplTWPyc9yECNbSLlImQzYzJf+g4VJ/ZxFN6JkGXhFKSX03zilo6MUf
	7yQA3m8EJzj18sFFri2TRqqnpuVDnezTyYZaELuzmd3aDX+pkM1z3crKyMH5Rny0
	8iXAuQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auj7n2cqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:05:57 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b9208e1976so4115990b3a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764943557; x=1765548357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oiiUujtI15jg4TX5b4dyidcjhl4DklXzl6YsqkAAS+Q=;
        b=IEgYxk1xk71Ty/Gp0UNPzJNcaYn6qwKKgbrxZheV6dsr059WYKdwaDX+d9Sr6GpB1q
         kg5f3j1qliTU9kx4tWz8HVsshKmRJfmQNMcql46UbuyAGoSV+OCppk4SE3vtO+vtmSjJ
         Low1Iz+/NP+zbkWpPbPXhP3cAApSYZ/6SARNwBEX10hGJ1IlWoU7XoOSfQjyJMNuQMqO
         y8EjaOnNYZn1R8m6h0ID06mmKVI7oxk+YZ+hvDdJcuEEo4Lmb7WtOz3f7CP2fEvQKqpj
         qnXHBi2tbBDOfRPvgLvZlM0B8SbIa9DacUbbkClGz6V8vrIpCghg9fhS3oKwxMRlj4xg
         0+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764943557; x=1765548357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oiiUujtI15jg4TX5b4dyidcjhl4DklXzl6YsqkAAS+Q=;
        b=bTThuNPTtUOwrYH75F6fmaek4avF+VqO4cKUeKFaHAS3M6NbnuqxGpvkZBso92YVsU
         +7eKS5Ele1XPvov46BgPoxMDYwSGpnQzt/5cIzQGN8BON9TJa4ubQ+SphM9/tyx2axvg
         RrtsDv6TvKBiNeq4rNHuV4l6BBCySzWMXkYPJVHT42tTQu/ffZ6lE8YwwNtvbuQP3WAM
         6IZ0iaSmPOL7dPpgLVr2W3n5h4C1uVxxFipQK0gA4Ah99bM2PkdlDB84NLzadE0F02za
         /wjc+A90yVhfxgUZhtyNj3l0rJyx89I3+vf5sIIZO5VpP2tGCriajU3d9VUjMuoahUs7
         jYMw==
X-Forwarded-Encrypted: i=1; AJvYcCWyhQBd92sco+4YNQDkxLL7GqXw94jWTxvEbPLBhwXg5BxW1Z0yDwvGoDuORx244vMh8WD1cSQ1Deb2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3Ts/OlOcBmexchwbjiKAk+UY6OWK8LCQxQZ1xLEmG9qV1CU4V
	pdCOXZvXdCOZk1goC5pUjjMG04PkhDakh36kPLMG7V75jSWfgxyNlkS1VXq0AQ9gQb8rPbUi/av
	GowM70TMO25RESmqiP5IRsGWrzAQa5Gz0QwBEkm6iT3E5Ltk7wFeK9lMuC6QZ+gww
X-Gm-Gg: ASbGncvYeVgoYewupvZNQlpTAlz4tlmfIRNV0tmQkGiocZ/SQ5eZUnG0QuMIfvTDzNI
	CBnHQP6AlDVn1GK9O+r0zapOnWeqaHupCkF0SFV/t2Kh4Bj3HXHjvt2kiLnz7uVofTKgHBa72Sp
	RR6OD8D+9YOSsIzwbvWA4CRP8GHsyJTAwDOSneXV9+/Vc8+yX6zDdgvgg3GabzQouc8k/73d0bq
	oTCxVPoePviE2J6Z8BgLraO/2GfmscMfmx7hC5zW7BYuAn6JrVtYQPU8u4hkrN8+zM4pd8UuhwJ
	0lQmDywso2HX1LufFB4DCzIAskEqlzVFFA5+PneZGykW2Y7pXBIdN1F7KEXdJeoHoZ7wJiDrncX
	XixXbAzw45UJ1kTOn1y3u/CY6iQN552WRGA==
X-Received: by 2002:a05:6a20:3d0f:b0:366:14af:9bbe with SMTP id adf61e73a8af0-36614af9c79mr270695637.72.1764943556401;
        Fri, 05 Dec 2025 06:05:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAgA9orODpp4Rjh7ULin/QPXV8ZFFMmR+nawulDJMB+XXWkFsNYSBrBeiA5YYZFPjA+0UAQQ==
X-Received: by 2002:a05:6a20:3d0f:b0:366:14af:9bbe with SMTP id adf61e73a8af0-36614af9c79mr270635637.72.1764943555822;
        Fri, 05 Dec 2025 06:05:55 -0800 (PST)
Received: from [192.168.1.4] ([106.222.235.197])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a2746f95sm5001184a12.30.2025.12.05.06.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 06:05:55 -0800 (PST)
Message-ID: <ed4b1e3c-bb30-42fd-a171-12121db2dbec@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 19:35:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
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
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <9141e67d-2837-4e73-bd3a-9a9c5b8f72f9@oss.qualcomm.com>
 <d087dfbc-fcd9-4f01-8cc4-b206c2e87f28@oss.qualcomm.com>
 <6dc39f3e-0a2f-42ca-a088-4b62a8153001@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <6dc39f3e-0a2f-42ca-a088-4b62a8153001@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DOSCIiNb c=1 sm=1 tr=0 ts=6932e6c5 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=jBSxni06C9HboLYAjQ55wg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=OEjwK6i1zzq-GUtPt80A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: C1Xs6O4ELgq0oA8Y1W6kjuy23uoJ02zc
X-Proofpoint-GUID: C1Xs6O4ELgq0oA8Y1W6kjuy23uoJ02zc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMSBTYWx0ZWRfXz77W4/9IVV3g
 Bn9sMN5J8zyTkMhXhqZjH0B7DWMga3K5Nm0QeHO/K29EBFu3z2JlCZPGrNLkHMv9HZ2BrLYvlJX
 wmKOhUA6BwMnttiwbaSsSrOIYcrbJDjV+Yb2erdN0r9sQ4O0AWJY46mWWtVtiNx8uAWVjXkkgu6
 qf3+9DVWelWVE8wLjo4TWNtALubYFbWur/fYWZTq3Q+YssdDdrRgPyajO817cWu9WiFMc8gIBLs
 1HPqkudaQBpfMPq5WoDhUZjkWQss3gif0guO6JsmJWbWgfz/g1fUL7p4y55OFMhEWEBe070RoRQ
 4K0mJCtF5sS/apCIIXEHFNRCJfpUG59SRYsGPKLnfXSpGuiTtXxtarvhkXtcIWazR8pbnPsW4Kv
 XLYjMGEcsqFpBXVBuNjd9+O3SERGKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050101

On 12/5/2025 7:22 PM, Konrad Dybcio wrote:
> On 12/5/25 2:41 PM, Akhil P Oommen wrote:
>> On 12/4/2025 7:01 PM, Konrad Dybcio wrote:
>>> On 12/4/25 11:13 AM, Akhil P Oommen wrote:
>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>>
>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>>>>
>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>>>> ---
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +			gpu_opp_table: opp-table {
>>>>>>> +				compatible = "operating-points-v2";
>>>>>>> +
>>>>>>> +				opp-845000000 {
>>>>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>>>>> +					opp-peak-kBps = <7050000>;
>>>>>>> +				};
>>>>>>
>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>>>>> or mobile parts specifically?
>>>>>
>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>>>>> here.
>>>>
>>>> The IoT/Auto variants have a different frequency plan compared to the
>>>> mobile variant. I reviewed the downstream code and this aligns with that
>>>> except the 290Mhz corner. We can remove that one.
>>>>
>>>> Here we are describing the IoT variant of Talos. So we can ignore the
>>>> speedbins from the mobile variant until that is supported.
>>>
>>> Writing this reply took probably only slightly less time than fixing
>>> the issue.. I really see no point in kicking the can down the road
>>
>> We don't know the speedbin fuse register and the values applicable for
>> this IoT chipset. Currently, there is only a single variant and no SKUs
>> for this chipset. We can add them when those decisions are taken by the
>> relevant folks from Product team.
> 
> If there's only a single variant right now, could you simply read back
> the value and report it where necessary to make sure the internal teams
> are aware?
> 
> There's surely *some* value fused into the cell..

We don't know which register to read at the moment. It could be the hard
fuse register or some soft fuse register at an arbitrary location.

It is better to leave it as it is for now. Who knows, maybe there won't
any SKUs at all.

-Akhil

> 
> Konrad


