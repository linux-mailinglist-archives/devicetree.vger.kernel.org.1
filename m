Return-Path: <devicetree+bounces-249491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AA0CDC108
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45FA1303828C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D18B31D726;
	Wed, 24 Dec 2025 10:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSFXgeTQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OYtLwVz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7B531BC95
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573990; cv=none; b=E0S/sh67Vj/d7ndL1F5d8n49/fGYTC9jBYtp0wBtjUZGondJpFvBJhZc+qwAFaUeURrTLzz+DqaNXnUbMyyWFCMWvXD3dAAMRijHjpSQVHHQA58moGqps047ykGVVfd2o1YyWA/chBUWRE0ioUcsetLoi/W+ohrumjy11eJEIyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573990; c=relaxed/simple;
	bh=rVelJD6U08k2g5EbxP79rz96OkNIYvjTufWPCeoLZbI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O5plpqwb4EomSCBMg8S17Mj7sIKiIKCXvjZNCGl1vaJpKc7OLvj23hOxFyr0uZygxqCQg5vc8v+bO3KMjHERwgYpTLcMWVewTTKHLpgiJ8MlfT2xXrIo4zm42gaIqFZmgvNF+EbaY8gHd5hHmR9gHpwcPZoxsQOHw8MrKBJNPXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSFXgeTQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OYtLwVz8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3h7Au4134029
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	65ij+2/DAmNHoc4dyJwup6v//8+Tuz1DKXtAGu3ATBE=; b=kSFXgeTQ88GSv3mU
	uqASodlori7Mlj0Gh8UPHbtfBnLUaWzzsUj91N5dWGbQ6YJ7Uil5cAXrw1KnjlsT
	DgtrxJoSPgRIj2wTLE05pnRxntxhqcKEoNYGLgAej/ICxb6g4G7xwVfTrZQxMQ38
	G5+4KESX0bR7y8TX+CPMaGA1l8orbveilfi3X0ir8hT+MNbiF7GyoNRUy1sXAP56
	U8X9YeyPWB7KHD0ATIzIoOn18vi46XdXbDqX+3wXyYNzX1MNTB6vAGQOTF3VtCQr
	Zq/uEGkp0ZjKnTgwx7GqmHY5yTWuS16BvWvTsXRAW8qRkmOImaGYLQsHpYW4fvVL
	oa5Ajg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46tubk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:59:48 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b8a12f0cb4so7057017b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573987; x=1767178787; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=65ij+2/DAmNHoc4dyJwup6v//8+Tuz1DKXtAGu3ATBE=;
        b=OYtLwVz8xPpNRfp6Dnk8Br8b/ammnKAHcgtcfgGuXxaxymKcOwdz/K3yekZcGXRUih
         /ny5KSGmqbpypY2o7+IwBwOUfgRyTtBcFNKD+9gdwu52+X8bfH2xb9/3gkROg2etySsS
         Hjy0x+L9BohhVkrZoIskBFdcIg1BPGUQRDtnIXtB5BOkLYyW0qb7TTWnyrQHBqGK0xWY
         1dRyzum8PxGsAGows0PVtEcElUiAcToCr4iEEYqN7qkibUUBUzBwEVLMvC3PKD6ZhesJ
         nXrxvpYVJwTBeoRtErlhNq3CLJt9lkVIjXmIsiYENyK1t+eKXGhfCqQJm1jLOxIypDj2
         RkoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573987; x=1767178787;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=65ij+2/DAmNHoc4dyJwup6v//8+Tuz1DKXtAGu3ATBE=;
        b=DftaSPL2IK5HKkMC8gh4LYQqHIwjwc+luWuZNAVaLc2RurnV0KNNGjO63RIa/A5vSe
         tQiVeFLOlhHdzNhK40dufnu8QnvpR7kMQ8MmvFlQ7zDS3NhfgCOPHvrQ+hzUQJWy2XV/
         2LOPVzGOqRrxZ7c9/sCzkfsbMH70o3u5Kb5SVmcWHXJkXDZjbAq3APTX/3peoBv95xDn
         PzceXJ1HXlpRjpvDpXiqs3wcs4IFVaola3VhzQQRSvWq+lZEWwrfioHpfEV6tIvayBt/
         G59VBBSWpnGRA9tuEmCkIZKahqFLCbf2Mwk3Yb2vZyQVOs8U+I2xPqDnuvlLzzxKqPU8
         rgeg==
X-Forwarded-Encrypted: i=1; AJvYcCUGtcMtsBoHl7ws+0MYr7xQGF0sCLF1kH+79jyma/qGBK9TmsIAA2vwaX96AfGZoRL8GOhTUXC8BA59@vger.kernel.org
X-Gm-Message-State: AOJu0YyepBXkUQvl4xmg7LvckUB1rif1cr1Xsf487d/zjaajIVDgb15y
	SdRBCGV+Upbi8eXtZdMLEMOrj+KtKfMSDpUHBwQ/k6xw3GzvtDG1gL2FULpIf9fFZ2gNFvxEZ5z
	kK1rcKarNbLRxM+RweHP5Btp2qNETna+nMElTwVDKmY8XeWcI/KNCWR5x84mD8cqd
