Return-Path: <devicetree+bounces-183470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B24AAD0CDA
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 12:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A6A3AE3CD
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 10:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D9820E310;
	Sat,  7 Jun 2025 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P/ze0UI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33F11EA7CC
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 10:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749292374; cv=none; b=a4OwpKNX0FoxOAKFSJ0UBe2Qxd22CvWBiHiApKvIYvqTkRMrUo32u2ZWH7AX34biBO89C5JR6KrbnKHEZxQ8Qr+M/HXIkLe2jkwh2OLcmlGPWUlKnd4jjrNDpW/YgrcJZ+GUbSvhJtS3/u3iUJKiSBAxx32iz+Fx2+rc8S33YNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749292374; c=relaxed/simple;
	bh=DfkiZuVme3n4FvzxhxFbP8GC088bc6XKMPvAk2xdFY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tq8zx2Gc0wI2eplOrJwyzj9va+FslsU0Gi6yDiz+wGnS7usqvdk3btmeJHCSSVU5/mxKok7I8XfGNUMjEQpRjuukf6MnXj7HBlBe9GuzNjck/rbmxxgkYIvlPrYQ/mC8cN2NmYgbF1a2Mb4Nzx+DvC9Z78GvUs2mBYkpFpi0swM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P/ze0UI2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 557448t9018436
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 10:32:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iZ6+dp0ad8amdnO4X+sS5UZnq9PAZ9SW1yad5IwngOU=; b=P/ze0UI2u6/lr+9O
	4Tt/m9mo8M793kJIEheDa3FRtgH+yUrbt2HBK1ywS4o+AXVTQAKRtQ2Tv9uuoV2s
	5PKiLyCh0rHApAhzCQVTW6YHk+J980mYs0D1YKXkBqOLSeVTahJQpIT8VBO0Z2X4
	Cn+tIulVyuqd1VZIp5vVaN8Hp5hZDDndrc8I1CbkSVxcmpQXlsTvdkHoyeXeaDVu
	eZ7eEM8Ct69kzkW+Ihfwe+5rgsgosusd9jRjme2Khq6jjtlqDQO7NKEXj6BEhsrN
	KQIngbd1Y4OPSObb1GYM7fT9jT80n7arlecSEiqzGQPsNrnI2fcUI2E0SD/goM/H
	0mG78w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474asrgn6u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 10:32:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so529179385a.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 03:32:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749292371; x=1749897171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iZ6+dp0ad8amdnO4X+sS5UZnq9PAZ9SW1yad5IwngOU=;
        b=E2ai5K133y1CZhg7WZqSLrHdl5EvX8637Rjrr9tSM0P9Ek6vuNZluJWDJFymahw7Ot
         viH/2EmGVOnFOfdRMF5u1CglPTwCuS2adWDPovVWX0l/BIR+Gckwbqq44QA94uafhSNF
         +xxNDp81fpUnoCCrnCtLj8DISVXTvKdDaiycGlV/5aaYVwqYA7ZOgjrRWcxkwTiNgdnY
         +gJToJ7B4Q8FXIwxm6Aang6Tc2nZtOhBFc4yosrg/VqsOck8uAGrap9WXRn4docJyt1R
         ShR9dp7JmCnXQOPkqOxRdaLCGgLr61OaS2rLuNzT6hh4o5zw3//PDqDbq8lC8UHMc/ZT
         zPzw==
X-Forwarded-Encrypted: i=1; AJvYcCUDpsMBssmu3Kp69NcluBILb9Qxulkz+8NoaJ0RNYXhc+C/EKq2CPJhA970Y2YA2NHo28GyD48R6aaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxDiYsHmnpf1Xg9+8bXhzESqHVL4Tz/6njPjDYYhhazVueORelb
	941dMiaq11lgsvFXFbxBFRWD0qfp8OUBJZIJqka3XmGRoejo2D+s17IKp1oy7e8YKb8XcNUsgxO
	mf8Vd7v98H7yRBOhRngL6k9hrXKsjNBIiA7y6sl3Gla1iOiJ1kW6zb/RtKQYQwtrP
X-Gm-Gg: ASbGncuQaDI5pH9Kc2UVk6OljYIbw8nYC38f4v4dAUKtRHtCjStYVeXVTGbCgXSJFoR
	7NOfJc0XkQkYr7Oxk2us8iE+npTh40lej2k2qfAswBEMpvPs5iFKPUqssiPICJw7Eyx2YFpOSbO
	IBr17JDtoBhZejMjQL89GbEdgMfSqlV0uP2TZuHb8tseTKbSK8yuJ1tk2Jn/pEuYAsFW03bqA+M
	iZs+/xKn5S8xpG3v8GOn6LdxoOrOt5bfCy5fzagcs9/2L1Ds2U1DCfa/ITEYoZcMSHonP/57qjm
	oI3lqJcpf/UcRd/tLs57FQIzYUTwLq4xF2xatWrFxDBRz3UmBRfzj6x66FhqjvsJLr5oDDIEnpF
	HX4fDkPyxQxvosg==
