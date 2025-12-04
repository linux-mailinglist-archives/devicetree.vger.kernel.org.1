Return-Path: <devicetree+bounces-244240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A34CA2ACE
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70E30300F8BC
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BA130276C;
	Thu,  4 Dec 2025 07:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UO6eD34+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bDvabBeO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE79730B507
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764834320; cv=none; b=NAkcVNiOxn6+PDVmR9iRh1xbny7VrTx1tJ/WlJTMAkRR7aSz1mYQh90/eeydkKx/r1nFqcn12PWTrSjZjW2uLgwK59NU24vOhaGRcACs6LxdkRE7oqW0IyK1YpxnFuIlsquIEtpih8SeMef2DQjagyo7202oCfJY8gvtxejqOmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764834320; c=relaxed/simple;
	bh=XWsAF8ZAERLP2yQk0oR+rse5QkkK6RS52tsseraCdU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K/D1bR8/HH9VzUdZEDOhbAT4+Yg6H/vQ3VvbjdhNAOgosTLshJFuI7OQ85ogywIxmsNAwtnOws7s1vSjFalUpANQu4uX840DGzay3uF3RD9S4D71sI3K0sQlhwAjRm+VYGSDiX5PtNECOJDgbyo5bQLie8vH3ogUKBR7YD7llgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UO6eD34+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bDvabBeO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468cd2512052
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:45:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kr5elW7ymjMXQDbI1Tzf3iWqTiPBjQmw4pZETnYjvpM=; b=UO6eD34+jA3ZeUm/
	FHFVeSRreCV5QgUAByzBkQnrtyX6UOtMFZjinMsPW7mNbNUqsJkSZ0+44JHAG5Cb
	1wGr1tR7BKYcR6T4ie8IWw09LVTu19x4J7OE6wBg0XCkH5Qzkisp2mS9kn+0ii6i
	R2aDoCy6xJmGk7QOGCuoc6uw1tBSSMJp5xEQOem1fvGexSfzY406tN7+lHmq8bd9
	EOTkS8Pw7hMCAxD7GIf/Hluxfzr89T07QGafLYCTCH3bMN9YJ3MxFZw6BwTRn6fR
	1Kzql+5UXfYRSxkThUHm6x3MDwxnhzdsGiTXJOLSNn0RHgmtUwWgj2XWlQ/v7RyB
	TThUmA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atrppjdwf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:45:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d481452732so982523b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764834317; x=1765439117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kr5elW7ymjMXQDbI1Tzf3iWqTiPBjQmw4pZETnYjvpM=;
        b=bDvabBeOemeHp8tUHPeNFQHrY7v3WBdCIoSQHREnveJZUuj6sLp9nts5eQbgNFk0Fo
         3altExMPBEyXLuDmbdEOg5BC+EOatlLHCXnO0E/ZD0IqZQfo98C+QN4R4IjhQIt1wfPJ
         +yl9mZRe3LeBWx9/JAzMpfHHlVnUNaF8eMbHkI+vUOji8NexAlPvGrqaUxEHvyye+WfW
         9MZ4E+czSSfI3nSrflkQMNDrrrxdyJy/GUSK+dYLOb4oP/agpMKCjXfbrqHCqzYEzlMN
         5cuPL280SOXCPPLQYv2BnE+RXx3nsFLq1Yu33eHqiksl7Yk6miGfuqbNQYGf1uAuj2db
         J49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764834317; x=1765439117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kr5elW7ymjMXQDbI1Tzf3iWqTiPBjQmw4pZETnYjvpM=;
        b=sfszyq540aCXJwIDBHAQ+5blpTCSV4vduclqGfktPdJRmFc2OarnDbmpVQjs5dQ+5A
         nAHE+EVXMKTfhtGsiyxw27EAU+Sdso74j6F2vRH0TvA5Zi7Z7u4fRJ1g32wGPpBIEhrM
         L+rf2Qb2QSpjhtApES3C7onPm6D815MVP4mHdreOZ6BNvdokGtK4snRtO1xBDv2nOS/o
         DRieRR4tPdZL5foqSsJ23XIL1UKVdxRpxhwoYDDqdsvrr4OePaK5AqY0NUE75EeqB5hn
         lcnH9mVAE4C2GluhCUR0btkJXb44k6jSP/DZeldgbqYEp3JFNbuyajc0dpTWRA6VZcjA
         8h2g==
X-Forwarded-Encrypted: i=1; AJvYcCXAZI9gFlALTPNBXmckm/kKp7nBBokdkTQlb7qY1R64WcumHzqaqQK3dIV5aAGej+ZMIVAWoAJsiGv0@vger.kernel.org
X-Gm-Message-State: AOJu0YwliFtitZQH7NaTs+fvcYfbGt9+m2QogrdjYYgOK6IyEYQRXzEn
	BCnvhoc6dHJ5trpcLlFlBIUv5QeShYGvM7xE6QBqehnMo3kY0Nqo1mk5zFWko3409dn3QFI1b4e
	tJmy6Cqmc0NOsiiTXxK2w1WyxZWO1bofEIxhjL+0dBkIW/JiTvMX4SuEgsZFp7zCS
