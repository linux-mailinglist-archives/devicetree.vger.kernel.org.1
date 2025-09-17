Return-Path: <devicetree+bounces-218567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5BDB81AC3
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 21:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CABF6220C7
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 19:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3F52356A4;
	Wed, 17 Sep 2025 19:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nB8MtTh8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAED21B3935
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758138456; cv=none; b=B+8pprX458cR78sSc7hd0M1aFQbudrRbGXdeMppgR3AG2eBUArtdnwjykn1OHhUqCwSJIfukiHK1MzPJZnqrPcb//q3fgxuG7ubUkOme15j4UtwWaoaILQBYaDBMYbhFiEPQg1f9s4f+sh8gfnJWywaXRyV9AuGXhRc+YSReJgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758138456; c=relaxed/simple;
	bh=eCc3DvwwOCzNRdsPiK+c2P8cgXzJw5kUNDcvbfkn/n4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PZvNSpPfQFuRQduCU7AgTNXYlMxqGyhfob89mc8YBdjJKxYh5bKFxit4fUbf9mIa5D4VZJDT5NSs9oFlOGlWDrfoIkUk9X72cxnTYR7xtDoVY3AkPmIbDjQVeRNToiqce1xs6AOkCTKQAWoEGLksG2OEX/Zdtqm4dpPnUMkZFwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nB8MtTh8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HIaajf018046
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NGOPpw3iuumSmHxje5vaDZCPavdx4WY1HpZ7Jmti/9A=; b=nB8MtTh8RSzbgZcm
	bqBFCcYv78eXzm9cR2KffIDxHEvRgL74+UwlbZmH1pURqJ7CJb6VT2Z+9/FM7GL+
	zAVqqY7I2Ad/xXWyoM7M61JCHyE26hHNa6ETqLWlF69pvas0bh1WAhMMJFwgaoPP
	gsUnSCzFToar+jGc7Dw3hfbHkBoxjlWQ4unbU8F2DvGnviHXLBbawDwwx9/yzB6C
	CIGHxVd9jPJCbR3gpWGhJVK/b8rf8k87/+Brx3bAyKjWVqk77mkfgWZl7GAmfpEP
	itIslCrFZ0eonyvd89OPxGsQg3/QcZr07INd+Nupj9xO3ImsEt2gH2EG8T8OkRIt
	7BZIIw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4982de85ga-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 19:47:33 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77cb7607cfcso286209b3a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 12:47:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758138452; x=1758743252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NGOPpw3iuumSmHxje5vaDZCPavdx4WY1HpZ7Jmti/9A=;
        b=SGMDSvEi43BzE3Cz3Yde2l5GFdjf3eHx/O5df7nx2SJxy51Bv//vj3NhNNt9tmshZ0
         WrdEPHehs1Sqv4fZTigQhytNcyaOXGYR3JXuIkTnaVSTS8FQYT+OqBi3lIQAIkLwqpAl
         N+zFj6ybUlCekBpoR0SpXHk0A+i0a3T7WYtTCdXI0g1AdSzIUD0yOx4l4bhjfHT8nVYu
         0ikBGwo3odtvATpyb2JXPKIl7eNNxK5P8sxcXtWtXvT1wEvlWDiUI7WpjNiMidD/zzlJ
         mXYWTM8IZqvyqvjMg6bcC2ldf1oi6aZZoJBGnTIOkoes10OBcH9zi5Hz/vYaC1ri/Atj
         EIVg==
X-Forwarded-Encrypted: i=1; AJvYcCU0q9YnO62PnEzruGTYIpkqFXjnK5pQmAia0iOJ7XO42yNbiaenOlX048jDC3IpFAg7e2A+ab//VB6L@vger.kernel.org
X-Gm-Message-State: AOJu0YyS2J4045mJ9mtNk+T7pz3rM6YxK6hOGaabvGmDl6KOSr45neqE
	e20sqhzqbFE6sZUxWA1L/HfrY3FJHIFHKHqy7526wGpxWSCIFjJJMfWO54gq6uGYvIwHqixtMnI
	XPA0CwwWFSVxCFcP9CMZuC8GNBLTGazlC3xI4p3dmW5YmuCyvgMDTBy7dDLqZtjkN