X-Gm-Gg: AY/fxX7JHJifEiXhjne6xMNxdAXlKLoip0K6gFycIZqEu0irl0W8YA2xmJ/5f6A064T
	srTC5+sr3YGCKsZQlhDWHm5LWeAtU3Y35dX+McTKd1mr4lv7HVAdqYPq3IX84CNJSVP7hSEvPRt
	KDFX6tPKJ3xakZfYZw2V1nMUWBA4vVCXgr/3BW53WLt4LPQOQ396pOMpK1/Mtx+G+byYx8HAn+R
	GSlQ1ib8LlgZTmzmCmjQh5nSlVzwPOUkOtTBA0z+xMU4l5iWqYaI6Z+g+Mr3dIrvThM1uU2G6Tt
	KKNrRIr8tXdd9b+PxNm9icF/NGWKSRAtkbog/Ntfgsed4m6gppGXZytXTmkuvqc12LT8qKkMM/n
	c65m/ENYiNQWmmQzXxgZzHg4wo4IqEmS1bmpR
X-Received: by 2002:a05:6a20:e290:b0:35f:6e12:184c with SMTP id adf61e73a8af0-376a9ace741mr16490473637.60.1766573987360;
        Wed, 24 Dec 2025 02:59:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDxjHcmbAfU0vMSZnnELdYkr52FpZ+BCX/CkrCd0ClqFv8mPu7xlW3LaO3oV2R81ZNpYlPOg==
X-Received: by 2002:a05:6a20:e290:b0:35f:6e12:184c with SMTP id adf61e73a8af0-376a9ace741mr16490450637.60.1766573986843;
        Wed, 24 Dec 2025 02:59:46 -0800 (PST)
Received: from [192.168.1.5] ([27.57.93.98])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34eacbca905sm5971094a91.5.2025.12.24.02.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 02:59:46 -0800 (PST)
Message-ID: <87b300a0-7ff6-4506-a27a-7a30e77c2bf6@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 16:29:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on qcs8300
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-2-odelu.kukatla@oss.qualcomm.com>
 <n7ucdvjlvst23zbbcwenp7umhn4wgsznqp23scpknwqnd6tcep@i6lhp7va325w>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <n7ucdvjlvst23zbbcwenp7umhn4wgsznqp23scpknwqnd6tcep@i6lhp7va325w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fnIqDdUKzvMFbcYpOJ7i8vp31uVoX63_
X-Proofpoint-GUID: fnIqDdUKzvMFbcYpOJ7i8vp31uVoX63_
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bc7a4 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=luqpl2TCSyK2LuNNAmtdDg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=izIGmOzjKg6u1_hBuywA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX3QyMmY+HuTqu
 /pvpqnjFi6PApP/4/mFcAu2m5+gt/fnZ2zy21jOMCh4rRqj2ePMRYAE23IBzY4J6TgcxRnSa90V
 +3cKW3HXs/nSPRk2DK8MXpv1qfGcg5mZP40VGqKIXbOCF6VfKiCvdnI2zmakY+yihCXN7pSHYw1
 jaD7TcjVE1XVkNhY5cx3/o41xPbPh2l11vYnnALpM21SMV47o0jhFQqGzW0DZoo6W70QJ9EAwJW
 xBu00KOWem7ibTSLB4oD+H4HjdDZTZEImJUWr9CEfhGzazyKoXbHdcfBWsR3cShCieZcsd2dt3C
 4C8vDmMX8gsj5pnj3dUGRazdaduStvZBlMQeUcD7fNcpPI83llzQqFPFtZnO0B0ju4Thl6qvwpo
 qfkbY3djRIu0mniAxstD9XvUi5KPP0ElANM0PwKZb82FS7WMtT0m9O870MyVnXW7PSY2l6QzJo4
 6vUqQp1Y7eAAWy8iC1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240094



On 12/24/2025 1:25 AM, Dmitry Baryshkov wrote:
> On Fri, Nov 28, 2025 at 08:31:04PM +0530, Odelu Kukatla wrote:
>> Add 'clocks' property to enable QoS configuration. This property
>> enables the necessary clocks for QoS configuration.
>>
>> QoS configuration is essential for ensuring that latency sensitive
>> components such as CPUs and multimedia engines receive prioritized
>> access to memory and interconnect resources. This helps to manage
>> bandwidth and latency across subsystems, improving system responsiveness
>> and performance in concurrent workloads.
>>
>> Both 'reg' and 'clocks' properties are optional. If either is missing,
>> QoS configuration will be skipped. This behavior is controlled by the
>> 'qos_requires_clocks' flag in the driver, which ensures that QoS
>> configuration is bypassed when required clocks are not defined.
>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
>>  .../interconnect/qcom,qcs8300-rpmh.yaml       | 53 ++++++++++++++++---
>>  1 file changed, 47 insertions(+), 6 deletions(-)
> 
> As a generic feedback for Qualcomm interconnect drivers (please pass it
> through the team):
> 
> Please ensure that QoS-related clocks are defined in the first driver
> submission. DT bindings should describe the hardware and it's not that
> the hardware has changed between the time the first patches were
> submitted and this patchset.
> 
> I see a typical pattern that QoS support is being submitted several
> months later. Why is it so? Why can't QoS be a part of the _same_
> patchset?
> 

Hi Dmitry,
Thanks for feedback. we are ensuring that QoS-related clocks are defined
in the first driver submission like recently for Glymur/Kaanapali, there
were part of first driver submission.
QCS8300 and QCS615 are the only chip-sets, we are sending QoS patches
separately.

Thanks,
Odelu



