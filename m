Return-Path: <devicetree+bounces-172083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0B5AA1B33
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 21:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C00824A8543
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 19:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396F1259C8B;
	Tue, 29 Apr 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JYhB/F+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EED4259C9B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 19:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745953913; cv=none; b=gtndE2AfbaXpwXQ0mk4HV/8uTTrxUN3ZrqI4TvfE9TnBD7fDj3fKfi5eI4e22NEQL+zH6kR9bQ8ePJcCKGzNFkUo/ZqhdKFieXMQGGfKTJDYU0ACuzbotC/dkLs/GENOiRoGZrwqdaCohnjXaEQ6nvnjSKs65tED6/ZxkzwCMJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745953913; c=relaxed/simple;
	bh=OkK1nuaCR4f+liV3BJU9Hn/XfSqQ7ubqyxI2NRvoeoU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Eco3meXuBLI40Tf95FXyw6PWv4cyv/IPWqxcn38UuwXnKXMNpp75KcXcpgXX8x6/ropFs+gi8XOeB8AfJkrEbm51Gjt8BmJdCTuFxBqq0IJM0bzUuI8ZWEbMizDmG6TrAlOzXdTHGhKNTh3T775YHgKEXpbUz8fpSPaQon94IfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JYhB/F+I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TA1D9d011905
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 19:11:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eOuPzQ1u72JzG/hJiGVhd19vPe7xFI8iogxywpgJCzM=; b=JYhB/F+IWpwTlCJg
	KnfJ9GlG7u9YoydPi8PMQ4Trv+safIXYDPIlpDS5gjU/sOv/vrup/F6PlwkEZnU3
	CcJ/LOO61aJFvV57YZFg4oIbFf/ppg8UppuvlbnUciSnJGUdmQWyO+3+jm0i7XLb
	66TXe/axtOCzJWWuCtQnDKXFVkWqKZO2ksYm1l+1rttxvWDEFNcsNrqurytgbVCp
	G3DOrJob7G8CVcFiSSP4UrgUe6iotdW9wAsyvMPfviaLbp0t7zFj03khF6kPXjvK
	J7Tv1alpmhzxlnyS+SsQFJo6tKKPuHwdia/jb2gOf6pV/YIK3iUXZR5aGwULlUPg
	O4K5Sw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pg9dp54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 19:11:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so40351185a.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745953909; x=1746558709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eOuPzQ1u72JzG/hJiGVhd19vPe7xFI8iogxywpgJCzM=;
        b=nMmpsfpbKCC9TBVm43XgEeEErLH8SYLDmxPRqRtXclTIN29C1jRL0f48zvdZs+i4Pe
         KtoHzEIN5/g/i3+qiWrSc0CrRsy5dnRT0lWXod1bk6Ac8RKOMoV+x9KV6pfFnT5fg+Kj
         XaV5HK47bv7Mjt6dFQ9pDI/DY6naJ0LkiKZ8EVPyKXpGukg0EAi16INvJWBhSTL+Hi2p
         n1S6fVwdHWyeqM3vDZI+TEjEGLth6NhB5dxdWb2ueHgz/CZMMIldercuc3HaC2TlMvkU
         6AUtqJrB1Ymw5ISMFurJqQOxqlHi3IJXa6R/rIbqiFnSB3cnSKFYT5KgYp0Qo1G8e05K
         4QMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2jyy1ey7muG3MUFXuUSxcsezSHWtqiF+lGcMXWDSnaXCQTcOtgpc0kM+SHScG3nTgyybwrVOdYCj/@vger.kernel.org
X-Gm-Message-State: AOJu0YwYqRENKEsgLCF6aUFdCNeZ2OyoZFN4fqfhYCxdAFGzCyGOqnZ8
	ohGJYjyh30PJcgxneofHeCzeYITlEeL8GtAoduGN1IkepgAXFIgrvBhRSwAZTG9vQ8eshiqWP+O
	eqtKujMi3MCKTiZskZu142zTXqCjidVpgmIPAT2t4ZvsVPIWrirFIWiES5Vtd
X-Gm-Gg: ASbGncuaQ3d7sBY0rxqaP02YXEGoF+hsv7qG7yY3cHKhkpW0QFEZRHzKV30/ErEmLEu
	QKzR9KCrDHxNa0iGbNlOebO3jP5LnrjddSaBdPQtZJsP2RoH7BrSvCEIkiLO9ZB7PSrcl/JNrUh
	nCM73hbGjzZMV94ho0ckpkngRXo87KTzeaVWzrVraYZ5dTu+OJeiqoaFL2fEkOv83B62cMUu5Bp
	6CBomvOr/fSlILrDnPhWsiVLlv29pU52oxJYKZoVVCjeSzO46XjZsEMNVOCkKc2lcM3MrDXAPZm
	NS2GSXUkCbfxd+glN8MnKWGQS9gJjdzqp8BnGqtaoVuw0O1um4JWNI+/wUaaJlLcSg==
X-Received: by 2002:a05:620a:262a:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7cac740676emr18903285a.3.1745953909278;
        Tue, 29 Apr 2025 12:11:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECUOmkr/kU1YdONLI/cWvvS8Ar/800yEHeVe/K9arB9rF847RbVX558EdSx3WQcz0J6BfL6w==
