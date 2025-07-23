Return-Path: <devicetree+bounces-199065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28657B0F34D
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 15:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2556F3A619F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43792E7F30;
	Wed, 23 Jul 2025 13:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RreGXii/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06CC2E8895
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753276005; cv=none; b=bFNmoJKveHMyfDgptUI8ACZ17vqPS4tl/Zn3+VFIoWPX341RlRymDb+TzABQVfZoN2GG47zB7fV8r9Mpyc2FtvCJJdml0QRP1l176P+rOV1cdQ1Yve2Ji40cnq+Nk7dCdY0i2yN/+Fr2NeBwEtC++mttklBtNYP9Wowj/m5LeEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753276005; c=relaxed/simple;
	bh=HCpPcP1++9JXtPVhSMZtVXW/xDeqe8ilKiIpJh1wrRY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ji8pTeUxo1OEWkZyGS59gX+fnWQwF5Q+TbCpVuPrzKPIzF3Ae3TRilOAaiZhBz/Hx7MoUqlJdBTP+kt/dyEe8nEUfFSaQdd9SNgnFmkhHf1H/QKjeZXk/0RvJ9ckrmRG9WUDp2HLRZZWb/dNnYe6HHLXm97cZ/TLNSutq+lkEI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RreGXii/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9FYds026818
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:06:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gk+9lQo8OLB83ZmQKGeqhkdZVjnwAl1R2lXLUIpQERk=; b=RreGXii/7t9qNNrq
	DbFUiqGFPpcSsP1x+0q0SSuLU3f8PJogH6cufEOXdeX+gFz/Dn32IeKeEKvLT1C5
	iWpL9q816FjFMx+F+TnHboV4c3+QSvhWwQqUEzs+0RNZ5rNgz0jEZawq1KVWJisV
	wlBurbDpJMa99lauhWu4rWj1IaPBxz7DwfqFJJnSsLB/RCKP9MfE+IVEoz1Kz0Ch
	28pjoGdllyNkPG6oJPzR9kfa24I2OLtFVrD2299e9ls4GKbsRc7ViqkZCG4C5x/n
	jIX60c6BYiqsZMrs/UV1I0NXV1dj2+amT8WjgeHN5Kh9Zz0e1Ssfb0N/g9tis4x6
	M0N6PQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s57pq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:06:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-234f1acc707so62296815ad.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:06:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753275997; x=1753880797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gk+9lQo8OLB83ZmQKGeqhkdZVjnwAl1R2lXLUIpQERk=;
        b=xBDm7GyMdIxHjHpvoxU1THA6X/ZB0sRUfrDmZ9Dm2c9Su0rheX7jtFgOMj+hltv7cT
         1Sk63Gs+cKlZD7bjk08PPG9OGMNz5RWITEIKdOhWjKcj+Nb0DfmYxcU8350GNXNb4wyz
         h2A3m3OBeYPbAUzGn8chCGi/hdFpVllXmehUDw9dqNI671c96hZykdbtqjy3l07rhgl3
         GNbCGpi/r2rzWahwl7nsQnVagbKXOXd9lobmWCbET87SO51HCJPQidFdbEmtjyZWvguE
         9iJ5updRpUuYN+Eeb5HCMpRqH0pOprRN+bhs+0AqUA/ajjfkjRYxpY+n1ZeQu3cc2zbP
         n2mw==
X-Forwarded-Encrypted: i=1; AJvYcCWzgzfqzdWCeBVAQdtm5Sx0+LxYdHZGfoabTmStnFK0k+xH1d39siMe0XkC7CSOX//G65+hiGgKYoHe@vger.kernel.org
X-Gm-Message-State: AOJu0YzRPOUPD4AXsEWaMQnz+0dSioLg5pN1rJdA2NB9/oG04Bi9FLQc
	JN9PJg5J0NiIwrZOV0h5gPVYm4c0vE7yFByKB/Hx7TjW+rD3867feOnSzSUMoyfyB+ZAU3vAm3H
	0mnvCK3VUmpa/ulCCuTnqAM+JH6kbnN7g6GmPpZ3vXze+aPv+5l5pzh0VWRxgZUHu
X-Gm-Gg: ASbGnctSdAXfL7Nj+vltMLs2+Sy4JVHsD/ip/mye+4OfkIPwZn1sFWbnMNvPiPs1oX6
	XRXp8/K8MD1aS6PDjTBuAuF1CpV0YEXqR1poxsADPRJPRReyNvHH0JWYuqjuoqFf4YVuXHcPsH3
	UFVLp2JvYVOOcvcBRU+3fP8OeuDdI1bQA2TPRsJ7zT4n2tK/5jvgbfZYff/idHCSV0tKeHVhIiR
	KiMA5brqZg/d2YZm45hTAkWaX+JFKeDWL3890/HZjAn3vkKsx4maVXe/FOvTGT+ePHPzHRgZNIU
	VcmBoLEmD0QPntAIIBP/3XJZ7ckdwE59xVo6g5FWGXSLUkoFwGEQ7/Q7xqPVjRopFfpm6e+FRnP
	0WkK6xtxM7/A0HZbP5YsW9kBBltsiClGDuFze6Io56Fd/8CdmONOgyw==
