Return-Path: <devicetree+bounces-171678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBECA9FC16
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BEC1189BD6B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C126B1FCFEF;
	Mon, 28 Apr 2025 21:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eNTaQp8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348341EE7BE
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745875180; cv=none; b=f7CBtuGbrbijgLON2bF7FiXBQIvoHvMJZMh4yWIZhVOO12uRc3lfixYCiUdJtF9CoyrtzxIXixThp91CHb8GYP8MnOoqn7Gu3cRbjFamsQINirqmQEWKWgLIV3hCULrDTAQAmFvpYbhVCNToOaprISv8g1JG46iGd1/X6hK8xYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745875180; c=relaxed/simple;
	bh=bJ/gzAeGT4ZbtCzt+JdrNTwkoS1y+gkxREhjPG/Ab9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ioqCW9pYm8LBXo3MOaqj/0gUemjpEJtf9nyAt93ImGn0iPqHi7QLKau5NTEzMLFFtkDppEX1yMBpp2F4mQW6z4eP/kxFyruMIV9PvnXmXS/8sM0zcqEp5ZrL2qMb56ameYY1hyDF/ijZjMaXJN8FkBZCGOns0qB5XhtKh2MvAiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eNTaQp8O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SACiUY002305
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:19:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1p0DQQl3Uv/CeewEIX8WmFJDpqWu+zknhFq+jDxcqzs=; b=eNTaQp8OWPZ8bjaJ
	siO4gZnXx47CjAcBmt71c18UjDCk4ZVh/jMyqSEZUJzIvyn/7fefYAXn/pYrF1bl
	p2KMxaJaRMThp2AKhC59qPuHUKcQGa4trnmhLTtIiY/T6e3EOD5T/a1bIHPuplle
	XPySL3CsCCVI21Q0dsmwg8TjaTRk3d2xk+CDoE2Wmci0cdhAR0yNWZtf8sYTQ4CV
	0RiX4tWV2+LjX2zdXzHlspi9TvxrvSPJkeaddZ5dALUxBNAif1H2ySlaJ0MlfiKW
	LSV5Ro3kfMHAOT55MgOnsnVtbBSI234SnKXf1Ns8JdkigwMqJCWzaxtOFUfhwIHS
	h6fGvQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qv9jcm1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:19:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767b8e990fso4778751cf.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:19:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745875177; x=1746479977;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1p0DQQl3Uv/CeewEIX8WmFJDpqWu+zknhFq+jDxcqzs=;
        b=mFE5dMMfgguiyRKD03H+XokPyQgTD2iJe1eiUUxqLt31t3LO1FYCs2RTiPM3fB2FgU
         0yH/AEBoNt68AnEJkuX8BwR4eDrO3vqESrj/490nCueClIvz9aKUf8y1QgBR+C/nVgIz
         Ha38OtRJp4IQqIE+NKOBC8cKHsuc7Qm7IlgDff9QVfoJxKlL4MM+zEhQdlgjoxmIrlPP
         38v/wo6X6md+pET3GvU4SaDe58MMsNTXG3VYYQxJBb+tQEu7Ro5aAKSNfpCHqHlSeckG
         boKVB9ACqD9iHn0SsAE7nAWo1t+2DRdAfizYSb4ZurqwEgOWzhoTfOIBv+ydihf0OY7E
         XVmg==
X-Forwarded-Encrypted: i=1; AJvYcCVHjWxKEsmnZ9mIMFQqLf2+weEyLWQDT2N9CGl+wE5lS/8+hVINfRn/JLOgfCKmVztCoHzSMwgm5vqO@vger.kernel.org
X-Gm-Message-State: AOJu0YycZCodAsITNO4EJFjV8Tj5YXItTUXHL5e+UTiSjN7L7G6Bcs6Q
	d4zdyXFfQ+AqMIaUVP16Efg+q3NBi/XiaNYkA+vf1lHF9noOjkeIRgkySlxUZqWvI1cumCc59nf
	0fa1VDneJTvknN3lb8DfsbPvFHEdtdQ+/Vl7oy7IWMHxYJ6LcHcMMknA6H7f8
