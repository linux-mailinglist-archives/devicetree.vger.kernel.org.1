Return-Path: <devicetree+bounces-194107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 697E1AFCADD
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8172A3ACF8C
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBFC2DCBF4;
	Tue,  8 Jul 2025 12:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvHyUo0+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8746D17A2E3
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 12:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751978980; cv=none; b=X/zeS6tcDz415EJrxbEEVMVm/oFGYrZKbHQokyv2lYCq0h1pe9KrrxV7KHJ6MfORgiIkPw8k1bJPdhKtwKP9ymCbiQ+sIAX8ySyXhtj9aDPf8ckwTgzUUpl/pjcbuvNtMugALAfEDrwj48ZFsp4/X2V+dQzVI6tFD/25ObOCq1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751978980; c=relaxed/simple;
	bh=4AW6PFJFfUOodYzIiSEYhLXKdLBz08KZt5fa7t3j9Ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cahyZXCvSqmLdIZfmmX7mTECF2Wruu9jEds/xKDBvBAahjwnvqQoWoeXFtzlznFUtuWVFc2pbwiW3s7DCnf4o+WniEwYvrJ74R2qKA5BSx+KOWCULp8bOMlRuKcEh7V/wlQj6iK02pghtE2Om5tHfBL+YVVkp4uFqc+Y2yh/oB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvHyUo0+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAF2d008233
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 12:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C8qpSE5Dp43vB7gI5CagfdGXu5JUEx9y9sp3Qv7cISc=; b=OvHyUo0+o9sR/S1y
	n88x2gBixdRl2x7IfHx8Ve2Ufm3krpi0Z9h++eP6r6aKf+cHxIo6JLAxKWVOUzHP
	Errn+bqQ5B39wXbkCT4RrUokbuMN9ohlEMVnwvRVOB+l31DcZ0XVxvt5OeYvwWfA
	4pif5yRvx0IJaWnRkuc6zzNhjY/1N4BNpdGAj2+4GFYWW7oiOTdSFWaQzcSWaK0b
	HZpjv172WbP3TFwAlKrF83x29lTWj79CbAWJhbnaL/ZEj04sZq5S0C2rWZSiWC8u
	fWUzv07sylGJZDnxviWlWhD73Uzro0KC6FIGn7n9l0viXWPNoP8K2W1rmJbjxtqs
	M0KvIA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucmwt08-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 12:49:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0979e6263so25494985a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751978976; x=1752583776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C8qpSE5Dp43vB7gI5CagfdGXu5JUEx9y9sp3Qv7cISc=;
        b=DU3QBOe/G9HNwGsShEHmNUinP8SxVIzwj6cdRds2NrqqyaG3kwPXA+wwGiWo2gNCAA
         r4ivh6X1VOo67t7JXvxedx4iodtlVh77eK1dmaUaOYLjJdA9myup+PyigsXZ7qqQci0h
         jWgFxDFqS2YDVunIQ9Uyva9DmpWhHE7+hP/2ayenSmSTXxVXvEfdTemeg9NpErBYv1pF
         RWXCTht4qedrlEKUeHYMD873IYMvnDZrHhitpMkMXenX+L6evXN1UNaTPpzej/cfBPcv
         kGIH2yxIxn8YnCR7n6zn4W3UEBfNcjmMJJcfuiVRiz7yPf9l4hgOTud49S7SOnHAXSNP
         Xe1g==
X-Forwarded-Encrypted: i=1; AJvYcCUxozCRcClSeoaxWygEK+vP8BU6dNZyz6bfPf5ANWBxITehGbuMtefeip0JGM8sOeuPWBurGK70LaMP@vger.kernel.org
X-Gm-Message-State: AOJu0YyF/9dp9iRQIbs+mrwOf1oLYuu5xqAcbsXgwJWG/I8HWDOm15hB
	hz253VzsB9EVdbWnPnxEnGTDuUcq/IeeSy2m1sX8uKHwWnC60XfGZk6p7xr6mcCwH5IVH4sGXQj
	DlS31cKMc1bXWRwoi5bqaR8x5ORl+MZUYq0ych3Y0xI7Z6a4k+nriEQhoZN3+oHeF
X-Gm-Gg: ASbGncvaKWK6eo/rQXM3iGJZ3GKh7DsX6rN0buoAQjEKyYOdnb2mtF6AWBcZ/HxNhc1
	0QNQi6+P2I8XiX2ENMa5WsyX1WX16U7emBgW/4Gh9aZ3lH3pw94e3ywZyZjvw1S9y6O0vtACNiT
	9kqgonVKEOodPcMiS1O2GG1AEoFQ0R3odaB3qo22YobAg/VvN8J9mQdbwwDQnL7LRelUR3VxtDg
	/vEGlvu1eMT7qh3HEnqAk/mKHdSMfAVQlh05v6YaRDLqAdNXYh+Kiafl6PA5WnmUK4CkUSirNr3
	40zIRqyg60kF+gMDTS/WfeWXZg5ZWcWA8HA85gPwaJ5DoGdTKX3dxjZ+uksU1gnrmmErB6VbA9H
	Wjis=
X-Received: by 2002:a05:620a:1917:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7d5ddb97e46mr895461985a.8.1751978976074;
        Tue, 08 Jul 2025 05:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI6CfY3miyqntHnZERAiMI/kNZtHr4A2Levt+Sm8OKvM/VpGtLtGOUwmLsoioV5Au5XaqNhA==
