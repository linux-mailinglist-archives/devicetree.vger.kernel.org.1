Return-Path: <devicetree+bounces-266053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDvcEg07lGntAgIAu9opvQ
	(envelope-from <devicetree+bounces-266053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:55:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E731514A952
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44661302AC30
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE5231AA84;
	Tue, 17 Feb 2026 09:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pg30BQZt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eDJ6huIm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A942F31A7F6
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771322096; cv=none; b=YnG1pjrjyRikH4Y7oSmn2Y/LSm1IMNgAXphkyLd1vKSYR8OmgSr8r25AGXR148LEyVMLSBabtzHaSHN5HfaeG81DaXAVtjzWK3ep2CFoYTSz4IZD6o5wI3cyVbjYeHecEhqLJStwFASPT/rLoZ9rADAvwiyUhDM6y4/oAILLfa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771322096; c=relaxed/simple;
	bh=NajylIh4wU6QxHDoZpZCd4doUZfOSptyiHaPIk8P1FU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=edZIlxkVu6aCo+CWruILz3E8CyWSOFaFOjlf0Dia7W3dhhb5vFeNZqxzZZvEa+FIwitQb8VbaHsq+YbxKS4Bnn12r4+t/N0PNnIKhvJlv1oH6IKeTPVHjgoOHRD0DMTk+o1IJ58jkr47ENUN/9cMdqEB9ciYsmYU+tSXVgfHOuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pg30BQZt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eDJ6huIm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7nBQ850080
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:54:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z3pQFaahyW/H3T1LaSIHvK20xeUyryfazpOHa5zl7rg=; b=Pg30BQZtOXr9+rCv
	DUCVmkd+CSHfwgY9At0Rc9vVL/E7/u8X/Yjdkb04kIqkzFEmXyAYSBNOVEd0w1Ah
	RunFVw9OvbJRv5Q1qCTDSQR+JrQWpgiVhVSwX/YLjd20JAZHOQgfwI/axnlspm6o
	6SIoJRAyFpmx5oUz0BdFTdPOKNMof7VfrZEzF4dDh5ROOx0XKtp/zcH4FeZK4H0M
	NVtE5wsRS6vnYT/Ce0IaZgnm+zBi4sDy3TsNUHmVZi0ao0qcgI6l31ye5Wsnj03o
	5xGAbfI9Mwhx/gtLvTFT3M9kkk9x0xbJgAOWH/MNI8nPSOqPB/F7hVxKpw6BVztc
	e9Saww==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrsu64-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:54:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954ab64c65so41558586d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771322093; x=1771926893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z3pQFaahyW/H3T1LaSIHvK20xeUyryfazpOHa5zl7rg=;
        b=eDJ6huImguToDipt9fic6IK7tU7/4NYV40wbY7DldAU76Dmts4YQ2A+SMu0MJFG0nF
         w+k+j8O8OnzEC/TMEfLr/UtqwndTwaGRarRZw5NiV2avYfKGniPlPH2CXHYiwMHN6b0D
         RU5ScrFRnhY1jC6VKunK9FOduzOaxe2qL1uKgdyrHB777kScD45HrrVpm7vpLScy/uZ0
         1ltdmSXUSp5tQcvvceZUW3hLWOq7UidP3rkQIrpaVCdiHQcmC+nouipr5qNsGlU03Vs0
         pMNYW4TYKyq+7obRlShxEvtnz1/kH1vXrj9Zb4oOahPetHoFtXjBEjWYtpAiR6w2Woma
         /9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771322093; x=1771926893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z3pQFaahyW/H3T1LaSIHvK20xeUyryfazpOHa5zl7rg=;
        b=LFydtuhXNdJ8dKq8jgtb3lq7P9ohCtyxQPcp2RY8TLLLKUffw2VJ+XlDe9N7e+b2Iz
         8sfSUBp582rmCe+QzFrH6w1nIvsiiQBbxtKhcfhzLjDwFSGRbtXountA50QedBlfDjo8
         RlmCB6XaJGJyQ+POTk1iY3DCthp280EMPkDL7Omp46gfoOKAEm1I852P2f9vmJ9BAEIW
         r1zw9CENoI2Zsx+DytG3ukGCBw3/2SV6EkfXeJ+l2KKzpffBhuLEgxvtHMd8wLrlFXud
         EKsQqlZtwIicyXidx1X+VqMHmU12FML3uz3DGAfK6Zw/ultO0zMpLcUWBEG9yU25Zbq8
         KGQw==
X-Forwarded-Encrypted: i=1; AJvYcCXmCaC0z4Bt5l4oBqaVAtmecOK/aE3LpM3oqpf3mx90vLR/FefYuDbEmIhUVGgMhWaq8Lv3cmILq5js@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtd6qPRLlAC5haUbvEKA2yzHG+p1SPrFAvQxRiKDfQdPyir+d3
	ax3uQnZmlTEdfJFbi86mo01un3Za/TF7lplXHsDn0TAOgzWRx0iI8zwGC3Qsy1IS5CAvs2VWJ4j
	tTe+8zwOZwO3ePHbxu92EFeT3UxeijcZT5SlypQydR34vO63dDZZouqWLOsmQgGRK
X-Gm-Gg: AZuq6aLoID7MxEfOn4VdiL2nsLRTkEc164A6hXwA+NfbiexNUMCQmN2NNzC7Fntl6gL
	LEk0A1HrhEoC2isnZAZDth79zN3anISYhASmBM3r4Rv66qQ1ETiW649kI2g0qmTuYEZft3PJYDd
	Q5qXYshcl78+gOzMMSaFRy0hwcpBHu0dYkcf8ykh70LT+RmO0WTib4K2AdE4h34krHSD6k+LdnP
	08z1h2IV6h4D531hgQGR6JaIzvw3jrTotPgTVdrwzBrdSLHPCKaHT+RZax2uHtRs9BmnEGervHW
	YRl7drFc8ARDRo1UqN1a5OlLn72xM8CzaErOJbXjYhjbSPUujGJ+xW52Wo8lCDIjr1ZVOChmSv2
	u0BUHLAac1rJYb1phb8QTJGch1figDIXFztanKWGCYa+dDawSNTH4RBsYcNnUkoIHO7kxF8fxnY
	1a0K4=
X-Received: by 2002:a05:6214:8008:b0:894:de0a:4cf1 with SMTP id 6a1803df08f44-89734819033mr136689916d6.8.1771322092932;
        Tue, 17 Feb 2026 01:54:52 -0800 (PST)
X-Received: by 2002:a05:6214:8008:b0:894:de0a:4cf1 with SMTP id 6a1803df08f44-89734819033mr136689566d6.8.1771322091671;
        Tue, 17 Feb 2026 01:54:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc76c7015sm325219966b.66.2026.02.17.01.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:54:51 -0800 (PST)
Message-ID: <b33938e9-bb5c-4743-866d-4cdccf808a02@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:54:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
 <5zqxloovexknbuhknbafc2trf66d6zwtvtkhjbchmbndxg2j6u@3giwqjkd2vl7>
 <20260202134402.ochfxv3lnju3dioa@hu-mojha-hyd.qualcomm.com>
 <f144e9bf-decd-42e8-b87d-d511552ab6e1@oss.qualcomm.com>
 <20260206182207.3e5a2ui472lqzg7f@hu-mojha-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206182207.3e5a2ui472lqzg7f@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69943aed cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=XiLjxmYdAC64a43f8_sA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA4MiBTYWx0ZWRfX5wnspV55kx7H
 kLBxQz2DOd3TJM1c82vYkFIez9mc5SLQxgjwAjiq1qYTVQIq++39it2fquh8uDd4aVbcYHeZnB1
 thiQn/nCZ6rf9h2FVcNnF8VTc1KaeJ9eA9rHQrsjJeHF6QwZAZ0aXuL5Ms3pOKTqUyf7uJfd4X7
 nC/RiEvPexDmbpebzkpx77YqTvE0n58JqKTpHrZEvMTO2cxt1VVu1WyZvNXU8YdZLZ23Wv+u59B
 WPb8djaF2gVuEhaVUjpFE4qXP6eIDT/oT77tXh8bdiYfK/g7S6BZyX36nRKeWaIYvD87yIMpRAK
 ivNv7OANRZ8Ob4pUObYen+p931kn+aznjsrH1YwokwFQsHI7qkETdJPntpb9173pSeAHdoX6lsv
 ErlYngXi4cTJsNxa0HwxBuC4dcG/a4QKmyw6QafIc5M7jAnNNK/aqNBR7qmH/lrr9Y7VuHW7uyU
 TwVIz63aMIxiFlz1hiQ==
X-Proofpoint-ORIG-GUID: PHlm2BsI2e9ifPy04BuxYZ--SYkAMF8g
X-Proofpoint-GUID: PHlm2BsI2e9ifPy04BuxYZ--SYkAMF8g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266053-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,f00bar:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E731514A952
X-Rspamd-Action: no action

On 2/6/26 7:22 PM, Mukesh Ojha wrote:
> On Wed, Feb 04, 2026 at 01:39:43PM +0100, Konrad Dybcio wrote:
>> On 2/2/26 2:44 PM, Mukesh Ojha wrote:
>>> On Sat, Jan 31, 2026 at 10:18:29AM +0200, Dmitry Baryshkov wrote:
>>>> On Fri, Jan 30, 2026 at 04:14:34PM +0530, Kathiravan Thirumoorthy wrote:
>>>>> Add the "sram" property to the watchdog device node to enable
>>>>> retrieval of the system restart reason from IMEM, populated by XBL.
>>>>> Parse this information in the watchdog driver and update the bootstatus
>>>>> sysFS if the restart was triggered by a watchdog timeout.
>>>>>
>>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>>> ---
>>>>> Changes in v6:
>>>>> 	- Update the 'sram' property to point to the SRAM region
>>>>> Changes in v5:
>>>>> 	- Rename the property 'qcom,imem' to 'sram'
>>>>> Changes in v4:
>>>>> 	- New patch
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
>>>>>  1 file changed, 5 insertions(+)
>>>>>
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>
>>>
>>> I have a few more cookies (stored in a fixed IMEM location supported
>>> downstream) that I want to add, and they are available on all Qualcomm
>>> mobile SoCs. Should it be added under SMEM now?
>>
>> FWIW currently they won't be probed (if you wanted to give them a compatible
>> string and bind a driver based on that), since drivers/misc/sram.c lacks an
>> of_platform_populate(), but that's trivial to change
>>
>> I think getting agreement on dt-bindings may be the tougher part..
>>
>> Are the cookies you want to use attached to any other part of the hardware
>> (e.g. in case of pil-info it's directly connected to the rprocs), or are
>> they general debug information?
> 
> It is attached to Minidump collection storage type selection like USB or UFS/eMMC.
> When we change dload mode (in SCM driver) to mini and change this IMEM to UFS
> then the Minidump will be stored in UFS.
> 
> It has to be SCM driver which should host this but it does not need to
> be driver or device creation.

Then I think something along these lines should be good:

sram@f00bar {
	compatible = "qcom,xxx-imem"....

	minidump_config: minidump-config@baz {
		reg = <0xbaz 0x1234>;
	};
};


...

scm {
	compatible = ...

	sram = <&minidump_config>;
	// perhaps "sram-names" too? doesn't exist today but scm seems
	// too broad to rely on an index-based lookup that works for everyone
				  
};

Konrad