X-Gm-Gg: ASbGncue3+YEcGf+4mUoG0TFjq0KZkHHmIPn9KKDh/ED0MMVWh14S3T7odQO65S/kqp
	99GWJEe4J1CuhJyofWwGKun3VAA6g+2xXyrh+8Z6vulctgt/GE6HOqochLoD9fhNMbU+P3O/WyV
	SsnPbUHSmm2G4IUx3zgXxUk3orMDq3O/FuYifMSDZV1y5dptIGkyn0XS9f1idcCVhktYz/a0Bl5
	rWs3JUdhf67x1j9wksFw6yKIOWk6HQ6ZZFvxzf4PG7vCcwxDaBVP5Fz6+ypmYtSfP5YCI1ZDLaP
	tDZuPHSW8VGFdqnDXPkHbalR5QtCIJ5KrH6Zx+/3CjgD7S2Biw+mcEW5SaJi1ekZjGwCLuE=
X-Received: by 2002:a05:6a00:2405:b0:772:934:3e75 with SMTP id d2e1a72fcca58-77bf72cb228mr4006536b3a.11.1758138452395;
        Wed, 17 Sep 2025 12:47:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1hWyfo8vXPdXPEvd94MNzd2+BYNOV1vlcuwDNTBjCR38g8b9XRkJWcMjCwmG6wxBK4HRxrQ==
X-Received: by 2002:a05:6a00:2405:b0:772:934:3e75 with SMTP id d2e1a72fcca58-77bf72cb228mr4006514b3a.11.1758138451980;
        Wed, 17 Sep 2025 12:47:31 -0700 (PDT)
Received: from [10.216.40.15] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfc24b4f6sm215021b3a.37.2025.09.17.12.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 12:47:31 -0700 (PDT)
Message-ID: <a0e885be-e87d-411a-884e-3e38a0d761e5@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 01:17:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V7 3/5] dt-bindings: iio: adc: Add support for QCOM PMIC5
 Gen3 ADC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com>
 <20250826083657.4005727-4-jishnu.prakash@oss.qualcomm.com>
 <20250829-classic-dynamic-clam-addbd8@kuoka>
 <5d662148-408f-49e1-a769-2a5d61371cae@oss.qualcomm.com>
 <4e974e77-adfc-49e5-90c8-cf8996ded513@kernel.org>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <4e974e77-adfc-49e5-90c8-cf8996ded513@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YfO95xRf c=1 sm=1 tr=0 ts=68cb1055 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=9_5l9IA32bTo_oBAx1EA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 7xJvvJdxJM4ZYqQwjxcEhYTWqFopOX03
X-Proofpoint-ORIG-GUID: 7xJvvJdxJM4ZYqQwjxcEhYTWqFopOX03
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDE4MiBTYWx0ZWRfXyLYPttgdk0Gg
 pfoL4p4OhRPPrBTtw8hNUWDEvO0Du9/ayEP2VOxqAo6Ls7tzjRV3JHNdzjrga4hdgKq5aYfbex/
 hKekzzY2GvTmkByuqF5YCw/Nc8BSs0BUNdszHNuaOsG6a7slnUrg+6EHILk3Rr06GCHGXwUYfoi
 3/MvBNDk8SaqwZtVfIQeh0xochMgWH1VPwnxh4sI6qMxDHxSHuqnsIyDHAI24QnVUWRlCp3QFWQ
 pvIfx45WDFGRpcYSVzlQx09+Nfdvt3MpX4SMxKD/EhL125wIPuYp8gObBc/ZepaGtt5qb4WzmM0
 gnW8w2VxyKYd/TeCK3nXlzkzlYo80GNR1qb7qcRgNsWCymc+uJayvpUHMCmrYZrT0dpchkaL0hc
 FUVtKIGC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170182

Hi Krzysztof,

On 9/17/2025 5:59 AM, Krzysztof Kozlowski wrote:
> On 16/09/2025 16:28, Jishnu Prakash wrote:
>>> You cannot have empty spaces in ID constants. These are abstract
>>> numbers.
>>>
>>> Otherwise please point me to driver using this constant.
>>
>> These constants are for ADC channel numbers, which are fixed in HW.
>>
>> They are used in this driver: drivers/iio/adc/qcom-spmi-adc5-gen3.c,
>> which is added in patch 4 of this series.
>>
>> They can be found in the array named adc5_gen3_chans_pmic[].
> 
> Really? So point me to the line there using ADC5_GEN3_VREF_BAT_THERM.
> 

We may not be using all of these channels right now - we can add them
later based on requirements coming up. For now, I'll remove the channels
not used in adc5_gen3_chans_pmic[].

Thanks,
Jishnu

> You responded three weeks after review, this patch goes nowhere and way
> you handle upstream work makes it difficult for us and probably for you.
> 
> NAK
> 
>>
>> Thanks,
>> Jishnu
>>
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
> 
> 
> Best regards,
> Krzysztof


