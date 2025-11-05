Return-Path: <devicetree+bounces-235342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77437C3713B
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 18:29:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 701E64EC819
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 17:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0480D31577E;
	Wed,  5 Nov 2025 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R5e2Bclc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H+qepDgG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0933009DD
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 17:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762363159; cv=none; b=K0L6eELoZmdjg7mYVMgCXvpw+ZMzc7L07TLacWVD6KgLLsRnrXEsIA1YDjnPD5avs7b6gXThNnh8W9Lor2PhNqKPC1nDjYpcvQi9S28UNrxOLQWtjRtmJfzdZaI3msDD7PqlFNsBIvc3heRVyZaC2FAdec5rvdFe/JfN6fc86p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762363159; c=relaxed/simple;
	bh=gH+IgiY5WDgW/EjcfxnbiJKK5tHc1KANHL2VeROjdCY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eQoyHq1ma41ArcTGU5L6iCfoczoAp/hTj5Qo5UINQNLcm5NdXh1Bv93E62oirWxMghMAexWCC9xwwVGb7ikRzi0BXYlDkMasek9Tzl0VZFFKBMR5MKbnq/qcUMN6UZg/l+aIKYCmIlFaXrvZ5spnQT/g7s0V84PNZdYzRwbRLQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R5e2Bclc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H+qepDgG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5E87tS876438
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 17:19:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d2jzqV8oJZ4plosAL5G1y0RTbjdNLT/7KsDqWwEv4zM=; b=R5e2BclcGpupn+E6
	eJr6HC4KPCNehHfO+/Xi04jG6UhWi77hYWRyBXtfApIR5iGblyE+8gQ+nt/jEvbL
	mhsU7wOdW/vXfopUc1TbT3Iqsqdv8LGkR4d/ECyg6lhi6hoqRDx0jJrymhRCgUbN
	eE5sI2hl1QWubnFQt6y5c6BnyfchNIb04uHICuEbLWMtW3oqI/C5EIu+K5QVgqXk
	qME0RkgcJjwQpByK8H5cS28W/DgJdXlQa5CEL0iLKK5AV8PLMwK9MS544hZG/7Pp
	YzG1GUl9O7tczvX5rvXW3fIGfLcVfCkTmYUfDDyUDO07Ki5UfcQLpYANF7iMzKHO
	DLl+AQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a88318mau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 17:19:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340c07119bfso559857a91.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762363157; x=1762967957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d2jzqV8oJZ4plosAL5G1y0RTbjdNLT/7KsDqWwEv4zM=;
        b=H+qepDgGjE7K5ZQ+ZtKWx9zonXDkgDl+ZHxpwj8/7SNbqQJfhkeelANCieyZ0ZLVHv
         9/D7WQ/AhhSvBG872McDqtBu0qM8X2tDwcrQt9p/WyT6vLd404buChK2tAD/zQ3NyM+N
         Ak/lBk6PgWKHkrVxTG6gDE8Yqvt5nwP95Wa9/vh4f3zpzNAMpW7O9gHdWmZBakiFbK37
         nI77dGyGHpuC/kckpbGa469wOlIx96H5R6GjASieRnC5WnOCjgqlGCqnXp7L99wH9hjx
         7CSKIGQVGyeMMXyYSZMfl5B0goWLfcaCPlOt8C297QREtAohhF33uSVTD6aMYS1C8iIz
         s8WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762363157; x=1762967957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d2jzqV8oJZ4plosAL5G1y0RTbjdNLT/7KsDqWwEv4zM=;
        b=VpiNjiF13drpLhV2yM+T9LtxLQohBZaeixwlCOf/U3/JxwreENt/U7uoDwZYBzczN3
         1OwPQ3y4Y5bnzoy8aoVKqRxGwfaGcMGv0Y2qf6iPpMxd0M6M+NXKqmr+khmo5F+ppA7D
         18UASoztkZjefyE9e+r4zqphmJJUWBHoiTBTigSIlAMoVC/V6LtI76U1tiNXXNWhFpUQ
         rasatBKnRR3d0HOTnAm5z9s/ktyCPLm+Or/E8zRZHCa5QuVpL/ubtd33IptyYtu0bG/S
         wgIldjrVfA0ydSCOK9H9VaTg1W9cjo7jVc155Egv3wFRSqFhBEshJ83oYfnO8DY/Q70j
         di9g==
X-Forwarded-Encrypted: i=1; AJvYcCU2rpX/Ehj3mVUwVE8BffzK6VnZyxZM6LwTHG4+f6SpUKYuBETHW3UtJp39N/vr1BswIiiCx9kHpS4j@vger.kernel.org
X-Gm-Message-State: AOJu0YzYL06ASSdOf+02ZZUIYFRZc7WPcKlWVTQKN+42wLzbBGDN3Q3z
	PKVZF+kik8ZX8VDQcwb4jGCaV3Rp+EFBnRmn9bhaFeT45/ke41coA2/mhzB995+xNkfw8TgR5SZ
	1hIaI7JNr/AOKKrwddjhgQi3fEf9Ho+fdYOHOWbV2YnqOgzbF01GwYoLfFSfGQ4v5
