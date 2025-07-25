Return-Path: <devicetree+bounces-199667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4EAB119D8
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36F18AA0DF3
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 08:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF972BF014;
	Fri, 25 Jul 2025 08:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N53jtd+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23542BEC52
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753432413; cv=none; b=Ft+VlXIbVzAICDxNBG6SDtazNCavNBlgNAuUdp4EQ1dbPfE+wPRKgK3eOuRjOh0KKfptqMetO97yjCevlRhLyNpnrrFlveBbJ30fGjxEGitMPJXQXvKwzM4Fuw1te5DRyYRaFSZ8lAdPi0jOCa92Qh2rhSrI1o5JeIOmkVKHYOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753432413; c=relaxed/simple;
	bh=iAj/HA7WjS9k1PkGV+APIrGnyZCllylzuaEm7LCr5JA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WdM2bHZksFr5fgWPCmVOhejwAPLsy961I72RjDVb5GpuMwuaaVRUugj6f7zGENYjmzKOExp/76YvBNTDBKlFVpHxHHAt1naJcLNfYcgxAJ/3fjaCWyAykeqd6E9kwfFw9UQhoJ/yBTpPJ0ubtOXFlLUmM98ahvwGS6FAGJBZIn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N53jtd+A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OLnJ1f026720
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:33:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ICDsXa1i4umW3fubthp861yBxgmGCWIxplYWJoaFxA=; b=N53jtd+AjsC96xmd
	idbHzzLPyFEZlXIl7CjAM3sZylXpbE7E3fU8GkbacRJiu/zkFTvQ2TEVDpII95Pf
	3Mb/hRPBuhsk89riNvZSXD99qpvvJlVDnnSOPV/HPmzS8Zt17wNModzMuhwr+KZK
	1D65IUzJu6OLjQcUAQp4pknEpQTny04Ca/JXOZgKUDWwaMtWyK87uRxgSVrApE1o
	f/lDrzLl1y7Pf/RwWAbjm78wCAO8yyuBx56bH7Txg92FAAcwdDEBAkwOj4Ncfvx2
	V6+z4YQF0eLTHb1AKM2CygG14Dc8/3MzzIaGtDudT7t0+qvRL0LBLh/7WBoxOu0X
	hlIb6Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w30sd00-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:33:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235f77f86f6so21145555ad.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 01:33:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753432409; x=1754037209;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6ICDsXa1i4umW3fubthp861yBxgmGCWIxplYWJoaFxA=;
        b=VGL3dP/bC2fWgfM/HSmIll5Dek6Kf13lNyCe2FcYSMif9irTcLpwQ0U7jvSJDaOqag
         DB4+XAdTWVZSuejKok8QxPVJuqir+Tm+JCQFcHsP2P31hYKkmTaL4MtSASLTjI8WrO11
         wcPtYjNqUqSShcBKE1K8YP3rD9TTveg7JNCOJ1UfMsTLHT53vvoIxi1/CbWRe5HLo1z9
         2Un/9sfa8tii4yxqqPvOwHS0atI/YvS5sRcmukI1QImdNP1GddtBCHMBCCNn6BBUnaDb
         BzgNIyV7sWo3NLr3Maa+7ekaXL2RhfhZNRO0ntm44czjw0kBLQEDGw4oI1efTGLG4/IC
         rw3w==
X-Forwarded-Encrypted: i=1; AJvYcCX4pQnOgcmrvLp5dtTwZzkCcfgxvQoJ6NxC/Li9evdgGw70wkeoEX4lhvarcaO//GThIXnAq+BF/6wD@vger.kernel.org
X-Gm-Message-State: AOJu0YwmnTKlK4+upCegXufNPgMW2aeGI4rRJlQ3YxLp4j8XCsjwjk2Q
	VqqzIan/y9VsTSv4zOHy69n7y38QxX9I+Xx1kP1baYG2f1YOmdiJ7ph+tZ/j+5fzIIphTd6hnno
	hVoAaUMJIfuyLqdLy/YaxFIzGqb6GxyPMc2zCSecK6Yc7SdqoN5Ek67tNwUQCQE69
X-Gm-Gg: ASbGncsUhGKQICGXk0pZjBqg89Vh7V+8+dHLJNvaqnngxahPVrTz8YayluVUwlWunbX
	zUEzHnrl3uOSpC2HaMDuO2HyylsXH9agQ9OeFsfjLl1shibxe7dsaWhAjyK8XcDW11UzWAoKm4i
	sEGCoFEiKfSwcA1Bt9RJQR4PvO0AR453VdrQPeqVeAjInDhiRqnVAvtF5voF/fbS2JHKVuFb5vI
	4QrlvxtoEcICyUOAY5V7RyxsaZJBmd3pgB/3JJU9P0+2bK5sY4MOSQBs3MrGEe3Z8OOQWEDO2qb
	H6fX57GhL8+mdnBMX3z7l/y0ZAZSWzExo/k6ubYcmguKDq1ZitBisPWojZWDorTUuieShRZCu2N
	SI2DcHWxQ0oDMHR/df6X4hPRPUh4=
