Return-Path: <devicetree+bounces-197769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E946B0A913
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CCE3C7AA573
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE73A2E6D2C;
	Fri, 18 Jul 2025 17:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LtPNppuR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523A72E62A9
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752858409; cv=none; b=Y2oXUh/yVVL7b1xIkSA7rcKn0kIkl3QOnFkmlzQ28ruFrN8gmtXmrH44C8lzxaggGZmyYEg+QD0f8ahF5jah04SOJeAOoHoN/Bs33Kb5xToc9r1J0IcXfLndFX4HKi2pGXz/DJHvUql6tYnkxemnIWV5PN/UuTQejQJ68dU/xvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752858409; c=relaxed/simple;
	bh=+DY68w5ZNmT+VTpHTgPRVOK5a5ospGjPiJz62zw1bC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qx82W2hbSL1ix5TMaYKtP/labOXO9xRZR2gOkAAZkpPlUciLwD9HyqRchmH7wg8Sj+x4tLlZ8IWYtdb/+Ne5aZ6E9UD2mCSskWE7f8QjUUla4gjDcRXstOVtDUn77gfiyNjusAoRMhiRUaDTCjs15X79HfJmZ5iXBYnOtLXq0tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LtPNppuR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IAAxBv016516
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:06:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5vUfMJSGq73ZhN2Mdd4o8iq4iDMXCQpQz47NqFacc8Y=; b=LtPNppuRlpljDRB+
	7ENW6FqiASG6BFMKPAXEWzfokX3cmkanxm2ltmj/sGrkdVxbRUOdqsF7hAE53+Fa
	NGObv5q+71AxPd2yaGzcETuNCYr2jRLdhx8gQHE8+4gMZpQ3tjRleqJ3CFLwcINY
	cQp71QxTno2rwd0fDQY+fJrLsdUZNVkklDOMyk9XHD6a1rL9UnnuZP9zIHnIQ+AB
	5oKI/StVoKSBKV9wdEUNBJcBTIOXeC3rbBLBmquiX9PxlP2lHz32+ogsq5/X+g6Y
	iTlLtxB3iooW/FcCI4VGQxncb9GyuDXM8nNy0yV+6Bvm5fJ88aKhivOia7j58+HZ
	OyEzXA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc491r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:06:47 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b34fa832869so2518225a12.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752858407; x=1753463207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5vUfMJSGq73ZhN2Mdd4o8iq4iDMXCQpQz47NqFacc8Y=;
        b=V5nZEUTYR9fHRAfN2+xUhNQkO3wbkGdKfhf3LLs35g5t1/n40ZGXqU2+LDxC6SfRYI
         3ttdA7zwOozsxD7Bm63jhcQw+S9/W56+Y5q87KIhRitbowvjAlIUaNnuQstazcQVcIsr
         O66L9QkY04zOfn7cWPDJUc2iSaeOY6/N5Ueyg4PRLPYwI1XlJeE4C1Zka9ZtEDjtYJj6
         NbokpIEh0dnnJVLqZwBfzAJKcFPQmZC2HvemC+Bn5j8C11BlkPWKGL4IW47LcsZ0S0HS
         4KN/Wy7GtgUSneUAhDupO/ZGtnfMIEjKJadh+QzOXJKoupN41ltA3zs4mA3Mw7yfRScM
         N1Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXDXmnJnHHz/WlvVPx1mxEkxnwSvwpIoMUNGpI68BOChf+LTOYEdns/VTvugMhYs5+p4F+HFNuU+Gwc@vger.kernel.org
X-Gm-Message-State: AOJu0YyyzRaJvspIs+6VQUlIt+llHzI0WUqqw5GwyapR67aGxs9DSdVe
	VkNYqb3YzOKUSd2j6iLtWBpi9HF8BlaEF6jeMiwQu4zMnn1MznBbux3WdfjQB6epxkwR7OeZB3e
	iTrsYXD4ioIISzexD9JCydB4nE6tvVMGZhbPMxQgUTLhJccsl/eES6q7mhLSo15q2
X-Gm-Gg: ASbGncuJpEtH/sbYcVTue5Gj59Nsv3QIWEwH4dWC50y0T1cgEgVJDOhs88WnFLdrehJ
	3cUBTB6ItoePJJ7Ptjkp05SbYUquVuxhyjd1OHm/A8h5KqpATTuyhSVgVWZ0GtlX8PQy8ivlXZd
	thhBPPN1HabQ9oiGlV2XpLddGCjzAS8RoYXlMIJP8XpFte6sYyRKqAcEKpNp6+a4DGKEhco3/TR
	Hms2GUSGWO7X2mLtOdeIvUZ0EtVKS2B06fT6TMlzvuy8MgqoGogl8VbmUdJIBGhReSD84tqe4n0
	nyqp0SbqIaWi59XmBxWb+pKpSLnk6B4gtuxwMyRvDn0e7/WcjqjewMGGLKXJkj9i9iQ=
