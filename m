Return-Path: <devicetree+bounces-182369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B25ACBF5D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 06:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4381E166F57
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 04:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC721F4165;
	Tue,  3 Jun 2025 04:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="epiK/rGd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2A672631
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748926236; cv=none; b=WOP/7KotYfz0LscMJ7rmR7x8t6nOQGLVekeQyDIqqczx/OFYWUcGNmzRzWZK/Bn4TUtXSnPLGu3q7DT57dt+mvhNC+sp2FsrQVPoZREDZjrDlxJ6IxtLOSZNcKzf7pHCe8Qsog36Ar8dkbzuBfJGPu2KI5GCp2C06NJ7jnCyKzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748926236; c=relaxed/simple;
	bh=EAWMMPXYQsq5FrA4pI/irtKbs8fNougcyOgPFx6H7xo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FIjG+lmkR9IbQKbfYlZ20tJZJc/oMSFYiiRP4iB2jCDRHVdrI0+cLpzEyU5aKYPYk0S9jTteQwHHZCAbo64N+ToIfWTIpG/GhR1KuWs/FIAuN9Pw31o9I7sd4iYSHAvhXrLVOezwUKcGSo5JqY3df0JVDurYecCAytwtB7BMZHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=epiK/rGd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5533o10o014092
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 04:50:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gPgbSgzbuSX+oCXLN0CPOpwtJsFOAf4HOx9xrqhDi6M=; b=epiK/rGdoF+xny/0
	VJrSdYTpZI0oBOJhhVEV/y/wJHUY9qTplfLc4k10k/oI1kd/9R8mILzYYOo8Ppty
	0AjbWAeuSK47RC5WicIbcnmA10rEPRr5L5HO1KLyli8N0XeCYi1Zran/TWNUOEdn
	lZh3fOdorweK1xT3wdQsTh141SiUnBmNnH+tNnj56wsOtY1mPiTokZVEFfWKT45t
	S3yDYKH+6Nw+OyFlTKs9t/ILZvcXs/BKhSOYrXDPxZhfKa/2AOx2wBiShRMYLW0L
	lFFOYCGR9/iWwdVhjnLfDd3kzrMLbSpww53M7ipNjzbImqdmzkRuBWNEOhIW4X0j
	7uptJA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471sfur3p5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 04:50:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7425efba1a3so4402762b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 21:50:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748926224; x=1749531024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gPgbSgzbuSX+oCXLN0CPOpwtJsFOAf4HOx9xrqhDi6M=;
        b=EuW4Sr2oB3dUYczXgUDylHVxhr5SWEBPdPe96djtS2Ru/h1etEaH9AG58r/Y7QKs9O
         LtACLjPTZxCk2o2QKImKKbOVTneo+6P3IleUeL7ufIGVNrvwbfYKqDXRQZkKNA6dtDca
         NWIIRIuZntJuGnHbSmyhuQ+Yxa3tiR5fEhcr/+BST1baUJg7l4u/yCDemyI7w+iazGUI
         D2np1ulJKwyyqbTEZO+5IYT29b+noTLPxEvk2ggFd0qC0SURJHoUadbg5sI+KRMdn8fr
         XbglKmjcf1hYVa6GDY3ij2gUTa+PdwkTRzcMtq4M8H/UPup4o0BzxJMXwGcPMGdyuQ12
         88lA==
X-Forwarded-Encrypted: i=1; AJvYcCVy6i2upiqJd6d7p+gCMbHXr99GDhw8jq5DjLqjDftIQmKGATNec7QMa3oIs9GB/MqIl5T+yLZSnOiZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxQa/EzU5CGYzz5EbrMEHLrKGrC/ZxUMt9reWvC0YwIa7Y3wNzb
	AKCk4tuUv1UDMBtVoLbcqcihPMWPgydiDKZgdsrK3aMOggOqqIsWoB77tAZfsBAEx4kaP+xqbH3
	cxNvPzy0X2/yET8h0WyCS8UzPVwZ7Qdp4mpXqvwYkxFQPMhnQgG8Mj+7gNgFj61M8
X-Gm-Gg: ASbGncupCAGSdkq3vvDDZlZ6nbsagIvDT01/Bpli8oqlnu6yhllc1hILDrxMcmu52U9
	jvPJtXmeQl1sPxhwi2BJ8Tzcm4moXw8h/zZxaVgElGDtizo+rgESChNs7wha2D3QvPEDfbwQGiW
	myKtT3wp1oNC560VXT2JeWmI/Ui6kd6xUMAssTHovZN3JcYDHx+vM0nTDeH/Qmq+mPzQVaFYv9Y
	TK6qNoXBkiOaHhf9TnXg6H+9fE1yWCrdpf3cj0KOw4BubLXzMojFJq2SLY8Q5FrLDjYf6VbMBNz
	9PF7eQ3a0NwX8QeSKJR/cTEdPUb21z4QjH2mU1r0mYNnxviyYDunXu2Ury58ri/yLSJwOLueiLZ
	A
X-Received: by 2002:a05:6a00:1a88:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-747fe0592ebmr1545684b3a.10.1748926224408;
        Mon, 02 Jun 2025 21:50:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/MNuXs73ZR7bdTTIBXIjCQZZHAjylXKanogS/OWyKFVp5YdY/f9egp4CsPahXdsrioevBJA==
X-Received: by 2002:a05:6a00:1a88:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-747fe0592ebmr1545650b3a.10.1748926223981;
        Mon, 02 Jun 2025 21:50:23 -0700 (PDT)
