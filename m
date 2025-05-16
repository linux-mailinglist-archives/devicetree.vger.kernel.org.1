Return-Path: <devicetree+bounces-177975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A68ECAB9CAC
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 14:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46A089E21D0
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1446241662;
	Fri, 16 May 2025 12:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KnetjtkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18446235069
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747399947; cv=none; b=s1Cw0P+IPa81+iUARcI/zat7TeT7kmSKcqQEavbvCU4r98OYu807T1hK993gV6CV6T/VaXNWabwkULvnPSvoMsICUAIDvUxg1nui8c08frFAqwxcm1R0WTdAtyV+b+HToGi5MAYPcIxjfkXfMNrUBs39c/w09XJtw0kQlx7TQck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747399947; c=relaxed/simple;
	bh=uKhICCuk0zTYgGsjguAvEIXXEbAvO6LehqtVILPdKRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pryp8VlKxvdeOjZQssMM4rn4bAKDvJ0tmnSXx9ZMG1w/bVPpYZlC/tb9csnFLCspCcxMZ1mY+i1TehF0Uqh3DlrfscRUnRQppyFpdtnOSiUBB/tiz1EKht1jJcWY5U9Xt6ro4Y0NsM+tWOSnLjjdsggBDrREcJMukVhzcRIP+6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KnetjtkJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GBU20U026181
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 12:52:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2V/BUr7ZXr0lhQ+QdHNR/34NUNiNJwz+Ra2V6/Brrso=; b=KnetjtkJCYDxiUPt
	fhSA/JC+TupadgIGlq6bl46qq5XxA+rkLlp174BOWeAU3OhfZuv3m9O22kUM4KKW
	73uQY4KbwTta9m9GWvcdkr3LBaC12Ff9vBRZC7SkXuOnj5qoOrElpXFY3zMBDVbM
	Opiyp6qdsM1V/xdp/dc7KZLyVi0ApI05My2a/YkxJnnJFtFooul48A2GI7BOPzHZ
	+lbWTlizeLwvKaIyAyCuO1adFdmCpFpO7OEBDo4UJFPcW4b4u3S0l2JBkBWChMPe
	2fDQePc4QQTMHstqcc6sXXzyCl4RRFaTn3wTRkvclCXXY+vFoLjF555iBF7FPgee
	EQLWBA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcyt5vm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 12:52:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7401179b06fso1728754b3a.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 05:52:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747399944; x=1748004744;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2V/BUr7ZXr0lhQ+QdHNR/34NUNiNJwz+Ra2V6/Brrso=;
        b=RL4XWKPtDoEpKVWtZw4KRNRlSutwvTY+B1re8hfPHHyj3Uk0ED5CYmTtoFEYGnybZ0
         6fAv4OJXM+exQQZhxXU0BMl80qPsI7Bt79i+c+kikNCSVDUztKKRDvwKPMP36RqEKuQH
         CO9qrU/cepdY73kBG4fuwZ20kL7XKXExp2TZ4+mAs7189IoL1aFFfcqDh8evsO4eYLVl
         VFoMOcmZW21XBrAIzyedrOuUShwIi01H2Gt0bax1+9igN0iGg+dgarJPCiWaZUXApv5X
         BEIj2DrgPV9tkSU1/qz67lviD92oi3Z2nh+hZS4qmKVSLD1r7GJdS8d7DqZjAnMK6bak
         A1OQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9UBkiylYgS3tZxAGJBiPmnaQ2NHcC9F4e9JMU+oyVLaHlNLdIztwMPnHERtfksGl6wqrF/yBs55Pr@vger.kernel.org
X-Gm-Message-State: AOJu0YwOM4+jS98rnQ6aGOBctAZeLoyMGHostDEoxWsQIlDTsTQtfrg2
	2JJnNY6n4W8o2AJgm3cPV+fKKoci56tjcSi6AD18QH+jUKJixvlW2edVhMuvvqVj2F/vHsEcTme
	vwpNrLBUCmWfg4GiRZqE8M46KJGfbLD6eCDIf1zNcXKjpeCYggaMqM6nrm2YgiVpl
