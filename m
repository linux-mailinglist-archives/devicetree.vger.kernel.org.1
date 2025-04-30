Return-Path: <devicetree+bounces-172379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A795AA4929
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAD86165E2E
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA4F238C1B;
	Wed, 30 Apr 2025 10:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQemy+9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D801823507B
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746010110; cv=none; b=pqAqfbGxpDR0APU6Kko6S0eXTj5QKr40QROzo6ZFrmRftUK2gaX/jfHJcGKTD3ZuWyKYPes516C4sw5im4K9d6Ah0NsLafge3u5ZgCfcI9Rl3KbOlsGESwzv6I7SIbVLPoKzlU06JY0TZn+hlGFDIEA/cnP+O2Mxzt4KBTOYC0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746010110; c=relaxed/simple;
	bh=HUZJ0kiFIfagM5qDzDfVS6B9VE42Qo4QIQCtcjqvCQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o8wsTMZad8AM+05fp8wKV5nv30L38Gwgbe8mrrwOzE88BK0EZPgI2Tz3otohcxl6dB6tBCitE51Ag26CPTLwXWGD/RVNyP3JSTOJgRtOi6I4Qr3zSUdrTmyK6ScbuuwNUIB3YCMIFIC2xUMhie2jThIhkeMetpyzGdtVfMITOvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQemy+9b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9Ef9Q011940
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:48:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	thrFPzGty7F/8SDuyjBcH9oFtizk5EGXXAc/JqBK8HA=; b=cQemy+9bvktrI3gC
	tQhBbrFENlkHcG3qFzhT9CtudON35yG4XDKbi935qETvyNnB+at+itrw1FWLtLtW
	8zN0amwlwFezyQHCCzMUkRjrcnD/iVRAlqVjseyDLiQ5G3EioKQNGmS9UJfOJxi4
	D40m+XIOpICUXoreRtPUn4HII2k1VL0atUCzwud9aBowSO8QM9XW5ctwUfpa7eYt
	8Hr8o1uhKaNB5iEfUmUSaWwIIkskds3oicNx2djilVlBIXsKJJPYhjW8fnIUl3Ri
	OdoHAiS9rI8OCWFlRmhgZF9OHWYCKKOqemubIfREvc88lpScxr6sWttEviOjkODQ
	rnXEOg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6uast28-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:48:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso18880216d6.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:48:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746010107; x=1746614907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thrFPzGty7F/8SDuyjBcH9oFtizk5EGXXAc/JqBK8HA=;
        b=FaGT42Bf8hw1OTbdTil8bhO8n7x+o1wUtP6qYYrvrjg/6CMGEpHNijQhgDIJGENoNz
         QmjJeVN/bWXYwlEZzeyUg9udAtuUK8IfzW02zTwhJKDI777k4+uePDERKG/qxEoIjf+m
         hHvUWzMMl1P2R1qLhaiFquFY7iNSnWB9qP/wJX6FsplutssoKKbq4mBEm4FZXhT7HQdz
         hKI+TIHrGaZIFGBj3Pwalo6PZIqnra8Kkfd5zo2sRFK6MdSHXSwjLn7SYLbaz2YF34ms
         NCOBMCVzUJye5O5h+4mHDEGcOMZKlSsftT/EWvQ82J03rRAXGESpc2jmnhkqbVV3m1w6
         trQA==
X-Forwarded-Encrypted: i=1; AJvYcCXV48eZ8Pfv1nFKTkeVyyaw5SWzSfLVyuk72gmQhnAWWiBgLvo72GRk9dz84935hmH98um5h4Qn1j7C@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9TmCQjsmgDkimKVazQmduivTIz3/JwijDmIO/AfmIhzX0JbMU
	cJmkis1zxjOkB/BaI1ZmzhddNae7ravc3F3oHGVtZ/JLjF6iNGYGHUXM2glMK8g5zAQrsq/KTai
	tRVv9kJ6DPNo/6Z79sdVt4K+BKgP8+oH5VYze7SjeG9UaV9V+A+JwxJW+wbXF
X-Gm-Gg: ASbGncvzS1Bac/3nzLwasOb+C09czRliFoiaeOcw0qdAW+W5QZLgrQuoe3oV9dnLNia
	X+u1CfqCUgLBUb3P72GMMuphAYhWqEfjSX5dplQucGmhbzE7OWby7xDlkOnexEeAv+TIwH70zGQ
	kuKBZwRta/cOlrcjtRSbpThKkf14onBDNgz47uFApH/e9yL/urc4PYeSEZf57quMDUaXweDZcCs
	V/6eKecf+gsUY4nMOZJCTd//UP0z40O3X3IrF1J0sQm0kL4DrI8YFIOGPmI+TdnTnZIuWchxcDa
	VBMEloHwWkdmnPd62jWAKAm3TqGj9YrPim1XO32LFQx6vC8Qk6rv5lwXenPtudUnDNs=
X-Received: by 2002:a05:6214:2502:b0:6ed:122c:7daa with SMTP id 6a1803df08f44-6f4ff31a17fmr9575486d6.4.1746010106767;
        Wed, 30 Apr 2025 03:48:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0I+MWpI/DLGgE0VvQaUagtp3xqrWqaxp0RpsDMxiLjCBXksVORh5F9UEO/SFtS0sPtiEPZg==
X-Received: by 2002:a05:6214:2502:b0:6ed:122c:7daa with SMTP id 6a1803df08f44-6f4ff31a17fmr9575326d6.4.1746010106413;
        Wed, 30 Apr 2025 03:48:26 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f701400078sm8682132a12.27.2025.04.30.03.48.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 03:48:25 -0700 (PDT)
