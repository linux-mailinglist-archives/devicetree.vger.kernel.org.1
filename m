Return-Path: <devicetree+bounces-173087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D1AA7698
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF37A1890A25
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9A525CC76;
	Fri,  2 May 2025 16:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aB/aR1F1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC5125C818
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746201695; cv=none; b=qrpGcUZq2ul63BKAXzk79iewWl2+h3Tm5NHvt6T8LJ/C5xn9ic0Pq24kiLGcTqmmCgKXWia/J4Axnkw5my7iKjepNUkIwuRcy2jVAfFUqToTWTQqoURNh+pgxpgo/nB9z3IwdwQUWE4B3W2C7dT7uNPBeF6XacPRDPDHVbubzXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746201695; c=relaxed/simple;
	bh=oEvN69p8sBgWkmJUdXqCwtQw+r14F79DPd3s+SqCWqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pPSYwaGXH75vPRGjR3QiYAn82QT5AkXY27UAhesVr21tOVtg7l/VKUiLaV/SoZSxd8Cl7HJ/Q6KQ9M+lXnIj2tx/Fm6TxXfHbtiNwB4YMkZ4hDO+pxnMXhjPhQBryKlIni3uQsp0KCgXRyP8g5sNqy53tj4Ui3x9hzlnZ5N+vHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aB/aR1F1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542Cd1qZ016233
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 16:01:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YoReAk4HgTq2VsfM4ooMcOtk4AFKsH6ALJtlrQXG0fM=; b=aB/aR1F10eANzjIY
	sR/ixTlWHd0ANoXvrWUHjtGL5eEj6dlk2O/HnenQs91SuOQ1HXgsQVQTjrL+ZmcJ
	DbT8YyFZ5lfpBVEQ2tcW1OjZn8zRX1GnnnHrBBPjhxTazhNz5rkRsnozaGIAbNFa
	PVUtrTTQLlrB8dY2lqWBWenm2pSph9wRFx74NSpFCDAkU82dYF9wMgBk5yDdUf19
	gAfChMax23Dtdy948wf98TVgZumjMKbpJaRwP2ygd8CV6eklO3W6OUs2XYFAtibs
	3ghT6Uie0Gz1zxDj/3rxRU82exkvGe/HwYUuNVGLAbANKYP3KW1ravUBveUz3yaT
	F58p9Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4guaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:01:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-22650077995so34534215ad.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746201691; x=1746806491;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YoReAk4HgTq2VsfM4ooMcOtk4AFKsH6ALJtlrQXG0fM=;
        b=o15CE/XfYntPUUp053EYet2SK6Ye7ASg6+5iH/yjUXynr9AsDBDYtDeEqKnUGHXiLK
         IHoT7j6R0um60eKlu++RaFspat0Y0mpwlfYJadQyko1uC9PVrEqR+yGi/kfQ0dJPCeqn
         UHJr4iM36IQNxniaY/GxU+/L5G2m8jJk/wDXnlJZalvjMZgqz5c47vwwlikIwQTBqO8U
         O7+bqmprrh4VqmL/T6JHUXEu39Yiqs8CWZDOz9HaFlcck19NUcmlTs6kTU/p+GqQCyIg
         FAIhZT+8m/RUVREc2yanAWWmA+bw8ziLwuY7DIlwyl1WZQ38vvmfIGaK3gYEXPD42cXY
         spmA==
X-Forwarded-Encrypted: i=1; AJvYcCWuCU11Gdr/+B2cHDATf0IMBw5nIsFq854SbLHN2GxBbOSTuJpirnjY/aU9FY9F/+Ph5vAlUaWrLcGy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1W2PjxKKifQwLhV2OGS/8gThHa284ZeZI/mb3P8bp0U9dd03R
	NphGt71tPSyW56K1gEK0ZaQbWHKYQ2Zaqu29O2L2U5nO1OgqMG34hYY3Jy7bfYWyNNUNF8jdQ/C
	a1OxWHi+oCztZkBF8+2c4I1VvWVWIXR7d5bELVOuiZSpcCM7oDU8DOW2lARMe
X-Gm-Gg: ASbGncs3e/WhXhEDgLsFfZ8hY5oj3qs2eYwpCzHHJ+EptkfUbqXaIelfqBGIaQSswuR
	grb2iq0x/MFH2H1Zfjf8gsc/DAgAjI4jVhmN6GsNRkhoLJgQ+7MLaStTNOum9oj8K3X+gLNrdGn
	4JA/ykXy6C+ZWo7kQNeoHjl5/ExS+deQTqheJsug8BEvGwHWsHB6T9eIgwW+Q5/gsMQFui8ED3K
	OC99r8FBEklvbShnfWagkl7SKl8djHZItuRjiuapdnhKGObXCI7eeXNOXVKByTmaD+fZZiTu35B
	8H7dZ4Aj7nefMSYS/y2uZz/2IlEP2WYcjC29cldeHlLR9zbk0VM5