X-Gm-Gg: ASbGncvPxTsDQbIs3U/mDVe3yFSdw5zW09kNOIh99fN4KfFq7C0DgY2s9v4094t9h/I
	hj2CbMAwI6yThTUYoiLOtT4Ri9DrlmMwgtyoeTAoNuTtsgIcBwRRNMWSsUbSrT8VUfsaabrlUFK
	oiFf4MOuAUTBq0V56s1pWQkH2TEtqYY7o2nfUZ4kmFIqX0E+QtcTgJbKxj9Iv3kUxpcbfIr0ypK
	mXR2+j6p3T51F31WHsiZP/dB3p+BLk+rejShDKKtYxIQN1SKCtUKqWw1WgW1UgqPcMHTPNkY9zJ
	eJABgzCFKaCcIhMGKrd7uGn0W48owFjoLS5byBdMHmJCM0oVc7/W
X-Received: by 2002:a05:6a20:9f43:b0:1f3:40a9:2c36 with SMTP id adf61e73a8af0-216218c3e5amr4376688637.10.1747399944133;
        Fri, 16 May 2025 05:52:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzCWQn+x5MwV9MAlN0kJn7a3Uyg2pwQjt2HdaQjQuLi16hEehwK+dqDOyCULfIHpBaR7lccw==
X-Received: by 2002:a05:6a20:9f43:b0:1f3:40a9:2c36 with SMTP id adf61e73a8af0-216218c3e5amr4376660637.10.1747399943696;
        Fri, 16 May 2025 05:52:23 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.85.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a98a2550sm1427482b3a.167.2025.05.16.05.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 05:52:23 -0700 (PDT)
Message-ID: <0a73989f-b018-473c-872a-5cbc2e7d1783@oss.qualcomm.com>
Date: Fri, 16 May 2025 18:22:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
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
 <6274641a-7366-41cd-a0a7-a9e9cc41b8e6@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <6274641a-7366-41cd-a0a7-a9e9cc41b8e6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ektjFqf7qDQBBxbcz2lO01BNX1eTHq73
X-Proofpoint-ORIG-GUID: ektjFqf7qDQBBxbcz2lO01BNX1eTHq73
X-Authority-Analysis: v=2.4 cv=JszxrN4C c=1 sm=1 tr=0 ts=68273509 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=P+HiGktFAnQmcg2NW2se+w==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=FpJc--pfKuwgGcmHpKQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDEyNCBTYWx0ZWRfX+RExfKyIt3E9
 RiAnd8HI1gi8XRSifEuxf0hNS1tmjb0kklyqJXB5EhmCHG33ocnbHm4Rz2gl5yyagDhRgGZxZ/g
 pJw3zDz8qSafai5qd9CKNxFuH5aVillTmQdN9SCiV2vLS8LB7hFctef4YYAWa3pfRhqYvEQpEbo
 6KL5/DKOz5PImbmoCnO8FL4Rd6C6KhcXMDRNPe2RAMGuG3Yu027hfVoOd21zHllxEDN0E2uTu0B
 x49cinOqIe9J/1/Z3lCJjQUWc3kUM6siyaTRAc2MP3XLrj1DZeMcZiTdmPhbz83/AFA37KpdKT2
 eGFZfcUuaT87NBUwGtTdu5BPQGySdy4vvCA5o5jXTYGEl4enVlUPQmCjm1b2A7u9v3/yrfEwEYE
 VDRuXWE+Cm+A/w6gQ41uugR5dDfLb6ANpqFkEIXCYhBLeLAy+UPGGPNVZ3UabEl5zj2tdVBP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_05,2025-05-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505160124


