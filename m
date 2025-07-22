Return-Path: <devicetree+bounces-198744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C61BCB0E17A
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 18:17:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BE681C858CD
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 16:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9360527934A;
	Tue, 22 Jul 2025 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFqYFtca"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9B48836
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 16:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753201053; cv=none; b=u0TZ+Q8U8EPU8HMRtG811gbh6mg0dzMPnD7/dUT2zkx67dloaIjlgVlpJpN1JEgH4vbzRx29HTTokU+ShUZCOiEfFln4sip1/ItF46G/CO2Numm64nnv32gT0Y/sfsDyPiY6wafEExkoFV7YKqWs0NpRy/hKbvqoERZtADcd5ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753201053; c=relaxed/simple;
	bh=w4dpdLGtoBj80ExZtaOkPcAQU61LkwxmuI3CYMvS53c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T/sxXUH+irZPU3qSfZeF/vwV+ZQt2VlO9jR08ch06+UsmOZ5GHf1ia9U7ZGMPv8/EppYsNZK1wXg/+OgYZaYUj+/AaO4qR1euERcZNMUVLOWzFC9xgVfn2XBsIReRbNkmez1j7tK/BwRv/tfcwFmGGFA83/37F8WzWyGB4Onv6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFqYFtca; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MCsSUP021466
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 16:17:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9nCrpRv1Mz+G5QXSFlJHgBDudrIiUMOp8bzN0yyhpp4=; b=IFqYFtcaX36DN33z
	f3HQlKpeuDNBFnpQMHdxfv6Y7ay3qM99z2oZ9kwZOvd3r6kd3umiMUjGG5nYXiJ6
	x7bpCfI6TXNNDis7RbkPo9vSsgZcikqTK8VWuWttIXDNorCWGO7xPj5s98tj2yCf
	7uo3pSTDbmLEHM8a+OI0B7HgDWHaubFS1efZGCZohoJXQuNobWBy7L+d4CO4sGUb
	ou1nAFt5Z1qqm0RXzj9lcGtmNIj91oupeYr9Rj2znT8zsetyjurawRl/YKGWEFnD
	eHYNX+3X8ZCzFJ9AOXVliTRdoO33tr+713q9EMz6AA30nnnrz7EJW727Lo0/w8Pq
	cQrEFg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482b1u8prw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 16:17:31 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74927be2ec0so7080070b3a.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 09:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753201050; x=1753805850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9nCrpRv1Mz+G5QXSFlJHgBDudrIiUMOp8bzN0yyhpp4=;
        b=wpl5clFe14bWidgEXf03iYrMzgbqMCeRWhBKbYxIzEsqkrFcdnXajVM/gYjsOys4Vj
         LkLxyGpjlatMwBmlxNoYk/R5l9RisCTMofgimYQgdcwTaTgijXjpRFUQ5w4lzhpFS2ow
         5o7YgcmtFnz7LfFjs0clDFIcxQmSx9ZhEiJ9gEnk5vj1YVgGkq+YYvD3gZ1z95grNTkD
         zW81arksQnvYvuQjK57zKEJBLH49FKgmmZ1wA0KFZzx+D3NYoWjVJiN0TfcvMoBIlbtO
         AhEkJ9Ks0uUHSawe/xpRjjCtk/5GF0bLqdSRuBoJ0Yb4nwVy4uUvEHwnClAZ5TrQlK0N
         pAyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAK4eRZNzIWGG1EgRuHEO/efwDdziKzaQt0A4BmQAzK5p+HJ2J8N80MI2BndjEVmBQ1NJ9euyFUNVE@vger.kernel.org
X-Gm-Message-State: AOJu0YwvEiDUmZd3Cgj/cDTAPcVtuItLVYEcM4giQlBfZoUhFAXP/78h
	GDOpNQ4wjXJVcnY5kad2WUslPvlfbN6aja1GnCsag2+sxBpESWQlVGNlYCsJqOQWKHjKHE48f5A
	HOCOtxDyKGRhN1aMnpIafSqE2guEMw/sVEKiPC5xyOy/BP0FC8Y7TFcO/5LgxpGGh
X-Gm-Gg: ASbGnctxPbWsJf87vNr4ZWo2PkdJDV4cuWJ9rdwCEHYcquXzbxpxUadLEQdL1+Hvzl8
	SiZt/ZuwmculpRfzl9iTtLzaqiri/KgllaricrHDfw7MZR8CwGOun+LIKlO+OuDqvXrNC6fvRuM
	ZFJ72RHNSOp46OZfnYN0sHftthpAZXdzpbuoV4kNeY43CeZMopEH6rXCVVdFEr+pyZeltHBpAvZ
	qZnmUVZ1gIaV9QSVGSjOsjaaTUTcV6lGaYEATdnxGycNWqWklcThh71LYK4x+FYfEe+ZTowLwho
	B7djeBs6mJELrMNfYaqA9sMPn2LmmL1ImD0RNX9TbtC41I5up1Shz9GCNoF5JS6rn4Z0JXerFxU
	8/tvRgAI=
