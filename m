Return-Path: <devicetree+bounces-237767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE10C53BDD
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 140444A5B93
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015962D130C;
	Wed, 12 Nov 2025 17:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Asi0ZCev";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VPr+XK0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF6434252B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762968360; cv=none; b=SMkiHoHgEQ04MLaqhep7WLnoma4UE7iyjHMVZSZ/okcfzHOYMC1fqRaqlNZW+0Z7MYFQXKfkGBstqcY/+8lFQhMjocwjoMbsOWBxA9po6kPTbaeUPQ7NDsiMo3lHLANXM3Bk6BeOkOnGP+HnhzPE9ETP1EOR1bgJ+ugEl5HvS+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762968360; c=relaxed/simple;
	bh=XNGMKOXdST8ZhXMZ1XSg6lZvEmwXGS/pKQzGBgYFx70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hqldoy9g5o0Lty5NoNT2Y5Sd1XU1i9S+50/Ee3lEvEYecYNObEytTG/79w+Ai+RNALIGmbMWS0/JWLzoqzUcwEuGT2joy3yblrV+qFUF2IHNOatr9M7tWwjfHTuD9F9nITkQAi0Gsfyj6tKEmN5U3O7yh6IPE+qvTawxXGStLCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Asi0ZCev; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VPr+XK0u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACF2QoQ1614650
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:25:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UNBYYgKYBAN8KJ+cgQyzq0Cqs/83MYIWHYqLx/z3jiU=; b=Asi0ZCevWHa5vpUq
	wydrPJdR5WLStOV9/DGr3VxUXBZoWqa/zgCg8bnQzNA9P0JK7UM6bgsHvINAq854
	zqyZM0phZQsfIx6xpL9c1I4p4US+sPxmy/0LcPzRNz9D2woOfqAE8a1U3FutS2mP
	RSjHFghPfCdr7dcmWvQAi9fP7Ypnxm6uNKEXYRd73cmbxmuQaAo69Ydiy0SH9v76
	NqxKeS/lvKq1bbs4S4rTIKuTbicFhnAnjDsLE8ovl9cRz8W1G/30ppmUHADbdWLf
	HNty7VP9ltQnvlYP2xrXREZ3xHnosdp2Z7YvNYoTWHluPLcq866qz3nVukaBj5zp
	gc/y5A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acvhfrfud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:25:58 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bc09a8454b9so1534143a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762968357; x=1763573157; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UNBYYgKYBAN8KJ+cgQyzq0Cqs/83MYIWHYqLx/z3jiU=;
        b=VPr+XK0uTf5TfcbZlZxU4bGPxtQM+zOuCykpoawK/4CvGvxCmJ73VtbEL1tVRaCMbO
         0CQC4sBswK1x4f9mK1uRxJn2D8adNRupQhKiyBk+YsU3H6yaD/1X/zSknoGLzJ3rUDtZ
         jh7/SV8c/EXZHYycBVH6yqO/98j6Jvc+Fnni6HtXg/9xJsniAkqzAh5hJ5VixwHi3KTZ
         k6c7/nzRwKTMWlzmAog3DZz2W+uWI+APzq6hCkLiGa6Plnkd6FkY1OlzTJ1b2KkL9aUT
         53IAb6cZV7LbtNGNiuJL3iCbLxptDqJmh1RyRZYcVZhbsWRuTm5S0E4qg6mDga4i81FD
         uxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762968357; x=1763573157;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UNBYYgKYBAN8KJ+cgQyzq0Cqs/83MYIWHYqLx/z3jiU=;
        b=Goc0x2isjRvUXVfHdVzCxbPZmkGqUK68epMjlIq2CQSUKu46K10p+VfTgaEgHy6XEG
         i6pifcwx7mZTiWB4xJFlJR+5ov1I+CcFURVlQmiX5HxU7Q6uR8+ml+j+InTfm5H25W7D
         932e27UPAS/z4hqwB6uCBSEsIwTlL2rb1YBHg2HV+bgtTJDCCn49z57gfoTmcldLRxuf
         +8ksPV7ZMRROtBQHEv2nY8vXJrfvQtZd9MC/PIPDJvUPG2xdvE4J6q4EBmkzbW0hVMKx
         P5xCxiLBbKimauHqmTpO6xxUGtT9caa9WDZzPa5OuSU7Fzv6xO6iKyj5RxwEIZLgrHGs
         Jr2g==
