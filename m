Return-Path: <devicetree+bounces-145845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68680A32933
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 15:54:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 148C41641D0
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 14:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A07862101BE;
	Wed, 12 Feb 2025 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ib0A6TlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D291F20F06B
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739372063; cv=none; b=NQmHE3i+fRNsynhf13M//cHtnNPN3rbm3KezoLJvG5WIQSymVbhvhLS71wZS9v/f23PsydoL0r5mtfWnyDz2ipZJVFs4yev3TnlgrCZUrpo11jTzEzdAPhbnQOkPzu4EHuOxPlkt5+azSOAW2FdUKNzi7sYvD+lzdT6TLxAFLwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739372063; c=relaxed/simple;
	bh=TTWO2ZsCOT47kY8ISdrVTKWcAc5oYl2Rg5UVoJuihc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S5yPLBqaTrpY2Xuk+SB1/nise/DHRi0z+kkg/EVloWOX3/zS1Km4UniWL1Ap5thuqBZfWLgw48rC1ykeL9gwufA/8xI1KA2M6Am1JBBdMDhGreOLsI14X+2/hKiQAoT4Hk8O7ZWR4haYORCaUL7iRgDVrGtC3S9NnS2ggWajxNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ib0A6TlM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51C8iJ1j023543
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:54:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Zq/tfp5H3EdFiMQlHf/WblqjUgkRebGGbZEAJvFLCY=; b=Ib0A6TlMIAKfnw08
	WTdQtxbBGG2KYXMUpJVIyuwmWKHJ7SCX8XzZdqgsQKnBTeRhCSfuhxdL2W4XzfwS
	s5qe8ghzsagjji8kSbfQBkO4LLK4LN1lV/kT65svaqSzVV/eXnTe9F+GTjiVahkK
	vhTXox9S36EoOlYMxmXAa0wkL3y/NwPBnOn5Ye2+Q+wMOcOeJEjNF6sFqpIkpAg+
	96NEe1wC9Mo7yJw1gfS8VZMURurUMaauefcKkGafU06tOLK3VnDwGA1DwedhpIGh
	XzJpzCPanDVgQA52Im6VpF0XaCDEjCw2zqbuAVS5LTGwtDxu4fA0OKIOKfVCCy49
	lWCqTA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0gv3frp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:54:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46a32c5cdbdso2463851cf.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 06:54:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739372060; x=1739976860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Zq/tfp5H3EdFiMQlHf/WblqjUgkRebGGbZEAJvFLCY=;
        b=g1GOEq7U2pkVazZAuzptbJxdeQ8IyHWvqJKnH2gNFRbriIta9+LWnnemubNVG4CHDN
         Q3V1fzE/r+Ho4NjDPHMHuk9PZ4Xy6ff/QIs3fF+jcEjItmv8/4n6WHohV8OEkDnJFA2s
         hmg8UIK/rKfOE+2JS3LdIkTcODYKZFK9We05iohUjgmird93XCPMORgipwC+m3qjQ3u+
         emzp14k4gvQN8WbzG7VJtfYwtnwcwHwiT6/1hs4O/S82USDSw/1Xq4dD7n2ZBgwDdonr
         /Sbb80G+2KedzVxQBIUe1plZsc8Nr9EfenLOQQUIra/P2y35EQ0tCeJTI84TGCX8Xv9D
         ohig==
X-Forwarded-Encrypted: i=1; AJvYcCU0ybd6tf/rh4ixnV2dzSrMiTaqr99H00/z95Zrut5dzGj2mHSScNY8KNtOqmpbJ31W8kEzptAJ9DWI@vger.kernel.org
X-Gm-Message-State: AOJu0YxhL8wbhvcQVLOn73P5dt46Vov5q9LuoRm8d/5fPm20apsbjzJJ
	BYnr4pFaCV1Ho4dHpFpOk0srabbUnSj9VYoxO7u4NUqyma3/zwdPE1XRPkRz4S9ENZp21CQYtDV
	nV85VgFCG8WHdAQ7A6P6iImGFv8DlMec3kjoTqTY0apEc+Tf1saPHl2rOypjM
