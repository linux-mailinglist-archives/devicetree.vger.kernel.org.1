Return-Path: <devicetree+bounces-172727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC06BAA60FE
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 17:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 424DA7A2D94
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B70020B807;
	Thu,  1 May 2025 15:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GIa/SO1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837031BF37
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 15:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746114804; cv=none; b=PVRCUZ/ISmsugiaG6c6gFY0MYWPNTTc3njI407retqVuzO4f+fG/KdvcMasAszdVWzIY23poaEaTL/ogmXDuC/NuQBph3p29tDQehHyRVDHdd6Yy9Dm5bIv9Bmw19CDRlXPO9RZdkcUWHSRhUJRSpkTzSs6tUJjic2WkRV9NZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746114804; c=relaxed/simple;
	bh=q47reW8pLreeZHe0vOxLJ9XDePxfsiFx/O1A7ZwA/yI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LH40tfUl36BdXNGQZwluDv5A9oYXZMnqERy1dfTUpfOASGNnhcBNGanI6qvr+Y+WBN6TisVEUtlaUsClVAmt9WgXrLZ7pS1wnewnowUqaADTKBYsW/jvIlaNd3Lbw756wPXMhiCTetD6jUOLf2O/bCkvsaYTT/PZKZHh0cyaetc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GIa/SO1O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 541D232A006496
	for <devicetree@vger.kernel.org>; Thu, 1 May 2025 15:53:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e0jMJ9FtUEXRGsb2EEzfZbnaOe4VQC+t/gPRLz2w9wc=; b=GIa/SO1OUyCaIcmV
	2ikfWvOTGD/N41J0XUg8htRQ+32zMAJlt5xgSd1pppFAQ0J0HBndSzJj+GEwkdMK
	yHgB+qnm4uesnWnNyumId93IoL/16Gt7tOqXXLQRALBycBb1GZ+CsTcSD3YI1iOX
	GociqsyQszeyYfULj+5QbqSShT2sXAkIdnaCeiZ8b/DSWWi0TBZKIFTkLTdLFT0q
	qnEiipu4VWuvutXvpor8i98ym7jHoK/JcBkzknSP2MXbtC+Pz/Z5P17RhabBGG3E
	m49ubLpEz8nFLsVkYxzIGOjrR2B5oiheHuZuX+Y9XzJWTRBsLTkzcw9YlR97WZPj
	vT+z3w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u9wn5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 May 2025 15:53:21 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c547ab8273so22138785a.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 08:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746114800; x=1746719600;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e0jMJ9FtUEXRGsb2EEzfZbnaOe4VQC+t/gPRLz2w9wc=;
        b=CDShgMWpjJBwARJpscbBORLlTWSScAkSLHw7u7J94ItCR7lzuBIinsJa4wM+JZzW2h
         jXmo3TW7NfjLuYwPmVoEQrcnZIenHHrbm0EnwCHa1+iRa0KPd9pKqnvW+MYR8Vd77gwi
         MXrxyu/pCEYuB0JDHi8AQwq98Vc32DP/OhV4kH7HPTXJSjWZU5JLW9DrlZJGbIAES0LT
         kOxshTMvB87XIp9E5djQeQMEDXIJpzTxlBO0TECVdHaObGSI3UEw8KA26znnDRF/Z/AO
         PSbBgG1oC1aSdaX5nrHkyGrDDA0SxgLFU2OfHxJY5aukgBedl/spFAafJ9ASa+HqYlTC
         g/HA==
X-Forwarded-Encrypted: i=1; AJvYcCX0tB3lm0N/63wtYMu4mUrycwPxRd1oSADGNmijn5lE60BGCHR5Xvl9H6KUtQi37uRF2Pp5vivPE8tY@vger.kernel.org
X-Gm-Message-State: AOJu0YwXHjMNPXkB3X2A+wpIlxAZiBGWgRFXTef918RbkmMwGJQY5NhX
	/iGelDfNjTvHcDZr8x6cgHIziXf6fvxCy0SB48bUE/6u8bP+EJSwGXBZcbvdW72gJ59BLn6FE+Y
	O7xLiVvDutYc5dvK3WJWpT7N2qrviWCOTbM06ODhi1jqyH3sYbgvGOLXWHmoJ
X-Gm-Gg: ASbGncsSpFc1vwz+IIjqHg887kqviQKZ5CPK5AhGqWiynscqa/qQ8z7jLlWdF4rGSst
	XYLoyFMZe0Tg2zTvAxFR5oMnCHjCTeXqlrqr2dDLHoa37EOwYvw/CBvvj1Zny3kr5Ns4aao4vOn
	DfJmcxzYOrdM6h1MIejhi5MmBljMIwguNmmCi2L078UQntOdsUazzUapIWHeuY+dGLsmR3FcKvP
	kk9wPVHGucIE0Q/OKXrXm9pAyg77vXlptVLVI85qdJ51nhkU3yrMPWGWyGQfMxuiKvhYRcDtjMf
	pWWFd5XEtz2RP0pxzsI9uuWsRm/w9ito2/JD9pbzrr9+sZjpmzfqHYKbtPbjQjpR/sY=
