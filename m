Return-Path: <devicetree+bounces-244644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2543CCA77B4
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 12:58:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 77B90302AB9C
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 11:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0F232F741;
	Fri,  5 Dec 2025 11:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OY0HldBL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GR5IrdrH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7925F32C92E
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764935918; cv=none; b=tXLI7zV6CtiVtJbMQxfRtmoI8Wq+cxA2yo2a4L4QSMX0HUbk+IHfaMh7jFu2OyA/00joSghH60Fv9KZsDBuFS3XY3KRt1eq6jeqOFHGAfJzBJntj2ymByWomr7Dpwbd5/AaLv8pPXmLmku0EzYNJDzWTVMmTNMYYYhEZjHj1GXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764935918; c=relaxed/simple;
	bh=JGlHPMycF08f9U3fXOOu9oKmAJFGhZOZi/jBlhBlvQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fH4SRdjlDP9ulljgFS2rq+t9p8OOVsqRItLyzIwUaMOdXH6KfMyLVMCDKH3+IXJXY7gs2ZTu5tNQGEDK14vf0Lp1KbLQzxaJMbi0hmpO58vMIT8Z0LjkxakNX40Yfij2moGQl+n0Y/s23pxLlYqQC1M6Hlog92klCKIRjDp72NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OY0HldBL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GR5IrdrH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5Axwmb3136605
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 11:58:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IIeEbHT2VcCtWz2n+Opyz7ieZwO0LhGLiuIEjFNJcYU=; b=OY0HldBLAoFsiGbO
	ALG0eqbs0lRGfH/fyO8HQNG8A1l2w261sj94DZ5a7lp+DxajjjUgcEEZzf9xf2MV
	rSMqPyvRce1oWlIGDFubE1leuznXerYPv0dcOFlGuB7W++75mQWp8wSDg6JvirkU
	NuPeSZDhHC2xvkKYBpF7J7WALYPH9xZji3Aiiocs02caKS0LAf3/hxsC6yn3Nm6o
	iI/0F3L3UsRfaQ0e0+3pELhvxo+L4R1liTI0V5oyXHbhMOuHk7+NzrPswrqjK/zd
	tKfyUC3WkFLlratEp3RfjJal+UrDprVIxt4JhCM2bT3CyZmBRNaYiMPf0pUMra/V
	vSruOA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8sh4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 11:58:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25c5dc2c3so41905185a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 03:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764935912; x=1765540712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IIeEbHT2VcCtWz2n+Opyz7ieZwO0LhGLiuIEjFNJcYU=;
        b=GR5IrdrHJ7GXfsVtX/Z9IokYWsBWjeL32NAJl1EexUZpq8w7VLcSsSOYvHmyyp2d33
         Q+FD2X9YAJJ5SaDz09bzGI34p2jJhnQXb3/yinDwNLVPWV6Ylt9kBEZjpwphU14sfoJC
         i7wCkD9bkIIU9fcWvhDb12sk6/t0aL1Yg2gevQQe9IxrzeJNFcIOLYP8nLCw+2WDROdK
         jYSnyLTQVqMBSvg8CqeWxLBcxID9UYw2kEMGvLJEwL51C/0UpVCU5ywX1euEKJ0qYxxO
         LlCfqcvTHpe/Lsylelwi/TmsJs0O0Fx+5fsaQgdBJNZnwPv33TneoWftBS0cG3376odA
         M6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764935912; x=1765540712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IIeEbHT2VcCtWz2n+Opyz7ieZwO0LhGLiuIEjFNJcYU=;
        b=VcbLnVJV2GAKZGorfWD9NVYI/Lpeabkauk7mxY5EY2D3UbPmg143DPjt4EYpjFyhle
         Iw/f9DMVv3oeBuBgV2flXGf+piqrLBjaHOzjrAl0hyDJaqKtsnkGP0VgcYWQlxLkZAmk
         X2DHd32aYdJKjGKQk1CI2pcavQnKN6zSSJany0Mv5addZtkBWXoj6OxhzfWBEGCG7AwI
         K72e+EJYoAMMifGFXZ4MB/FOK2q+/aHiNHnqjUxVD7TklZL0orfgQjAc8sHLJX22QHUz
         LKun2GRs79+V+V5ErnYt0ysHPambMOuqGIMDS+RYO+cm0Ze9wJtW6T660SSXw6AGDEzY
         2LiA==
X-Forwarded-Encrypted: i=1; AJvYcCWF1NYGkUVJN48TIaJz0SZzdy1Np25BjfiLc43UeYtstIkeUdImt6l4rcMb5kIpLc47h/lGxbWjBAOQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo3z5waI83V+icLKV+ZU0Phkam19Z9RgtSkiSYOFrxbsB5LKs1
	sb/OjADgyh530rHct1CkXKJht1qhfP3+saqdG0Y3tl7DUnruqrCRTYeulxrR8q0481c2IQVbWGY
	8vQ5nUVMMBpwCrZXzgd8vbSow1SA8rwD/wRBEXlzo/ylJ2raCQDlXMB8oRkWyo7qm
