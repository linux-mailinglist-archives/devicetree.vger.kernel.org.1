Return-Path: <devicetree+bounces-248730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 164B1CD54CC
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:21:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5485301E583
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C69430FF39;
	Mon, 22 Dec 2025 09:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VSaJ5ahw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QPy+rccr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F8330DEBC
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395181; cv=none; b=C98sQskYonV0TQnqRvBH2d4R7Jz4SHB5FJlgtg1T1o/15i7lQJwGqENLjlZAInfbE2kyqQRqYSuyPl4KC0lly04k3SAZAZWXa7l4cJsO01cv4Kvxdk8hAHC64yGKPSGq0uQwKHyFyIfSRBNyz625qGuB/tsdLwBftFhC1UN9VzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395181; c=relaxed/simple;
	bh=yeCo+Ke5FI00/Hv764e6wUwZZyK66elwU2B70cD3CRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RQsZ8g+EKGCgkBN8eSnHLyUrl4pMrDxAtzLUeVsc+HQX4mWPdSqq0jMdDTIgmbPq+9tsiB9yHXmodKo8pMD1PjPNUQAkT6xDhb/v7cxsVar9QerkdorU7mJ1UZG+nOWny5VxGYgvsjnN5pcRb22+NO3+B/kUdZaKMxMpIylDbRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VSaJ5ahw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QPy+rccr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7xglC4180499
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:19:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vr4o7vIUQRCHjNEoxlOElT3p7hjKLLaLIHeYAGpakxU=; b=VSaJ5ahweJLzr49j
	8JsM76SNDh7vetFymmgYpCl7nCFhyrhe81FPg/ljk10GAchrPbnVjASt7jh5HcBO
	KTFkJ//NgqUDoDexPO+CRjfPA80MCurqMvLbvnJMBF0tAB85hhmrEG5NDyCdFfl9
	AW+AQ0sJV2OUXSyg7oZKf1tfuCp6sXSenw6JfvGWmEcbbTFGndjuq3bSb+k3BLGC
	buqJ0v7YnYjmQJviyhlInKvJ4vcKubECyC2NuPDA4XcgEqjPup36Cw079L1yUUCs
	LPzYG2P6afVg7RZsz7lNoDDN+QcKvb5zaQdBzlLBfCrgNk5Bbr/HEBR60xus65oo
	EZmNmQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mraceuf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:19:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so11766861cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395178; x=1766999978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vr4o7vIUQRCHjNEoxlOElT3p7hjKLLaLIHeYAGpakxU=;
        b=QPy+rccr6H4n2cXXo+3UOPpttCJczrbYwoem0O4L3miL/X4PlKqT+VNzA727ZACyBN
         F+DR6UDIbDNB14qBG4ZKqnWnhLWv6B/h1AE1h2LSPlKduoNc8oVENWBt9QtucrBdhiC8
         idWXOcQGeCkdeZNO7UP1wdo6taortHkaO9qfjFL91kxhGCUXvH11VygUyZZI9pzPCziS
         XSYXvULnkNP8aHeo9C9MJK2DmyxaLL7HuZA+oB2asGKz/SMau90zB1yT5w//v7Jk7Csr
         LuCqLefilg9TnHb6hzF1H+fd4WLm9FDRwK1dG0xExlGUJQUiVsOarkswk62iMBwX/fLu
         V1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395178; x=1766999978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vr4o7vIUQRCHjNEoxlOElT3p7hjKLLaLIHeYAGpakxU=;
        b=RXByhmkLGcwbm4GS4TDJuvDCObrRhQB/wK5hJLVjwfBCZXG1Z0oc37v8DNrW+1m7+S
         KOHN4XbAqyHqmBYkTjykUyiJ3Ju69SiMn9Epz8h31Vo2cjzPeziQaFU1FOxb7PNK7TRK
         tUceGQmU5tORxXq+lSO4OE0IS0SqN1hN3OIHTUzP7KaMguvmtwMcqMyz01Dmhu16UHqF
         9TA+m7+jqm2TzGgz5PBVfKTaTz4DPR4Kdkv8L6N+fZQGQwYWptpveOyeEUjjprX17219
         Vq0WPPIB+w0ZSOE+/IduOecPOSNJqaqymJua0AOz3bdMRdLghc297bcfiJft/2+h5azk
         OvJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqdyzspYka+RjjjxlNEiJU3aamz62/jd9wp9sYWbgRMAH4O9xtUw5a/ThoKbc1HCf0TEX8KAwirs7u@vger.kernel.org
X-Gm-Message-State: AOJu0Ywai6MuhuJa16zrb2mXvjthBR7zhRXd9yhDjuQI+Y1ElFhL9IIZ
	09EaDLG3NvDkA2ZO2C3KpQdT2Mkc5Kj2q9pTzXJeZwZBv37AW8TBW5HXVT/b3uDLMBRhQlRJWFH
	NsJQf6V5YauPk3YNNygCXZWKY6ByDmxzLl/ipfyyHEKp6d8bo9aLwzSwp/wclSTlJ