X-Gm-Gg: ASbGncvB4eKofbaU9UDzSeDQ+U5ippjk/QJZYNzCYUReDUhRe/qz9Nkezhh0FjKhY2c
	L8anZAgAKx96MVAWD/KN0oqj7VuLn5n0BcwOjK46K0zgWh4JjedXyuJl9feTSEgwBgk+3MtOAas
	Q/ILBwxbEoJ4gmkMj/dp7uuI63bSfMF0Nu2xhSGS0b+V32hC55af9MJXCsN4vJs/BYuv11uYSt7
	Z+YBBK27rwd6YndX00SMN5LGcvTpXFYuLi8/8muohhmbzLdsiphUAOzlK3gM2x0p8J0Qjb3pxD1
	kVS0udt7XjAdzlyptu21rRcGUExpo07A8VvEGgN12aNGUV0i8cm9Sx3E76/wsYOrNq3aLM6Rwsk
	Ou3UFRVkDbpSNFSJ/STzrHA6y7YXy/1HU3jWIxUkNB/EGHhPa7hOky1xLszvmInFPwTX6lkSk+H
	8=
X-Received: by 2002:a05:6a00:218f:b0:7aa:ac12:2c33 with SMTP id d2e1a72fcca58-7e00b91d60dmr5855955b3a.1.1764834317087;
        Wed, 03 Dec 2025 23:45:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGenH/ZiZlS4VGqnyi53g1czMIWQNw20l2xkUt1FdNSD3FPuucPqr3WetXtDqjVe6p6VKxkA==
X-Received: by 2002:a05:6a00:218f:b0:7aa:ac12:2c33 with SMTP id d2e1a72fcca58-7e00b91d60dmr5855933b3a.1.1764834316631;
        Wed, 03 Dec 2025 23:45:16 -0800 (PST)
Received: from [10.133.33.164] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2a0a008e2sm1225681b3a.28.2025.12.03.23.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 23:45:16 -0800 (PST)
Message-ID: <5a982965-4964-4f50-87b6-e3b8a1182876@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 15:44:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] clk: qcom: cmnpll: Account for reference clock
 divider
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-1-55127ba85613@oss.qualcomm.com>
 <2d83f0d3-4798-4183-9e3d-9972db706cdb@oss.qualcomm.com>
 <ed2aaebf-f0ed-4eb6-b880-9c39d4f0533c@oss.qualcomm.com>
 <1d9b953b-5af0-4a81-9182-f1cd47e772f1@oss.qualcomm.com>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <1d9b953b-5af0-4a81-9182-f1cd47e772f1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: KAXzlEi5Ga-gMz3Rp5K5OUrcmm4fFUPI
X-Proofpoint-GUID: KAXzlEi5Ga-gMz3Rp5K5OUrcmm4fFUPI
X-Authority-Analysis: v=2.4 cv=L+YQguT8 c=1 sm=1 tr=0 ts=69313c0d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=MGsDpFW7tt7mzu13zmcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA2MSBTYWx0ZWRfXyj59D1GplWv9
 oxBQKBOSdiZCCpBcHKXVnIyea60XvDR2h7S3CYHH/A2+sUgkQvKCjMEl67IK5MOWLEhUE4DXUc3
 zHIrDwj5PX/a0zHMzaCdxysS0pKzAPQtmHWFBcRrgZsfdLgQ774TTy9gVGfflOIXL8sezMiaZKk
 t1U8ZTDkrTkPzc+OkDrbJ6T42KbZOcHhuxsUo1dpqY1q8vT9i5UdgtKJm+pVvraCZI8mdPx6lyl
 +kUfaIeenomGnhX0EH0Sd9DbMRaXrTqhU0rdeeTCuMG6V4RIuX3C1Dkk7iSUXpaXfTsNm7nW0ht
 0PjP4NQRLTZJm09LD7iNSu5Re31zia/v0t7/s3+Fxv0GF3vV+OyOfaG8fDNRykOmR7WH+c2OpeS
 B23EkJfYohH/rNORsyQ1akRQ0z0lcg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040061



On 12/1/2025 9:42 PM, Konrad Dybcio wrote:
> On 11/28/25 3:29 PM, Jie Luo wrote:
>>
>>
>> On 11/28/2025 7:38 PM, Konrad Dybcio wrote:
>>> On 11/28/25 9:40 AM, Luo Jie wrote:
>>>> The clk_cmn_pll_recalc_rate() function must account for the reference clock
>>>> divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
>>>> with a reference divider other than 1 calculate incorrect CMN PLL rates.
>>>> For example, on IPQ5332 where the reference divider is 2, the computed rate
>>>> becomes twice the actual output.
>>>>
>>>> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
>>>> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
>>>> rate = (parent_rate / ref_div) * 2 * factor.
>>>>
>>>> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
>>>> IPQ5424, IPQ5018) that use ref_div = 1.
>>>
>>> I'm not sure how to interpret this. Is the value fixed on these platforms
>>> you mentioned, and always shows up as 0?
>>>
>>> Konrad
>>
>> On these platforms the hardware ref_div register comes up with a value
>> of 1 by default. It is, however, still a programmable field and not
>> strictly fixed to 1.
>>
>> The ref_div == 0 check in this patch is only meant as a safety net to
>> avoid a divide‑by‑zero in the rate calculation.
> 
> I think some sort of a warning/bugsplat would be good to have here,
> however I see that clk-rcg2.c : clk_gfx3d_determine_rate() apparently
> also silently fixes up a div0..
> 
> Konrad

I agree it would be better to at least flag this as an invalid
configuration. I can update the code to emit a warning (e.g. WARN_ON
(!ref_div) while still clamping ref_div to a sane value to avoid
crashing in production. That way we preserve the safety net but also
get some visibility if this ever happens.