X-Gm-Gg: ASbGncthEvUvAnoLnohTdFlLOcRUbCPyVi2ak26QOPU3QAuIBEJErQ+/suL9PM1l7y/
	+2746GZW1vtC8p8pDlamlXjOzCmQaLoAH153RIjcNgikev8v8TcB3a+lkTZaaW4uG0DgpVu7DGS
	vWjXK+sf9HKdVj2BsSAHxtwT08ru7FqKT9ErypuLjwbkoJepMI9lPj6PstFrtgNo7dbfMpudh45
	yADIcjddxONRe2UX3qhhj3rhMuvMgqUJ4Vuv6HiBkczoq3JdRj1p/iS6lfTVIHlZgL9vc7bLKgB
	NSRtJdX41yDtfnrYYb5T2RlV6DGTHrr+5mnCHMG32rAMqcOWKkwjIaasMkGi0pgZaA==
X-Received: by 2002:ac8:5d43:0:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4801e5ef61bmr86239881cf.10.1745875177208;
        Mon, 28 Apr 2025 14:19:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHGM4Gsyyf3DoqVCxTr5c/Fx29SX0hifWAwRSJIcxlPqb02dtB8cwcCNR+5BkrZ9k/UWtLcg==
X-Received: by 2002:ac8:5d43:0:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4801e5ef61bmr86239641cf.10.1745875176771;
        Mon, 28 Apr 2025 14:19:36 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41c431sm693197766b.18.2025.04.28.14.19.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:19:36 -0700 (PDT)
Message-ID: <41df5398-79f6-484a-8ad3-f3488eb1b71c@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:19:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20250228-a623-gpu-support-v2-0-aea654ecc1d3@quicinc.com>
 <20250228-a623-gpu-support-v2-5-aea654ecc1d3@quicinc.com>
 <e22daaae-57fc-4523-b594-87d202d255f3@oss.qualcomm.com>
 <aa8ebd50-683b-4043-9494-5675a2d9a01e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aa8ebd50-683b-4043-9494-5675a2d9a01e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AO34vM+d c=1 sm=1 tr=0 ts=680ff0e9 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=dalwKpVopYczjXflRRgA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: oONnu8t-Sr7YYkRbEC9lyMG-Qyo4euIO
X-Proofpoint-ORIG-GUID: oONnu8t-Sr7YYkRbEC9lyMG-Qyo4euIO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3MSBTYWx0ZWRfX8mk3hleerzRw 02nsCCxFqJ2dY8FG6nkJ8fkuFO09Wkbh+znUGttOIAw2F9XuN0G6uDXYKgk6E0TzhzTGDQ7StNe hwRwMJUrMoBhzEmFu0W3MXQ3wVBKD386il6V4Q0KI3TvJH4whHE/P57HCBxR7xpZXP0n5BRAF5H
 RBDKs+x/ZcSCD22H082Roq7rJeOm7Dwu2l5PXu4Zdroa3VsJI652aNXNCMH827tgZK7FBj8izJO G/O44H1nVtmuIqLlmknd71LRnOeZ8x6yJTTJf+NXucY7PaxivGvzl+75CXwDCdJtExZtB5CjUyU H6XBNEIB89IABb26Y8v3g1NF+ROmAlhEHmnwXskqwwmgkbxe+DpQIgNrsDkVp762qtN7NUt/PhI
 Dm7IWU9+SvG19dvuWk3oxKhCmmq+qVKjJI9ITE1+r3HzToIMahOkR7ExRslsiRj9J14nRTB8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 mlxlogscore=640 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280171

On 4/28/25 12:44 PM, Akhil P Oommen wrote:
> On 4/14/2025 4:31 PM, Konrad Dybcio wrote:
>> On 2/27/25 9:07 PM, Akhil P Oommen wrote:
>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>
>>> Add gpu and gmu nodes for qcs8300 chipset.
>>>
>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +		gmu: gmu@3d6a000 {
>>> +			compatible = "qcom,adreno-gmu-623.0", "qcom,adreno-gmu";
>>> +			reg = <0x0 0x03d6a000 0x0 0x34000>,
>>
>> size = 0x26000 so that it doesn't leak into GPU_CC
> 
> We dump GPUCC regs into snapshot!

Right, that's bad.. the dt heuristics are such that each region
is mapped by a single device that it belongs to, with some rare
exceptions..

Instead, the moderately dirty way would be to expose gpucc as
syscon & pass it to the GPU device, or the clean way would be
to implement an API within the clock framework that would dump
the relevant registers

Konrad

