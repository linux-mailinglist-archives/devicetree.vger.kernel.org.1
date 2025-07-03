Return-Path: <devicetree+bounces-192676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3EFAF7452
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D23003A3DD2
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464C82E54BE;
	Thu,  3 Jul 2025 12:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c07+vPHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE352E424E
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751546320; cv=none; b=MWvfPii9e8+s9jppUGxrw3eTfR54Y1PzWvAM0hK11eD4KOFyfR5P7QtvcnB19ScpLbv1ET+4kJRcoAxkFqkaNN3sikKz0wF/leJqOFV9V8EI6aZjIqyoX5nO1BMxLJzYEMA7dKdu/0q8dKRdgTUfiVJjGhcUcDd7QMSUEX6Wp5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751546320; c=relaxed/simple;
	bh=blvhHAuvKd0z+M6UM8fJg7hW66Y0sZvUde7gR9VDZFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z7eBuQAICp73nj+AMfDmOTvl4NbPkFtlVDAP9mb6969oXaHRQs+MeGcDuekYso0Bi8V4kS6saWtRIVNXMUVLztb1+0r1/9682sTRJqQ5YT9Mf7UXidZMLWgLy8R6WuwcMT4olnFLQb9XvxkzozxElCxutnORXpLT45LraGVyinU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c07+vPHx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 563AHnGR025098
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 12:38:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qh8aZ053Ew1qTcqO548gAuyDU01MqTeC46OFogIdvLU=; b=c07+vPHx3IKsaKNJ
	+53zzbImtZLBaVhX0gRwKtESHcuUKKzex75Hisgg7BKtV2h2MORMWrimj02M1qKA
	6Il+GHeP/ycLt1WdHxuqsodzLwnK/+XSd4NLEfy/sp3D1V2RhAgyT9UMJ722Vws8
	GHbDeqon/n0jBwk3zeazACWa1hXYNSCx9JM0NC0cGfYXCA4sPYIno4tWj4p4SdpX
	gUkEVZ5glqNFNNM7u6AY2sf1gFt2cdn/nHWZs1C9vWneLMctqLki16etuQLb3fVX
	Lw7GZiAtwnFhIsDnXZaq1ooNaQp0Ws7LpVbdfUQlPS8DkU8vZuVO3PD0f8IaayQj
	uptZsw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8028845-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 12:38:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fd1dcf1c5bso16183956d6.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751546316; x=1752151116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qh8aZ053Ew1qTcqO548gAuyDU01MqTeC46OFogIdvLU=;
        b=sgtWVwBWoYkep/KQCnSUZJ0gqwEWNoRG51hFLmrw1OQese4pexX8hOpPKXjU6hxINZ
         27kVA7UnCm8eaHs2Pm+ODk98Vziyz2xcW1CkjgelHg5UU0st+qzAaHNTJIrQ8abO6Tjo
         DzupYYx0U5xhXXBubjVFKW8sVdEjFLhPFQflNnytQoSl6IiqACCBRfVQWO8ztjRfZj+P
         EexZ2gJ9mKF2HIGDv4lQohVGXpV8gYWYPCyksDZSYsCvArqADNP3Nrp3mGOctR4LjDhQ
         VY9NJqicVa/v3Xa1l+bSpMkSOQ14uhmaXnfQQ9shUpjoF8T4AE6ndjNZHKarbV5djgQf
         jPJA==
X-Forwarded-Encrypted: i=1; AJvYcCVPuDaXqTIMuLX1yKrs5t9cxRIZFUH6EjrtpohEt+eigiIac5vZ6p3F97g8x1ncBOj5okTg/gS0LH6v@vger.kernel.org
X-Gm-Message-State: AOJu0YwP7woBn99tZnkOiK7mgp9koQ+m8asTzh3ObPMYT2cFQjNC2zHG
	uJUZOjBb+n0RcqrlrMcHl/wGYHXkHvP6OrjstkxHjnHrmzUiJg8IgNMrjGgdxJdAUXjCLFuRvlV
	AhMaJOVdqSf6DlnLBnoLTGW+TU6zgMUm5ah3GEshlk0pE3zhGOPFrwCXVekpGvlWl
X-Gm-Gg: ASbGnctaEYVvQJMqGUU5EIBjC3DAubDj2qCF58NcQZDAgknwz3Q2AbTabBhoHyjsQI8
	iCIcAKO4ArDdrBT8wOniA3N3+4gB19sA2GX2G2ctLaY2RYXfG0CAi4dKtdf9IDQcq9j7dq/VYTv
	8QQHi4rIUwaNOwTjvYEXA0jzxQ6Myj2qQ+leUr13QQH0W8eHiD9t4i5UCUVAF6UdR6E7YaUbMEp
	U/uiis+FVAmZ7E55AmJcDzU3AHwORQKqQ30wJF30oIdj2Zp6QRiknfTMMKhBXLDqyvb+dlQ21GN
	PybsZ0BWNwR8TVv7TZGxax+v1+Yigra6I5gbY0FGy0cZzFcU5miX5t3v6MAsC4H+JOa0fyw3Zuu
	Pt3rDHRYc
