Return-Path: <devicetree+bounces-155547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C5BA574EC
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 23:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C52F33B5593
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 22:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E8320CCEA;
	Fri,  7 Mar 2025 22:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lGGTuGf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F7A1F94C
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 22:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741386657; cv=none; b=XmTTMGq518VsLe+nq26leBy41W6mIV6nnZUZn1pVwmSpruyyhNh8U5BDzuZIgfnTHnv2EQmQkGU6uEeWgPeJ6+hcPvMFYveVaVrO7lVlDfQUYVbQt6QiEV3uBkF+bXa+06IAXxpjmNIl0QCQIZcxcEj/4vDFPedHUDZBZj+kvUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741386657; c=relaxed/simple;
	bh=bCNAocCazVKoVFzq/ND5cjZiWr84ZC7bmNadsW1yn9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E1pPsBjSAJF8B9skkhl2pKXQiEDTOcltGmpffoDzgGXCYxlZraxOc8y32tBjPPHAdljz61Q+PFLr/oSAXC2LzXXNdB9sDqjNJ2OBugv+QFeyvlbS9BOW89ahaF3jOV7qSv2isfyKO2ANxjGRYAH5d3cOCoChAbVSMjwm0T+Xfyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lGGTuGf1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 527Ao9UH003692
	for <devicetree@vger.kernel.org>; Fri, 7 Mar 2025 22:30:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ak5fxQibEzWrpDH5Ilc3caDZL5F6Fyf98J8EyekNGds=; b=lGGTuGf1QBsFhqug
	y+AEq/fVLBCpxKJm3ESO4Rvq2CZtwXrkJuhtDQdP0pG5sS8ajLzMcRwILll9t9yg
	YoSWcjftY1G5rPqvIyCFWFVmHWwAq2GQXewt+gwjSrtKe03ehTw7LGxnw+YOzhV5
	DpDYXs4DaTqJH8EJPqbzUvsTWsNVxgt2uy+L2REzy9LZhdYN5W+o/42CcKxuRBX/
	1CIMD98qNhDLmvwELoICplAHgIIc8XEGTrUkBPPD/yyrynfAw2jIKwoaUd0b9AP7
	ZaelTsOEIe8u8wG9VI60tKaeb+cqTJktAZDh5E7GbF1CegKbFe7cbhvr5iLmovMO
	KsRB6g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 456wrjeu5p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 22:30:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so4303536d6.2
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 14:30:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741386647; x=1741991447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ak5fxQibEzWrpDH5Ilc3caDZL5F6Fyf98J8EyekNGds=;
        b=BVYAzz/jM8Q1gP6y0tT8uVEAP1u8UF89Aakoy793IMlE7OjbMddDpCVReYql+aByaC
         jienwQlNzSpW8/eGItn41hm5nOhTMv6kDMfZZRFRNEJnmmKUPkw1OjND9RXlqqjCkqTD
         igfnTf6blZ/885Gtz0vuAI/6VNTjP7DoxmiV3nffjVOG+k/koAfKsfgNQ6M1oe8Y37Gx
         nri2DhDQOFu5ZSkbs+9jf4GU6U60UwBd6ZRvP4QMHbKKKjKJBp/EoPbkPCESBHULostD
         YH6JIqXv8AhIaILiRZWggCzJt2L2FLbqUSI4/TH5qOcNcfWDltUtnj/DMjpXhaHjnjqE
         7nxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHXSonP9SXc3RxBRhUCRhboLHVSN6wghWLVcLA9SEoEBx47TDqlNWGuHzGkYWTuieEDOUdx0m1UjEz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk3BQG/nZ2PV+zW38h7sncEFpNoupLdNNZq+OuleqErcZIUJlN
	pg+i7d7xMfSZZjKC0wTKh8pyxD3ms9S4llvN+9gL639Qm/MWVi3k3pNHSBst+zmXi3wXEYiXxLW
	LlR2gi7gpB8mPtuSCkx7BIwlgFNShfgX237uQ8bCQedP1a2TqDzsnT1v9pm9F