X-Received: by 2002:a05:620a:1917:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7d5ddb97e46mr895459885a.8.1751978975628;
        Tue, 08 Jul 2025 05:49:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae40eaef0a4sm684728966b.170.2025.07.08.05.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 05:49:35 -0700 (PDT)
Message-ID: <ffaa75f3-8b24-4e36-8632-62bcc47ed568@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 14:49:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: Add Milos interconnect
 provider driver
To: Luca Weiss <luca.weiss@fairphone.com>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250708-sm7635-icc-v2-0-e158dbadb29c@fairphone.com>
 <20250708-sm7635-icc-v2-2-e158dbadb29c@fairphone.com>
 <0a09fbc8-8835-4e94-862b-0baaea5ee251@oss.qualcomm.com>
 <DB6OK61BL9ZS.31XB5TN5YTX62@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DB6OK61BL9ZS.31XB5TN5YTX62@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686d13e1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=mLgVev9gNyKCqetQLd4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: Pf-UyGt40WZzTdY8uxO7mXTn3fTvX6pE
X-Proofpoint-ORIG-GUID: Pf-UyGt40WZzTdY8uxO7mXTn3fTvX6pE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDEwNiBTYWx0ZWRfX2fN4K+DGBc+/
 6RCz1lZXd+zU6H5cPckpF6dRqF9/pH9UCLHC+eZFvqf6CYH4l7YSFtPjsw+w8wRAoi0wzvxFFUO
 +D2VDOqlBSvhKmTGTb9Uc7QWj6cv2wRkUBJsdcQ231duIFcE7n+34mxofOYK2gu6FjSQXcOqV15
 R2ac/MUII22v3GBIqdBCjPOSu8Qb7SxnqTLEV34JtwGHeC+7vZp+NnGttRkfapjoCsCe0CWiRg7
 HMIwzjyVGQ9T9fe9uSmbCKFoZffSXd4EsXVHKxw6LeXxzVaHmG+6BuYI9i8EENZ/dX2xM7V5eTl
 oYuCcCAATj+DH3y1nldBytltX0eSJ/4IoRtHCR70544tsLr2gt9PhQeEwLdCaM66l8VQwswmPxs
 3R25zy3cRA+90070YkUiheLLBpRbVCuUQn2vQ6rmbhtY+8OBrv0RS3H57tyUuC4Qhg2oX0+0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080106

On 7/8/25 2:42 PM, Luca Weiss wrote:
> On Tue Jul 8, 2025 at 1:30 PM CEST, Konrad Dybcio wrote:
>> On 7/8/25 12:20 PM, Luca Weiss wrote:
>>> Add driver for the Qualcomm interconnect buses found in Milos based
>>> platforms. The topology consists of several NoCs that are controlled by
>>> a remote processor that collects the aggregated bandwidth for each
>>> master-slave pairs.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>
>> [...]
>>
>>> +static struct qcom_icc_bcm * const aggre1_noc_bcms[] = {
>>> +};
>>
>> You can remove the empty bcm arrays and .(num_)bcms assignments
>> for them
> 
> Sure!
> 
>>
>> [...]
>>
>>> +static const struct of_device_id qnoc_of_match[] = {
>>> +	{ .compatible = "qcom,milos-aggre1-noc", .data = &milos_aggre1_noc},
>>> +	{ .compatible = "qcom,milos-aggre2-noc", .data = &milos_aggre2_noc},
>>> +	{ .compatible = "qcom,milos-clk-virt", .data = &milos_clk_virt},
>>> +	{ .compatible = "qcom,milos-cnoc-cfg", .data = &milos_cnoc_cfg},
>>> +	{ .compatible = "qcom,milos-cnoc-main", .data = &milos_cnoc_main},
>>> +	{ .compatible = "qcom,milos-gem-noc", .data = &milos_gem_noc},
>>> +	{ .compatible = "qcom,milos-lpass-ag-noc", .data = &milos_lpass_ag_noc},
>>> +	{ .compatible = "qcom,milos-mc-virt", .data = &milos_mc_virt},
>>> +	{ .compatible = "qcom,milos-mmss-noc", .data = &milos_mmss_noc},
>>> +	{ .compatible = "qcom,milos-nsp-noc", .data = &milos_nsp_noc},
>>> +	{ .compatible = "qcom,milos-pcie-anoc", .data = &milos_pcie_anoc},
>>> +	{ .compatible = "qcom,milos-system-noc", .data = &milos_system_noc},
>>> +	{ }
>>
>> a space before '}' would be neat
> 
> There is a space :)

Alright, before all the ones that clash with a letter ;)

> 
>>
>> Konrad
>>
>>> +};
>>> +MODULE_DEVICE_TABLE(of, qnoc_of_match);
>>> +
>>> +static struct platform_driver qnoc_driver = {
>>> +	.probe = qcom_icc_rpmh_probe,
>>> +	.remove = qcom_icc_rpmh_remove,
>>> +	.driver = {
>>> +		.name = "qnoc-milos",
>>> +		.of_match_table = qnoc_of_match,
>>> +		.sync_state = icc_sync_state,
>>
>> Are there any issues with sync_state? (hopefully not)
> 
> Don't think so, I don't see any sync_state pending warnings in dmesg so
> I assume it's 'synced'? Anything I should look out for in particular?

Boot failures.. stemming from not describing resources for peripherals
that use them. But if you're not seeing any, that's fabulous.

> 
> Also since it looks like I'll anyways send a v3, I've already ported the
> QoS settings, and don't think I'm seeing any issues booting up with
> that. So I'll include it with v3.

Great, thank you

Konrad

