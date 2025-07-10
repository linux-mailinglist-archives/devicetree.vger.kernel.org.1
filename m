Return-Path: <devicetree+bounces-195007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 349BBB00265
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 14:49:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 023D25A6F73
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 12:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6506D256C61;
	Thu, 10 Jul 2025 12:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLdcH+M6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C907B195FE8
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752151775; cv=none; b=co3tlJ85ilvu47j7Z9wry2F9umUOlUi6ClN89KVZuK2pi6lP2wABOtqf5JbOpECp/zQA15dm/s+1F+1vEpw1n8w/T40bsJW+4kMEY10s9Vv3IzXDSJkqrvwzEcRkVcqptEqlxCw5IXjRbH3DeI9bu3lNrWAh4pwEaDKVjzihThE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752151775; c=relaxed/simple;
	bh=93g6fWXFtPY3ctctjRZIkU5J1yopubHNG43C/SvFEKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=agT3JK3kvpxBS9ki18XSNTMqrhKVGx2Ex/EVgeJyX50aKX//9ByfmT55Aev7/dRj/hguraiiBXtaOkDZr4FVl+qAYsqlwSWAxpnCdR6/gPbaVVfIuk1bGVH1sBVaozyHA2Ml0ygSP2I5P1ZGOVqIDeHe80F7fqOAMqLDgTkBLdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLdcH+M6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A82Tm9024481
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:49:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LedMUwDjkPamexuNUMtdPjxDpvYa1llz9E9EWYXjJks=; b=cLdcH+M6x7n0bHVi
	cJWjwzSjprUsvw3vkcfxEBniWZVfJYWo1I9V4vyH5mx2FVYVbHh0uc2G1hT7X2AH
	Vx/EaF10mCdLRgN8Q9e4ZBRuCwwisvqrgh+z14ifqJkfsDlDzj54hsLI3eP1gJJx
	3QIAXoK76lb0acgDagJAV+3gybD/zBo55oe4YtT8q6uea/enaSqQ5rf6+k2wplVY
	AU/cdLjfhaYC3N94QkbpYLN4JlrPwSKHSnoAvY1CvSyW8mxpNyzmWPJi6kw8fJOC
	j6tS1yNfvrOJaFrpAv+fFeCyWWdfqWC0lR+47sO+yKPVhfyO3cSE3LZlygIthTAt
	BcdFww==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap50rw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:49:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09a3b806aso21202085a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 05:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752151772; x=1752756572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LedMUwDjkPamexuNUMtdPjxDpvYa1llz9E9EWYXjJks=;
        b=SiH3xkeLtPE66IpHwuBuqMtv5ld2TeD9dyBp7gCaLmRCSyEwmz5t5cnPNdtoRRHc9v
         QqQIm9if0KLRl43W/4MSsHI9W6BLIaF4xbbPUo8ZpnY9+6fgjAPOXwrEsbcpClAx7gYm
         J3KXUQW4YElckWgOcKdBVdrlcxjE1kNLlvY8TTMu27o8zwFwfhdeA6aOLw+WmXUQ2xxv
         d/++PyKkO44Gkpn9WClg35nT2UUHJlTkSuCykXnj8oeOVo+zR0g0mfTbKZDcvAfgYb/G
         IDAmqET4cJhHHmJhXyT8BY5yBGyIdcC3ZOgvxilMT6fOekg0A3L2lCuPICGJL/599jwP
         VAZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBSLKuCWzXzEC9HwuZ+YIuJIqVfAsopN0mnlDHsyG4bgpBbnaDnrnFsc66vgi9AMMQbFeN+i+Xp04l@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Wq0glu4NnxrPKKwpnAxvFItKdAG2PnnccQ9Uj5unu4OZKxf3
	GMxyXhtsl3qu2je1etSeCUmLz0xIFD7eglN2UOfa0OdOpfVKojdGr9M4j4t8qUqa9OdskjHemnP
	/JqN89feaithFzLIKG7bnO+rkmxWxpS4liXAFoGH7DcsW/uC8inDtuIcQFzvXgaWJ
X-Gm-Gg: ASbGnctKZb97X8sDUBY7z2RuCUbXBvXd9HCfWQnbXJWcMSARV1/m63cicVYkMPwz3fF
	9jEWytkyUE1Il1xmzliaTqGLvhRuQP84ulR1Vj/1FcJzQKKKxo1aNu6n3cMYKI+U1Oxv2L3jcE5
	N4UnHlXqUYhWRgkuguDFm3EXMkVGmlWo01K4Ix8Dl7uzx3Va/57pLrboK55805gQROIN0EM9Aa9
	/PIwuDBJ5ZANAeCGJrXJjeZ/BVHLglBCWTo9+kAUsV5g2tJ7Hh6AYvxIZwwirX8Q4AEZ22yRsSg
	+9iCsjMuMnNQk8mpc/eOUZvSe1mR9PxhGwjcXuurjD2796mUuf/0FCIcN6KsM7yYMQXA2L31I6e
	cmxA=
X-Received: by 2002:a05:620a:2948:b0:7d4:589d:5cf1 with SMTP id af79cd13be357-7db87e0ff2bmr357280685a.2.1752151771730;
        Thu, 10 Jul 2025 05:49:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6MnMPHjfEvJ/d0p7Ft5taGsl78PlkmiIcddZTWSH7lx8js1TCtoXP6qMlLfgyrHVTt+MfQA==
