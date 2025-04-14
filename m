Return-Path: <devicetree+bounces-166709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C7A88133
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 15:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21775188362C
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C362C3757;
	Mon, 14 Apr 2025 13:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VcSosi47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AF7278E63
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744636056; cv=none; b=XBkY1Iufgh37f7QWc/qrzebQYOzJgJjJtpQLmIISwTWwIzpL9jVZCcjKxVyEUfBSKg9NRq0+2aefNjSAsLOtjgzEgYyIE1IUm6HmOhWU3vXenfie9XMsmnePH9eIEoK5OrvgAs+ELpOp0wR3+Q15yUuHa/y4ZqpNHOFtQc31C6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744636056; c=relaxed/simple;
	bh=ywQmHD/mf4H2fFyhuuMIat+d5W+cHZvnrGUn9kTOw6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFQ5/NTRZvAzmm0sVUIS1wdUfsaDm6tclbNYbAmcpTCNOMs9pHTnO33PJrjRXyOlEVm/7NZJ/3jsPTZl9p70mXH5KrrKA8Qk8o3Q02ZYrDJnZ7SI7rWrx27qmaM0s/ftQQHPDksnpE6/17rKSIH4YkI83VZx0HbMcQSei5Frq2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VcSosi47; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E9AQuo016934
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:07:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2lDMoGbLTkfpV9XPmY4UE7cjKyAc0EvO1VXR+z/uwKo=; b=VcSosi47HmKEE9fd
	TAKwP7IleGAq85XwKdpf7SEqMk3nFF3HRFKNZYb0zOx7D7scBTCM4+O0Gqu7CPs6
	LVgDK/quX6mxxfrOOhzc+MUxlx/HtZtGwCrsHfdKA+7xNZOtaWk9LIqtl628skQL
	jzFxNYtKCoNlV8MFHYaXknULyKRfE6CQKUhynqsdTdVkv28y+EIbJOcCibXbEoB9
	lBWQUOMAeMmBXyruLjYrGg6fEM5qIF1M7uFopExABEcUi0qkC6QHnWxICluET0y4
	lOeDTJin7+Y0WNdcS64OE2Wt/XRiLzbrNPNbmmVPrv8mJNq6Cdoy3l3GWY7AWrnD
	aBgxCQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjcmee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:07:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso100349985a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744636053; x=1745240853;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2lDMoGbLTkfpV9XPmY4UE7cjKyAc0EvO1VXR+z/uwKo=;
        b=rjYflyMgFYFCCvQdP/i/KmI8wQRrShVWGoEmD8oVguXIrAnw3Boz5DDUlXZKeCjVnc
         8Lx2gKCvcOsxzvh9BAZsZbXEZUBW/Zq2gI0YUh811DOJAsTPT2MzCw4ffHCwXIdz+3mA
         xLwAqnwX/Zjx/LR+tRxAlToZg5r0iJZXnJ3kceON/gXEo2mkiycma8ldO7t/yYmPprjc
         9plSbxNSsGdXkFUe6tqnbULvaAt6v1aFAwNnCAyqz2U5r8W6eEx6Kf6KIUprnj3dMQ8v
         riUQN6AD78ywQbLREv/jXDoLOFoGzjQLORVXJSfznNjXDTyFDLo+s1MAh2VJpIfVluwr
         ZdeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbn1v/PtHe3HeP0lY3jNNEhEotStkh0oLIvatdSPgHSVGxwZH6SVhc61xDe7/VJrcVnsLLG+ezWd+T@vger.kernel.org
X-Gm-Message-State: AOJu0YxWkWvVyaSzaEcLpegy9xwm5WDBjQhLZqNVgPKIM+2LybdDbBP9
	+8S4cJ9gsRyBOFp+jX8YlU+ISdlgVTGl/M6v6IQCU9H9HomUiDS7K1gbrO85S397dCWVsJMhhle
	NSqs01fB1XIr/pTQM49bLcj90dQ1ys4mapV00DfaUjJS5GBD2giVarbfzf50S
