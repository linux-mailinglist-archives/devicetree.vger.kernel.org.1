Return-Path: <devicetree+bounces-201916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80945B1B372
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39D2E3B0AEC
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D6A230997;
	Tue,  5 Aug 2025 12:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SS92I8lU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF7842A80
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 12:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754397062; cv=none; b=GlxFpjJGpn6ldZt+DvfJcYI5cDH+MB8q77c5pJH6TbTIOA8Naimq4j0aqYRliouvaUi21Z920w6h0IP7Hrm2W0fi7ENdUER49HMIY+Tc0zXJ5HXZ2HNz9ILT6jLhzx92MgazSqwJYlwIAerzPDfXUZ+vR9XGyAu6KCxNYnpcza0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754397062; c=relaxed/simple;
	bh=QcRSA3ObR5miAp51l5eibI2C+rqXlRUN/sFaHZCntdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GgaV45aSNC3VdTJr1rW5AcnbySjFZ5namPxIMppFnkBw5AOBV5yXS5iXs/QmM1mvxHo1gegUiSbXJ4JMXi0pOmP0rZGTZniHM1983OeFB3Nca1RJLuK6lRl/K+vciaJApAwVonvP9CXFSw7nO0302xmWRNuYt4bPedWfDMq296g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SS92I8lU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5758CaXR017590
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 12:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s3le+/lRo6lFhwerueafNlEHaf5TdAoJ7u8vQoJNvQ8=; b=SS92I8lU9d0zXZtg
	RJECfIhtV2GhFJG/FsrlurugPbzRKZ405XKz/BWvRpRA56QqFMIMF67KXbolHmvR
	Ef3K5F/zFmkLVBt8fqJ3KAmwMpKo28CR2RxTS/pLmzVMYNl2xmIGqYJbpz/6TY48
	HuHot+MnS8zqWQzc05ZvIUlzbMU9/UXJPYFK5PAB9ujTIpwFepIACUT1Fpyacwjr
	M2xO+DiH7DSB2JO9eu8ZRe2GYbdmIa95AXOUv1nk8oPyqetdr4qLAmw7/vjHsiFL
	CC/pcSs+6hSm0YrXZKhlnjg+WFhvEo5zSoWIn9wLaR0uBpJSWmxWcQsIQGBv26wR
	A4kE+A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rrmxe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 12:30:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70941c8a17aso7983776d6.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 05:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754397059; x=1755001859;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s3le+/lRo6lFhwerueafNlEHaf5TdAoJ7u8vQoJNvQ8=;
        b=HThA9T5Y7uIt5sP+8vbdcadDiRwSN1/Bg2tvHPI2TwQCEhG+WlxJZRXUoimNDPf8mJ
         jIJF4Z3AMuRcbPprC6tQdocp+s3jLIHf71YPEl7D9Vcho78grf4kz8NJ77Ii3Kmi/fw9
         SaiS/WNh0UPxWU0lKW/uGhlHJbGH8d+Pd2ScR4a5Qbjp1TA5sxhF9USctYSckVS6XUCj
         +SoG0BSOq359t69riivYROQYBXrS6QCzbbdT2ocJvk4/21fFl1XXkvTEP8Vhp4NU964j
         jgM2RKZH0lJ27A6gFGJB2oGdYNTYPllc0Z1cWeI88PmhO0LH4lj1CoCwjyJ5Kz53SOEX
         fR9g==
X-Forwarded-Encrypted: i=1; AJvYcCVHjhgnjQb94LggeaFDdWdrXHnNL3YoiJgJz/65LTEcvBS8avNi1+9Vl6c6x2TrEy0+A6VW9QVSS2yV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc/2iuvHnHGL8BEalF5OecidKtT61PPpuQEyq+kSIROGH7UeyT
	+k1E0gwus0v1YwleMoIapumfbghheEEBJYhhUuvN3/LpElatIq6bxbTGr9jN/vcWo5svYc1GSy6
	4o3mMs84lmwJEfX9R1g085cYzF7SST87QmD95jFhXlhIWWD1AyOW++6zm4r1BulNa
X-Gm-Gg: ASbGncu2/gqVcRGKkYDwFa6LFlWK7Yn+WBc97bEBpWXMCRkhdK+t+5PANh5OftCVfir
	KaAp0ZCQ9r8+MJle4Zs+nUEddhXdrnPyMFnDxqu9ppOwfz1BgBmoTqnbr6/RbJnKs3OPDJEZSOf
	cZCxoI/LFMNWZZKVTLYlJRetc/+OJizNKxysIssAgbui3RH/7HnYxf1pMauRHYBssvoGdIe9HJc
	Y/dacaPdZrw9b2Z+Q0LtNBJGsYKzlXO9MN7jcewYgeLaRQRDr/le2Ly4bklXg3KBdZgnuEjDjWZ
	x7+SN9UU+DcQOkUEI7DTLqAfBvSqYL3YxQr7i8YtMTGDAXbQz1huBxslKy4ZbTv4CIjs4+inohh
	+2yRhXkp+eslyKAm5Pw==