X-Received: by 2002:a05:620a:3905:b0:7d2:139b:a994 with SMTP id af79cd13be357-7d2298ca7bbmr832502485a.34.1749292370847;
        Sat, 07 Jun 2025 03:32:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEegvXUEIWt6ZR7mMr3jMuWc8lA4hAWqYVM4uXihi3Zu1Hg0GSu808Wsiprlc5zXotdcjP5gQ==
X-Received: by 2002:a05:620a:3905:b0:7d2:139b:a994 with SMTP id af79cd13be357-7d2298ca7bbmr832500285a.34.1749292370490;
        Sat, 07 Jun 2025 03:32:50 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772240csm468780e87.120.2025.06.07.03.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 03:32:48 -0700 (PDT)
Message-ID: <c9b83c8b-68d1-43bc-99d6-d2d2b9e445f4@oss.qualcomm.com>
Date: Sat, 7 Jun 2025 13:32:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] media: venus: enable venus on qcs615
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Renjiang Han <quic_renjiang@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <wmri66tkksq6i3hfyoveedq5slghnnpozjzx6gck5r3zsiwsg6@xevgh54rnlqd>
 <285cae4a-219c-4514-818f-34c8225529de@quicinc.com>
 <5854a587-aba7-4e71-87f8-249ba00cbc59@linaro.org>
 <996c9a39-5520-4b43-adfa-06ce29223ba0@quicinc.com>
 <713b87cb-0003-4ee3-a599-9cd41629bb42@kernel.org>
 <7aa36a0f-6741-40c2-93f4-036823d245fd@quicinc.com>
 <247002c0-ee68-4d0d-857a-768bf68bce75@kernel.org>
 <d5aee491-3ba2-4beb-8b8f-4ba8372e6d16@quicinc.com>
 <fa6a7983-27bf-40db-9843-0891bdadf523@linaro.org>
 <a258433f-f1da-4be7-a0af-645571aab871@oss.qualcomm.com>
 <e0405dea-bad2-408c-a65d-f9a3456dd92e@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <e0405dea-bad2-408c-a65d-f9a3456dd92e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qc76sIYe97MYAXGQVFIYYnT6WKCOKxtg
X-Proofpoint-GUID: qc76sIYe97MYAXGQVFIYYnT6WKCOKxtg
X-Authority-Analysis: v=2.4 cv=AMUSjw+a c=1 sm=1 tr=0 ts=68441553 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=1BIh7cnd6DHUqvcSSZQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDA3NSBTYWx0ZWRfX5Re2fWDzRGwb
 jc94y+oyOeLLgaLlEuUUx+aKaSZDgvKAyF7MSA1NC2s9oMLbt2XNXNdSEzIs5bDvmwCO8tGC1l7
 WPS0MS0t5v7kaHNK+Pybc6e0ox0FmlSzp/YKe2tjncSxduNeYW6HR5kVdSq5lrF7+6c3mOpOuox
 wEMHoNh09g3HaAkMSjVD+ZgRKedb7FQxAN96Wa0rRu/DpxEAhlScV5QQVfEN46l7D+w9PRF36bu
 iGsyBRpyMwq44AobpoQFiCr8CBSObiUWdE2svIkQpke+6YnoH++imH9nDY4w9gB5lez52P9g3o6
 D0fPBC9WDlvWDKxNRsKQkhESEEbdItxrMXeG4dysbv0/SNM4vfb5sVMkS1CDzAKGt2LK8IXaEod
 xBvenN5JVJKFhPOEg6KqwCER/q5uMltect8l6qGTqGjl7HPtzCjhnuERRZLiRjgVuqkDX+k8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_04,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 mlxlogscore=975 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506070075

On 07/06/2025 10:16, Bryan O'Donoghue wrote:
> On 07/06/2025 03:13, Dmitry Baryshkov wrote:
>>>
>>> As we've established the fallback isn't a fallback because it falls 
>>> back to wrong data, so lets fix that.
>>
>> Why isn't it a fallback? With the driver changes in place, the 
>> fallback is totally correct.
> 
> Its not a fallback _as_is_
> 
> I'm fine either way
> 
> - Apply 1/3 and then re-submit 2/3 3/3

Let's settle on this option. I think it is the cleanest option.

> 
> or
> 
> - Enumerate a QCS615 table
> - Apply 1/3 here
> 
> ---
> bod


-- 
With best wishes
Dmitry

