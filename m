Return-Path: <devicetree+bounces-244339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECDCCA3D4A
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CCCE33072627
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90713343D78;
	Thu,  4 Dec 2025 13:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="akAP/UWv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iFUvsBvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B6E34029E
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855112; cv=none; b=BSgd/YEVyWvaUSq48p+UkMtGU0mfsY4b2kZc/GEokA72Pj3xylretpxotOGLO25sgs311PGvIp0qVEZpOdAUkDZ7Ajabe+72Lv5i8ba5zLrNXm9xBO6UMGQ1CTjThj8adoiE4L9MpljjCgNKxwTvNOubblWRN2KDaco6+yVAQ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855112; c=relaxed/simple;
	bh=BHlLCprP4bZQNUAnGBpWmi6v5rkaUx30VAeYt9NrmAI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cFLR7nyht/bOTjdqXtYQ0CC8fHFLsrLVWrwAEGBlQTFnOGj5VwMX4EWxyLmwMxPhrq3yvQbvz9K52dMgdSkgcYlKPEen32yFg36Ep5lcJEQY8AN9VOG1D9MaDkdcPWKVzp+7hgNYWm/csVQQC4WrvNMRp5wMuSXqjm5WeIk78Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=akAP/UWv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iFUvsBvY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AErVT1130933
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:31:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O8v9MZRcYSWOYsXns5st4tio4IBnhtTaYNkIBg1TWH8=; b=akAP/UWvqksz3lyA
	8Jph2gO2naruzdQK+Wwm2EttLRqlfR/rBsZPsFn3U+LQABu0+s1h8Z6JuDN5BfNI
	ZsVBLSiXNHaEW0qKQbDQ1RDRjheuRryV+YO2A32HkDPg0BLqAJALkRrDKqc0zxcp
	c5pqGaQbfA/R6Tj0i1dXyJQRad68wEGl3+gQ7nfDFnHCdVp433x1v7+W+wBo9OG0
	XZDI6jYzybAUODwLmasBL69ZtihHTNZo+CLnxskO07pnp3n0ivIeJj2J28Z2GhUA
	DqchubnZe4UE1Bu+Fpz1XhfY/nLOIg9flNO/wlfVrvw1b+aS/a+iOhTxfkn1LguH
	7OguoA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f01tr7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:31:49 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-55e6ece7ea1so10830e0c.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764855109; x=1765459909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O8v9MZRcYSWOYsXns5st4tio4IBnhtTaYNkIBg1TWH8=;
        b=iFUvsBvYPxZLZpexWdsEZOBv/XXJ3V2Bf3p9/bQeMmBNz5KRm1QA2eNv8bsRsaKBUW
         UVBIvb1rbKzwm15Ict8u+mnLI5MSkgUCKEFl0mjEnM0FevAL9WrL0d82NK0wHRtBBYWg
         mMWuCA3BPf33puYa9ZqTd3H5fFKra5azyF3SYHPHNfkEPGQbyXIFM3YGmT9oe3dm/b8m
         Z40sR9T7t9OYk6ANwo6jDT3kOv8C0ssOeh7IeYTib/ULkf/CuQSY4xVsxWmEWpLYOrai
         fWKONQGZ5tHB4ehbImKoSqOYjqpppxUHeXAtCmUuMj2wFsGIN0YC45INU7TzmWYoak5u
         gi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764855109; x=1765459909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8v9MZRcYSWOYsXns5st4tio4IBnhtTaYNkIBg1TWH8=;
        b=KBnyvoUAhSXJhkSLy3WFDqWceFydHEbbfX6nokue+Yq/z4OzRHfTLwKmoOmljX61KP
         vFVjgdGcnihE8iKVlYnveMIURCtBFEC7IbsJO5HM/qvlCPgfWtsFVezzrnsW2FT8QVqe
         yRywuLKWyDV1W6BI6UKlcrJvpSgqjPBYNX6VbBdTFpTddOT+wp1KlZl42xt/5uswgoKg
         7ebCcpRrr+tMdjmhEdTfqHdXGBPS14+FyTKfygWS7CD5NmQd9HGkqjLVrEH3bEBMPkGr
         OZJBSOtGwLMgB4wgWSB7C9LMG9cISHuXGIs/sFA2RVjcVNugw3KOyUkd+YSAfs3M1xLp
         ssDw==