Message-ID: <3a29e34c-d286-4673-adac-1fd8627c3eff@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 12:48:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750-mtp: Add sound (speakers,
 headset codec, dmics)
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-2-50133a0ec35f@linaro.org>
 <dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com>
 <e61e17ca-fed7-4712-96fc-a9a2339de1fb@linaro.org>
 <9b6c5f67-0bbc-490f-9982-4e28218aa6eb@oss.qualcomm.com>
 <0e007f7f-d9ff-4b2d-914d-ad62b9983bba@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0e007f7f-d9ff-4b2d-914d-ad62b9983bba@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TOZHdgnAIMuHqVzWV1buw_4Y_WflVNjz
X-Authority-Analysis: v=2.4 cv=KtlN2XWN c=1 sm=1 tr=0 ts=6811fffb cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=sEqJwgzUYoqTtiq2YHoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TOZHdgnAIMuHqVzWV1buw_4Y_WflVNjz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA3NiBTYWx0ZWRfX2SfMFWX8wRou K7RAYRVb6iWzjWmNvwr1YDc1HTF7gir9FNM1U2Xxx3LvPeGQ+iohGuAZKHv1Bv9fx9qEAuewkeE BNyXwXx7/kOtTb3EiLv3NM8//oNFpcWsXrl1OFnzUNARS7uvVmZGWx8uw6fPD45QWV7hh6Z8wmi
 AZeR+B3DP15wvEHybQNnH72f6n8tuv4SK+4joYBUT6VdtcbEscYHMOqJj33SwmheZ3XmnHd1lD1 WTo3FXXZhriez8puSdcxz6juRqknIuvuMqwRRG/JjiumXH75pvE4mELo0OX22+Nu4ochlF4kQsb g8ZUl0x7BMgfzUVi+tyT2CFEtLNUZGzSpcNfHKPfgjKBkN2Dw+vySyqjls38sx+oOUoz3cInPYt
 ioP/9BBWnXrP0lpiLGxdP2dr+Fuej8m9xMLjCZKePl4U5zpTWp3jYy5YrI5qt/S2+1JelwA7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 bulkscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300076

On 4/30/25 8:19 AM, Krzysztof Kozlowski wrote:
> On 29/04/2025 21:11, Konrad Dybcio wrote:
>> On 4/28/25 4:41 PM, Krzysztof Kozlowski wrote:
>>> On 25/04/2025 11:30, Konrad Dybcio wrote:
>>>> On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
>>>>> Add device nodes for most of the sound support - WSA883x smart speakers,
>>>>> WCD9395 audio codec (headset) and sound card - which allows sound
>>>>> playback via speakers and recording via DMIC microphones.  Changes bring
>>>>> necessary foundation for headset playback/recording via USB, but that
>>>>> part is not yet ready.
>>>>>
>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +	sound {
>>>>> +		compatible = "qcom,sm8750-sndcard", "qcom,sm8450-sndcard";
>>>>> +		model = "SM8750-MTP";
>>>>> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
>>>>> +				"SpkrRight IN", "WSA_SPK2 OUT",
>>>>> +				"IN1_HPHL", "HPHL_OUT",
>>>>> +				"IN2_HPHR", "HPHR_OUT",
>>>>> +				"AMIC2", "MIC BIAS2",
>>>>> +				"VA DMIC0", "MIC BIAS3", /* MIC4 on schematics */
>>>>> +				"VA DMIC1", "MIC BIAS3", /* MIC1 on schematics */
>>>>
>>>> Is this a mistake in what the codec driver exposes, or just a fumble
>>>> in numbering $somewhere?
>>>
>>> Which mistake? MIC4? Schematics call name things differently. They
>>> always were, so to make it clear for people without schematics I wrote
>>> which MIC it actually is.
>>
>> I'm not sure how to parse your response
>>
>> are you saying that there are MIC[0..4] that are/may be connected
>> to different codec ports, and that the MIC4/1 lines are plumbed to
>> VA DMIC0/1 respectively?
> 
> Yes, as always. Nothing weird here.
> 
>>
>> I think I got confused about the MIC BIAS3 going to both and none
> 
> What is both and none?

missing Oxford comma I suppose.. MIC BIAS3 goes to both MIC4 and MIC1
and neither of them has a '3' in the name. I was wondering whether
that's intentional.

> 
>> matching the index, but perhaps that's just because it comes from
>> the WCD (which is the third piece of hw involved beyond VA and the
>> mic itself)
> 
> Again, what is the mistake you are pointing here?

I'm not necessarily saying this is a mistake, just thinking out loud
how I understand the non-obvious plumbing

[...]

>>>>> +		/*
>>>>> +		 * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
>>>>> +		 * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
>>>>> +		 * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
>>>>> +		 * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
>>>>> +		 * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
>>>>> +		 * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
>>>>> +		 */
>>>>> +		qcom,rx-port-mapping = <1 2 3 4 5 9>;
>>>>
>>>> Does this deserve some dt-bindings constants?
>>>
>>> No, because these are hardware details/constants. Drivers do not use them.
>>
>> I'd argue it makes sense here - it makes more sense to pass meaningfully
>> named constants to the driver, rather than blobs with a comment
> 
> Sense of what? You want to make it a binding then answer what does it
> bind, what part of ABI for driver is here a binding (answer none:
> because driver does not use it)?

Sense of the magic numbers that otherwise require a comment.

dt-bindings don't exclusively contain enums-turned-defines that are
indices of C arrays - some contain various forms of hardware ABI, be
it register addresses, or names for magic values

Konrad

