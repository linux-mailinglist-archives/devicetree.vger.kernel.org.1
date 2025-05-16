Return-Path: <devicetree+bounces-177946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E21AB9AD2
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 13:18:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62B2DA02FFA
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C362367DA;
	Fri, 16 May 2025 11:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G9dlIQuW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF69023535C
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747394294; cv=none; b=T9SMGnjvkHm1HngwApaZxFS2FrPiYy67/t4PjKUTTzFp/sLWUezopxLSQBL4lSIGgS8C2/h+mc3/eh6Mqtnlma9xAy114XqDKQVOAhUx/UXTn/doezqY9teB4usFcsf/yaHy8Uv6NQvIu+zQ8v+RvvUIdRJnXaNxsScbMtrzeeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747394294; c=relaxed/simple;
	bh=2j5qkobccot9LL1RM0m5iDEPEb8bSMGKA6Syb6/7mEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dlm07cFz5Xf5k69lJbgcGe61KDUOrD0huPbg2hz0wkxADGf2GuiSHtTltSZrRe+HCwYgV+UzH2fh5MA5cZxHXLxEjEWTIJj11lKVx/wSqld/0kQkhwHXp13U+vTHn1HD1jTfddz4+B1kLXoF/y3TEVVn3N6lJ1zyI1KM9l1S/j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G9dlIQuW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G37MtM025719
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3I2uY5YtBknRZgs8vRXNey7xsxmE+I1qZE/v1ysmnR8=; b=G9dlIQuWI1U5kXYF
	bfOSZgrRVn7CQZW7eBn5Z/2HgDKBRXwiHibG0WUNAAmj7pZ6Rw+BDKjfp0M8HoMI
	BqSApYwq88Uq7Aiba2k5ujcYI+56peCzsPl4bSmXc1TVIvcZTGwOGH4FNfoiTR0y
	GEOahr+90WUdNaqGtwgCjqtW2hCm1coUVzp0EUWFae4AuGMd8tfuRGGv18i4rX0h
	g4IHY7sURdf20ijRqFJC3Q2vL9vReNSuDXOseAjQgAWBSdGaQshQKgw4yroRwDat
	Zl5Xb3UbwrwhRfgInxtvd89Y+/S6sBo4ZAVNwwJoHMcNwO2xaoYU1ZKGDt+Ksu1G
	Ak65lw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcp1rk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:18:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f546b2eff4so4735216d6.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 04:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747394285; x=1747999085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3I2uY5YtBknRZgs8vRXNey7xsxmE+I1qZE/v1ysmnR8=;
        b=mgLLoGj24u6uqRIvvIeT4TrlAeKI0SrNHvG5SjFZIArXRXmYVI1Fkdu8LlmB018A8t
         ZTvVuMPVnCDaNKsmFslmzs7/IeIAXOCm1khgn+XVPjHepQVva0SziMY3oykkfW6ok8Pc
         Bxq8/5Iscv/VrHKGFpMLkgPhx3HArUXv1EGqyFV5VM2aUpqVhc3DfIVUxSx/xszgwGii
         0ZhFD5vI5IZHNjUl1jUKB5rJ9zKm/pFhKUSYDylXAn6ABj15Sy3tY91iwpSCYxzehnu9
         pY5jsUsKObrMuFkH2ULg4VmAqGpkn+zfJP/r5ZEqK6gBBaDGpwT9HNYQCY2ECVGc4U7/
         c4xA==
X-Forwarded-Encrypted: i=1; AJvYcCWr2ILenkPo0FTDnXb/GTF5PRUMsXffG3Maz71us/pq3fgvxRfOQ0fXG62tOzhbXFHg8YJVmbxyCCsF@vger.kernel.org
X-Gm-Message-State: AOJu0YydFESTGsgf2TfEieu4QYDrBbTZuNR3MVCLGOV69GwVDh3QKGCO
	+zv7oIAHw0e4zczgvYl/yjqN2byOhu9/2enu2FYSt9HD3YrJvE4NUA7lDwTCLbX+XprSVmA92Jt
	V7J1peHHDAd3CW+harX9dzw80oTUULMCbIuJ2z9+QHo6J7injlyssdk/VULhLSX56
X-Gm-Gg: ASbGnct36Mi4IHph2BM7R+ovOEsN91HydBnehg8qBxeurMyIP8z1d+EydjFX7Tw0TYG
	Iic6li2HEr4zMmQEUH3OwjluOdQX91I1OlCXukesGe7NQv9Zj35ga1sUyWu8ASCQ34dwQ9PlTba
	rN+aId15ovtMFgz2log+hNSPsjoZSKwvbK/aWUw91G+16vcQUAZE2Y/hyyeqMnikWONJtDX+0uB
	+4Wek0Rf/UuCR8UkqH/pLaZO3psiEoTmwswvxbxaBN4cA7XiULJBEL7zKRWqU1AVAAILcf3Extk
	WoxiTM+zwOlZ8u4WcHmmio/Lq0Ys1GOu9UfR4Urhij9qtosCBLEIGzkh3vgOYxVc5w==
X-Received: by 2002:a05:6214:1c09:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f8b0835130mr20320726d6.1.1747394284651;
        Fri, 16 May 2025 04:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYedXsXWaYRFu3TMFMA0Ooxjh8cjz2T+AoU7nKygC1w6HBVJRE7mCkn7yTavhKYax2hXyneQ==
X-Received: by 2002:a05:6214:1c09:b0:6f2:c10b:db04 with SMTP id 6a1803df08f44-6f8b0835130mr20320616d6.1.1747394284092;
        Fri, 16 May 2025 04:18:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d502b03sm1287390a12.29.2025.05.16.04.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 04:18:03 -0700 (PDT)
