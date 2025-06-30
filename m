Return-Path: <devicetree+bounces-190997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734DAED746
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 10:28:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF5ED3B40AB
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 08:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FFA2405E1;
	Mon, 30 Jun 2025 08:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Np6/mk64"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF951E2858
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751272105; cv=none; b=JE9tsEUZoip8NvoRqV7A5VNXWj7Z04ToTkwU9CPw1IHzpVAdlYHPRpT045x1T6k2f7TNMkBdov8oxnXSpAo2ZRQY1xYKS7dbz/r0ajA207qjUdHwS/OsL1yn33RAUGi7TYNyMIOKp863WCqwno85D8dbnTAjDVxNNpXyTawol4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751272105; c=relaxed/simple;
	bh=opuEB7LyWEqgR61ttBKTDpTpAkIB9+/UeaBrxZSbziY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rf/1V6VUMVFQMwPnn3EcKYDBLC+Z7ewAwtjbhwVUQRxvZStTTBM5gEqZV8lK4nV3DoTbEd93Z5JvNQalUrpQvaK+KbYfrtnUFtufZyrQZius1dKdpbER5u3zDGrVWrj5y/Cm27OKlYJF2VHjAom7xP8cvX0dTuIplW7G4kVJFyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Np6/mk64; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55U8DOim025936
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:28:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vKpr6yzIcJB1d9WyXdee0CZFQ4Hog1591SCG7KI65o0=; b=Np6/mk64Wnssv3Zz
	qL236c9QdxAfqMiESBMSJ7eZ2BUw7Nfv3R6sDMyzXYZwdbZ9VpejQLHsN0czm9U1
	WKtvbvp/o80RDjV9fzdRFfyk/Db9r2jGWSJ04AyuYMq3Jra2WvIONRUEVYb8eE/N
	+ANgnuqGT4wBKeA+D4HJFKIdtKTUIQIZxtzjthPKhOUihLxF7b00uFsvNB6Yqgdl
	ZUvqhA+8yP5mzUuozDwxxasRXbjbadZGW5Egai9oin2jzU/fKCMEA/AaYDdQGtkk
	FouYeoUk+V2J4mExMLQQuF2YNgejMLbOUwMkZpF2+CJtKAz+WVU/xzrlMT2A9UAJ
	a9NuYQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64h76e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:28:22 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235e1d66fa6so39718515ad.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 01:28:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751272101; x=1751876901;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vKpr6yzIcJB1d9WyXdee0CZFQ4Hog1591SCG7KI65o0=;
        b=XgGRH3et+Z7HWFTFAs6+3uZRIMFaur+SKMGXdOP5oRKoxcWebIh6wtTTGtSu67HzEi
         xdoPfAdobnIHmdpYKc6JsedJBt9FNSfCCGxr4nLasrt3H2PHJQggtmSLMRt6nUXNgK3o
         qDj1pI7obh2mrL4UQzyhBu52h5TdV/f/Kxv6SRTIxHqT2j65n9G2I98sCBsCCWEjNikT
         En1oS5fHfymMzMKgJHyMgicBr+lQNOCZsRcGGfOxmGKkPC2uPWCeFRdpb+3GiyPMqfAd
         6ogLiJd8motUHNzxnn2Scqgxx1+dON4HPNz1G0u7qGK1DwF1e8o5Z4MJADmC05v545r5
         Q12w==
X-Forwarded-Encrypted: i=1; AJvYcCXaSivfz1qIUuPWnNYPJZsqkaF855BNqK3nXvlKR+1/iBrDCVRb3d0Hs+E4AlVbDQdOH42tZCBtC+Nc@vger.kernel.org
X-Gm-Message-State: AOJu0YznjgvQp+S5w0b1vfI9gTxGOz17ByoBc6ZyzJ1N1A9ozEaSIilq
	P96IxW9b9OB485T5jzhMu8ENUkG9tE+KofgBE0B87zCVaez0J18RXTPmb+6ZYb/WsW9lDAy6aDt
	ke4HlQHq8E0TYKfqOZ40epS1M/7fUSSd4nsRn4MOaSCBXfkRG1slwZ0MGUwM0z7Gx