X-Received: by 2002:a05:620a:40cf:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7cac88397b7mr412121485a.14.1746114800351;
        Thu, 01 May 2025 08:53:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjkDWZYxp5ISUoJ4Ti9lg9jEL3XcSgYQbAqGImU3wp6ixHLFW+pV+VENpXRoH9ZN2mgChWRA==
X-Received: by 2002:a05:620a:40cf:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7cac88397b7mr412119785a.14.1746114800013;
        Thu, 01 May 2025 08:53:20 -0700 (PDT)
Received: from [192.168.65.219] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad0c7122a5esm57713366b.86.2025.05.01.08.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 08:53:19 -0700 (PDT)
Message-ID: <d73c6151-91bb-4c96-ad2a-972ad392624b@oss.qualcomm.com>
Date: Thu, 1 May 2025 17:53:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v6 2/5] drm/msm/adreno: Add speedbin data for SM8550 /
 A740
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        neil.armstrong@linaro.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, David Airlie <airlied@gmail.com>,
        Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20250430-topic-smem_speedbin_respin-v6-0-954ff66061cf@oss.qualcomm.com>
 <20250430-topic-smem_speedbin_respin-v6-2-954ff66061cf@oss.qualcomm.com>
 <13cd20c6-f758-45ff-82d1-4fd663d1698c@linaro.org>
 <886d979d-c513-4ab8-829e-4a885953079a@oss.qualcomm.com>
 <b838f9bd-0537-4f8d-b24b-d96700d566c8@linaro.org>
 <98a4ad20-c141-4280-801e-015dafd1fb39@oss.qualcomm.com>
 <a26213ec-808f-4edf-bb0d-ab469ee0a884@linaro.org>
 <281ab1b6-498e-4b29-9e15-19b5aae25342@oss.qualcomm.com>
 <63105bce-6b8e-4b99-bca1-3741f27ea25a@linaro.org>
 <892fc1eb-efd3-4fb6-9110-2df3349960a6@oss.qualcomm.com>
 <b989522d-bd41-4d76-91a9-3cf680214003@linaro.org>
 <f5734944-1ed2-4acc-a015-0c638c331bbe@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f5734944-1ed2-4acc-a015-0c638c331bbe@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: I54fxAgI7ROx5mI3V8JfMgRiGYj4pUNv
X-Proofpoint-ORIG-GUID: I54fxAgI7ROx5mI3V8JfMgRiGYj4pUNv
X-Authority-Analysis: v=2.4 cv=UZZRSLSN c=1 sm=1 tr=0 ts=681398f1 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=-MVukwTEXeiimiWxaQcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDEyMCBTYWx0ZWRfX7N0W2x8p6ci0 GdnN8tunlTqapzQzjpUQ3w9clWPvfWQD09S4E9ql9T8Kwx49TBIewozxc22PvOMQlKK7Mn7tr3i Erag08PkkNWJm9Jms7v+znTyDlhEPs/Hm4aEgOHzw1VBVfonnKiTSeSFfwCLbJ3XO3DwL+kSvL/
 UW6Q6Z25oSpydysvvlle+S5802ELI9uLjmjTBDFkfeEwoTxlXbLSjva3aljdTHUkpTOdMhdmlH6 lEtsY01Z5TtmK4zIC2TZufAZqTFlbNnDjGbY9PWRBQMdmNn9+6EWqhu92IavzZU9ajq+zyWmlHl HZxrurN6kYJtFTWlQTbe+jFTBZiXWGOa1AIY34Nj0J3/a9e3m5ldbqAA0sckCylM2j7MWsCu9UI
 ICTH5G1yHxIUb4rHcF8JoGmI9YrNWntJc/+ljYfEnDxPapB/5vBYbIf8/8XSQIf16QTVQJDg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxlogscore=669 spamscore=0 priorityscore=1501 impostorscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505010120

On 5/1/25 11:29 AM, Akhil P Oommen wrote:
> On 4/30/2025 10:26 PM, neil.armstrong@linaro.org wrote:
>> On 30/04/2025 18:39, Konrad Dybcio wrote:
>>> On 4/30/25 6:19 PM, neil.armstrong@linaro.org wrote:
>>>> On 30/04/2025 17:36, Konrad Dybcio wrote:
>>>>> On 4/30/25 4:49 PM, neil.armstrong@linaro.org wrote:
>>>>>> On 30/04/2025 15:09, Konrad Dybcio wrote:
>>>>>>> On 4/30/25 2:49 PM, neil.armstrong@linaro.org wrote:
>>>>>>>> On 30/04/2025 14:35, Konrad Dybcio wrote:
>>>>>>>>> On 4/30/25 2:26 PM, neil.armstrong@linaro.org wrote:

[...]

>> This behaves exactly as I said, so please fix it.

Eh, I was so sure I tested things correctly..

> 
> Konrad,
> 
> iirc, we discussed this in one of the earlier revision. There is a
> circular dependency between the driver change for SKU support and the dt
> change that adds supported_hw bitmask in opp-table. Only scenario it
> works is when you add these to the initial patches series of a new GPU.
> 
> It will be very useful if we can break this circular dependency.

Right. Let's start with getting that in order

Konrad

