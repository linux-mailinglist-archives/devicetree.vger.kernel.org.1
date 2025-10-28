Return-Path: <devicetree+bounces-231911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 58242C12E0E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 211464E2C06
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 04:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E035279327;
	Tue, 28 Oct 2025 04:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B3fhVUfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F25B220F21
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 04:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761626972; cv=none; b=uxZaoM0ukol+StNJOz4x5K0+luN7Qw2CLnMZA3SmK+wjSFjdCAdb+T2m5S3NR/Pit9LO7F4s/QeZnNiZyVTsQSMaQ5LReku0XFZmyeaStBcPOKRtpNdsmovdFclIqYAIVDatN+ObL4HDIK1fOttxsR1GVPy1mjZKttEwPn4nH+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761626972; c=relaxed/simple;
	bh=XV7WU5zibZsJ+ZnEyeKr2n+YJVbN5IbMnAsV95YPJu8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gC7sWhvjQ8uYpD6k29ofYgLDNckcvLCOU/o5aEDxjoP54C3enLkp8n0lA/bFp88jNFtCrs/fnsfxAh6MUVbEZojJbAPSEah++wVdBDEj4mDaa+CDmItC4doX01k7DssqoKdHOhBLbJsrkyca+E3xcgIS0s0SlyzofuSyR2slbLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B3fhVUfP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S3gYwk3165297
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 04:49:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XuTBvjuiQOVwjZgQUe9fy1G+EeVQei0mWGOYbzBeS1c=; b=B3fhVUfPCGKJ5Nt9
	z6YktbPuyDJQfGnyV+6K8bVcFjfL1ykH9Ir+r/7cdmtpF7GjPTgMaVK5XSclE3rn
	MlkAzOlk/UnzxW3OZ6s3HiRCMlkh+OjYqmyoqXI4Nsbyr08Mh1vFv6H0Bd+GffdV
	r3cynpTOd1kkeEd0cxHe867pPpIvPYhq9pH3gmNioD/P+HTIbPfhaQzQZG1fRuQo
	IjsSQedFsjUgNcy0K68CcqEOt+32Jab/UowK+ffjshpNmjzYjSowPaaBy22o+YNR
	q4JJ1BUSqnyvI3I+1FhBDmmypNAwpMartG5qqs6lk2jR11GUbnTHCeDa2mZTEYZj
	DbaiMA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2bwx1v61-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 04:49:29 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5a013bc46dso4184902a12.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761626968; x=1762231768;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XuTBvjuiQOVwjZgQUe9fy1G+EeVQei0mWGOYbzBeS1c=;
        b=DSXlXvicooSMKlI94OcP5HwNtxSKaShAp+wGU62GprAh/WE+iiYBXkJF1vaYNMEZ/U
         QWuoaBcQSTBykVF0GJ++iF3l5aykDmljthZYVrQ3TKKgpOIwJRGxR66lxS7MC6wpidGJ
         2HbCftiOOSEY0FB2tq8Vv3hXcmrXq84Dg5BAp5Y6RgAxHXmt5By9Vj3ChnWTOq1gTNA5
         LkDPbEYuTLAR/dzmrogdW8XUjeaEOKcbNhp+FGM4xYsgdEomFSK2BKi7l1QOM6bwtpdv
         VU0jI/bREYoUtCmHobtws1TeJkZWo+6UVKCzub7/oibKaeqdloolC3Gey62r9bIjnhx3
         WYgw==
X-Forwarded-Encrypted: i=1; AJvYcCXGrGEmV1wx4S3QNG3biT4EjCMHXqX6qDxy+7eJyRqNBybkimveeJyP/XshHng56rpyDGzpHVRFExCW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkt6RPvBgxGKoHsePskMkBT6i8CVlOHQ7rFU2K8fabWymDl0LZ
	58uoidkpeUhdwlHcNs3d9tKqQ8DirVZFG0RxA5r0NMOb760MN2tAZFOBMFn+ZuKsuAYdInBvDFD
	y2mLvp6wSab+xO+M35hc1CNI3WYgDw0hCLjwBxrv4FtcZGlXzz92aFWMtGzcBFrpU
X-Gm-Gg: ASbGnctrVOo85KkjpXb/qfArJv92CB8RqQheUUE993MRcBKuJTobQawFaJIRGg7izJ9
	2WdQIMHqmvKawQm3uu9Uh+Nyzqxdlx1FtAYogdTJYwENCECVezqZD7vOEgElCSF9t83fyil+kg9
	+/iEIyyRwOzP9JySiiB9a2Sj8YjXyIzMw8gRd1Nxgs2ZQ89znX5tTqoz0d4VQYhevO+BW/8wDKN
	36j9FdXInwkKrEciBxlPo4Z2W9HwNYe8wTRa7E15M5xtCKyy5OXcuR7ZMbYtlu74s4q3p4xet31
	OjR+kg8IbggysUFurl6+P+uWMBCV6ZpybJwJe1MpC3j9kRIubv3iiiyvCjiZwwIiQVXcPflmKoH
	GPnIOsrYKy/lVQ2bUWAs20Q==
