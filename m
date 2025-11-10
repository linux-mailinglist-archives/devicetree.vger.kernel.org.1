Return-Path: <devicetree+bounces-236744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F3C46D80
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2171188FE87
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D92F030F800;
	Mon, 10 Nov 2025 13:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YSjH+mId";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SHCpTg/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C4303A39
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780817; cv=none; b=cdIW1Kq7ntInkwt4LDf6sGvRiUMT+tvHGK/vFIJNeYIZ57pqGqXftNuUyiMzwjUqSoRSGi39D1TltMSS1HpZDcSqlzhb8a35fUxRib8oW6m1z/aGcUyltJWxePrYHYa4UAiFDoHGT4j13SguuPmRJQnsQAzNdkBMSqSftTRi2ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780817; c=relaxed/simple;
	bh=9VScjyjKud5P25axVXhej/7B7c/JyF+EhHBfcxj2J7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VLXLZ2KhQmNpKcMVPZXRBa6pVKa4cVHEjvmtSkW9/2kFf/R/kknrUmiM0PG+2Q19w4MX5dYeZfhzIMnCthk4GHSWM5ivbCvKEHApiA0ug6VjGEY+if4zXg6B7J8lfTk0W8yj5PcvMec/u+Ue3k605/EtB1QY5lg6epyFyq/dWEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YSjH+mId; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SHCpTg/B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA7hNCn2861413
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:20:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aS5NUTTv3FdBLmHBPmYyttDzcW9cweq8QpTX4mKQofw=; b=YSjH+mIdOYFs2Mxh
	eEgTOHYlQYj4B2WIumQaiocY59afZzEYa2jfmodQal7oMbx6Hz1QrR8IEju6v8CM
	h2GI/W0DS8pzYC6D+qyGES+HZybkMClZJN6D0cnGN+ntODjCUNeyb4xyu4o/pmSL
	LXl4TEsqL4EsHk5OCgcoI8mIdaR5XOL5O2kRyvu7Du3aQV5/7CovPXl+UhUyJlD/
	6uBEHMs8lzPZvhaWbwxO2aXey2Bjql001ayuVH48S9vf5rbiGhHVU+7PApme7Faw
	jzavIpXn/moLfI8hNDLQGysbglrqgHDOlDGf68V723uHjEnrfkgeFdL85pAUcIJe
	gkoxgA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abbwe12uq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:20:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b969f3f5c13so2932792a12.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762780814; x=1763385614; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aS5NUTTv3FdBLmHBPmYyttDzcW9cweq8QpTX4mKQofw=;
        b=SHCpTg/B/Ovgy7MAF/ifTXbqzpVi4147k6xk0M2kEfBo603ivOVbGWCBY06mVXl/Xq
         zTSgBq1Nw1RT4A7DOH/AogKFimOhzs7R1xkEe70KjVJkWGxrPbYyxgg9kQWmoMTNKG7I
         aEXPr39i44K4rIOs2LC3ap3srKh86oLNtkkBkFNNGGPBu+xpX7iSXnIfNSoNk2lTGbZ0
         iYzjgvhBLcTmMYoBlambL1bjB2DC0/EDh5gEbmxnODSduBAnfQZVPTwhrGVMdJtZ8n37
         eE6YBx1yribtfXBIn5gfcbFlPbQ/EM0vj21/N0lCd7QJE3g9x9UtJa5gZhzIgCep0qFw
         zLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780814; x=1763385614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aS5NUTTv3FdBLmHBPmYyttDzcW9cweq8QpTX4mKQofw=;
        b=m05u5J+uDIU+qAljwlMMOf2KQrmBC+xA8+4kjFjvywV43YNAjM/u81K8sApDuoi20N
         IUmdZtnZcI6QSgovRNvMlQ6e4kqhWd9/xMWEQ412OWqfCG6C01koBvU8XkcfX3xkrItC
         b93F220lofbFJNkZ9JlYjTf3jSBSi/mrTKYbGO2GFCq9UrOoangM3d8G30m2A6YPmJbO
         mFVrc8tQV/6cv227gF6CchgObyIdOe5akGngqW+Mq9eyWcu2yhv25Ot8IV3HIKlyERHF
         GMYq/N3zQlv3iqSyf6+kYKguBNhu7WMSvRIhF5FCNeDJd4CeSkAPO1u2rknToAcrg+mY
         msSA==