X-Gm-Gg: AY/fxX468+IppWjlTTgkhYhIUqhptHUyrB2eRxSkzhg7eMV+IhEDxuhJ4PXdi3erOqG
	hcfMSTWUDGybO7tIJPDTgYi9y1NunOO385L7DFhJaEKiAGqq0cB7RrfZWU6ll+nQzvL5VWi5wUF
	mgeuFiQz6XpQZuajw8LyL0AkK1UxZrrq1FEinXxW9ivM+AQI5jZCFyJamnIsn4XahQ1xnIvzOX5
	oaoa+Jhv0Ki0D489JkekKepAQvt7FJNN0XbtoeNrqANMszsjaco+QU0yS0jRWCR8HpOlvHD5xb3
	crH7YQAYfMixCZF9NJ3AGXHJ33RPPaftv4CPdyq/EFoO6yv1vDqnV25gVMSIFIF0uN3oPGE8TkL
	VaVQ8M5ybuDfn4Xn/RXHEd35WJ9t5/NovXCgABtsJzPLTnlAxlWw5FEqKs65h04mBvg==
X-Received: by 2002:a05:622a:1a9c:b0:4f1:96c5:eb29 with SMTP id d75a77b69052e-4f4abda6096mr112333761cf.6.1766395177771;
        Mon, 22 Dec 2025 01:19:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/2bnxdFBb/MQ/yS64tXg26YmjXwktYKlnrn7DI0rW66afHwTFNAr7ud/crT5sTAXD2eDuHA==
X-Received: by 2002:a05:622a:1a9c:b0:4f1:96c5:eb29 with SMTP id d75a77b69052e-4f4abda6096mr112333571cf.6.1766395177216;
        Mon, 22 Dec 2025 01:19:37 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9ef904bcsm9089567a12.22.2025.12.22.01.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:19:36 -0800 (PST)
Message-ID: <c6d9c05d-3c34-4d69-bb23-9c761858a2f6@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 10:19:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/6] drm/msm: mdss: Add Milos support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-3-4537a916bdf9@fairphone.com>
 <475izg5bi56oefqtqkvqeyspx2por66zrw4tgqbb3f2ziaghyt@tccm73sl2u2e>
 <2f3c7bc8-8c7b-4c47-95de-7a8ac6dc3c57@oss.qualcomm.com>
 <9965e114-43c4-4470-992c-1051ff1b7f36@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9965e114-43c4-4470-992c-1051ff1b7f36@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: fVhEhDlUmiMLC49GVeD3dB-kj-S2YiEg
X-Proofpoint-GUID: fVhEhDlUmiMLC49GVeD3dB-kj-S2YiEg
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=69490d2a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=lWcTiWiVgQmTcaRhBa8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfXy771/858cmMD
 xpoY9eNDs+UGGRt0JP94rTny8czdtU2pcANzqE5n9uBn2qXf0NrRqExIyZXT3+kduejWfwEqATk
 v0oXMYYeVZMEPR0f9lZf635UUE1Jgk100BUAWr3Cas4/HHgjSn4eVsuaWZuM9tsidziNHHzG7eB
 vex4hZfbgYsvqfAIkXvMab9g70WkdbOSjj89o+UhP8MSYMHyB3zjktsy9f6bM8Gjh/hVhFX3HBa
 UjYjy+vmceF5ySjrqhhGOvn1oWm2+0d/CBXQg47B4T8IH1bNMagQgNm29NRDOvCkEtnE8JbwHhB
 4T3fR2s5q1o9OS6VLekVc7V+zLJJe+t6Eu8VSpi3rGhOhjVXWF0XXc2VgJhOWruwNxS/1/3+041
 yaA8CawkKiDmsgVLHILN4TCwCrazmNLLt9SMR3664xVfwMPora3z+I2s4NDAtIqCnUMhMv4PJN4
 3KMIUy8oRptZNh/VfJQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083

On 12/22/25 10:12 AM, Dmitry Baryshkov wrote:
> On 22/12/2025 11:09, Konrad Dybcio wrote:
>> On 12/20/25 5:52 PM, Dmitry Baryshkov wrote:
>>> On Fri, Dec 19, 2025 at 05:41:09PM +0100, Luca Weiss wrote:
>>>> Add support for MDSS on Milos.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>   drivers/gpu/drm/msm/msm_mdss.c | 5 +++++
>>>>   1 file changed, 5 insertions(+)
>>>>
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>
>>> Though 14000 seems lower than the value for all other platforms.
>>
>> IIUC it's essentially "nonzero" or "first-level-above-just-nonzero"
>>
>> The downstream DT also defines a 140_000 and a 310_000 point.. though
>> the middle one is never(?) used and the latter one is only used during
>> UEFI handoff and upon the first commit after (runtime) resume
> 
> If I remember correctly, those are also used for programming the LUTs or other big tables into the hardware.

FWIW this is an interconnect path for non-DMA accesses so that only
makes sense - huge writes could overwhelm the bus

Konrad