X-Forwarded-Encrypted: i=1; AJvYcCVoPe0911o+eI/1tpr4rDxnY+hI5INIgtV2OWCOfHwk73DUQ0JIjf0lZ1wkITbrQLrf/WHhdCC4wsSq@vger.kernel.org
X-Gm-Message-State: AOJu0YwOlG/HLYdIMvROxQa6ZQjvjEMwA+pYariFT5RLahhNV87JebVu
	OrEBvyEl6zLY708/0XlxMSRcZHLBdrR8leK92X398/6LSiwxiOHMMUjNSSXitkNIvoDvrWvDP+g
	LYpi4TXAoiS5XRvc7b2HZNp/DRkxOD8dDAWrdnh1gE899VXzfXT/tFuLWjv1n8oU5
X-Gm-Gg: ASbGnctTUzaRK379Zl8r4JKZvZK0irwlgstCpVQwpUgiXkpjsCF8wJw4bUwb66/rzv1
	6feyy6+NSXUpE8hZd45f5neKpJOQoVBrC17gw1D7XlpUU8tEjTh65UkpgZlJdijo7hoezKkJv/3
	aA6yiON6H4M7xVLP2W93kmBX8VYh34nhOZtcrMjlvqf8MVIfzr3loRHFiybBs5lWRqFYHN92+7G
	AkBCRDLMfoHDXUO+S5Pbc8KiKvbW9VXaDLubaGusrlPNL8hpXBaV/Tqu711zMx08J94/Xyz76mO
	pjPKJRSRbLKurpngp6c34AP3tSDnj4053qqHIDiSsRhBJtho86HN0WZJg+cJo7/lSP07nkPnNd1
	71buzbLmMiiSa2VxOP9V6wn1wa2/ojdik
X-Received: by 2002:a17:903:4b2f:b0:264:70da:7a3b with SMTP id d9443c01a7336-2984edefea2mr49647925ad.49.1762968357057;
        Wed, 12 Nov 2025 09:25:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlxML53eq5FCGodemREH9wM+Y3YdT+a0wr3azep64CW6zyU6Xwbk8j/OZEoJXgKMwh8FNU/g==
X-Received: by 2002:a17:903:4b2f:b0:264:70da:7a3b with SMTP id d9443c01a7336-2984edefea2mr49647545ad.49.1762968356489;
        Wed, 12 Nov 2025 09:25:56 -0800 (PST)
Received: from [10.216.19.73] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dcea628sm35957245ad.104.2025.11.12.09.25.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 09:25:56 -0800 (PST)
Message-ID: <5d03ea27-82e7-1a55-3441-b80c7496a26b@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 22:55:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 09/12] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Content-Language: en-US
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
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
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-9-46e085bca4cc@oss.qualcomm.com>
 <20251110122824.5je5jfoanivl6xrh@hu-mojha-hyd.qualcomm.com>
 <btvknf3tcqhgxzf7ckyvfwix6hxle2bs4whyayan5haaejo3sm@gnbszdys32lm>
 <20251110161950.ngs4ihn3asijoqks@hu-mojha-hyd.qualcomm.com>
 <cvfr4zaceknma6camborq4ro3lwbx3dfps2zjagwhwmvwoxriz@jwybwtzdd46u>
 <20251112111540.w57ygzrvc6m3qbrs@hu-mojha-hyd.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20251112111540.w57ygzrvc6m3qbrs@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D49K6/Rj c=1 sm=1 tr=0 ts=6914c326 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oQ2sxdDcfxKlcFxZ0_oA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: YU-l0bDlCPr-sbmhlJJcqEplh5wMra20
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE0MCBTYWx0ZWRfX/5O9bCY7pXey
 7yhBnibctJU9+KvJfuGITqaag37Xn4TCCr33zGNjgMFL2b+OfgWc+X+ewo9Aa9y+zsZUk+BMCjE
 2jgCdWsnLuQ8LWGNnjbaeALR8g0sp6qldbLsk3eFF3yIB1Cxh8g9ZkzDFuZTHWs0ZTUw6ybDC+8
 WWysmBLDaqOS+NQl1gAYrNhoxgmpyX3l/MGEVQND110gLhUTk7CCey5RoIvWSN6uEJkY/vqeMW6
 5VXNfJ9R4KVIe2f3LrpNzaeb/sonioF4pLuItCpTor5iC2PtoAZ2mEmX5d5RRWOhEp+uYdEeS/8
 b1fLdjFjS9JzsMuPbYqqpFS0Bic3CNzzKd4U3USrCrF+/twEqkmUK98T8QAKl0Yr3KUzG0Fwre0
 iji2Ln/PBO7yWQ4/2gUel2Yt2hW7Dw==