X-Forwarded-Encrypted: i=1; AJvYcCWHxgVHt0ztluq+CEpZYWhtdzbLfBss3Ep6oi6ElMMhlH9d4MstccIqBSXJzjdEZieExl10urf+ZhEx@vger.kernel.org
X-Gm-Message-State: AOJu0YxG5GZ+MaGAuso1c/f8/G/8WSINhN/b6xqL4QLZaz7w79ElVQTJ
	N3kakmFNcsq7Z8mQi9bH/QMG3iwHbhM7Vy/smpEwPHGVXCAlWudbDte1hsoZI9nrRBHyrDAtcNL
	N1Bxtdt5G8pEVnGMF9r8GcTWQrqeIhy1hiyC3aHVSkiWTTISFKA5REyI6HbNViqkA
X-Gm-Gg: ASbGncvz+3998oKItZh4XXYSvPHTIixUpKYfBE7B0Qz7QUFFOkG9Rvbzqv3kio6f38s
	qxfHWKhng6I99zFyaSXeSW25AhoVyhQuaO83WJ3KEq27Tq2ZTE2K0DnQOj+vgs0UmpfErUn4q+q
	dgssBuGZEa4mySwzNvIQBLOKGsTGHLfLwYbPghgTZULm5yh+jdR9smKpzYTtl9bacz3pO+DtZnW
	UnTg7bRUiEaXszr4VHg4KmqNmnM0ncjkWZB49BeJZnuGikv8KV7ftZBReO+pNWWJ4PIMThoigve
	SlNNZ+eTjit8sQCT6vIVb8Z+IiAY8vGhDXfCFWbN1kbQZEzMthsIF4gJ6Xezp6SMd49k78Bl1Lp
	WTPMkN0kuC+C/Xnn4Gp+bYFlOA0dol4rD
X-Received: by 2002:a17:902:f690:b0:298:321b:2694 with SMTP id d9443c01a7336-298321b2b47mr16561015ad.19.1762780813068;
        Mon, 10 Nov 2025 05:20:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTU/9CTN1kUz0aU6N4B5Am7ZyLyMmtt5oyD6FCGHb0vg/r8pz70jik7u/krNQAcxQRtx7PiQ==
X-Received: by 2002:a17:902:f690:b0:298:321b:2694 with SMTP id d9443c01a7336-298321b2b47mr16560465ad.19.1762780812519;
        Mon, 10 Nov 2025 05:20:12 -0800 (PST)
Received: from [10.219.57.23] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5c72esm145613585ad.33.2025.11.10.05.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:20:12 -0800 (PST)
Message-ID: <c3dc392c-eff3-199b-c047-7fabe155ae98@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 18:50:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 01/12] power: reset: reboot-mode: Remove devres based
 allocations
Content-Language: en-US
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
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
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-1-46e085bca4cc@oss.qualcomm.com>
 <20251110130159.pzfmh7mr3p7xz5o7@hu-mojha-hyd.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20251110130159.pzfmh7mr3p7xz5o7@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Eqh9ZvvE4VMq3keWG-KKSFxzqw5Rvsmd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDExNiBTYWx0ZWRfXzAnEIJwDNgzF
 6bOHSiM+9cXaR+YJNajrwFDHXuoKEp9n8r/W1DGJ5889Mto6FRBxdICyB5zbC4psTDBF0DR+TGp
 z/rxxs4krQc3MKLAXzoKuvDNbTvoyQCFN9Xkb3uHQbxtYtWi2tJeM/yQk5heQyEHr2uH5Ehwkle
 8pQEDguFzOS3v4iaosNtfW795Fzcq7z0xerd87KRGPhnEL/CO8qIfz17oZzhutNyj1dl9FuRPiW
 Xs3uwSDtGayxqc2Vssa9J7mAdIMWK9ZQddjhvYDfL62gUuin5M1Fdhp2o78qqXW7VajCZ8owrkZ
 uJYQ1kgFCVDNR3Qiq/3u5GPe9vkisYfbjcINLQHkSZrZOXcSlU+nxOL9/EKyeiR1fwzZ1qoCCcZ
 pDbYok6OfsHNgAcOkPIR4V0Ww5dFkw==