X-Gm-Gg: ASbGnctylINfB9Behz4NbrnhJiG1vrwHF6g+0ddV2rl3/kgAsFNEpMzjd84YY1DElCN
	Y7RUZxA5EyOxSLGfVEpxV8vh43ckrBv2EF0ORyuXpvwsbrWLL6Vcrp/zP6I37w+vVbN/GrhOYlI
	chGMqAmrguFg1gSdfxeb0SPRnOkcx/RYkeK9ZS7RA8jgPY+BvK20Pjx/wxRpecf3Fq85qZdcm1m
	bFCMt4ioSmz8fMLTjebPdcyLlhfHz3GkkUhgZeC8xeZ3vDiaRegoW1PfiNgPKL0cIqGKLuP4G9Z
	pSX4tmvUDXfd8itcJw9bq1G2t0lBM0BHtY06QMksE/twhkIiw8WSZtGgbvTdwnfyWSlPrcT4Lqw
	irA4VKuaQ2IKHR0rtAvx1jQ==
X-Received: by 2002:a17:90b:3c09:b0:335:2eef:4ca8 with SMTP id 98e67ed59e1d1-341a7012182mr5029903a91.33.1762363156987;
        Wed, 05 Nov 2025 09:19:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvzSRF+BBkWYVbOkPymWtRFgJ+GZ8PkUlrRHN+0DizYbOyTJnzSCGFEoQNIQNhQoPoiHhIfg==
X-Received: by 2002:a17:90b:3c09:b0:335:2eef:4ca8 with SMTP id 98e67ed59e1d1-341a7012182mr5029841a91.33.1762363156531;
        Wed, 05 Nov 2025 09:19:16 -0800 (PST)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1e7983986sm6231090a12.0.2025.11.05.09.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 09:19:16 -0800 (PST)
Message-ID: <e67bc77e-77f0-4744-a86e-73fc23dfa705@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 22:49:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] dt-bindings: nvmem: qfprom: Add sa8775p compatible
To: Bjorn Andersson <andersson@kernel.org>
Cc: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
 <20250910-a663-gpu-support-v6-2-5da15827b249@oss.qualcomm.com>
 <8ff537c9-efa0-4aeb-987d-150bef8b7c00@oss.qualcomm.com>
 <bkhjgw4mtfmkatxjl7enn4fqqjbutealhaqgxihdmcvhekyyd4@lsosso5ta74z>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <bkhjgw4mtfmkatxjl7enn4fqqjbutealhaqgxihdmcvhekyyd4@lsosso5ta74z>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pguh_kbY6Mr3z3L4M6p_0Kg0_Bo4gWnU
X-Proofpoint-GUID: pguh_kbY6Mr3z3L4M6p_0Kg0_Bo4gWnU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEzNCBTYWx0ZWRfX3z/XKL+jvH1Z
 5E9YQZ4IYcOlf4FiVs/+OFicTncCXn6ToKKHhvp4am4wXtdhaVRIhi/o5U4MBfiid+ZiHVPIaVt
 f1oAu+rQFu3ZhZ6QqH8ZZdoQAKk/uD2R2+KQWoiCXh/IV/RBJYxEy+lzLpStBup4gJWKQO8esIT
 5YIvbfPKE/VP1J1YIfiDy5LlRpoKkcUD6JUv7lkHXU61B0nPHMyU+ZX7VilbNJ1EN/9eUhHwawI
 aifBVwmw4wUCuATNhNrdCUukjSyEVvloqb5fsLXbTVDLNjwrUVDaWB7Z0T8VSgWEdx9EIfSy4hs
 1Opm4k3xIAqGBX+Dz0im8SWgvTTgi8doMhrdKXIHkyPQpMMOYLUbCA20bd4Pud5zXVOo8auBeHl
 Xc0WsBuJDF3DBYGGnq+st4/XYMZksw==
X-Authority-Analysis: v=2.4 cv=Mdhhep/f c=1 sm=1 tr=0 ts=690b8715 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=kynJYrAj6unHVJukPU4A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050134

On 11/4/2025 8:32 AM, Bjorn Andersson wrote:
> On Mon, Sep 22, 2025 at 12:55:36PM +0100, Srinivas Kandagatla wrote:
>> Hi Bjorn,
>>
>> On 9/10/25 12:25 PM, Akhil P Oommen wrote:
>>> Document compatible string for the QFPROM on Lemans platform.
>>>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---
>>
>> In case you plan to pick this up.
>>
>>
>> Acked-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>
> 
> Thanks, it seems though that I missed your reply earlier.
> 
> Please pick the binding through the driver branch if you can, then I'll
> pick the dts changes.

Bjorn, Srini has picked up this patch today. So it should show up in
linux-next tomorrow. And I have posted a rebased version of this series
for you here:

https://lore.kernel.org/lkml/20251105-a663-gpu-support-v8-0-62a7aaa551e3@oss.qualcomm.com/

-Akhil

> 
> Regards,
> Bjorn
> 
>> --srini
>>
>>>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> index 3f6dc6a3a9f1adc582a28cf71414b0e9d08629ed..7d1612acca48d24c3b54c4d25fa8a210176d3bb5 100644
>>> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> @@ -39,6 +39,7 @@ properties:
>>>            - qcom,qcs404-qfprom
>>>            - qcom,qcs615-qfprom
>>>            - qcom,qcs8300-qfprom
>>> +          - qcom,sa8775p-qfprom 
>>>            - qcom,sar2130p-qfprom
>>>            - qcom,sc7180-qfprom
>>>            - qcom,sc7280-qfprom
>>>
>>