X-Received: by 2002:a17:90b:3dd0:b0:315:aa6d:f20e with SMTP id 98e67ed59e1d1-31caeb675ccmr11172869a91.4.1752858406629;
        Fri, 18 Jul 2025 10:06:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECNd4Acv4j/c4235fliuFvXE3ktSNudNK8CmPHlGkQnotpSNMV7ho5S5lABhdRD4LGMCNDEw==
X-Received: by 2002:a17:90b:3dd0:b0:315:aa6d:f20e with SMTP id 98e67ed59e1d1-31caeb675ccmr11172834a91.4.1752858406140;
        Fri, 18 Jul 2025 10:06:46 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc0be8707sm1455548a91.1.2025.07.18.10.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:06:45 -0700 (PDT)
Message-ID: <0057e05d-efb6-4114-9a3e-f1166a8e99a8@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 22:36:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-4-pankaj.patil@oss.qualcomm.com>
 <vawtojqbjrtoso4pjoza7vpaiog37hu6gbt7g6mmwbnmwladtx@ebh4amrwxwkk>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <vawtojqbjrtoso4pjoza7vpaiog37hu6gbt7g6mmwbnmwladtx@ebh4amrwxwkk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687a7f27 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=tMiizUMu9hGndvLFPAJAbA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=n_IKRFwyw7e_LvP1qQUA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: ORR0uuB8rJN9Ul0gUgIJyXcrz3gvzIml
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzNSBTYWx0ZWRfX9PyAZJNiRe0Y
 u7AxORI9nt4Jz64top/mpC9anbnENGgC2jXfefGbNe5TkvXOXB90/YCzwMqcymuNsWezz9dya1z
 8g/80x99SLBqXUVj06BGV9SlctrTzZQE7LUAnfPS0SuK97hI1AH0hqldgvNTeapkD1OQS8S+nRk
 uo5Qp38BOmYQ/lKFvbFReHSSdPBM9PyaDtQuMcnoIWVtlw5vGrejJ3OSNBJiQIOm6ndOFGt8yZv
 qvri3nhW6GDKbEySmLY7jUthMsk+LANfqYWQn8yuhoZopKBEvRjib3pqHaEt6rIlNCyTkyJgipZ
 kEP7/6z1EVlNvKBRSZC30nMzosc7Yah0RWkoqQHRIZqByQXr1UinbP77jWdncDRb4CU/f4O7S6W
 Vf7HLN1OIVWMPtK2ChUgUlMk49X5cctHvXR1i7zjOy06/ms+vHu1rTs7rt+uyJl7JWHLntdZ
X-Proofpoint-GUID: ORR0uuB8rJN9Ul0gUgIJyXcrz3gvzIml
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=932 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180135



On 7/16/2025 9:05 PM, Dmitry Baryshkov wrote:
> On Wed, Jul 16, 2025 at 08:50:13PM +0530, Pankaj Patil wrote:

>>
>> +
>> +static int tcsr_cc_glymur_probe(struct platform_device *pdev)
>> +{
>> +	struct regmap *regmap;
>> +
>> +	regmap = qcom_cc_map(pdev, &tcsr_cc_glymur_desc);
>> +	if (IS_ERR(regmap))
>> +		return PTR_ERR(regmap);
>> +
>> +	return qcom_cc_really_probe(&pdev->dev, &tcsr_cc_glymur_desc, regmap);
> 
> This is just qcom_cc_probe();
> 

Will take care of it.

>> +}
>> +
>> +static struct platform_driver tcsr_cc_glymur_driver = {
>> +	.probe = tcsr_cc_glymur_probe,
>> +	.driver = {
>> +		.name = "tcsrcc-glymur",
>> +		.of_match_table = tcsr_cc_glymur_match_table,
>> +	},
>> +};
>> +
>> +static int __init tcsr_cc_glymur_init(void)
>> +{
>> +	return platform_driver_register(&tcsr_cc_glymur_driver);
>> +}
>> +subsys_initcall(tcsr_cc_glymur_init);
>> +
>> +static void __exit tcsr_cc_glymur_exit(void)
>> +{
>> +	platform_driver_unregister(&tcsr_cc_glymur_driver);
>> +}
>> +module_exit(tcsr_cc_glymur_exit);
>> +
>> +MODULE_DESCRIPTION("QTI TCSRCC GLYMUR Driver");
>> +MODULE_LICENSE("GPL");
>> -- 
>> 2.34.1
>>
> 

-- 
Thanks,
Taniya Das