X-Received: by 2002:a17:903:2a8f:b0:235:be0:db4c with SMTP id d9443c01a7336-23f981d70d0mr37484765ad.41.1753275997079;
        Wed, 23 Jul 2025 06:06:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyFR09d0346jm0sDaEVMHx8YhV6QKTGDzDqC3peZGOi5ZhCvo3sbJzMUXqkg13bKxJY6DVNg==
X-Received: by 2002:a17:903:2a8f:b0:235:be0:db4c with SMTP id d9443c01a7336-23f981d70d0mr37484365ad.41.1753275996639;
        Wed, 23 Jul 2025 06:06:36 -0700 (PDT)
Received: from [10.190.201.48] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e2e51sm95859345ad.19.2025.07.23.06.06.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 06:06:35 -0700 (PDT)
Message-ID: <e3d04cf8-6d9c-4514-9d8f-782e2d1505a7@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 18:36:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
 <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
 <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
 <d37879af-a1fc-41d4-8e31-2abba6fd6d57@oss.qualcomm.com>
 <d31c5e0f-dc50-4e7b-bd81-256269c82ec3@oss.qualcomm.com>
 <0aa2b07d-8c66-456d-aacd-c554bfa7664f@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <0aa2b07d-8c66-456d-aacd-c554bfa7664f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDExMiBTYWx0ZWRfX03UsnBeIlJdP
 yzBr5jglSJ/dMZ6neh7sgBC4oWQQJs2KuQvG+hcbZSkcLLDUPXiswdq6GoxstXJq5GYtAAxjadi
 pv73k/x8voU6wmlcLuzX2N8tttVCaf94f8oRQHSuoJcSLG43m2UUT5m1hbdps4nF+tqzkyGz/Ux
 AzsZwKsVFKALXNMD+lWjEmBM5DyaHa4h08UKuVZYDgsuFohe168UYcdZmP51CNsqssgUxMC3L1g
 x97klN687Zp8XRyMpHqbtMKi8X5nGRca0BP2qr+2NTY/YJP6AnGOIRbjWIA8vRCUwEzOGtUYBQR
 QIDuV/zAlPeBvAEjHV0YWsV9c/NMBJ0j35RncvJop96Q1xUFBb+AlacMSZgd+AUDcnbY2bbPF8j
 hsZm3L7nedvH95AQU57oEUTfj+B8V1/q9eIzmJV9e7Bmum15ico44PDEvz6Pb3O3eujY3yMK
X-Proofpoint-ORIG-GUID: 7MpJc7xzTqrJQH6IxBj4twaDrlcftK_O
X-Proofpoint-GUID: 7MpJc7xzTqrJQH6IxBj4twaDrlcftK_O
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=6880de5e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ABa4ZnCp-855lqKztdsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=907 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230112

On 7/23/2025 6:23 PM, Konrad Dybcio wrote:
> On 7/23/25 2:07 PM, Pankaj Patil wrote:
>> On 7/23/2025 5:25 PM, Konrad Dybcio wrote:
>>> On 7/23/25 1:48 PM, Pankaj Patil wrote:
>>>> On 7/23/2025 5:10 PM, Konrad Dybcio wrote:
>>>>> On 7/23/25 12:36 PM, Pankaj Patil wrote:
>>>>>> Add DeviceTree binding for Glymur SoC TLMM block
>>>>>>
>>>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>>>> ---
>>>>> [...]
>>>>>
>>>>>> +      function:
>>>>>> +        description:
>>>>>> +          Specify the alternative function to be configured for the specified
>>>>>> +          pins.
>>>>>> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
>>>>> Any reason for           /\ to be uppercase?
>>>>>
>>>>> Konrad
>>>>>
>>>> glymur_functions enum members fetched from ipcat,
>>>> this does not exist for sm8750.
>>> I'll repeat my question
>>>
>>> Konrad
>> It's in uppercase because of the way it's in the driver,
>> I'll update only the bindings to lowercase and repost.
> No, the driver must obey to bindings. That's what they're for.
>
> This value is only used between the OS and DT, so it doesn't matter if
> the docs refer to it in uppercase, so long as you keep both in sync.
>
> Konrad
Okay,
Yes both driver and bindings are in sync.