X-Received: by 2002:a05:622a:5cb:b0:4ae:73dc:3896 with SMTP id d75a77b69052e-4af10a82fd9mr86977321cf.12.1754397058490;
        Tue, 05 Aug 2025 05:30:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjPK46kGEs3pc1RDAynXgcof2Ji8nE/G9nnh49KnsMRv34OIW/Bz1yjYcoLC3FvpS5If86WA==
X-Received: by 2002:a05:622a:5cb:b0:4ae:73dc:3896 with SMTP id d75a77b69052e-4af10a82fd9mr86977001cf.12.1754397057886;
        Tue, 05 Aug 2025 05:30:57 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c0afsm903708166b.117.2025.08.05.05.30.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 05:30:56 -0700 (PDT)
Message-ID: <7fddb531-51a5-4ee3-9626-3e59f1dac364@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 14:30:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com>
 <20250730-dts_qcs8300-v4-1-5e2dd12ddf6d@quicinc.com>
 <f3aeacf5-f178-4e61-b34a-60353f89daae@oss.qualcomm.com>
 <d6559256-81e7-475f-b91f-04ae237a92f1@quicinc.com>
 <a4b2a06c-31c5-427c-a618-1f1c3704781f@oss.qualcomm.com>
 <mj6hqitpp5nsmixo7udhbe7pbcr4qctbebhyvqtmamevq7zm5s@q7tpzaggabhn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mj6hqitpp5nsmixo7udhbe7pbcr4qctbebhyvqtmamevq7zm5s@q7tpzaggabhn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: R11WHu0VYIC5CMHPiyJ7YZ3I0lJjNikl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5MCBTYWx0ZWRfX/nWqDP7ODeu3
 sCsLZem+M57WHyt8xcZaLbn5obPqHVIp8XZxZeU8lnPEMwU2Y7bavvjc4ZmsB9z7aunhqzc+aQJ
 4eUJQ0gIGsoEwoN0vhGWvsPCQnuXRSvhRritv9vlh637IgXjB61AU3HMWZqVlNZmRPXubEN2XPS
 fAtCYaaZDE3AroXcxxywSPBBIE96x9xaWA8M6oPswcWHeaWjyCTIUw7Ys5kPu5ElTHY93fSUgOy
 po+juF99O6nOW+cxgLrQPMEX2W/sQnvGyMEmunTS6NiiUs0hKDP8Mca4NXQuEJytKECfa7aevFi
 z9SS+2v4+/anUhotPvQjrTk7r6/69uiY8u2sdLUDlp9EOlvSaVTMZ16Uev9l5ElD3s+w1Gn9VsY
 wYlVkCaloLRojGQeVJU+8zFyst1X0XpyM5hOzYK63vL+bquRCnYJCRCxPhileVVwEGKaVc+q
X-Proofpoint-GUID: R11WHu0VYIC5CMHPiyJ7YZ3I0lJjNikl
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=6891f983 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=c-rZqItlf4WWe7PyqWgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=806 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050090

On 8/5/25 7:15 AM, Dmitry Baryshkov wrote:
> On Mon, Aug 04, 2025 at 02:34:56PM +0200, Konrad Dybcio wrote:
>> On 8/4/25 6:39 AM, Yongxing Mou wrote:
>>>
>>>
>>> On 2025/7/30 18:25, Konrad Dybcio wrote:
>>>> On 7/30/25 11:49 AM, Yongxing Mou wrote:
>>>>> Add devicetree changes to enable MDSS display-subsystem,
>>>>> display-controller(DPU), DisplayPort controller and eDP PHY for
>>>>> Qualcomm QCS8300 platform.
>>>>>
>>>>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +
>>>>> +                assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
>>>>> +                assigned-clock-rates = <19200000>;
>>>>
>>>> is this necessary?
>>>>
>>> Emm, i try to remove assigned-clocks and assigned-clock-rates here, device can still work.. here we just want to keep consistent with sa8775p.
>>
>> Dmitry, do you remember whether this is some relic of the past that
>> was required at one point?
> 
> I think it was necessary for old platforms (MSM8916, MSM8939, MSM8953,
> APQ8084, MSM8974, MSM8992/94, MSM8996, MSM8998, SDM630/660), which can
> source vsync_clk_src either from the XO or from the GPLL / MMPLL.

The RCG has more than one input, but the Linux driver (checked about
half of the ones you listed) only lists the XO-derived frequency so I'm
not sure it was ever *really* an issue

Konrad

