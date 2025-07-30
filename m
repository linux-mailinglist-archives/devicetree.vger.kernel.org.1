Return-Path: <devicetree+bounces-200636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A423B15960
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 09:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40405170F2B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 07:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791E4225417;
	Wed, 30 Jul 2025 07:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DWa6q10i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E531F1932
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753859621; cv=none; b=U6s9Y3LLhUqUhvNh6a/fHygnlQAvVLKwgXt1uSeZ2IZqyRSSJL0x9i3LmezVGBr6dKYHD8WKeWuS2VfCd6qtff/l+2l9V9Kr6x3oLSD8LZHVNews2/xsYaDZDeL15PwO/9ATV6itkB6xuSS/BGSqQzWMFSOpTFbGL2ptZmY5lUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753859621; c=relaxed/simple;
	bh=vmUflXSGCAnmNZdKwZ7wh505u43Wn5ozCPkxfiUYfmI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqldqHSRw8uEX6KGN2w6QLhGGtSKEqIIl7aviO2cgxFetfdLHDswtFw9Y1l8jYZ5O9kcrt+i89qgHj7MoMbJiI8iugSsPGjH443hKsDFUifBiD5NTToTKETR06REHsbX52t2JOGUHgyiP8eCZaGq0lW7j27eTlNOXfHAR0mIFAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DWa6q10i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U6iuJY005849
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:13:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zi4hLFTfLsENP9BcQU47FniUdDHHPw1lNFtITuRJfNw=; b=DWa6q10izEGWmSDl
	S/M17ssL91ttl56WYwWQ/5ja7Qj/BZUG+TM0s1vEent+V4DHzFI6GesQzJh4cV6D
	zldbf/efcuTSMsho4oe/KUFwDcN5CZjyi+bHKcvyu9ZreP3cFL943zzuPgMbTioz
	+RHbZHIm9VWJNulnSqSRXqDXwKUZ6Em44yPjcwud/7eyY7zv5GOtzd3OEkWTVLJM
	WXP1XCMAfBscMlqtgr+TDXEQLnR5ZlQsphpoUallj4osrPyangdkf0nI86SawqqT
	+UK9BVHCMAUhuuajBC/8RXHbt3GcKmgcVh4Leoh/pk589rRY0HjaHZHMp471ismq
	UY6P2g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcraxjf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:13:38 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74928291bc3so754230b3a.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:13:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753859617; x=1754464417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zi4hLFTfLsENP9BcQU47FniUdDHHPw1lNFtITuRJfNw=;
        b=kscRCutk1KeiBVE5qgi2P6VBjWdPFVpVBGIIV150lkgtTcpt7RtW8Kc2TzQR87fmpj
         aMNJuAlSQQ0n69CgqZyxwDYSSK0Jbb3IwJJF9wVidY5QcuJwQ5QWYMYnFIV6zELLp5/o
         MdKSTbQMxF9IRT1lZrj6d8QzQ5WuXvNeiPnFy1Lz4Es7oc+gCxn8UJmXHlBjM7qnrXY5
         /If+wVKpD+/b6L0YfUqC2bkscf9bAiLxnp7iHrUdfiv4bV6rhK8mK7MUuNvTaPenAYZg
         UF0AwWuspCIrEjllzmh0eOnU3F7smRSOITfrpviRuVe5TmOLp+aLStWpjFoOFlSuq5jI
         NYeA==
X-Forwarded-Encrypted: i=1; AJvYcCU7+mKT4gvk3Drze3qXmH+67rwWchusmL4dVJvoAYcuWMU+9vZYCBCccy9gwm8v0dSzqscIQlWH8HSs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3BOBawcggSL+8bVcb9289OScYyaUDlNgoZ6eGReqGRTeWhhaS
	rV27mqYa391h9+nIpwoPV/Plr7EmaMeiLSGTswjKDDGrjMtB+NjkrOiiPB5F96upjzBF9lSn8Ol
	Sn5yJlVpflfNVcJAaBK2i41BM84JYCcLu2Oq1fgm7j16EJ/jCFvoE8VdzQgIxdyuo