X-Authority-Analysis: v=2.4 cv=GbEaXAXL c=1 sm=1 tr=0 ts=6911e68e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=otca4u8OHQj9NKxAAEcA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: Eqh9ZvvE4VMq3keWG-KKSFxzqw5Rvsmd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100116



On 11/10/2025 6:31 PM, Mukesh Ojha wrote:
> On Sun, Nov 09, 2025 at 08:07:14PM +0530, Shivendra Pratap wrote:
>> Devres APIs are intended for use in drivers, and they should be
>> avoided in shared subsystem code which is being used by multiple
>> drivers. Avoid using devres based allocations in the reboot-mode
>> subsystem and manually free the resources.
>>
>> Replace devm_kzalloc with kzalloc and handle memory cleanup
>> explicitly.
>>
>> Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 30 ++++++++++++++++++++----------
>>  1 file changed, 20 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index fba53f638da04655e756b5f8b7d2d666d1379535..ac4223794083f36960b2bd37a601b7e1f1872de5 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -3,6 +3,8 @@
>>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>>   */
>>  
>> +#define pr_fmt(fmt)	"reboot-mode: " fmt
>> +
>>  #include <linux/device.h>
>>  #include <linux/init.h>
>>  #include <linux/kernel.h>
>> @@ -71,6 +73,7 @@ static int reboot_mode_notify(struct notifier_block *this,
>>  int reboot_mode_register(struct reboot_mode_driver *reboot)
>>  {
>>  	struct mode_info *info;
>> +	struct mode_info *next;
>>  	struct property *prop;
>>  	struct device_node *np = reboot->dev->of_node;
>>  	size_t len = strlen(PREFIX);
>> @@ -82,29 +85,27 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>  		if (strncmp(prop->name, PREFIX, len))
>>  			continue;
>>  
>> -		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
>> +		info = kzalloc(sizeof(*info), GFP_KERNEL);
>>  		if (!info) {
>>  			ret = -ENOMEM;
>>  			goto error;
>>  		}
>>  
>>  		if (of_property_read_u32(np, prop->name, &info->magic)) {
>> -			dev_err(reboot->dev, "reboot mode %s without magic number\n",
>> -				info->mode);
>> -			devm_kfree(reboot->dev, info);
>> +			pr_err("reboot mode %s without magic number\n", info->mode);
>> +			kfree(info);
> 
> This as well could be avoided if we move the above memory allocation
> after of_property_read_u32()

ok. Will re-order the code to avoid the kfree(info) here.

> 
>>  			continue;
>>  		}
>>  
>>  		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
>>  		if (!info->mode) {
>>  			ret =  -ENOMEM;
>> -			goto error;
>> +			goto err_info;
>>  		} else if (info->mode[0] == '\0') {
>>  			kfree_const(info->mode);
>>  			ret = -EINVAL;
>> -			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
>> -				prop->name);
>> -			goto error;
>> +			pr_err("invalid mode name(%s): too short!\n", prop->name);
>> +			goto err_info;
>>  		}
>>  
>>  		list_add_tail(&info->list, &reboot->head);
>> @@ -115,9 +116,14 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>  
>>  	return 0;
>>  
>> +err_info:
> 
> free_info ?

Ack.

thanks,
Shivendra

