Return-Path: <devicetree+bounces-151133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F337A448A6
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27786188CD1E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564C01FC7D5;
	Tue, 25 Feb 2025 17:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muXSm/zo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A111EA7DF
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740504986; cv=none; b=XEKts28JPEHUbYwEC7DVNCEYpUu8Qxuc1rULK6Gx0U7VE+B37MmFD6TpLqVn4+BCi1tLAKVZqWH8s1Ybo2OC0pfoQ2kFac8Mphf9HFhYNS+cUx4wst76upLDSn6d5J3gj5hdI/8NottkmisFtMynJ1pa/FTC5R+BerkIFjT/zto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740504986; c=relaxed/simple;
	bh=vMpMt5v73FW7ggM23zoCt5cN9QuMLVUvflsLEKOSyKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wh1OWrrOXGsmzu8OmAN3BM1wl5L6KS44LFYi2zTpS5H3zycVTKvgnFe/PczRa8HW+DES3pfJBiAs1iE8UycnZL8ufXphk9h4SwIVQHIM06u1ayc+pSXYG3fT51ai5CvZ/pt5/z4JxBd/OdOi4VIVr6ZyVVhawoo2qse8EF6HKak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muXSm/zo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8Wict010998
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PY156n79dtgyG547BmE7z4tz9qFqyESVtay+ztcM35s=; b=muXSm/zoLUrDUdLv
	RVO8vy97Q8kxT7j7yu/Oxf/RbYbUb5J1UoUQ11baEgXCYj052Z0KU+zvs7U+1Kpm
	04TpRDaSKV263B1BELeKYZCxqpe2fxnPGXQCAhNoWJjzhyKPVFGy9AJziBvCS7aC
	WiuWqCmaB8mMyU5BGEgoSNq+SZjEO+/0ESiRrW1+q2aAq/7Id1/UZ2lImxej0G+B
	LMNEHYwZe5Ar5NiP2wrGXh8KMomYG5vDdzl/EfqU5IByni+t9jFQKstNcwPhNTzr
	NreLpEicJ6hHm+FO5IRCixq49uGX6+Dh8bf1AMh7rVTzvddCzJ7YFYpj3++v8sdc
	q226Bw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y3xnhwhd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:36:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-220d8aa893dso93138725ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:36:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740504982; x=1741109782;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PY156n79dtgyG547BmE7z4tz9qFqyESVtay+ztcM35s=;
        b=e4qzNZ2kGILjmZOVjbh8IGIaMbuT5pJN0Jna1dmJn0LtgM2maPT0Fq8WR4tYPPB0oF
         ueTzC0tXO1HCKSdwzJXj7gO9lxtzBVZwtobNR0uMO9gp4x+gKpt6xY/PJ/UkNA+/3fOK
         8E9QVHkb1ZNT/iS0w8RVYQwA2kwNZxTLUOLADhBRF+gDS0DGWx8HWkIYj8tYrCt/G+2v
         3L8F94BrqezR8qMugpA/6EGRlR9C2g1VB9Gnh/T6L/UVuQbVZni4V+7dbTmgO0HZ4NOG
         x3OGwK6d92UUjJWuKi8c2Dws0XD26GAokTZdvDa3J5a1IExEumSUyHzZP0r+W3PibfOa
         4UQw==
X-Forwarded-Encrypted: i=1; AJvYcCUJ5/pa0yuwCVY36nY0PSwVOxCs1WUfhbK1TEv4F4MNUelfqx/mTBjA3RkGYHf8rbY2p53vBfqdJSHZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw645q8itzbjtV229z4UnFia9m5PHHkKBknPreASUZuhBeCxFrl
	QbifFuZK+qmkk1lBd1iDFScMzDaLSaQXGw5jWOLogDzoCxw4im80iPHVkSn1D5gcam6PQ7BT5Nf
	KFghmSKOQ4+4NR7Kle+vaw8fYXc0+AkVT5NSTZbpUzr7XhbMOOQu3AvXHwuWC
