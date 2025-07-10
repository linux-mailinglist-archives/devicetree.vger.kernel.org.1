Return-Path: <devicetree+bounces-194811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBDEAFFA04
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBDBB5A03BB
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 06:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3B628725D;
	Thu, 10 Jul 2025 06:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="letdZWop"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90F721D3E8
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752129872; cv=none; b=Ufr8C5NtBaI4P+RURaoRddGy3dNlyc/q2IsOtvUzPa7Wvx4dhKd+XWpecUdh3oq7PpZpcHyXHJaWYvcPHiOurQZXewA2UJOUd3DdmfRIHsEjpvV+PhAFyV4KHbQjCtNdvdDSAD6iJitsIei0cRlwYp6hLm9f/UsJRUfZylky9YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752129872; c=relaxed/simple;
	bh=QVm6gocUw5vbbpN7sC6utQja7WJSHwAY1gbJZtArkws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dHCsdzCHF16WrrdAznOfq8Mvfa3CoFJyLrE5hZwIaYNh5CMAAyDGrPrs0EhP06JDnMXmnuiDyCwyfMOoL1Jyo+VTjRiCRu2hiWk2LJJxVShojk0ZNAXMLkNiMRx1zbBnDyNLh6qX5X5yNmuwmHnomv/cf977ZZRDtfgT9y60xYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=letdZWop; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A0Fsra023112
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:44:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XOFIWBK5P9LJ/AiYhSqbWUOzxNAJ73q76p/zRwAS9iA=; b=letdZWopqpgv2GRE
	Uip0g2nxruK8ALrQmCj52mb+tGJ/4ggWG6lwYoshb8gW+tWwa+OMl3JXPmR85h9f
	eRx1GlxowOAnGDz5S3iBsZ4IEVrypHk9EhrUKcri4SXqkgRGSFm3z7/PQGgLL20G
	ifsGnZZhOuA4q4Lf/9ZdTV3TU2WJ4/7xJFtsmUfs5zt3sgsWS0AsE2eqLBxMfiy2
	/PkH7SKQiXBoYRYK0ClqzKzU9GUZu/xQnTL6DNDtWtKadqk1Mvo0Tgr2q4MgEffk
	TQfTJu4tfHlNY2zy2i0CCLtaRmznWF5+dRsCh1sN/71sza93KFlfpq0m2vUXFeXU
	aQAZZQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbekura-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:44:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7491814d6f2so764741b3a.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 23:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752129869; x=1752734669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XOFIWBK5P9LJ/AiYhSqbWUOzxNAJ73q76p/zRwAS9iA=;
        b=m4HhVUvhVDGUOlq9h6kPIaCQPRIKbirC8nEKgP/qg1RvWm8BpbyrLWlhhtMmSrSdpI
         zzAlJ8nvBU/GBnbTd3vVtp5hiHE0JiHN7xgsh96P+ymlwC7z5h/EmS98PlmMu03arscc
         gQ5niFefATmKsFO1B8h7WXQJKlEhQX8PILDWkBQSgGF5HWcidLZnC7K58WK7GfIIp6pj
         kyXPUBXDwtuYCVTAYSNSWs6neN3DUff0rRbAZOb4B89uoytm7yfYhSZxLZZq4QexPIJx
         hS/mt09wYUOUplxYH1++va/kQSMYz56gSEId4hJUjYu49yr+L4tCu0FI+2WCdxOUfAnl
         2efw==
X-Forwarded-Encrypted: i=1; AJvYcCVca8eIBhQ52QaJhzQyfD18c3V+sv05/jfA3SBJaScSnfQtQaNKOGj9Xq3oJ6IsdEbKL+9YXZa0Yh2U@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq08gxE0pDboAIb8A08IJ6u7ftGYKKwxfcPldaUhi/oAATS2oa
	YdsYMvaSR3DkLhkBxfyHA6nlxU4pR9BxCKpGhpz+4CjBY+VXIyd128k3pLv1pD6TrBsSotTWJ9x
	Boo5DUYU+QPtNw4hUnBADq5lG3nzoT78UkcEHfaFoCtGC7tIKppOJYkTGdW3ZTgwD
X-Gm-Gg: ASbGncuVh8RsN4mGFwgtfxY/3wLj5bvY2+YdepJ5fxVqUTk9Inh9gFCvmtFwieODINs
	O+M6OC85xU5T1AIQZTRvfDkYP3ZNWFmkO7DVjxcsnQU4qG9baEKG9SNyggjhdPE0L0VL14sZpwj
	cyUdQ5fhjFSd3Qt/mvfYJJU/vlelyaN9p4k86AKbaU2GANlYzz5g2yruci5SDYqfQ42RwWHfoKG
	nP2kTJ4KOLlcnbrBLuMG1NabaRdz0FlE5B0FcchqRXBYwgaqrUis3rHYLr5H89r9ZZNzYgoP4gS
	yRtpFlLKMTFrAKr0CNRtN+R9bVpTyT8htQFlnOCoS3unnZ0mug==
