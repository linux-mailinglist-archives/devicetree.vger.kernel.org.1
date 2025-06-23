Return-Path: <devicetree+bounces-188644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A52F5AE477D
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:54:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BA9A444057
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5EA256C87;
	Mon, 23 Jun 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GfDyx9IL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006291A4F12
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750690169; cv=none; b=UvV0r1UAKw8T2Yg6mdBpZ/YSeuzHCGHw9ug+HKi9/sm7BZyGITGJgAsNeunT+gwJjKAGQzGcGSoc+p2OJoYpjQVPPuunYe2MVyJiYzPUNsxZAAKtenaloRjHQlBIWuHBrCcHU0xxz0MgCE9ByJa2P7ndA62xCdRA7J26c1g92ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750690169; c=relaxed/simple;
	bh=h2YybH+XRgDnI2PHptBq1+7EEBKWY5/FnF6uBAh5gYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=umaGI1/vWbxHwat+xius0H6g7L+EgsQB+Ls2Us9VjR0MUPtF3yxkDdYyMcSqZRfe6Mnvm191tIx/y/uW7YyLgLOxgKuVJ0Xib87t3YopQ0G/O3OnRCw8gVcRhsE7cLOACXOsM1tVI7qafHahN6KjL13Zmilv5icqMFeFT5YbYNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GfDyx9IL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9h650015282
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:49:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bTeNRly5GELRCVnD8QU3PlAAS9wAsvY6SiSyNqNSSxo=; b=GfDyx9ILWf39m6HL
	y1ENwcnQaE5R7SQo+V/zyLyL0xeZBr8C2CjbAp0RGLq4wnJT8vNrCEDIF/QBeg6E
	y/Ya+cbQ2aCwTtikBY5imUs3qtd1vGZ3LVBTaNw13rz67eltGfeD5TUfAgPYC+PZ
	Nxf3CUEa7HMXznO+BG9kAbcOeVMXxlKee1Nsl+dnsm3ACHJ17QzCey7QObKNQ0Hv
	zkFj2I/5fyMEo5tiLJ9MOy91dLKgYPkz40oMwwBgnr2zhHdHh71wjaW7qO+xqPua
	CmJStcHhP+w452WBj0YX31XMUz/8O7vbnsH2ZwhpgXnq/gt0/LM5qkCapkqpl8zH
	VnWE8w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4javw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:49:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a5a9791fa9so14069921cf.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:49:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750690166; x=1751294966;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bTeNRly5GELRCVnD8QU3PlAAS9wAsvY6SiSyNqNSSxo=;
        b=eq6nFDPQWuZCJpcADdiSaNqPEK3FPgoaIDHzDAqa2dakAARoQDe9QeJMvBgVyiY1ev
         h0cEQxYZru457KFGYn7TrjLiXm6h6vfJk6H8A7DTELz79ixVnUEFQPhfv1pqMhJKoj8j
         TNLTpaKZ/6ypFTwXf9piHgdBcBw4EvdlRtFNYLjxlKieJgr4QXTnOmdwmPIV3vjeyWU8
         GyDHwuK2avFmSls+wfHGc0D7cTG7EjsztsEJBSXUQuB+ndotGD7eJ16Ko49wPt/ZHx+P
         MYa8VlHN4CDd+xnWolvfJweU3umSGakxGzIL5irJLhvGecDe43HovXRZEdikFfo7jQg6
         jszg==
X-Forwarded-Encrypted: i=1; AJvYcCVd3t10JhWXYhlWpXlv/B3BeSHSb1tng3J9M383l8VEh+RqGcwuET7ZpKyTxq2Qmyi7uSvUkxz5rgc3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp012kqAlS4qk0NwWwDNmdIHGTtN5zgs4nNEE1jH/5uBoQlbsC
	etJY6+6U2iYYa3YEHvh1kSubk0IiXqdTGYeC8OQgShAAdE9KdGNXQVmQ7ccWB6EzB/ef0Wu/Mgq
	mUxKwpqnLkLk92fZSP+tPD1z0lUhalMT723G56bH6q5q+DsXTKl9+KQLmaZhd4DrJ
X-Gm-Gg: ASbGncteR+YVwPCAmiw+calJgmK8oNGwdJCtz+4HBoFWpFiApf9x/Kl1cJ82HN0SFu8
	U5NeSpsVNWDBVzAVfBNzkS5DqeUuulx6E7Rp3qYm1U+IP3lm34KE+5F6smkt8jOQx67gJ98gGrn
	qP5F1FJ4l6kxX1OTinv2UoNxbkeQLXUV3dgyXB6yGYhCmOiChOq/QyQFkKSiXb0deY8+/tXx71B
	wMcyuFmlXA+j4v/U7LoUW+2r7EBZ0kiygWZUB7QOnSCVFb9T596pmXGap4ooEM4i7iHJ31WJWWm
	QKVaIHimeQgfFvaC9S4nFzeWCQeYd56WmFWIkTMOqsJCsbQQ9/WWho6JD3n0xtvpzgyHwcKoo3p
	Fjic=