X-Received: by 2002:a05:620a:262a:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7cac740676emr18901585a.3.1745953908944;
        Tue, 29 Apr 2025 12:11:48 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f703831dc3sm7752043a12.67.2025.04.29.12.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 12:11:48 -0700 (PDT)
Message-ID: <9b6c5f67-0bbc-490f-9982-4e28218aa6eb@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 21:11:46 +0200
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e61e17ca-fed7-4712-96fc-a9a2339de1fb@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZpvtK87G c=1 sm=1 tr=0 ts=68112476 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=8veyJhrg5W-E9c7t-7UA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 80WLu15_rKp2cNdVztj4Qt5Isqn1in8C
X-Proofpoint-GUID: 80WLu15_rKp2cNdVztj4Qt5Isqn1in8C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDE0MSBTYWx0ZWRfXyrqNiEYT7KiO 8b1QCtR+JSWbTyJ1zYP8GLB9SZyl+Qx/Eq9j4uguoeJUon5L3lWVX+MxukQjPXQbfpfayeVtdkL /d/uCRdyiOCjMMte3gJm37dZqpCKwHUETyi9QKemm6Am/kbB77don8UG7eMJr5GADWtAV7ki0AJ
 LvtmtHao6lCMS2Pt64iplYO8qRAT8YVCFt8czGYoOg3sF7cDlitNdtNoubRwD6iEfif7V2vhNga 6qoA2DOQuR1D4ssanmAN2L1IlJ8RYl9nstewFiYbnERpuHaR84OW1TdSGoB5RzbrPlarrllnWwR zTc4Ju22cDtYbt+nJmtRfaDkihS9BnKBx//ICUjk7QvoaSkoMkVF+6BeR+97wc025wM0Jrn8hix
 10NhEpySKSstVhu0DYdehumTc2D1tIOKN/wNO7W7vq3wPVJS0BAxcbrvp1YStUgzn1Hy3qwu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290141

On 4/28/25 4:41 PM, Krzysztof Kozlowski wrote:
> On 25/04/2025 11:30, Konrad Dybcio wrote:
>> On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
>>> Add device nodes for most of the sound support - WSA883x smart speakers,
>>> WCD9395 audio codec (headset) and sound card - which allows sound
>>> playback via speakers and recording via DMIC microphones.  Changes bring
>>> necessary foundation for headset playback/recording via USB, but that
>>> part is not yet ready.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +	sound {
>>> +		compatible = "qcom,sm8750-sndcard", "qcom,sm8450-sndcard";
>>> +		model = "SM8750-MTP";
>>> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
>>> +				"SpkrRight IN", "WSA_SPK2 OUT",
>>> +				"IN1_HPHL", "HPHL_OUT",
>>> +				"IN2_HPHR", "HPHR_OUT",
>>> +				"AMIC2", "MIC BIAS2",
>>> +				"VA DMIC0", "MIC BIAS3", /* MIC4 on schematics */
>>> +				"VA DMIC1", "MIC BIAS3", /* MIC1 on schematics */
>>
>> Is this a mistake in what the codec driver exposes, or just a fumble
>> in numbering $somewhere?
> 
> Which mistake? MIC4? Schematics call name things differently. They
> always were, so to make it clear for people without schematics I wrote
> which MIC it actually is.

I'm not sure how to parse your response

are you saying that there are MIC[0..4] that are/may be connected
to different codec ports, and that the MIC4/1 lines are plumbed to
VA DMIC0/1 respectively?

I think I got confused about the MIC BIAS3 going to both and none
matching the index, but perhaps that's just because it comes from
the WCD (which is the third piece of hw involved beyond VA and the
mic itself)

> 
>>
>>> +				"VA DMIC2", "MIC BIAS1",
>>> +				"VA DMIC3", "MIC BIAS1",
>>> +				"VA DMIC0", "VA MIC BIAS3",
>>> +				"VA DMIC1", "VA MIC BIAS3",
>>> +				"VA DMIC2", "VA MIC BIAS1",
>>> +				"VA DMIC3", "VA MIC BIAS1",
>>> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
>>> +
>>> +		wcd-playback-dai-link {
>>> +			link-name = "WCD Playback";
>>> +
>>> +			cpu {
>>> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
>>> +			};
>>> +
>>> +			codec {
>>
>> 'co'dec < 'cp'u
>>
>> [...]
> 
> That was the convention so far, but we can start a new one, sure. Just
> ask the same all other patch contributors, because each of them will be
> copying old code, which means cpu->codec->platform

I've been doing just that for the past couple weeks indeed

>>> +		/*
>>> +		 * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
>>> +		 * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
>>> +		 * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
>>> +		 * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
>>> +		 * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
>>> +		 * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
>>> +		 */
>>> +		qcom,rx-port-mapping = <1 2 3 4 5 9>;
>>
>> Does this deserve some dt-bindings constants?
> 
> No, because these are hardware details/constants. Drivers do not use them.

I'd argue it makes sense here - it makes more sense to pass meaningfully
named constants to the driver, rather than blobs with a comment

Konrad