X-Received: by 2002:a17:903:3b86:b0:223:65a9:ab86 with SMTP id d9443c01a7336-22e1031f4b8mr53003015ad.12.1746201690565;
        Fri, 02 May 2025 09:01:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErV0e0vKI/fgoke9Y2Vn/UmFB0sglBHDOVAnYcG02t9Gkratp9oD7qJCWDutzkAvG97npa/Q==
X-Received: by 2002:a17:903:3b86:b0:223:65a9:ab86 with SMTP id d9443c01a7336-22e1031f4b8mr53002545ad.12.1746201690057;
        Fri, 02 May 2025 09:01:30 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3920e67sm952740a12.7.2025.05.02.09.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:01:29 -0700 (PDT)
Message-ID: <6d8f31ed-daaf-4ba2-9e84-227ab798ec5a@oss.qualcomm.com>
Date: Fri, 2 May 2025 21:31:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] watchdog: qcom: introduce the device data for
 IPQ5424 watchdog device
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-3-b2dc7ace38ca@oss.qualcomm.com>
 <4fvlhcztwqw3sp4wb32rbvdra5ativo5zypeokpglzezkmjfmy@vogadyshroix>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <4fvlhcztwqw3sp4wb32rbvdra5ativo5zypeokpglzezkmjfmy@vogadyshroix>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: M5r2rF6Hef-4EfKxSnlVQF9Bi8DPsbLW
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=6814ec5b cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=--xdvnZNnXTZpBI9SIwA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEyOCBTYWx0ZWRfX0WX6H7sfMLF9 whphM6Q0xxbOGrkhyDVFC3Vo0cPeX+laLHlOaYriETmh4UqjBglvJMbIqbNRT9d1MaExvb0H6cc +7bhr6msP0fS1VV44tT67tXxdMuC/Nt+2DtA1ng4BOzqR7UVMNjgpN46HYKKbtqPwxgtGOslms9
 a3eZFg/kPZKdyKxTamD29DqOg7UhTQ9XQDWtTOdhXTSoM87SaRvPpHHh8vUfOVxHu/LQf3E09Uv AFT/fkQtcl1XlOgkAdsLnvtDcOM3AvbvSQ1bc26zHNYTIzByBS+mfAzt4Avja2oBjuBDoLpyyGt ROWOYcbnPkWsMA+djnYHXxYuGR7dzmKGd1zmirGQktXozIJrMD+AjF46NjDaXyK7WsjsCYjhMCH
 7Qwa3hIBogK5hv0iXH34nT79o+8QGtavaw7FunjVE8/AYRHhxffTnqwnZQK3XeJ/Is+wnVVT
X-Proofpoint-GUID: M5r2rF6Hef-4EfKxSnlVQF9Bi8DPsbLW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020128


On 5/2/2025 8:23 PM, Dmitry Baryshkov wrote:
> On Fri, May 02, 2025 at 06:47:51PM +0530, Kathiravan Thirumoorthy wrote:
>> To retrieve the restart reason from IMEM, certain device specific data
>> like IMEM compatible to lookup, location of IMEM to read, etc should be
>> defined. To achieve that, introduce the separate device data for IPQ5424
>> and add the required details subsequently.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>> Changes in v3:
>> 	- New patch
>> ---
>>   drivers/watchdog/qcom-wdt.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
>> index 006f9c61aa64fd2b4ee9db493aeb54c8fafac818..dfaac5995c84c1f377023e6e62770c5548528a4c 100644
>> --- a/drivers/watchdog/qcom-wdt.c
>> +++ b/drivers/watchdog/qcom-wdt.c
>> @@ -181,6 +181,12 @@ static const struct qcom_wdt_match_data match_data_apcs_tmr = {
>>   	.max_tick_count = 0x10000000U,
>>   };
>>   
>> +static const struct qcom_wdt_match_data match_data_ipq5424 = {
>> +	.offset = reg_offset_data_kpss,
>> +	.pretimeout = true,
>> +	.max_tick_count = 0xFFFFFU,
>> +};
>> +
>>   static const struct qcom_wdt_match_data match_data_kpss = {
>>   	.offset = reg_offset_data_kpss,
>>   	.pretimeout = true,
>> @@ -322,6 +328,7 @@ static const struct dev_pm_ops qcom_wdt_pm_ops = {
>>   };
>>   
>>   static const struct of_device_id qcom_wdt_of_table[] = {
>> +	{ .compatible = "qcom,apss-wdt-ipq5424", .data = &match_data_ipq5424 },
> Shouldn't it be qcom,ipq5424-apss-wdt ?


Currently, the compatible string is "qcom,apss-wdt-ipq5424". So used as 
it is.


>
>>   	{ .compatible = "qcom,kpss-timer", .data = &match_data_apcs_tmr },
>>   	{ .compatible = "qcom,scss-timer", .data = &match_data_apcs_tmr },
>>   	{ .compatible = "qcom,kpss-wdt", .data = &match_data_kpss },
>>
>> -- 
>> 2.34.1
>>