X-Received: by 2002:a05:620a:28c3:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7d5d3eb6529mr119136285a.3.1751546316501;
        Thu, 03 Jul 2025 05:38:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwk4eFNYt3i3rxN0XJmcdLSCwy/gouEpTFY2xPCM13VPaFLKLCRNVsyEKzUlz6/p28jLHr6A==
X-Received: by 2002:a05:620a:28c3:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7d5d3eb6529mr119134985a.3.1751546316055;
        Thu, 03 Jul 2025 05:38:36 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca20fesm1272538066b.174.2025.07.03.05.38.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 05:38:35 -0700 (PDT)
Message-ID: <1ad2ca1e-1d57-4ad8-a057-ab0d804f1d49@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 14:38:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <5f90547d-945a-4e26-b36c-75f2d8a1af97@kernel.org>
 <eab8d79f-7188-9537-9176-3e4d22f0978a@quicinc.com>
 <5ad418d9-8199-43c9-a477-1e3b939c054c@kernel.org>
 <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
 <f5ebf0d6-2f0b-45cc-b99a-b786e5df9edc@linaro.org>
 <5qsgbqml367yq6g5vb4lotrzulojqhi5zlwwribze373a63qrn@rxi4kwyt66m2>
 <4f38058d-a2f1-4ac5-b234-228cfb2e85ff@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4f38058d-a2f1-4ac5-b234-228cfb2e85ff@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tXSsaIDsgAVGzHdvnZdmFDu3uc-OfrfK
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=686679cd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=V26NVJm5TTlvxhDq-ocA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: tXSsaIDsgAVGzHdvnZdmFDu3uc-OfrfK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDEwNSBTYWx0ZWRfX3DRmc1x358sT
 aAPzgeE9NZqSHvcPSCY4QJ7DnXRL6ioF7XLyCK2L1SrdHmrcPGAR8YvAHfAri9+vPZ/m94wbYat
 3GvH6So718Wlsp6dwvH+RiLVrXAleXYBRzxn0tRxajQx4XA43O1dwnjFgB2O3GezTPIsVGAEekJ
 4sBhLmMUhy4tj3Ng3CH0I2r5ieAk5Z0ifwlfSSJOl/MGb3TEUmfw/Qt4mlGck7ag/ogYWAJUQw/
 SeSYBMBenAiRSjpJt35K+3+WYt/Do1VMKN5P2Pt69aqstW9nFxdDUMZdQb/JBgNDcWvtQJElvKM
 g3rn6/CfOpEiFK0SVgVI/mu4X7QnoAPzE6u/vXthpsjjhgQhHZjfJzhvGYV7hcyKlnjLygEevhu
 hcaEsJ4xF2r3rJE3IUMf+sjvgkc5z7xZY71iDeRHAVdBVaVFdSgKW20NG4MxXLSoM7q3wsIn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=909 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507030105



On 03-Jul-25 09:27, Krzysztof Kozlowski wrote:
> On 03/07/2025 00:26, Dmitry Baryshkov wrote:
>> On Wed, Jul 02, 2025 at 01:06:17PM +0100, Bryan O'Donoghue wrote:
>>> On 02/07/2025 13:01, Vikash Garodia wrote:
>>>>> Anyway, in other messages I explained what is missing. You are changing
>>>>> existing hardware and you clearly must explain how existing hardware is
>>>>> affected, how can we reproduce it, how users are affected.
>>>> Exactly all of these i have explained in the commit message. The limitation with
>>>> existing hardware binding usage and how my new approach mitigates that limition.
>>>>
>>>> Coming to usecase, i made a generic comment saying usecases which needs higher
>>>> IOVA, i can add the explicit detail about usecase like 8k or higher
>>>> concurrencies like 32 or higher concurrent sessions.
>>>
>>> Why not make this change for a new SoC, instead of an existing ?
>>
>> Because we definitely want to improve support for older SoCs too.
> 
> Older SoCs came with completely new drivers and bindings, instead of
> evolving existing Venus, so they for sure came with correct code and
> correct binding.

No, this is a terrible assumption to make, and we've been
through this time and time again - a huge portion of the code
submitted in the early days of linux-arm-msm did the bare minimum
to present a feature, without giving much thought to the sanity of
hw description, be it on a block or platform level.

That's why we're still adding clocks to mdss, regulators to camera
etc. etc. to this day. And it's only going to get worse when there
will be a need or will to add S2disk support with register
save/restore..

Konrad

> 
> That was one of the reasons why duplicating venus was accepted: to get
> things right, so obviously your argument cannot be true, right?
> 
> Best regards,
> Krzysztof
> 