Message-ID: <6274641a-7366-41cd-a0a7-a9e9cc41b8e6@oss.qualcomm.com>
Date: Fri, 16 May 2025 13:18:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <2036ef2f-c7ef-4f42-858d-8d95c430c21a@oss.qualcomm.com>
 <68d280db-f7df-48c8-821d-f7d408c302ad@oss.qualcomm.com>
 <8a763c70-adcf-4a14-bb68-72ddc61fa045@oss.qualcomm.com>
 <8c2a53c2-c11b-4d49-bfb5-b948767ba6c7@oss.qualcomm.com>
 <1e871aed-705f-4142-b72d-4232ae729a37@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1e871aed-705f-4142-b72d-4232ae729a37@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 3BPUbRz7v0TZ7q2x6OUtdBK8efJYwsjL
X-Authority-Analysis: v=2.4 cv=D8dHKuRj c=1 sm=1 tr=0 ts=68271ef2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=IBNWLNMZBAz7KTYeBUwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDEwNyBTYWx0ZWRfX0gXGBa+JozOh
 BgPu2R6YBQNmbu6zPtoJgHWfBuwQR5DQ4q/1YmcZTk0bCN631bI3hv8RgDEtodbybquTQsuHUKy
 /CIHC5nqx1yaW+qQl+Oums9RVblSSKGIwiLbcRQXihG4ulJipFpe8G9wMUuFhGw4wTGNiGYjzx4
 yBvWJMTN8g8Aokkg/C5RDhdTBrdzDH1u3LIO2rUxlMlHolWk7EoWCVU5KSHn4oRY/Pdu8h1b3M/
 Qs7zYTIQ4NOSTSDBT46xBObb1+PolPrOabqQokafRgGC6mcQ7KggujYfOHAeIVPYD4Npt9iiM9f
 D1ElhqE6oVQDPz5ETbj2l+3DhraXonVdJa+zDAAv6bm7sUnYUsPKOPcronG6zxfvS8NpvNm4FcA
 3iTpzscFpcuXPEiT4usuN+C+qMqOWlg9k7NCmCKOLjeTQtqm6NTnjJb5cW/5eLcV7hwglmEz
X-Proofpoint-GUID: 3BPUbRz7v0TZ7q2x6OUtdBK8efJYwsjL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505160107

On 5/14/25 3:15 PM, Kathiravan Thirumoorthy wrote:
> 
> On 5/6/2025 4:31 PM, Kathiravan Thirumoorthy wrote:
>>
>> On 5/3/2025 3:53 AM, Konrad Dybcio wrote:
>>> On 5/2/25 6:28 PM, Kathiravan Thirumoorthy wrote:
>>>> On 5/2/2025 7:33 PM, Konrad Dybcio wrote:
>>>>>> +static int qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>>>>>> +                    const struct qcom_wdt_match_data *data)
>>>>>> +{
>>>>>> +    struct regmap *imem;
>>>>>> +    unsigned int val;
>>>>>> +    int ret;
>>>>>> +
>>>>>> +    imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
>>>>> Try syscon_regmap_lookup_by_phandle_args() and pass a phandle, see e.g.
>>>>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c & phy@1bfc000 in x1e80100.dtsi
>>>>>
>>>>> That way all platform specifics will live in the DT, requiring no
>>>>> hardcode-y driver changes on similar platforms
>>>>
>>>> Thanks. I thought about this API but it didn't strike that I can use the args to fetch and match the value.
>>>>
>>>> I need a suggestion here. There is a plan to extend this feature to other IPQ targets and also support WDIOF_POWERUNDER and WDIOF_OVERHEAT cause as well. For IPQ5424, all 3 cause will support and for other IPQ platforms, we are exploring how to integrate WDIOF_OVERHEAT. In any case, can I define the DT entry like below
>>>>
>>>>          imem,phandle = <&imem 0x7b0 <Non secure WDT value> <Power Under value> <Overheat value>>;
>>>>
>>>> and store these in values args[1], args[2] and args[3] respectively and use it for manipulation? If any of the platform doesn't support all 3, I can update the bindings and define the number of args as required.
>>> Let's call the property qcom,restart-reason and only pass the register value
>>>
>>> Because we may have any number of crazy combinations of various restart
>>> reasons, we can go two paths:
>>>
>>> 1. promise really really really hard we won't be too crazy with the number
>>>     of possible values and put them in the driver
>>> 2. go all out on DT properties (such as `bootstatus-overheat`,
>>> `bootstatus-fanfault` etc.
>>
>>
>> Thanks Konrad for the suggestions and the offline discussions.
>>
>> @Guenter, I need a suggestion here. Currently as part of this series, we are planning to expose WDIOF_CARDRESET, WDIOF_POWERUNDER, WDIOF_OVERHEAT reasons.
>>
>> Once this is done, we do have the custom reason codes like Kernel Panic, Secure Watchdog Bite, Bus error timeout, Bus error access and few many. Is it okay to expose these values also via the bootstatus sysFS by extending the current list of reasons? Since these are outside the scope of watchdog, need your thoughts on this.
> 
> 
> Konrad / Guenter,
> 
> We had a further discussion on this internally. Outcome is, it wouldn't be ideal to hook the custom restart reason codes in watchdog framework, since there is no involvement of watchdog in such cases. Also I don't find any references to hook the custom values in watchdog's bootstatus.
> 
> If this is fine, I'm planning to resend the series to handle only the non secure watchdog timeout case. In that case, as suggested by Konrad, everything will be handled in DT like below to avoid the device data.
> 
> imem,phandle = <&phandle <imem_offset> <value>>;

the part before the comma is a vendor prefix, so that must be qcom,xyz

what are your plans for the other reboot reasons? are we scrapping them?

Konrad