Received: from [10.133.33.126] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affafac9sm8492120b3a.112.2025.06.02.21.50.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 21:50:23 -0700 (PDT)
Message-ID: <cd2964b0-e28e-4ddb-b319-9b65fb78b73c@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 12:50:18 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] power: supply: core: Add state_of_health power
 supply property
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-2-9e377193a656@oss.qualcomm.com>
 <6oixvnhihgjucqaovkayzm6cpi35jfmtwmm67wa6h4nlmhr6w5@ggb7auvjzos2>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <6oixvnhihgjucqaovkayzm6cpi35jfmtwmm67wa6h4nlmhr6w5@ggb7auvjzos2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CY8I5Krl c=1 sm=1 tr=0 ts=683e7f11 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=vB8V-zSZfwPQ_sZj9vMA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: I67KzQJHo5XZ170REVi_31EHLwFINNoE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDAzOSBTYWx0ZWRfX8AxxgI+pKVEH
 utHPiLsAqgJ4KltKj9OqT+WOQTPcDIBuYFGsuuZXxhyaP6QPc9bkY8NuA/yol0nlBuI1MzJXucp
 nGxZ3GHE4qa+8xnhXr7BvrUo1SyxF7WckM23Od3+YYtKAf0gC/bCXb7nb0b27dKz6t4nBUKtXUi
 MjAaWftVyG905YAW/nSyddQz/NI0AL21Znaa0gXApkM+8HwDSeUqbfLc+KosHHpBIaA+G4ykMhM
 9QaT071UZAUtn6nkvmBNirFnn7XRfrzC9ay8QfylaY2ptqBqY/u1b8W5ElOSPns4Eo7ExE666G0
 UinSO/hN0+SfTspSkyWGUilE6jS492H8FPyijNX3nzorS1WcYzCswh/57SvpKl8ujuGDyLIa4g+
 ajjXl86a4OeqgAzWrR0czv2+gkm8sWZhHuCm2bMoAYupqquzAR1xpJKWVZ3ngsZFn+CGTz1F
X-Proofpoint-GUID: I67KzQJHo5XZ170REVi_31EHLwFINNoE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030039


On 6/2/2025 2:17 PM, Dmitry Baryshkov wrote:
> On Fri, May 30, 2025 at 03:35:07PM +0800, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Add state_of_health power supply property to represent battery
>> health percentage.
>>
>> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>> ---
>>   Documentation/ABI/testing/sysfs-class-power | 10 ++++++++++
>>   drivers/power/supply/power_supply_sysfs.c   |  1 +
>>   include/linux/power_supply.h                |  1 +
>>   3 files changed, 12 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-class-power b/Documentation/ABI/testing/sysfs-class-power
>> index 22a565a6a1c509461b8c483e12975295765121d6..74e0d4d67467500c3cd62da3ae0b2e4a67e77680 100644
>> --- a/Documentation/ABI/testing/sysfs-class-power
>> +++ b/Documentation/ABI/testing/sysfs-class-power
>> @@ -562,6 +562,16 @@ Description:
>>   
>>   		Valid values: Represented in microohms
>>   
>> +What:		/sys/class/power_supply/<supply_name>/state_of_health
>> +Date:		May 2025
>> +Contact:	linux-arm-msm@vger.kernel.org
>> +Description:
>> +		Reports battery power supply state of health in percentage.
>> +
>> +		Access: Read
>> +
>> +		Valid values: 0 - 100 (percent)
> What does it mean that battery has 77% of health?

I will update this to explain it better:

Reports battery power supply state of health in percentage, indicating that the maximum charge capacity has degraded to that percentage of its original designed capacity.

>> +
>>   **USB Properties**
>>   
>>   What:		/sys/class/power_supply/<supply_name>/input_current_limit
>> diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
>> index dd829148eb6fda5dcd7eab53fc70f99081763714..12af0d0398822ff23d8970f6bdc8e3ef68081a1d 100644
>> --- a/drivers/power/supply/power_supply_sysfs.c
>> +++ b/drivers/power/supply/power_supply_sysfs.c
>> @@ -221,6 +221,7 @@ static struct power_supply_attr power_supply_attrs[] __ro_after_init = {
>>   	POWER_SUPPLY_ATTR(MANUFACTURE_MONTH),
>>   	POWER_SUPPLY_ATTR(MANUFACTURE_DAY),
>>   	POWER_SUPPLY_ATTR(RESISTANCE),
>> +	POWER_SUPPLY_ATTR(STATE_OF_HEALTH),
>>   	/* Properties of type `const char *' */
>>   	POWER_SUPPLY_ATTR(MODEL_NAME),
>>   	POWER_SUPPLY_ATTR(MANUFACTURER),
>> diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
>> index de3e88810e322546470b21258913abc7707c86a7..dd0108940231352ac6c6f0fa962d1ea904d81c7a 100644
>> --- a/include/linux/power_supply.h
>> +++ b/include/linux/power_supply.h
>> @@ -175,6 +175,7 @@ enum power_supply_property {
>>   	POWER_SUPPLY_PROP_MANUFACTURE_MONTH,
>>   	POWER_SUPPLY_PROP_MANUFACTURE_DAY,
>>   	POWER_SUPPLY_PROP_RESISTANCE,
>> +	POWER_SUPPLY_PROP_STATE_OF_HEALTH,
>>   	/* Properties of type `const char *' */
>>   	POWER_SUPPLY_PROP_MODEL_NAME,
>>   	POWER_SUPPLY_PROP_MANUFACTURER,
>>
>> -- 
>> 2.34.1
>>
>>