X-Received: by 2002:a17:903:1446:b0:234:d7b2:2ab9 with SMTP id d9443c01a7336-23fb306bcbfmr20011785ad.12.1753432408858;
        Fri, 25 Jul 2025 01:33:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6QKgVlPsDnhyH4/3bWd30JezGiz7hl/u2XgQDaPgHXQ2Rv+qt9nGM1FqaF52FEEqfpxQ3kA==
X-Received: by 2002:a17:903:1446:b0:234:d7b2:2ab9 with SMTP id d9443c01a7336-23fb306bcbfmr20011505ad.12.1753432408399;
        Fri, 25 Jul 2025 01:33:28 -0700 (PDT)
Received: from [10.133.33.78] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa475f35asm31914825ad.28.2025.07.25.01.33.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 01:33:28 -0700 (PDT)
Message-ID: <cd7930c3-4cba-4806-8653-8d7eecb278f5@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 16:33:24 +0800
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
 <e9160bb8-2b5c-4c30-b60f-520decde851e@oss.qualcomm.com>
 <fb3ielhucosims237ikv4jfp3oq6fu5ftgt2mvenj6pjmzrpqo@vip3r6qew32p>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <fb3ielhucosims237ikv4jfp3oq6fu5ftgt2mvenj6pjmzrpqo@vip3r6qew32p>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WtArMcfv c=1 sm=1 tr=0 ts=6883415a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=cfvObpv82JsDPSYmetEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: SvZrxcza9X1kl5t-wxgtXCC-7ikOtNRJ
X-Proofpoint-ORIG-GUID: SvZrxcza9X1kl5t-wxgtXCC-7ikOtNRJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA3MiBTYWx0ZWRfX5MRaGopaVHOx
 0rqVMyUGLR8khkkIxpK56HA4Ubpdtq/pp1H74XYfIv8azI2JrL+xxDO0erteH8GMIMn6lPb0kf/
 Auig0Gu3y/BVhSIkkSr1wrtQn+gfJuhtDK+sVi1duc15WDmPBcA1mpqlyEREdGKZ/soOtPPH3MB
 l5dIgD9j9k9IRgBXyZ5XzdUDaD1aRPa90uI9P8kKZGUMOOkpUwKODCRVKHiLX72QfPQuDolQsKf
 qbFj4zPNel0raniw1/Mz3WN2wiBezeCd4sElAj6rXKPDr/S9jbsgXR5ounNeJhfLVpH0w6XFnDa
 1hfWNCO766p9mZ2W8u91S0sv++Oy62q2VqJNHiSCSB+wvq2oKau6jyTeuPPp8OwuQyfycKTWiYE
 mSRtb4ovB57KSIZBfI1mZz62aZYonNUuXoh0v9fg66eqTHABT9gYNWN9NgIv+IdrTkKrgKtC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250072


On 7/7/2025 8:15 AM, Sebastian Reichel wrote:
> Hi,
>
> On Mon, Jun 30, 2025 at 04:28:14PM +0800, Fenglin Wu wrote:
>> On 6/22/2025 9:26 AM, Sebastian Reichel wrote:
>>> On Fri, May 30, 2025 at 03:35:06PM +0800, Fenglin Wu via B4 Relay wrote:
>>>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>>>
>>>> Some battery drivers provide the ability to export resistance as a
>>>> parameter. Add resistance power supply property for that purpose.
>>> This is missing some information and the naming is bad.
>>>
>>> Which resistance (I suppose battery internal resistance)?
>>>
>>> That is heavily dependent on the battery temperature. So this needs
>>> to document if this is for the current temperature or for some
>>> specific one.
>>>
>>> -- Sebastian
>> This is battery internal resistance calculated by battery management system,
>> using the real-time temperature measured by the thermistor inside the
>> battery pack.
>>
>> I can update the name to something like "rt_internal_resistance" and update
>> the description accordingly.
> Your message is kind of mixed signal to me.
>
> If the BMS needs the thermistor to calculate the internal
> resistance, it means the data is either not real-time, but
> just adopting some fixed value to the current temperature,
> or the internal resistance is adopted from the current
> temperature to some fixed temperature.
>
> My expectation would be, that the BMS instead actually measures the
> internal resistance via ohm's and law and Kirchhoff's voltage law.
> So please make sure to understand what data is actually provided by
> the BMS for a proper ABI description.
>
> Depending on the description I think 'internal_resistance' is a good
> name.
>
> Greetings,
>
> -- Sebastian

Hi Sebastian,

Sorry for causing the confusion. I will try to clear it by explaining 
how the battery resistance is calculated in Qcom BMS.

In Qcom BMS, it uses the Equivalent Series Resistance (ESR) parameter to 
represent the battery’s real-time internal resistance. ESR changes 
dynamically depending on factors like the battery’s state of charge 
(SoC), temperature, charging or discharging status. To estimate ESR 
accurately under different conditions, the BMS uses data obtained from 
characterizing representative battery samples, mapping ESR values across 
various temperatures and SoC levels under charging or discharging 
status. The characterization process with those battery samples on test 
bench would use ohm's law to calculate the battery resistance I think. 
These data points serve as a reference for real-time resistance 
estimation. During operation, the BMS software refers to this data and 
adjusts ESR values according to real-time inputs, especially 
temperature, which is typically measured by a thermistor inside the 
battery pack.

I can use 'internal_resistance' if you think this is good to represent 
this ESR parameter.

Thanks

Fenglin