X-Gm-Gg: ASbGncu8JXIhtx46h1Pq75PyZaeVYNdVx4KNKE45x4ENDTi8TVSEtcyvjj/nnpGRxjA
	WKbRlqoyj2Y1PuMeFO99vCUzmsmqFwBeCAcq6Xuo0ol49i9aV6Psio0x4E68C3XcQh/+kpX3Cik
	+70fn+egzK2MKRtCVXhqdKzpzq4ByRH8ATJGldb8nV6HwCMd3RpPBANEsb6jlb50dTAhxA+MnS1
	gAk/XaCcaDXvlUNtx7DMUOh4jaJRQR0KnV87DdY+kTiBbos38chj42h4Mlnm+Cd5qlZc2cBprad
	fnbo6YMiGb9QMMpcFXk3D+HbdjtwzO54bwzQlpiAB9gytd9Ph6qLQtAanNjQA4P8PqksGg==
X-Received: by 2002:a05:6214:ac1:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6e908cd150fmr4825286d6.5.1741386647151;
        Fri, 07 Mar 2025 14:30:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiC4koxcJVdaUrklQtVOopVLiy0hknFp7oOAgVhzdT3gbIZwIK648n2T72jt6jEmVlQvFqKQ==
X-Received: by 2002:a05:6214:ac1:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6e908cd150fmr4824846d6.5.1741386646742;
        Fri, 07 Mar 2025 14:30:46 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a6af7sm3083132a12.33.2025.03.07.14.30.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Mar 2025 14:30:46 -0800 (PST)
Message-ID: <d0d6feb9-e89d-49c3-8569-91591eae6161@oss.qualcomm.com>
Date: Fri, 7 Mar 2025 23:30:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/11] dt-bindings: power: qcom,kpss-acc-v2: Add MSM8916
 compatible
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <rfoss@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-usb@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-3-0c84aceb0ef9@oss.qualcomm.com>
 <Z8rTW3fQObiZ7del@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z8rTW3fQObiZ7del@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7i_FTVvTHVPknh8TPX2rSgJ57uddHMKB
X-Authority-Analysis: v=2.4 cv=FYDNxI+6 c=1 sm=1 tr=0 ts=67cb7398 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=2aLQLXHzPMxx44zPxJMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 7i_FTVvTHVPknh8TPX2rSgJ57uddHMKB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-07_08,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503070170

On 7.03.2025 12:07 PM, Stephan Gerhold wrote:
> On Thu, Mar 06, 2025 at 07:11:15PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> MSM8916 seems to reuse the same hardware as MSM8974 and friends (for
>> whom this binding document was created). Add a new compatible for it.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
>> index 202a5d51ee88c7190805efe8f1bf493bdb69ec45..27dae49163fa0790ceb6fda8a5c674f739d4a41a 100644
>> --- a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
>> +++ b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
>> @@ -18,7 +18,9 @@ description:
>>  
>>  properties:
>>    compatible:
>> -    const: qcom,kpss-acc-v2
>> +    enum:
>> +      - qcom,msm8916-kpss-acc
> 
> Hm, MSM8916 doesn't have a *K*PSS (Krait Processor SubSystem), it has an
> *A*PSS (ARM Cortex – A53 SubSystem, or Application Processor SubSystem).

You would think that, but actually it's still called KPSS internally..

> 
> I think this should be either qcom,msm8916-apss-acc, or you just keep
> the qcom,msm8916-acc we already use. I'm guessing ACC stands for
> "Application Clock Controller", so it would be unique enough already.
> 
> There is actually a patch from Rayyan already with a R-b from Krzysztof.
> Maybe you, or whoever is responsible, can pick it up?
> 
> https://lore.kernel.org/linux-arm-msm/20240710155226.130086-1-rayyan.ansari@linaro.org/

I'm not opposed to this either

Looks like Sebastian Reichel and/or Ulf pick up power dt-bindings patches

Konrad