X-Received: by 2002:a05:622a:13cc:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a7ac3ce0ebmr4232581cf.9.1750690165904;
        Mon, 23 Jun 2025 07:49:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFq4iUMxAEsWMxXd+QwjHQmfB5D+jlVT8b0sgi5UmOplNqnAMPZZcGLJGamO0dbGXTtbT8lA==
X-Received: by 2002:a05:622a:13cc:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a7ac3ce0ebmr4232341cf.9.1750690165381;
        Mon, 23 Jun 2025 07:49:25 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053edc0c8sm730875566b.64.2025.06.23.07.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 07:49:24 -0700 (PDT)
Message-ID: <2a37d3f0-a3f4-444d-8166-f85888a27308@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 16:49:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
To: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-2-6e8f635640c5@oss.qualcomm.com>
 <aFloifxONXnQbVg6@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aFloifxONXnQbVg6@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=68596977 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=mrUvwfk0kWqCIX3n2FUA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: JFg6SF-P3M7pTSiToBVxK8QYizs0m0sa
X-Proofpoint-ORIG-GUID: JFg6SF-P3M7pTSiToBVxK8QYizs0m0sa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4OCBTYWx0ZWRfX55G+/gbuEjoW
 fDdtXS2TIvU5MU0KtQEhpCw2r2Egq4xt1yEyEgxLjCEcK+gcrP8mBt54G75eJSzzhO9colIWaY7
 6uCiAr80LeMZuFfWvAXGQul8ea7pXldZzdwgYrYPeZGlhiEPSj5Sj5PcbLwhXZGH/gFzXqQc/mw
 9KmNsJVNQ0cETSbm88dghWXAU8PjF0hr6AykUmfMt/qpfjWxsMlbbwBZ/1OT+yDeyMUyoQl5ciC
 JgHiByRuypj8R5cX3BCO3DMBZSCewF5Y6Za4ve9mlNRrqROq/SJ38ZOxQ+qYIl0wRZfLUprIPh/
 djgKDIMJO28lXe6OcZ9SAhwEoG7Ytl3pYAK5UNCbVi/0ebbhmeMGoT486SN8wfYGJUuKHjsCJZv
 ozzQj2RDoe23rvOADVWtQKH57hcBw+siXoyK0FSPhsc/a5hdmcbsCWjgodwwmDDZc7zg10oU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_06,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230088

On 6/23/25 4:45 PM, Johan Hovold wrote:
> On Sat, Jun 21, 2025 at 10:56:11PM +0300, Dmitry Baryshkov wrote:
>> For some platforms (e.g. Lenovo Yoga C630) we don't yet know a way to
>> update variables in the permanent storage. However being able to read
>> the vars is still useful as it allows us to get e.g. RTC offset.
>>
>> Add a quirk for QSEECOM specifying that UEFI variables for this platform
>> should be registered in read-only mode.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>  drivers/firmware/qcom/qcom_qseecom_uefisecapp.c | 18 +++++++++++++++++-
>>  include/linux/firmware/qcom/qcom_qseecom.h      |  2 ++
>>  2 files changed, 19 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c b/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> index 98a463e9774bf04f2deb0f7fa1318bd0d2edfa49..05f700dcb8cf3189f640237ff0e045564abb8264 100644
>> --- a/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> +++ b/drivers/firmware/qcom/qcom_qseecom_uefisecapp.c
>> @@ -792,6 +792,12 @@ static efi_status_t qcuefi_query_variable_info(u32 attr, u64 *storage_space, u64
>>  	return status;
>>  }
>>  
>> +static const struct efivar_operations qcom_efivars_ro_ops = {
>> +	.get_variable = qcuefi_get_variable,
>> +	.get_next_variable = qcuefi_get_next_variable,
>> +	.query_variable_info = qcuefi_query_variable_info,
>> +};
> 
> It looks like the efivars implementation does not support read-only
> efivars and this will lead to NULL pointer dereferences whenever you try
> to write a variable.

There's efivar_supports_writes() that is used to set the EFIVAR_OPS_RDONLY
flag which then sets SB_RDONLY on all efivarfs superblocks

Konrad