X-Gm-Gg: ASbGncu/z7aQvQvqqcM6F+eOhDUlIQl/yD2KinS2LeOzLqhBL108qY2VjDwk8t+FuIA
	Ny7xayV3l6egXWugC+jDEUuacgSroXEBxljSU7OgBF55sRZBfuZsStFFmdgtUKZj9Q4LKCSX6UM
	nbo5zZ+FF+tRAUYha6pBF+aSBZLO4tkgWL7Z/foto+uJf3sKaOYMBxwIePRWb6nKAvLcbrCgTfo
	q37ob2LIMQpG4yg47JshlPwKeI8DrKxvuN294we4PZQaIcCOVC4DqyKZ10F6D9lX5tSItXw5LvP
	g7Tg2hV32TVXl2Zkz836iSxCMASUA37kxL4MP0/L8gyZzv38x3F2VLD9g8eN4CPpcc7dbWE=
X-Received: by 2002:a17:902:f68c:b0:21b:d2b6:ca7f with SMTP id d9443c01a7336-22307e6b767mr73470615ad.32.1740504981996;
        Tue, 25 Feb 2025 09:36:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFw8TV2N1DWUVbvHR3m0t6e0ifAA4ibMwsVXoLdv9Y7Qb3v7ZoTUZ06wLZmqsF37ryqtGQ7PQ==
X-Received: by 2002:a17:902:f68c:b0:21b:d2b6:ca7f with SMTP id d9443c01a7336-22307e6b767mr73470115ad.32.1740504981602;
        Tue, 25 Feb 2025 09:36:21 -0800 (PST)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2230a0ad990sm17124675ad.215.2025.02.25.09.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 09:36:21 -0800 (PST)
Message-ID: <71019e23-f339-4485-8599-c4e40ad979a9@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 09:36:19 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-slim7x: Drop incorrect
 qcom,ath12k-calibration-variant
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ath12k@lists.infradead.org
References: <20250225093051.58406-1-krzysztof.kozlowski@linaro.org>
 <sfhcmlz3x254fdowufeeuh4uiwxfgkphm4ch4laceivbrs3zir@qvqk6jxi6zhf>
 <7b54e965-3395-4349-8ae7-51a28c759235@linaro.org>
 <kce6gzso22fp3ze2wp43fvy4tv6yqkaijm72kh5qk34jwijk2l@3ifaiz5tgjvl>
 <d93789c6-61d9-4761-98f5-aa3dbec14d82@linaro.org>
 <21ad3381-4d65-4c68-892d-9f485bf13735@oss.qualcomm.com>
 <c55f615e-6831-4470-9ea2-73fe605b8a5f@linaro.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <c55f615e-6831-4470-9ea2-73fe605b8a5f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: S8D1_ND6KZ17-ThkplbWBudkfqjdFXlq
X-Proofpoint-GUID: S8D1_ND6KZ17-ThkplbWBudkfqjdFXlq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_05,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502250111

On 2/25/2025 9:07 AM, Krzysztof Kozlowski wrote:
> On 25/02/2025 17:44, Jeff Johnson wrote:
>>>>>
>>>>> But nothing parses such string as 'qcom,ath12k-calibration-variant' (see
>>>>> git grep), so how would driver use it?
>>>>
>>>> That's what I'm asking: is the property redundant or is it correct and
>>>> it is a driver that needs to be fixed?
>>>
>>> I assume driver will need something like that property, but that's not a
>>> reason to accept incorrect one in DTS. One cannot add properties to DTS
>>> without bindings, so bypassing bindings review, and then claim "but my
>>> driver needs them". Send proper patches for driver first which will get
>>> a review.
>>
>> We definitely need a calibration variant entry.
>> I've pinged the development team to get the driver patch.
> 
> 
> The patches were on the lists but were not accepted. Therefore DTS
> property cannot get into the kernel. I am sorry, but this is not somehow
> fluid or flexible that internal team can squeeze something into the kernel.

I see bindings and DTS patches but no driver patch, even in my internal queue.

> 
> Also post factum reasoning is not correct, because this would open the
> gate to bypass any sort of review. Just squeeze your stuff into the DTS
> and then you can bypass all DT maintainers :/
> 
> All properties must be documented and bindings must be accepted *before*
> DTS patch is applied.

There is no intention to bypass DT maintainers. We are just trying to upstream
a large amount of downstream code, and in the process some pieces are coming
out of order. And there is also confusion if binding, driver, and DTS changes
should be in one series or three separate series.

We are moving towards an upstream-first model, but we still have to address
the existing technical debt.

/jeff