X-Gm-Gg: ASbGncvNClSDafFyvCW0qeL9saMmxMU817n8TE179IZmBMD51u4kEVIho8nAIkrblXK
	MBjke2FfvPGMb+UTQhOk1/JFtJvaCx5O33d1awc/x4aTegLQAB2l+Tu2n6QSO9q1HpzVDYU4Ngr
	37x0uLlJYqMdfPC6C6tl7G8StyBmeuI0SdbOkN2beJoYmHkzAcu1/qEGR+Si31yRmy7c90TxfpG
	XdGL9sg1/WSVqilOEOoE+0PB01Dsyi+mGQ4bdYXO/4uSs0IGln7l0/PAKZAC+lf28bCiuZcuuVV
	/+RvIKHk4P2jsxcxDY5FCQtAjOyDnEzqA3ldxri5AzLMjb1ABpRUfeOZQfJOJFukdhNMxKBXaQd
	i/fThHwLK+ponSU4/650A+d4wRcaO
X-Received: by 2002:a05:6a00:92a1:b0:748:f41d:69d2 with SMTP id d2e1a72fcca58-76ab0524cf4mr3703855b3a.4.1753859617196;
        Wed, 30 Jul 2025 00:13:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbXQYxhS9eJG8PBKNZPRJWC9eSH9QH/OsK0s8qRXktswYT2gefhDurx3LdITYkb5XL0Tqqkw==
X-Received: by 2002:a05:6a00:92a1:b0:748:f41d:69d2 with SMTP id d2e1a72fcca58-76ab0524cf4mr3703820b3a.4.1753859616834;
        Wed, 30 Jul 2025 00:13:36 -0700 (PDT)
Received: from [10.133.33.143] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640adfbf7asm9833105b3a.75.2025.07.30.00.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 00:13:36 -0700 (PDT)
Message-ID: <7d1bb8b1-da77-4594-abd5-7da9bb713910@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 15:13:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
 <20250729-hamoa_initial-v3-3-806e092789dc@oss.qualcomm.com>
 <5hgynbka274jerw5x6ekfuoj45k6bqt2hdbsx2puniqornil4s@pdgavjb2jeci>
 <ef9c302a-28f9-4bc9-912c-92bf5ca7bbf3@oss.qualcomm.com>
 <157fee28-e6b9-4c81-9698-57302117c885@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <157fee28-e6b9-4c81-9698-57302117c885@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA0OSBTYWx0ZWRfXw0JabYQB8ilo
 v4jcikmIVOX4I7lNoQxn3J3KnUcLq25IbnVaF/kHJlc92PxFvTL0Iv0BzyWu7YeIQhf2VhocOTP
 JuDgZfGlT+HZ4nCmFw7Rq3jFzkKIlkUa7NeoVzOHGWYCBjxMMd9w0fVkj3C9x+WpMA/FvdNiwiC
 Hfgp56EkpqR1caoqwMhW9ktEhHM87iDcNG9ewDtcGfulbSHvsUke/fqyE00WT7OE20xkPkz0B5x
 k+3MxoZzRmLuBoLlQXLM0+WFbrvD0akbbONeIyEF+bE6pQXvmKSWl8TzPruKLPXmE913n4AScJk
 OifcWE0D5CBqB0t5iHV18sNm5IaL3pPUAE8nHAD1Kty5c4FJUiCgc0LJD22K/s00PVQMuz9sNV0
 V7zK/X8l8E7x7KyVsytISk4t/8Ua1kxX3ATbe0lWQBlMb2VLRr9mzXAKjnjaEkSvBcGihzpy
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=6889c622 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6jahUQGBau2IMRXzWEoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Oavw2WCIzK4lO4uEgpX6159UoOXAWbxP
X-Proofpoint-ORIG-GUID: Oavw2WCIzK4lO4uEgpX6159UoOXAWbxP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_02,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300049



On 2025-07-30 14:44, Krzysztof Kozlowski wrote:
> On 30/07/2025 03:11, Yijie Yang wrote:
>>
>>
>> On 2025-07-29 18:44, Dmitry Baryshkov wrote:
>>> On Tue, Jul 29, 2025 at 09:31:59AM +0800, Yijie Yang wrote:
>>>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>>>> on Chip (SoC) — specifically the x1e80100 — along with essential
>>>> components optimized for IoT applications. It is designed to be mounted on
>>>> carrier boards, enabling the development of complete embedded systems.
>>>>
>>>> This change enables and overlays the following components:
>>>
>>> What does this mean, how can it overlay something?
>>
>> What I want to convey here is that I referenced some nodes defined in
>> x1e80100.dtsi within this file to add additional properties. I’ll revise
>> the wording to make this clearer.
> 
> That is not an overlay. Use proper, not misleading terms.

Thanks for pointing that out. I take care of it.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