X-Gm-Gg: ASbGncubPihraYfmSk6qGSfyjwb290QPkGCE4T+L0dm5Jw+Z9aGryzHC37njNRwhJmZ
	TqKSmJtr1MDBkSbiM/bmR3p2jL85xYBxUSVi6R/WBR6WE3SQatLGo7efk8m+R911g/INhoqwjyv
	ob1vUHoPDJiDVpT4rwsDqSPLlnsfKz89XneKWTO1MtEzP2/4tXiic3pmkMGlG3J6gXwPIquigra
	BETEUFAYEoC9KAvKz1xUB1l3UnYAVeWbub+wkEhB1rsZuiSdcmeat5F/wslEMvT6w8qGjUSajxV
	VAezXqzfxeTKoYSedG5QiahxxZG/rnfaNc02lLnKv4bf3+2rZIQqUCXbY8v3Cmz86Z/grA3zL0Z
	4NfyrniSXBJg=
X-Received: by 2002:a17:903:46cd:b0:233:f3df:513d with SMTP id d9443c01a7336-23ac4607b79mr203783815ad.35.1751272100781;
        Mon, 30 Jun 2025 01:28:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFpoJe/E22crPOG7XWE9BLjLycCr22wMPAkT8qjvh8z5NDNDo/Aolfr358a5ZWAnCeRRw7gg==
X-Received: by 2002:a17:903:46cd:b0:233:f3df:513d with SMTP id d9443c01a7336-23ac4607b79mr203783485ad.35.1751272100359;
        Mon, 30 Jun 2025 01:28:20 -0700 (PDT)
Received: from [10.133.33.109] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb2e1b54sm75066315ad.15.2025.06.30.01.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 01:28:19 -0700 (PDT)
Message-ID: <e9160bb8-2b5c-4c30-b60f-520decde851e@oss.qualcomm.com>
Date: Mon, 30 Jun 2025 16:28:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] power: supply: core: Add resistance power supply
 property
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-1-9e377193a656@oss.qualcomm.com>
 <b7m55sjc2rtvtelvez6sxnjvdostvxmfjhhsr4uxhyhh4bxrcd@xmioz2bsgis2>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <b7m55sjc2rtvtelvez6sxnjvdostvxmfjhhsr4uxhyhh4bxrcd@xmioz2bsgis2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=68624aa6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=N6g_Jt28wG8IcqWndf0A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjMwMDA2OSBTYWx0ZWRfX5Ji6LkaPr+Ar
 qqdHOl0TIYLbRhR1nmZUAOi3A+XyKdAhlZHggtFVdtkdWPGzQy1OMW66N3qiJ5HGo6EB66koZY8
 qW+Mm0zsAOljfGGerbRhonLhgAj6ht3kmp21wlan7k2jPSTN38SwXvDIDH11HwsJOlm/V0Jjxn0
 j6xuO9OuUWy0ZBuKelcFzIEVKku1+vlx1BMBOEjVlG1cIzf2ABCeVD4eEnoDvU5tG0eEi5KJJg5
 AfC3k81I90PNlq6dz1Fger7wneq2B26JCu8dPUk7Epbx/RcFwDeGny85fCRXYwFLWg4S9ios9jh
 F9C90WPMO6lBskRARDx0rlpZZAbslO0bGbStriJ2UWMdQGPRvupLpX331juw5nQi9piPVnyxLLV
 EJX4A8jo4N+ScYJMXtOwVmnXgunPPpj93DOVs7ooljFat9SjHZaoMPwTEc/g1JOs13GOohY1