X-Received: by 2002:a05:620a:2948:b0:7d4:589d:5cf1 with SMTP id af79cd13be357-7db87e0ff2bmr357276485a.2.1752151771216;
        Thu, 10 Jul 2025 05:49:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9735311sm822975a12.39.2025.07.10.05.49.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:49:30 -0700 (PDT)
Message-ID: <0d0d42fd-06e1-4584-b82c-965f4fb5fa74@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:49:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 4/5] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzysztof.kozlowski@linaro.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, agross@kernel.org, andersson@kernel.org,
        lumag@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konradybcio@kernel.org, daniel.lezcano@linaro.org, sboyd@kernel.org,
        amitk@kernel.org, thara.gopinath@gmail.com, lee@kernel.org,
        rafael@kernel.org, subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        quic_kamalw@quicinc.com, rui.zhang@intel.com, lukasz.luba@arm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, cros-qcom-dts-watchers@chromium.org,
        quic_skakitap@quicinc.com, neil.armstrong@linaro.org,
        stephan.gerhold@linaro.org
References: <20250509110959.3384306-1-jishnu.prakash@oss.qualcomm.com>
 <20250509110959.3384306-5-jishnu.prakash@oss.qualcomm.com>
 <20250511140418.33171ca3@jic23-huawei>
 <ff19780e-5bbd-4074-9db3-b4f27922a093@oss.qualcomm.com>
 <20250628173112.63d9334e@jic23-huawei>
 <5b55acbf-065d-4383-a816-82561bf91273@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5b55acbf-065d-4383-a816-82561bf91273@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=686fb6dc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=5KJYxXw4eQHc87HR-wQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: _BG7f7qTDTlxYf9ATes2Oz7bENYkHH6k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEwOCBTYWx0ZWRfX3OZ0VUjtfMAB
 OB7W3cNSJjaRXaWv7C76hkG5vntWRlCt2OSpPUnuc8nuP/ggKJkdIx98ik7ewq7XfDKx6bxCWAO
 C0yKxYrOAVhrwmPvrgK3i8jlslw693DKe3BOA6LtaFAhxlF/NrykKZhyjxPDfr7HOHk7dD9osaJ
 rCQYUrUwvKZ/26exZWQbWeJpYbfv90QGxRjEtgC2qcTsVdGnfkqiW5WSHnkb49Z1sFUNPz0VH+4
 8q1ICMIhoaFhc06IMF4lIBoHEf6VEazNXu/Mj5ChZhtW2H47Z9oPt6JfT5sjDNOOB6FwcsNK3LK
 tpPvl3br09/4ZIGd53+nqw8YKnBE6xhuIOMesa+oh3x4o56JipELVLhrzik0T27m4g0AC2lzpQ3
 jYfPIJBQQTYlU8a6BbDldp5z/WJbu02LdZv2g7Plc82hR31B/KNSUbVSCpt+eazxmM5ieMBD
X-Proofpoint-GUID: _BG7f7qTDTlxYf9ATes2Oz7bENYkHH6k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=778 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100108

On 7/10/25 8:44 AM, Jishnu Prakash wrote:
> Hi Jonathan,
> 
> On 6/28/2025 10:01 PM, Jonathan Cameron wrote:
>>
>>
>>>>> +	.hw_settle_1 = (unsigned int [VADC_HW_SETTLE_SAMPLES_MAX])
>>>>> +				{ 15, 100, 200, 300, 400, 500, 600, 700,
>>>>> +				  1000, 2000, 4000, 8000, 16000, 32000,
>>>>> +				  64000, 128000 },  
>>>> Andy often points this out, but I'll do it this time. Fixed numbers (typically power of 2)
>>>> elements per line make it much easier to see which element is which in these arrays.
>>>> Reduce the indent a little to allow that here.  
> 
> ...
> 
>>>>
>>>> It was never worth bothering with release until we had devm managed form but
>>>> now we do the code complexity cost is low enough to make it reasonable.
>>>>   
>>>>> +	indio_dev->name = pdev->name;  
>>>>
>>>> Just to check.  Does that end up as a part number or similar?  
>>>
>>> I printed this name and it appeared like this:
>>>
>>> indio_dev->name: c426000.spmi:pmic@0:adc@9000
>>>
>>> It only gets the DT node names, which are generic, there are 
>>> no part numbers in this name.
>> I thought it might be something along those lines.
>>
>> indio_dev->name should be the part number so hard code it rather than
>> getting it from the pdev->name
>>
> 
> Actually there would be more than one PMIC which can function as the master PMIC
> for Gen3 ADC functionality, so I don't think I can simply hard code a name here
> based on PMK8550, if we want to keep the part number correct.
> 
> Since we can't get the part number directly from the DT node names, we
> could try one of the following ways to add it:
> 
> 1. Add a devicetree property for the part number
>    This would be simple, but I'm not sure if this is the best way, 
>    if the below method looks good.
> 
> 2. Add a string in the compatible property for the part number.
>    This means updating the compatible from "qcom,spmi-adc5-gen3"
>    to something like this for PMK8550:
> 
>    compatible = "qcom,pmk8550-adc5-gen3", "qcom,spmi-adc5-gen3";
> 
>    and then extracting the part number from the first string.
> 
> Please let me know which method you would prefer.
> 
> In addition, does the below string look fine, to assign to
> indio_dev->name for PMK8550?
> 
> pmk8550_adc

I don't know if it's a good idea to intertwine the two, but we
happen to already have a mechanism to retrieve the name of the
part at runtime in drivers/soc/qcom/socinfo.c, namely
qcom_show_pmic_model()

Konrad