X-Gm-Gg: ASbGnct7rwll6FLXP0MRVqlhz8OIcwpa6glu/9aJXTAX+GTmsomuYxqU7qdnyymPKsI
	CscRYTz0sA3XAATZTn0uniPXudkuJAvhZ+mCVY3qgKfSZ5WekgeolskznSqB/sCYHcOJagZ8ORi
	WBkI7iBGvy/aSWbYxPPCk0bJyEPbMgPYrGSH5nPC/GSKME65NuoqIwQ9q6OJ4KyaTi4c762YPeU
	vwxNyQmJixrwXWAyBJtk0ELvay8P1iNszHDXH9qvy8gj780ehTc+T8ewbM9iV7e6e+9A3oYyfcE
	YzVkkaJZuY6QU31RmlzqU9Xop9ABU1aF5GU4JiUAtyWkUcAguUjFKHG/74U=
X-Received: by 2002:ac8:7d47:0:b0:46d:e2b9:c4c with SMTP id d75a77b69052e-471afdfba94mr21143961cf.3.1739372059701;
        Wed, 12 Feb 2025 06:54:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFI/emx5bCvpWu1atWPHKO94hlUzByGbh7NcHanN9a4vJkMSji//USCVkpBLMIpNqLoFtWHSw==
X-Received: by 2002:ac8:7d47:0:b0:46d:e2b9:c4c with SMTP id d75a77b69052e-471afdfba94mr21143761cf.3.1739372059335;
        Wed, 12 Feb 2025 06:54:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7bb57b2a1sm686247666b.105.2025.02.12.06.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 06:54:18 -0800 (PST)
Message-ID: <f3c3dc92-77b5-4091-9f0d-3b70ce8852e4@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 15:54:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Add MST support for qcs8300 platform
To: Rob Herring <robh@kernel.org>, Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212143538.GA3554863-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250212143538.GA3554863-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wpFTlRsVnuAt8VeSIhgmOfGYVGN0MSTc
X-Proofpoint-GUID: wpFTlRsVnuAt8VeSIhgmOfGYVGN0MSTc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_04,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502120113

On 12.02.2025 3:35 PM, Rob Herring wrote:
> On Wed, Feb 12, 2025 at 03:12:23PM +0800, Yongxing Mou wrote:
>> This series of patches introduces how to enable MST functionality on
>> the qcs8300 platform. The qcs8300 platform uses dpu_8_4 hardware, which
>> is the same as the sa8775p, but it only has one DPU. So it only has one
>> DP0 controller, supporting 4-stream MST. This patch only enables 
>> 2-stream MST, using intf0 and intf3. The first and second patches are
>> modifications to the correspond dt-bindings, third patch is the dp 
>> controller driver after not reuse sm8650, fourth patch is the qcs8300
>> dts modification which add the clk support for stream 1.
>>
>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
>> ---
>> This patch depends on following series:
>> https://lore.kernel.org/all/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com/
>> https://lore.kernel.org/all/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com/
>> https://lore.kernel.org/all/20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com
>> https://lore.kernel.org/all/20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com/
>>
>> ---
>> Yongxing Mou (4):
>>       dt-bindings: display/msm: Redocument the dp-controller for QCS8300
>>       dt-bindings: display/msm: Add stream 1 pixel clock for QCS8300
>>       drm/msm/dp: Populate the max_streams for qcs8300 mst controller
>>       arm64: dts: qcom: qcs8300: Add support for stream 1 clk for DP MST
>>
>>  .../devicetree/bindings/display/msm/dp-controller.yaml     |  5 +----
>>  .../devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml | 14 ++++++++------
>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi                      | 12 ++++++++----
>>  drivers/gpu/drm/msm/dp/dp_display.c                        |  8 ++++++++
>>  4 files changed, 25 insertions(+), 14 deletions(-)
>> ---
>> base-commit: 7ba9bcc5090556c007d9a718d7176e097fe54f19
> 
> Your series doesn't apply because this commit doesn't exist in any repo 
> I have.

Please refrain from merging this revision, we found some issues

Konrad