X-Gm-Gg: ASbGnctw9fgWSE32wIwNCWvoXVflQU6gzs06jkzhU5aPogXTViNDMMXcSPb+6pwxiyI
	h+acwkWJyoRlvdzw/1urvrzhAkJVSKfVpT9XT7H/yxIBS+QRgvF7nvmriCWgt6fqim4o9aD8K5m
	26jM8bvAjY4XxrNhdCR01TnYpryg7wxQ3suEQ6LJmtwxWEsCtuA8QhS9dVi33ITcDC0NCzxtvU3
	9Jb9W2kXoqM1PYhu348MTIo7BedXM2s0KZU2UYlLdPgNZ13jad8DeImTstLbEuTX0V4D4E5O+N4
	UgP0g0JeoAYolhhb4TSlMDXolxe1TlP0N6dqYJ9cwNTBnRlTElb/VtsGL+pnL3xHrAj4PG4GSng
	x2fkXJWu7vHhR74IYeS7K4eQkxkKtpQKDqnTPaOc0FFMg9I0DkRG0nAvLajg5lt2MlA==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr100707261cf.11.1764935911674;
        Fri, 05 Dec 2025 03:58:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFov2I2X1RO4Ob8MYXyaeF8rMVGALAElCw7tm9Bp7+qYh3T528OfAwWshEwbYv5+VJc7P3dSA==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr100706771cf.11.1764935911237;
        Fri, 05 Dec 2025 03:58:31 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f445967fsm349282966b.10.2025.12.05.03.58.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 03:58:30 -0800 (PST)
Message-ID: <6e6ecdbf-f3cb-4d7e-a679-4640d6603ac8@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 12:58:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>,
        Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_svankada@quicinc.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>
References: <DS0PR02MB11311CE33DFFE0739BE747590E3D8A@DS0PR02MB11311.namprd02.prod.outlook.com>
 <d49920eb-0b4e-4042-b0c6-28d1ba348ddc@quicinc.com>
 <3f1dbf91-f967-44dc-bb21-25fdcbbc8db2@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3f1dbf91-f967-44dc-bb21-25fdcbbc8db2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=6932c8e8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=JE8FtNjG4eDj_IBO3V8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA4NiBTYWx0ZWRfX76TMp601wgG9
 /LmHwX7THHBVXLkuX01Yrmsg/PgEnhAgdBWAQBJOgWVLJulJp9k41MODx2lglrI2x2UnwKUqi81
 iBC7Z+0fo4Wi4+TnBr9tUD69M7D0pygw0hMf/z30eEKpqnXCUwBODFjn6ajSn1Xfa8rG+nzDoDL
 3xd09MojSKdvnZviBkTE03XEpcoKjuX2ZMuS20RaMOSwjhIPUanW+ImbQ+iBL1eL/D0nIjqcx6y
 pO28Hvb+Tj7Wrbks5iF92142OB8sBYmN9WTM9x9fhviMTel5+zp7TrSQdX+++8xmgExpBROHaej
 ghL/c4WIukFUBlRVr4RYknnTiJXVxqBrif1+ctB6Y84rA7LUE8F0THCpErDtK/j5PXKJ9dyVBA0
 LNTUU3UIiuDMk5B69CFKPEdfsSq9CQ==
X-Proofpoint-ORIG-GUID: 1I0HP1_etxBMVDgvAATGIp9Vb0EV31Uz
X-Proofpoint-GUID: 1I0HP1_etxBMVDgvAATGIp9Vb0EV31Uz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050086

On 12/2/25 8:35 AM, Nihal Kumar Gupta wrote:
> 
> 
> On 11/26/25 9:10 AM, Vikram Sharma wrote:
>>> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>>
>>> Qualcomm QCS8300 SoC contains three Camera Control Interface (CCI).
>>> Compared to Lemans, the key difference is in SDA/SCL GPIO assignments
>>> and number of CCIs.
>> [...]
>>
>>> @@ -5071,6 +5182,240 @@ tlmm: pinctrl@f100000 {
>>>                       #interrupt-cells = <2>;
>>>                       wakeup-parent = <&pdc>;
>>>
>>> +                     cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
>>> +                             pins = "gpio73";
>>> +                             function = "gpio";
>>> +                             drive-strength = <2>;
>>> +                             bias-disable;
>>> +                     };
>> I'm not sure whether I was unclear, but my intention was to ask you to move the MCLK pin definitions to the SoC DTSI, because that comes from the design of the platform and doesn't vary between end products.
>>
>> GPIO_73 being related to a voltage regulator is strictly a property of the EVK.
> 
> MCLK pin definitions are already present under the tlmm block in SoC dtsi(monaco.dtsi) as required by the pinctrl subsystem(qcom,qcs8300-tlmm.yaml).

The latter part of your sentence refers to the pin definition having to end
up under TLMM in the final DT, which it will be regardless of where exactly
in the source files it appears.

What I'm alluding to is that we organize some of these definitions in a
specific source file to make logical sense and keep them within relevant
scope (i.e. you shouldn't be able to refer to a board X-specific setting
from board Y DT - that's unnecessary room for error, whereas pin definitions
that are a result of the SoC design make sense to be shared)

> Are you suggesting they shouldn’t be part of TLMM in the SoC DTSI? This doesn’t align with the YAML file.

That's not exactly true, the YAML file you're referencing only lists the
allowed entries in the 'function' property of the pinmux subnodes.

The DT checker makes no effort to analyze your file structure, it only
makes sure that you're not adding illegal properties (or lacking required
ones) for a given device described by a binding.

> Regarding GPIO_73: Noted. I will move it to monaco-evk.dts under the tlmm section.
> 
> Below are the example snippets:
> In monaco.dtsi (SoC level):
> tlmm: pinctrl@... {
>     cam_mclk0_default: cam-mclk0-default-state {
>         pins = "gpio67"; 
>         function = "cam_mclk";
>         drive-strength = <2>;
>     };
>     ....
> };
> 
> In monaco-evk.dts (Board level):
> &tlmm {
>     cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
>         pins = "gpio73";
>         function = "gpio";
>         drive-strength = <2>;
>         bias-disable;
>     };

That was my entire points, thanks

Konrad

