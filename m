Return-Path: <devicetree+bounces-165722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A58CCA85316
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:34:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FEBF7B3208
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FE8F2046AF;
	Fri, 11 Apr 2025 05:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ozol07SU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F141B1E835B
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349679; cv=none; b=tGI0dPcf46yr5GotVehZlej8zTFusL+XCFyG+dC8oY2nFunvEPhQHX1ivvpMwa4qLRAmNKx1VI7+crl1sdYjUwcSYNWR6Mf8gBxX2b79EntQMh8ZU7SH2qOlHsP3HcEJ4WeeC6MT1tpIreRJsewR9JlrGWZIXRNv/k+TbRPcgcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349679; c=relaxed/simple;
	bh=Hv4e5V0BCbYZrebDMQbtvBoTosdvVdtixx5yWpYr0ZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JyNLfc/89UsJ4v3/TyqtAEz2ShJy5MABt7ix/pJTESv/dQwJJoOuPw3/L4YMBBmIiBWhqgZlhzHGietP8rkO0j2XniohLkC7Infv9g4e+uuhbV0Yy1QxOOL+cuMKsXycJR4ncXn3MAeggbpnk8yoxDSSjPBg7r10Smd3r4XOnFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ozol07SU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AG0xLP008236
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qeZOBA7bGd6/3zx1megEDIxp2d37sujIY0FeKSvlT50=; b=Ozol07SUmF/RqaPP
	3c2LsOfxdHu9dF3/xJJdpZ9cBZGqdpPxOskZfGCwDGPyeFwqNp2f6IkFBMCDB08t
	FYkI/0Gwtm9y4svXwqQAB3QwQOjSHRF1qrtNdi0mXEjWm2Hph05LsXXyQ86n+4Ny
	WNMUjr1hdCTom/a9AnIHLdF4lW6gDuiCx3V9FTQobwsDQH8QCcuKESm2dN1Motvp
	6PQ4z5oF4cMjVcZRczkzFG+mjV6/gfkPskJqJe4lTHdeIKTKFH4RvsrKnZ0GGM7G
	FoRQyc4OevSvzIURs9bTF/B5OaA4OqHZ3NlBcwKe6x7lk7kfebzW+ibAnB1kT//1
	Aka0LQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd09dw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:34:36 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-73917303082so1077003b3a.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:34:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349675; x=1744954475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qeZOBA7bGd6/3zx1megEDIxp2d37sujIY0FeKSvlT50=;
        b=Nj2Gw+PmwYfQfO6vzhnUwhd1cVp5O11IVIAqcPENGGsvkV+l2Bbb5nW65RruNM8+oK
         ZfffPqTYcvGqe7/58XyzqqswrFPiZrpAwRfGIy9kzuj8kElQW1UScdyLMvVhSSngn2CL
         ie8aVKeTeoY7apGAiDP/F3SzjY+AOPVoT8pMofKnUEALeXuOfx3ONLi23tnU51NsdaCp
         oQf74OLd8za5IgmXwntShg2dQ2hjKjVt08EYSiBEDIElGxBwJZO0Rc03RKkqUjEdd4El
         OvoddTLIP2UPDZb2uganGJNMZv1Fd8r7x/BngVgByJVqB0S2ZUr+mkZ78MBykG8GK9Yt
         LGcw==
X-Forwarded-Encrypted: i=1; AJvYcCXK0sr28P62d9uZpVT1m4wPs4CzWzJy9tHBpB13+jGYaS1lO03LrJunwLwQI25lbOQXSmXMDDpaHX3L@vger.kernel.org
X-Gm-Message-State: AOJu0YxMPL7QJtFWzYnRpfoF74woANoWcm4w32qKkkmNP5nc8hNRO4+F
	Ux4TYP0rEj6KQ+g67UbHu3ySU6EIZwXsJw67hw/9eJ8wdpmDvbihUdfRT5EC0U9iYheGlBGHI3E
	YKqn0Hx3BArGTWU0CmIs8Jmqd8yWNRIIdrw1JJbi/lVCqYprkZH1ZHk+rNot2
X-Gm-Gg: ASbGncvQG/k4JJTo9hk6/eUSPrfUqv+to0ReB2339ANLASgWYz7np7glPaYr0aSiwkZ
	YHi2DEd5VQkt6SKGdJMFpvgsiFFNH+Cqs11gtMNcz3VF7bA7fm0znjy7BV08dhYto1/OE1Mp+Ye
	6gc4V42o1yabNDcXa8yuN0XUjh54i1Gupts5mfnFxzi4sTVBt00KCDB2trLigB7WdDGC0T0//gv
	Qps7oeE2zh2njGDQbHWALjspJCxQYItXLIxmvHWidVFHzYB20ZgG99KvW44w1cvXKjC1DKduZ8W
	In8Qt81FXbl9o7khtIosPxLDrKkmJiJlY6lbk8Ykn6cTzOm5xwSL
X-Received: by 2002:a05:6a21:158e:b0:1f5:79c4:5da2 with SMTP id adf61e73a8af0-20179972d43mr2744854637.31.1744349675342;
        Thu, 10 Apr 2025 22:34:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE28h/1iClxcTMmDZfKAVOeDYMJlcYpwcYuxjXLKEBn2EDL+ykBLLm8HYKNSwOjNRf6lOChvg==
X-Received: by 2002:a05:6a21:158e:b0:1f5:79c4:5da2 with SMTP id adf61e73a8af0-20179972d43mr2744828637.31.1744349675007;
        Thu, 10 Apr 2025 22:34:35 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd2198958sm584678b3a.30.2025.04.10.22.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 22:34:34 -0700 (PDT)
Message-ID: <f3a632e0-338f-4704-a33c-472a5197d8d5@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 11:04:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 5/6] watchdog: qcom-wdt: add support to read the
 restart reason from IMEM
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-5-e6ec30c2c926@oss.qualcomm.com>
 <d075946b-44f4-42a4-a0b2-90ddeeb15960@kernel.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <d075946b-44f4-42a4-a0b2-90ddeeb15960@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FgdnNhi3AJWdqdFYws5HXRB1fcXvepOl
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f8a9ec cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=QQLzL5ziG8lQO_hVxMcA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: FgdnNhi3AJWdqdFYws5HXRB1fcXvepOl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=856 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110039


On 4/9/2025 12:33 PM, Krzysztof Kozlowski wrote:
>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt)
>> +{
>> +	struct device_node *np;
>> +	struct resource imem;
>> +	void __iomem *base;
>> +	int ret;
>> +
>> +	np = of_find_compatible_node(NULL, NULL, "qcom,restart-reason-info");
>> +	if (!np)
> That's not how you express dependencies between devices.


As I mentioned in the bindings patch, I leveraged this from the 
qcom_pil_info.c[1]. I shall use the syscon_regmap_lookup_by_compatible() 
function.


>
>> +		return -ENOENT;
>> +
>> +	ret = of_address_to_resource(np, 0, &imem);
>> +	of_node_put(np);
>> +	if (ret < 0) {
>> +		dev_err(wdt->wdd.parent, "can't translate OF node address\n");
>> +		return ret;
>> +	}
>> +
>> +	base = ioremap(imem.start, resource_size(&imem));
>> +	if (!base) {
>> +		dev_err(wdt->wdd.parent, "failed to map restart reason info region\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	memcpy_fromio(&ret, base, sizeof(ret));
>> +	iounmap(base);
> All this is wrong usage of syscon API, missing devlinks, messing up with
> other device's address space.

I shall use regmap_read() instead of memcpy_fromio().