X-Forwarded-Encrypted: i=1; AJvYcCW3wyIjPhoJchtz7t5kY0ROf3luvWY+8u5O6TXfcAuOAxEuUQDCjPaIDUcWSRH+IAqfZkHoal5DtXl9@vger.kernel.org
X-Gm-Message-State: AOJu0YwmJwJUmg5WIOPUuU2Y9QVqA8ou9iRe4rcTCQmETTWe6tbhwMgK
	379b/EjpJAMUW1QV4F10+w+ilq+gRj4hJtpDOlXyBfky72OOVXhISpcG0TS50HsS/2fzMLKwie1
	Ti4KCmFLh4tAxuSbcoA6oBgu2cjc95BHrEfkNQAJNGgZ1Ws90ehfrQkydO1CPIiJY
X-Gm-Gg: ASbGncvfdJjLp5ihFadt7+TY2oQGIm2bJQc1TxfeVUV4FFAlIZcdA7uX6v7shm4wpzn
	7vI6av7LxLvCSwLZez32EBaCOf8Zuy4T9Mmq93vIq1+gJDvWyN6/b+OANjclHz9ZIyEijG40iW+
	c4ZqCfNIRXudkQBeZPjitsVmCmK1LabL+ueHtLDrYWZJbZa2KfJoX3ste3qlsCQOGm/AxomhvPQ
	PXOGnShf9LAU9rMgbSkOyafP0Zq1bYaSSg8eUk0ml4wf+xUlqCdqzcXDEdGqXpaSiznAKTzRDmw
	vv3CLH88XKVgGovAdJjJhs0IXVjLHOkBKtIpkeWtDi1xQLvExFOzF8Tz226nNUobPIOs3IxDsmG
	UjCSQZPE1dU0zXEZOd31G24EUM3UlPBC7SCKGVlr/MoTjrqj5clwHr9Q63ihL10xiig==
X-Received: by 2002:a05:6102:304e:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5e48e379a6amr1243345137.5.1764855108998;
        Thu, 04 Dec 2025 05:31:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFeaJsm6K/kvkrh1Lx6h/U5lKoBJw/CsJHPt4Who4H5sTNAg64kPQk7dL5ILDp+u1Q5usvJ4Q==
X-Received: by 2002:a05:6102:304e:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5e48e379a6amr1243321137.5.1764855108567;
        Thu, 04 Dec 2025 05:31:48 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975c88sm127980466b.35.2025.12.04.05.31.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 05:31:47 -0800 (PST)
Message-ID: <9141e67d-2837-4e73-bd3a-9a9c5b8f72f9@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 14:31:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Mxy_Xt7WVyiDLHGb8Hf_o4YXTJXu93_J
X-Proofpoint-ORIG-GUID: Mxy_Xt7WVyiDLHGb8Hf_o4YXTJXu93_J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDExMCBTYWx0ZWRfX9CwnTXWUXBtI
 LpovTxvZbrUPf/pRCEUJ3h2Odwi1XNqrwbYiD97k729oquEnr9aQLXc4dGZdI8u36HUYKjbPRlo
 tkO8ANbBMw4/KlhbodhH8J1iRDiA6FFShVxuhdsHf2fPZVzyUq1Oh+uJ3YXdUkm76bYX3R6tXZY
 CzyV4Xd2lf3AeUc0eS1ppU+x2VuZasU7/0srAk1O9gh3D1glSJI9+sqeopi1Z2V/M5bREc2G9Jq
 /PoIpyrL4SHH/St4CgqvZrqoQN5aoTARaihfZEBImg6SiW4nc5tSpK5rVwy/00bMqXkf65x1oXh
 RyVj+JNS4RFPxkYyHj9pqgdFQk91hwUZUNTdMDLN9GgVe40k9G7uMknU4mSmIaXiXlmW4UTctDY
 RrxKqN9DbYiW/I5BI+VKTnK9byFdAA==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69318d45 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=mMOXnzwY0fgUwPJIr_EA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040110

On 12/4/25 11:13 AM, Akhil P Oommen wrote:
> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>
>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>
>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +			gpu_opp_table: opp-table {
>>>> +				compatible = "operating-points-v2";
>>>> +
>>>> +				opp-845000000 {
>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>> +					opp-peak-kBps = <7050000>;
>>>> +				};
>>>
>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>> or mobile parts specifically?
>>
>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>> here.
> 
> The IoT/Auto variants have a different frequency plan compared to the
> mobile variant. I reviewed the downstream code and this aligns with that
> except the 290Mhz corner. We can remove that one.
> 
> Here we are describing the IoT variant of Talos. So we can ignore the
> speedbins from the mobile variant until that is supported.

Writing this reply took probably only slightly less time than fixing
the issue.. I really see no point in kicking the can down the road

Konrad