X-Proofpoint-GUID: YU-l0bDlCPr-sbmhlJJcqEplh5wMra20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_05,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120140



On 11/12/2025 4:45 PM, Mukesh Ojha wrote:
> On Tue, Nov 11, 2025 at 10:52:34AM -0600, Bjorn Andersson wrote:
>> On Mon, Nov 10, 2025 at 09:49:50PM +0530, Mukesh Ojha wrote:
>>> On Mon, Nov 10, 2025 at 09:30:26AM -0600, Bjorn Andersson wrote:
>>>> On Mon, Nov 10, 2025 at 05:58:24PM +0530, Mukesh Ojha wrote:
>>>>> On Sun, Nov 09, 2025 at 08:07:22PM +0530, Shivendra Pratap wrote:
>>>>>> From: Elliot Berman <elliot.berman@oss.qualcomm.com>
>>>>>>
>>>>>> Add support for SYSTEM_RESET2 vendor-specific resets in
>>>>>> qcs6490-rb3gen2 as reboot-modes.  Describe the resets:
>>>>>> "bootloader" will cause device to reboot and stop in the
>>>>>> bootloader's fastboot mode. "edl" will cause device to reboot
>>>>>> into "emergency download mode", which permits loading images via
>>>>>> the Firehose protocol.
>>>>>>
>>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>> Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
>>>>>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>>>>>> ---
>>>>>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
>>>>>>  1 file changed, 7 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>>>>> index 721a26d49ccaeb1429e2cc1c3a5c8d9517da3be6..cebdedd5d614b9efb6dfbee91dd67f3c3e322a38 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>>>>> @@ -935,6 +935,13 @@ &pon_resin {
>>>>>>  	status = "okay";
>>>>>>  };
>>>>>>  
>>>>>> +&psci {
>>>>>> +	reboot-mode {
>>>>>> +		mode-bootloader = <0x10001 0x2>;
>>>>>> +		mode-edl = <0 0x1>;
>>>>>> +	};
>>>>>> +};
>>>>>> +
>>>>>
>>>>> Make sense for this as it leverages sc7280 and adding it there would not
>>>>> have made sense.
>>>>>
>>>>
>>>> Why wouldn't it make sense?
>>>
>>> It is better to add for platforms we know their firmware support this
>>> from day1 and not add for something like chrome or any other variant of
>>> sc7280 where this support would never come or not tested.
>>
>> So SYSTEM_RESET2 only exist in newer firmware versions and hence this
>> isn't (and won't be) broadly available in SC7280 devices.
>>
>> That would be excellent information to put in the commit message, so
>> others writing Kodiak dts doesn't feel the urge to copy this and debug
>> why it doesn't work.
> 
> Sure, @shivendra please add this information in commit text.

Ack.

> 
>>
>>>>
>>>>> Acked-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
>>>>>
>>>>
>>>> Please read submitting-patches.rst about Acked-by, and use Reviewed-by
>>>> going forward.
>>>
>>> I was acking the idea of this particular change in platform file compared to
>>> other patches, if above reason looks fine, can be converted to R-by.
>>>
>>
>> That's appreciated, but per the documentation, the meaning of acked-by
>> is different.
> 
> Sure..
> 
>>
>> Regards,
>> Bjorn
>>
>>>>
>>>> Regards,
>>>> Bjorn
>>>>
>>>>>>  &qup_uart7_cts {
>>>>>>  	/*
>>>>>>  	 * Configure a bias-bus-hold on CTS to lower power
>>>>>>
>>>>>> -- 
>>>>>> 2.34.1
>>>>>>
>>>>>
>>>>> -- 
>>>>> -Mukesh Ojha
>>>>>
>>>
>>> -- 
>>> -Mukesh Ojha
> 