X-Received: by 2002:a17:902:c411:b0:261:1521:17a8 with SMTP id d9443c01a7336-294cb394731mr29305905ad.16.1761626968256;
        Mon, 27 Oct 2025 21:49:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfBO+WViq1JrCOzNCETVspcIjJUNeP8Juh1Xcs//lqcn1/LiJjXbaM6gkuaRAJV+zXwqEkng==
X-Received: by 2002:a17:902:c411:b0:261:1521:17a8 with SMTP id d9443c01a7336-294cb394731mr29305755ad.16.1761626967781;
        Mon, 27 Oct 2025 21:49:27 -0700 (PDT)
Received: from [10.64.69.82] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0abe6sm99973325ad.34.2025.10.27.21.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 21:49:27 -0700 (PDT)
Message-ID: <305b9b6b-2003-48ab-97d0-c60226e1493b@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 12:48:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: enable pwm rgb leds
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, kernel@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com>
 <cb973808-005e-4920-a35b-3f02a402a78b@oss.qualcomm.com>
 <ada950ed-7b51-4e62-93ff-550c427a73fa@oss.qualcomm.com>
 <nepbosujmpldx5exylkqjylonntj6v3p4jnnoyxstmbmilb7jc@t65dwpxzorg7>
Content-Language: en-US
From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
In-Reply-To: <nepbosujmpldx5exylkqjylonntj6v3p4jnnoyxstmbmilb7jc@t65dwpxzorg7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDAzOSBTYWx0ZWRfX5a0ai2Y0cyub
 7fi/4+qa6na3MAxaS9aXpuOHBMIctfaQlzmHACFzlDK2wCcRYf4qt3uhHaJAM8SKUxizSlZXKqS
 8YPIMyiVgN6VSJ0Kfc4YgNCP/xRBs2TsHhiB9F2TQJJ09gYXWo0VPVnERkTURPxizTxlPWl2sth
 YL4wrxTBBhHgObuM1Q1yLhYZB879XiG/gPJ6i5h9KUQ2l1/aMNxGJCCLDOX+6kAvB8zHE7HlHeq
 CjWZS0F1T4OY2MeLKA5lMmr1C/+oRRyQysEG91W/r4aeW5LGM+ihPHKJ+eUkUfCgWcmlc7gX505
 xWtvluqk8Ej7IC4O/1jZI56InKACr8fhRGq3tnzmnr9Y06Equ3VCTsiVnsQhg5ijwJNm+a8QXOc
 ufa/D4o6/bladhW/mPn1tnoPBFfClg==
X-Proofpoint-ORIG-GUID: aaqXI2XcXCKYB3v4LS87LGvQzvGB-dLM
X-Authority-Analysis: v=2.4 cv=U9WfzOru c=1 sm=1 tr=0 ts=69004b59 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-iULT8Sq9WsPgWKhyU8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: aaqXI2XcXCKYB3v4LS87LGvQzvGB-dLM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280039


On 10/26/2025 11:15 AM, Bjorn Andersson wrote:
> On Tue, Oct 21, 2025 at 02:29:22PM +0800, Tingguo Cheng wrote:
>> On 10/17/2025 4:09 PM, Konrad Dybcio wrote:
>>> On 10/17/25 10:06 AM, Tingguo Cheng wrote:
>>>> Add red, green and blue LED channels for the RGB device connected to
>>>> PMC8380C PWM-LED pins.
>>>>
>>>> Signed-off-by: Tingguo Cheng<tingguo.cheng@oss.qualcomm.com>
>>>> ---
>>> Just to make sure, is this a "multicolor LED" consisting of 3 ones,
>>> and *not* three LEDs that are supposed to communicate different
>>> functions (i.e. network, power, disk i/o)?
>> Yes, it's a multicolor LED composed of three individual LEDs within a single
>> package—not three separate LEDs for different functions like network, power,
>> or disk I/O.
>> However, there's one exception worth mentioning:
>> The blue channel is connected to two sourcing signals—the EDL indicator and
>> the PMIC PWM-RGB blue LED—via two resistors. These resistors allow selection
>> between the two sources.
>> By default, the board is configured with the resistor soldered to connect
>> the blue LED to the EDL indicator.
>> To support software control, I’ve added the blue channel in the DTS,
>> enabling the capability to light the blue LED from the software side.
>> Some developers may choose to re-solder the resistor to connect the blue LED
>> to the PMIC PWM-RGB output instead, depending on their hardware setup.
> Sounds like we have a RG LED, and if the user chooses to modify their
> hardware, they have different hardware...which they can easily describe
> by updating their DeviceTree.
>
>
> It's a bit weird, but does it work to make this LED_COLOR_ID_MULTI with
> just the RED and GREEN channels described?

Yes, I tired before with enabling RED and GREEN only, it works. (What 
you said makes sense)

Let me send V2 for *only enabling RED and GREEN*

>
> Regards,
> Bjorn
>
>>> Konrad