X-Proofpoint-GUID: 0j441z8t2quY6vSSxSEA5_lDG4zcb3Mj
X-Proofpoint-ORIG-GUID: 0j441z8t2quY6vSSxSEA5_lDG4zcb3Mj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-30_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=999
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506300069


On 6/22/2025 9:26 AM, Sebastian Reichel wrote:
> Hi,
>
> On Fri, May 30, 2025 at 03:35:06PM +0800, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Some battery drivers provide the ability to export resistance as a
>> parameter. Add resistance power supply property for that purpose.
> This is missing some information and the naming is bad.
>
> Which resistance (I suppose battery internal resistance)?
>
> That is heavily dependent on the battery temperature. So this needs
> to document if this is for the current temperature or for some
> specific one.
>
> -- Sebastian

This is battery internal resistance calculated by battery management 
system, using the real-time temperature measured by the thermistor 
inside the battery pack.

I can update the name to something like "rt_internal_resistance" and 
update the description accordingly.

>> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>> ---
>>   Documentation/ABI/testing/sysfs-class-power | 10 ++++++++++
>>   drivers/power/supply/power_supply_sysfs.c   |  1 +
>>   include/linux/power_supply.h                |  1 +
>>   3 files changed, 12 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-class-power b/Documentation/ABI/testing/sysfs-class-power
>> index 560124cc31770cde03bcdbbba0d85a5bd78b15a0..22a565a6a1c509461b8c483e12975295765121d6 100644
>> --- a/Documentation/ABI/testing/sysfs-class-power
>> +++ b/Documentation/ABI/testing/sysfs-class-power
>> @@ -552,6 +552,16 @@ Description:
>>   			Integer > 0: representing full cycles
>>   			Integer = 0: cycle_count info is not available
>>   
>> +What:		/sys/class/power_supply/<supply_name>/resistance
>> +Date:		May 2025
>> +Contact:	linux-arm-msm@vger.kernel.org
>> +Description:
>> +		Reports the resistance of the battery power supply.
>> +
>> +		Access: Read
>> +
>> +		Valid values: Represented in microohms
>> +
>>   **USB Properties**
>>   
>>   What:		/sys/class/power_supply/<supply_name>/input_current_limit
>> diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
>> index a438f7983d4f6a832e9d479184c7c35453e1757c..dd829148eb6fda5dcd7eab53fc70f99081763714 100644
>> --- a/drivers/power/supply/power_supply_sysfs.c
>> +++ b/drivers/power/supply/power_supply_sysfs.c
>> @@ -220,6 +220,7 @@ static struct power_supply_attr power_supply_attrs[] __ro_after_init = {
>>   	POWER_SUPPLY_ATTR(MANUFACTURE_YEAR),
>>   	POWER_SUPPLY_ATTR(MANUFACTURE_MONTH),
>>   	POWER_SUPPLY_ATTR(MANUFACTURE_DAY),
>> +	POWER_SUPPLY_ATTR(RESISTANCE),
>>   	/* Properties of type `const char *' */
>>   	POWER_SUPPLY_ATTR(MODEL_NAME),
>>   	POWER_SUPPLY_ATTR(MANUFACTURER),
>> diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
>> index c4cb854971f53a244ba7742a15ce7a5515da6199..de3e88810e322546470b21258913abc7707c86a7 100644
>> --- a/include/linux/power_supply.h
>> +++ b/include/linux/power_supply.h
>> @@ -174,6 +174,7 @@ enum power_supply_property {
>>   	POWER_SUPPLY_PROP_MANUFACTURE_YEAR,
>>   	POWER_SUPPLY_PROP_MANUFACTURE_MONTH,
>>   	POWER_SUPPLY_PROP_MANUFACTURE_DAY,
>> +	POWER_SUPPLY_PROP_RESISTANCE,
>>   	/* Properties of type `const char *' */
>>   	POWER_SUPPLY_PROP_MODEL_NAME,
>>   	POWER_SUPPLY_PROP_MANUFACTURER,
>>
>> -- 
>> 2.34.1
>>
>>

