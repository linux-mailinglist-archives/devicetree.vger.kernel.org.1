Return-Path: <devicetree+bounces-165721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C1BA8530D
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C4224A56CA
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9846727CCC3;
	Fri, 11 Apr 2025 05:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pi/no4Xy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D6827934C
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349367; cv=none; b=UrN2HWvW2gplLG8HeqpMXB40Z/dEDrAfyGWn9JTD7gZpGZwPLK4eYpfbIa6O2IUAtfRtAIpR3DEtKlZeVmMbBZUiJcesK/XEObm671JG+fpUi3PxSwi9WUPe4vexYrIfAfKhtnFB1I++o7YyLFE2m64iTBHkOOV2Pit8ZpZj8JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349367; c=relaxed/simple;
	bh=TyvjaogtjTDx/T8QlFwk2AxVNIIPeTdvsx9AidCmtAo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XOfg8B/QarppsI48SJEq5m10pbKflKsnrtDLwBZ4Qtmjy2CkgqK9QSqG4eG7Dv/Seqzon5EqJDfWy8jujOYuHlDQeNDJs3eJWZpZV/9weeV5hOvQGM3G3rgsMHfyepKnReSCyycJpdJBXQsdQ/WYyAA3hAeU8T2sLq25tjOFO3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pi/no4Xy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B4V7vY018361
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KUbjZYN3IQWyjpUUVwIb4CXGeBKGLs02G7FDkNMNVZU=; b=Pi/no4XyzIyab+op
	Y5QgktvJ4g/CjERWmNC8zs8ybBEJW9j0H0w6niTth9tfQHuHpwZvraMS0sC43Dd7
	sBhk/scAt6SsfeUrGne0tJWjpd6Zrj6L0b33C/+HEukdCMHfwpHyW+RIc+4cYREe
	5xAMwVk0dWXFdYcg0hWan9GHY4ub2bAWajFoz9YQvmJzjAkKREUjH2r+YwHUXUGT
	xA01nTWZRJK1eDTfzCW32a1tUaJ51cgboR6jVedoL9KpfTLuUcziFwNsmkCExkHx
	SiZps+z8JACvKyJ1h63O5tIqdiZdjIwNxNm9JyH0rtcNIqiAyl6VFmHlIRoTd+uE
	/5wIBQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twtb9d53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:29:25 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7375e2642b4so1208026b3a.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349364; x=1744954164;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KUbjZYN3IQWyjpUUVwIb4CXGeBKGLs02G7FDkNMNVZU=;
        b=ABbxutXoWH0NpBkJ2F33gm6/piJTG0wuOxuZ1OTvvtwjppoWndNv5KHWvA3p/vzrY7
         PXw7QqJKsU8eg8dfb/BtWgGOHoL+mLoppPp4zCB/2nIM1w5L1S+b8ORl+8ozL80KQ9r2
         6SPiJj1o1UJPGdI4enZtjl21quc1XssSnDxuQ4oVbt5fJGf2PVxpF6jbUsIhPMlGPx63
         EvltPkI8DI91yIB2jRBExkx8ogwJiu9+T8sdcDfgZlF+kWd2l7yh91KLQRWzp2na1etV
         pDqEMPAokH60QLWyZ0JhLCVYeJlENrDiezC5LF6lC+sMv7SElSHo595FmcNpH186OJJ1
         XPmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwvJraDfAQCeip5SlPFWAKAFp4H3LWxI4oPqUngmlihxF7p1kfgJAeOnNE71x9eWJBT5NZpPKhn497@vger.kernel.org
X-Gm-Message-State: AOJu0Yx24psvvXTlvNL4KAuJFdxrrMqprKnd4ZXUDQV/Obh0WAwlKIeT
	UYpyN6q9emValCm/IXHPXKHEP6esxmhrgTgyv+7L/09l99TamaQzBPJcmKU07inK5kCNnBxYoJf
	DzoGIHy3JBhdzd1oOKP+QzWqRF4oYNsnmm+OywAh1+VBz3ZZmjeYDYokGI/ms
X-Gm-Gg: ASbGncvw94AgEZkK5p2IMbekt48rEhAhIEnVbfHjn97GXhc0XiND7ZWOWnqT/RsxaP+
	oZODXnj2C8mwb7pvESjj4TBv9U7h3/YRJ4x0UHO9ISRjNzFh6XZpFyaEWHKkvBq/7dFrgqDjBv7
	3lkxsl5Zl/43GB28CJuBPRTrXnfvxq+6IJoe3QgAHhg0S4d2dFNUq3vxaRq/s0Igha9HBqJhi9J
	JKQYkfRJZZSGHgUMRzTOsQH+DofTrHd59eHnMbgHxz4b0uotEE+evC9j4JQXkaS1xxVmorOldwr
	3LwKMP9LSaFwKpRyz4KPE4PXCUpRKgTm+ZQ7hdYA5+teiR/IPsHK
X-Received: by 2002:a05:6a00:ac2:b0:736:39d4:ccf6 with SMTP id d2e1a72fcca58-73bd11e6d4amr2204616b3a.8.1744349363888;
        Thu, 10 Apr 2025 22:29:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKdA+yoEfaH4SyvUyAodpSjhJ93TtNdrQMglLHoYzjAgSJgmykhbyYfCXYlFjunZmyz1dJbQ==
X-Received: by 2002:a05:6a00:ac2:b0:736:39d4:ccf6 with SMTP id d2e1a72fcca58-73bd11e6d4amr2204583b3a.8.1744349363309;
        Thu, 10 Apr 2025 22:29:23 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd230e34asm581481b3a.137.2025.04.10.22.29.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 22:29:22 -0700 (PDT)
Message-ID: <7ecc8079-1110-4692-a257-09c4ea2041ad@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 10:59:18 +0530
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
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-5-e6ec30c2c926@oss.qualcomm.com>
 <e02e7431-2e30-4e65-b04b-15fbb0bcd8d0@roeck-us.net>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <e02e7431-2e30-4e65-b04b-15fbb0bcd8d0@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 6-iDMWFAgVGMYWnF75_l8W-Hiy3nhwh_
X-Authority-Analysis: v=2.4 cv=LLlmQIW9 c=1 sm=1 tr=0 ts=67f8a8b5 cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=WtALBppYY-rU2wiDHIEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 6-iDMWFAgVGMYWnF75_l8W-Hiy3nhwh_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=914 malwarescore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110038


On 4/8/2025 6:03 PM, Guenter Roeck wrote:
>>   static int qcom_wdt_probe(struct platform_device *pdev)
>>   {
>>       struct device *dev = &pdev->dev;
>> @@ -267,7 +303,9 @@ static int qcom_wdt_probe(struct platform_device 
>> *pdev)
>>       wdt->wdd.parent = dev;
>>       wdt->layout = data->offset;
>>   -    if (readl(wdt_addr(wdt, WDT_STS)) & 1)
>> +    ret = qcom_wdt_get_restart_reason(wdt);
>> +    if (ret == -ENOENT &&
>> +        readl(wdt_addr(wdt, WDT_STS)) & 1)
>>           wdt->wdd.bootstatus = WDIOF_CARDRESET;
>
> This ignores all other error returns from qcom_wdt_get_restart_reason(),
> but in that function it generates several dev_err(). Either make those
> messages less than an error, or treat them as error and drop out here. 


Thanks for pointing this out. I will handle these errors in the next 
version.