X-Received: by 2002:a05:6a00:bd01:b0:746:26fe:8cdf with SMTP id d2e1a72fcca58-74ea6565669mr9719901b3a.7.1752129868902;
        Wed, 09 Jul 2025 23:44:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNUGkIgvIR0XHNfY9EJn0oNZm/eQsmtWwXj7UCavkNJerusTiztj5dMVwieTBQBExj4xMDAw==
X-Received: by 2002:a05:6a00:bd01:b0:746:26fe:8cdf with SMTP id d2e1a72fcca58-74ea6565669mr9719848b3a.7.1752129868432;
        Wed, 09 Jul 2025 23:44:28 -0700 (PDT)
Received: from [10.216.20.83] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm1195890a12.38.2025.07.09.23.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 23:44:28 -0700 (PDT)
Message-ID: <5b55acbf-065d-4383-a816-82561bf91273@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 12:14:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 4/5] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jonathan Cameron <jic23@kernel.org>
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
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20250628173112.63d9334e@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA1NiBTYWx0ZWRfXxK77XKfJUe4v
 MaWDAtHe8j5ZUbEiFUSbClCn5X8w8vMvw7unkCWhad4UhIdtn9ehlEF0+2zrKgGRHPSlZD9brc6
 aHg3GAblt5yma1v7HIF15RvoqVKjSV//hh5I1TmL+u7aMbGq1ItN2h47JDN9Isly+mLmb4Wn+yD
 Wlx2zxFwwzdePQed/trViOYOb1dcHNNuYJiox7r+0kVVdziknz7Ha+xoL7y1gl1up6tk9jFCOTO
 sX2KKRHKQr/1DWjzD42BCmD0InPMeCefnemRrphuVAGO1kxNW/4oxCBHAd5yE3fo57lVK6+vCJ5
 Ktw/2t4h3txZxwT4B3Qn22G5auS6h941Ze6jsU3gzIiEPvDWvNiaWyU+r4A+nRhHA5TB474a2DH
 k+1ufxjYKgL2aaP5qP/3h+v6mJ2hXFVAq4QSf7OPTnh0k7Ao8nHAHW7J/izurJfsITE3HSDb
X-Proofpoint-GUID: emCUNKxqgAgkE-CIetnHu58-LCSBT_2j
X-Proofpoint-ORIG-GUID: emCUNKxqgAgkE-CIetnHu58-LCSBT_2j
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=686f614d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=LnmLInYPsl_4tkCgpz8A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=502 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100056

Hi Jonathan,

On 6/28/2025 10:01 PM, Jonathan Cameron wrote:
> 
> 
>>>> +	.hw_settle_1 = (unsigned int [VADC_HW_SETTLE_SAMPLES_MAX])
>>>> +				{ 15, 100, 200, 300, 400, 500, 600, 700,
>>>> +				  1000, 2000, 4000, 8000, 16000, 32000,
>>>> +				  64000, 128000 },  
>>> Andy often points this out, but I'll do it this time. Fixed numbers (typically power of 2)
>>> elements per line make it much easier to see which element is which in these arrays.
>>> Reduce the indent a little to allow that here.  

...

>>>
>>> It was never worth bothering with release until we had devm managed form but
>>> now we do the code complexity cost is low enough to make it reasonable.
>>>   
>>>> +	indio_dev->name = pdev->name;  
>>>
>>> Just to check.  Does that end up as a part number or similar?  
>>
>> I printed this name and it appeared like this:
>>
>> indio_dev->name: c426000.spmi:pmic@0:adc@9000
>>
>> It only gets the DT node names, which are generic, there are 
>> no part numbers in this name.
> I thought it might be something along those lines.
> 
> indio_dev->name should be the part number so hard code it rather than
> getting it from the pdev->name
> 

Actually there would be more than one PMIC which can function as the master PMIC
for Gen3 ADC functionality, so I don't think I can simply hard code a name here
based on PMK8550, if we want to keep the part number correct.

Since we can't get the part number directly from the DT node names, we
could try one of the following ways to add it:

1. Add a devicetree property for the part number
   This would be simple, but I'm not sure if this is the best way, 
   if the below method looks good.

2. Add a string in the compatible property for the part number.
   This means updating the compatible from "qcom,spmi-adc5-gen3"
   to something like this for PMK8550:

   compatible = "qcom,pmk8550-adc5-gen3", "qcom,spmi-adc5-gen3";

   and then extracting the part number from the first string.

Please let me know which method you would prefer.

In addition, does the below string look fine, to assign to
indio_dev->name for PMK8550?

pmk8550_adc

Please let me know if you want a different format here.

Thanks,
Jishnu

> 
> Jonathan