X-Received: by 2002:a05:6a00:3d07:b0:756:d026:10a7 with SMTP id d2e1a72fcca58-75725a89319mr35996873b3a.21.1753201050101;
        Tue, 22 Jul 2025 09:17:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFm++ZLMXmAYAQkNZgMSqeo/I7WJon6D9QhDXy0vQr/omCJkB9Jb05Hhf+LFMrk9yKOHj21Ug==
X-Received: by 2002:a05:6a00:3d07:b0:756:d026:10a7 with SMTP id d2e1a72fcca58-75725a89319mr35996814b3a.21.1753201049597;
        Tue, 22 Jul 2025 09:17:29 -0700 (PDT)
Received: from [10.211.220.100] ([152.57.179.174])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb76d5d8sm7849327b3a.112.2025.07.22.09.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 09:17:29 -0700 (PDT)
Message-ID: <13b6be8a-9cd6-e49d-2311-142f79c27328@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 21:47:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v12 1/8] power: reset: reboot-mode: Add device tree
 node-based registration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
 <20250721-arm-psci-system_reset2-vendor-reboots-v12-1-87bac3ec422e@oss.qualcomm.com>
 <33gq4iyx5jxrr6f5w3ctgy7l7om53jdvb4tmfmxzourhfvpc3t@cr5re2dab4tc>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <33gq4iyx5jxrr6f5w3ctgy7l7om53jdvb4tmfmxzourhfvpc3t@cr5re2dab4tc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LdY86ifi c=1 sm=1 tr=0 ts=687fb99b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=p0YknvR/5ooNN0yes+ndXg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=33cFMSo4UqZHzB7ybJ8A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEzNiBTYWx0ZWRfX2P9X7A1vZvNJ
 gNp1wJGbnTSaIa8X2vRJkHfOq7hc1FmO89mwqUcmcLJVOb9amkT3zVBKDQcpL49FkvSeKAW+9H/
 MxZehZQN+oCKH49Svwhu51TqW78x/zglVuv/b4c07TPT2RWqIkgD6vrSkL4DqXFqzCrMstFT3wG
 HJwMMcoqudgXRYTtKwEHoXHj71eTODi+rLkeXcgqhVP4vn279JTkO8CTzHVdf3Pc4juoSyzmCHs
 FIvMZOmSd13ZbYvUcuULk+hOa5vdayTKdEW+XVxczgI6CHYtQ5c8D+SdIOcA59BGRGnbyH+nH2y
 ihKE9N0KyMcG/5w+LLNHoMg2ByhfTBh6Tck6oSnIX0dtgTYuDcEt5JaFEQB1EqQyl3mJvqV4IsU
 rxClLl7J/TAxdF6aarbjA+uzGI35ZZ9T76AZHm/MVdXNjYFyQQmhiRegmAD5W0c5R4hSB6eQ
X-Proofpoint-ORIG-GUID: uJaUjuy8ymbKS1j7IUEHMFCai4dj_XYo
X-Proofpoint-GUID: uJaUjuy8ymbKS1j7IUEHMFCai4dj_XYo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220136



On 7/22/2025 3:06 AM, Dmitry Baryshkov wrote:
> On Mon, Jul 21, 2025 at 11:58:48PM +0530, Shivendra Pratap wrote:
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties and the device pointer for logging.
>>
>> Remove the dependency on struct device and introduce support for
>> Device Tree (DT) node-based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 45 +++++++++++++++++++++++++++++----------
>>  include/linux/reboot-mode.h       |  6 +++++-
>>  2 files changed, 39 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index fba53f638da04655e756b5f8b7d2d666d1379535..5dd3f06ca88cb28606d9fd2100ce03383c14d215 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -3,13 +3,17 @@
>>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>>   */
>>  
>> +#define pr_fmt(fmt)	"reboot-mode: " fmt
>> +
>>  #include <linux/device.h>
>>  #include <linux/init.h>
>>  #include <linux/kernel.h>
>> +#include <linux/list.h>
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>>  #include <linux/reboot.h>
>>  #include <linux/reboot-mode.h>
>> +#include <linux/slab.h>
>>  
>>  #define PREFIX "mode-"
>>  
>> @@ -55,7 +59,9 @@ static int reboot_mode_notify(struct notifier_block *this,
>>  	unsigned int magic;
>>  
>>  	reboot = container_of(this, struct reboot_mode_driver, reboot_notifier);
>> +	mutex_lock(&reboot->rb_lock);
> 
> This one should go into the get_reboot_mode_magic() function, otherwise
> it's not obvious why do you need it here.
sure. will update.
> 
> Also, please split mutex addition to a separate patch.
Ack.
> 
>>  	magic = get_reboot_mode_magic(reboot, cmd);
>> +	mutex_unlock(&reboot->rb_lock);
>>  	if (magic)
>>  		reboot->write(reboot, magic);
>>  
> 