X-Gm-Gg: ASbGncvEmi1faJd8+gJyPhFdfP7nIvbh7SIAi2JdsAles8XwnxVdfKvkOsKP3EsmTaP
	CAzuA98C9HV6JprEez5igDUbNqBl/hA5bAVYIYTpA/jMiwYk8PDIydHm/iCUHDUPpfEz3Fals8T
	ANyImcavnoALRo60DRrAITNPRNYL8wC5I7aTjop7rNuA3OD61yEM0hjFLg1RzYZIy8QYCxaIk8R
	tsSJTpK3mhs83JD8bF2U0E3cvzRjJKg22YzpxvbOxEqFriru42V/rgE7DHN4bjGC3ZUxJIgJbUf
	zeUxgwtocyllH+vo7C0gOPEpYmHoy/sJVo4ww1NG72g+pMK4cXuM5IOGHdJ1Afmtgg==
X-Received: by 2002:a05:620a:c55:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c7b19a73d9mr526926185a.7.1744636052504;
        Mon, 14 Apr 2025 06:07:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkjyPRb5zjVxNYkQFuXETFI2mifPtUz3VVZ8CZhW5cBCjg9CtZG+TWolnSrPbDxliiMbxdEQ==
X-Received: by 2002:a05:620a:c55:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c7b19a73d9mr526922685a.7.1744636051876;
        Mon, 14 Apr 2025 06:07:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f459a32596sm302607a12.65.2025.04.14.06.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 06:07:31 -0700 (PDT)
Message-ID: <5b7bd3a6-532d-416c-aa64-8523c54d87b6@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 15:07:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/10] arm64: dts: qcom: sar2130p: add display nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
 <20250314-sar2130p-display-v2-10-31fa4502a850@oss.qualcomm.com>
 <c14dfd37-7d12-40c3-8281-fd0a7410813e@oss.qualcomm.com>
 <umhperyjdgiz4bo6grbxfhe44wiwoqb3w3qrzg62gf3ty66mjq@pddxfo3kkohv>
 <8fe8c0f8-71d5-4a85-96e5-17cb4773820d@oss.qualcomm.com>
 <fd2dtxhbfvgpiwy7rc5z4hrrmuthet7bmp6iespdcvxgaz5uhe@ivg2gun7sb6q>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fd2dtxhbfvgpiwy7rc5z4hrrmuthet7bmp6iespdcvxgaz5uhe@ivg2gun7sb6q>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: l2BaZUCWc7n5LekSmpZYmtPFxg09GOOy
X-Proofpoint-ORIG-GUID: l2BaZUCWc7n5LekSmpZYmtPFxg09GOOy
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fd0895 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=ivjB2eyK2o-HjyQSxY8A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=694 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140095

On 4/14/25 2:14 PM, Dmitry Baryshkov wrote:
> On Mon, Apr 14, 2025 at 01:39:56PM +0200, Konrad Dybcio wrote:
>> On 4/14/25 1:37 PM, Dmitry Baryshkov wrote:
>>> On Mon, Apr 14, 2025 at 01:13:28PM +0200, Konrad Dybcio wrote:
>>>> On 3/14/25 7:09 AM, Dmitry Baryshkov wrote:
>>>>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>
>>>>> Add display controller, two DSI hosts, two DSI PHYs and a single DP
>>>>> controller. Link DP to the QMP Combo PHY.
>>>>>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +			mdss_mdp: display-controller@ae01000 {
>>>>> +				compatible = "qcom,sar2130p-dpu";
>>>>> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
>>>>> +				      <0x0 0x0aeb0000 0x0 0x2008>;
>>>>
>>>> size = 0x3000
>>>
>>> Existing platforms (including SM8650) use 0x2008 here. Would you like to
>>> change all the platforms and why?
>>
>> The last register is base+0x2004 but the region is 0x3000-sized on 2130
> 
> As I wrote, this still applies to other existing platforms. I think up
> to now we were using a mixture of 'last actual register' and 'documented
> space size' with VBIF using the former one. Should we switch all
> platforms to use the latter one for this region? In such a case I'll
> update this one and all other platforms. Otherwise I'd prefer uniformity
> and still use 0x2008 here like other platforms do.

Let's stick to allocated region sizes (i.e. 0x3000 here)

Konrad