On 5/16/2025 4:48 PM, Konrad Dybcio wrote:
> On 5/14/25 3:15 PM, Kathiravan Thirumoorthy wrote:
>> On 5/6/2025 4:31 PM, Kathiravan Thirumoorthy wrote:
>>> On 5/3/2025 3:53 AM, Konrad Dybcio wrote:
>>>> On 5/2/25 6:28 PM, Kathiravan Thirumoorthy wrote:
>>>>> On 5/2/2025 7:33 PM, Konrad Dybcio wrote:
>>>>>>> +static int qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>>>>>>> +                    const struct qcom_wdt_match_data *data)
>>>>>>> +{
>>>>>>> +    struct regmap *imem;
>>>>>>> +    unsigned int val;
>>>>>>> +    int ret;
>>>>>>> +
>>>>>>> +    imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
>>>>>> Try syscon_regmap_lookup_by_phandle_args() and pass a phandle, see e.g.
>>>>>> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c & phy@1bfc000 in x1e80100.dtsi
>>>>>>
>>>>>> That way all platform specifics will live in the DT, requiring no
>>>>>> hardcode-y driver changes on similar platforms
>>>>> Thanks. I thought about this API but it didn't strike that I can use the args to fetch and match the value.
>>>>>
>>>>> I need a suggestion here. There is a plan to extend this feature to other IPQ targets and also support WDIOF_POWERUNDER and WDIOF_OVERHEAT cause as well. For IPQ5424, all 3 cause will support and for other IPQ platforms, we are exploring how to integrate WDIOF_OVERHEAT. In any case, can I define the DT entry like below
>>>>>
>>>>>           imem,phandle = <&imem 0x7b0 <Non secure WDT value> <Power Under value> <Overheat value>>;
>>>>>
>>>>> and store these in values args[1], args[2] and args[3] respectively and use it for manipulation? If any of the platform doesn't support all 3, I can update the bindings and define the number of args as required.
>>>> Let's call the property qcom,restart-reason and only pass the register value
>>>>
>>>> Because we may have any number of crazy combinations of various restart
>>>> reasons, we can go two paths:
>>>>
>>>> 1. promise really really really hard we won't be too crazy with the number
>>>>      of possible values and put them in the driver
>>>> 2. go all out on DT properties (such as `bootstatus-overheat`,
>>>> `bootstatus-fanfault` etc.
>>>
>>> Thanks Konrad for the suggestions and the offline discussions.
>>>
>>> @Guenter, I need a suggestion here. Currently as part of this series, we are planning to expose WDIOF_CARDRESET, WDIOF_POWERUNDER, WDIOF_OVERHEAT reasons.
>>>
>>> Once this is done, we do have the custom reason codes like Kernel Panic, Secure Watchdog Bite, Bus error timeout, Bus error access and few many. Is it okay to expose these values also via the bootstatus sysFS by extending the current list of reasons? Since these are outside the scope of watchdog, need your thoughts on this.
>>
>> Konrad / Guenter,
>>
>> We had a further discussion on this internally. Outcome is, it wouldn't be ideal to hook the custom restart reason codes in watchdog framework, since there is no involvement of watchdog in such cases. Also I don't find any references to hook the custom values in watchdog's bootstatus.
>>
>> If this is fine, I'm planning to resend the series to handle only the non secure watchdog timeout case. In that case, as suggested by Konrad, everything will be handled in DT like below to avoid the device data.
>>
>> imem,phandle = <&phandle <imem_offset> <value>>;
> the part before the comma is a vendor prefix, so that must be qcom,xyz


Sure, will name it as qcom,imem-phandle. Hope this name is fine.


>
> what are your plans for the other reboot reasons? are we scrapping them?


No, we are not scrapping it. We are exploring further on where to put 
this. May be we can put those logic in some simple driver named as 
ipq-restart-reason.c under drivers/soc/qcom/?


>
> Konrad

