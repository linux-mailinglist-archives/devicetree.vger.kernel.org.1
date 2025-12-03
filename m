Return-Path: <devicetree+bounces-243972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE70FC9EC8C
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 11:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85B7D3A5228
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 10:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13F42F12A9;
	Wed,  3 Dec 2025 10:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UnAs7cje";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A/Q2KYGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8DB2BEC2C
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 10:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764759408; cv=none; b=OduQc5URslGVkJJG/qy9bgKGcWbfs4GfJSHgzkDZCESEDztddspLZb7GrNjrkWTkRJLercbaLP2OXbunaQ9EGnabfu5Drv6RYTtgcMsX683Nces5vC3QB6QCb5oVQz8T1aJBH8cuOkDvadQk548l/bAlDEq4JfttxRWjmhBPm+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764759408; c=relaxed/simple;
	bh=OJtmt4XR/zighIaICaUQxLIlg7+Y3bLOoJXNW7fB8ng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oC5079NgYI6VHTXH3nWO4gpjxVsoq6mdIevUMADsgeRywWd6Lyj4q92Fr74PsSdEuIgyk6M0vGNN2euyyP7fiVyHMa6Kd5vVwb5m8k4LzwASqmn5FPLP479uNpIFzTW/YMsoR7N041WXQRU8XwYg4j3O3Qg6D6sRRjLtCLX2kOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UnAs7cje; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A/Q2KYGC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B39Nufo2114369
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 10:56:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wlkhF5TBHhAagkES0cixd99625eLuneBdUOcOeIUj9w=; b=UnAs7cjef2X6qXjr
	ydHGG+ErUGiagwyAzj9O0sDFMneZjnudxuhEV2zdSJBAneg2jRRhvQpQNE6D//RK
	G92qC30LVWEtfCbHZTcLFJRF8sAookVI5vip/mSVAYrhNUevVw3ocDXPvHMmBYYD
	yzK6RyYnTbqlCsRKwo3R9OmUoXI5fm4iI7CzYFj5+RN1MBTjsNURVzfOz2Vk+3rq
	xSRcNCTSu2j/OQo8ssy9LGS9SstdixmMUhX/mB8IYwjwTyFu8jln6fD1159OOtYi
	JVPUej+AOaQ9GNzqo4Xq2x7eZlohYskQPRWylmwSj5drpKt7NLmbsp4gAzQmhx0z
	E23/Vg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atjhpgcyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 10:56:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so21078461cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 02:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764759405; x=1765364205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wlkhF5TBHhAagkES0cixd99625eLuneBdUOcOeIUj9w=;
        b=A/Q2KYGColzq/qRb3ByxH5DOQAxHVNulWsaqNqkdKpj5UtipGh90POTAQFt3PcQ3mM
         EE8zZuAGczwSGgXx/wn9iX1yRO/XvrgJEIErFa+79PohxZLR+iiKXiPxu/lVcJ5Xcgml
         FwrQM9H9Gh8eknX7FUYM0xnufc7JW7sGT9l3VBrLkYu6mTd5NP7lNG4rO7pKeoPrHB5I
         oNZsffPAI+310+vZqz2ojs5VDNV5bK6w8kaPna6R9EZAwcMm8Bln+GZ4rCLqUQEvLTT2
         gXPYoOyeo8InUP2O6CgTqKCsmgyuBR3tPdcaiBOo9S9bHhauPUvUUc6p9oojSgUupLs+
         LeJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764759405; x=1765364205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wlkhF5TBHhAagkES0cixd99625eLuneBdUOcOeIUj9w=;
        b=KC4utiJXiT5Ce8RwaJWvsl7+J1R8un8zwQHNTO4iZCjGBNW4CsU5TI5krWLF4SNEQr
         70u/e4uQKlND6KJAVxvQJS1MWXePaJIBY7gqITXNrIV01RcJryqn1bJskdWfPPXcFki9
         npsCOu5HCNtg5tAgaccIkqqnsbc3N5Irzdh5JK7yI5/op1wANf3eO/lElPvM+6/dm+X8
         Vp9OvHUYKOrCs8YcZ/WiITVuGdN2t2AhTeiS66w8zW7eU9rLXjUKGlTWRDYmUNFytwRa
         1+LClUjBax0Q2CsO5E88UiIJXpcBSy6wXnqEepGOSm/xdZIL/J5Za02LBWxRtOg01Otf
         FT5Q==
X-Forwarded-Encrypted: i=1; AJvYcCV9M0uf4nqKUXweSHT2DWMlxSfrFpJrcHJ65Ua8fK8/NehqHvE5To53Y177WcqsTmruXf47uBGtMWgk@vger.kernel.org
X-Gm-Message-State: AOJu0YzF/qRmqUUdafXSHI0TL+kvWSD+Q7SX5llGjNEBNix65s2xcnqq
	PoE9s5hIJMXq3VNhiIgaa8ndyvSVuPoCJ9zFlSQxSFNsYoS/S/KJOxJnWakgAu+BZjmYxJBocVA
	3wFy/ETjEnghx0shnoe/rArNeLJL19dcacxyKzERQcg3NzBI5JuW8TxjtV9IkPzdk
X-Gm-Gg: ASbGncs2fbzduPw3fYHTsp5dSG0wZxBuRTDz8xajpNoHz5+uE4eR/kMxfkH7N/DJFOb
	VJoMvDTRB2H1XC2Y1jpkUlhgLd/aNOsPct89h/1LwYcJj9WDSnjbBxkamSW6iSFtEYdPDoFyhal
	W3xFtG2RmDeqU2ilSut4xowI88y3CcFIH4VMdkT11JehJGIb67InmnIR4jmpP0FQ7Co5IzAT2tz
	x9f+6g/wy0f91YzTJyCPcehyRDmRV/fL46sGUib5Eis6GFeumXPfTFW7OxfYyURbvAIfp7N/1wl
	ZICfkN6DgkG1t+CHy55XB1tq4iGHfYjgrNZ0ZF6+DFtKUMzNrtgTNk0Y88/EJau9r2jLk9IQ5/I
	8WPmkQUJMAOQXbOJdlXyeqC23gLTuaw7sSLu8NXFKea5gV1o3hKjQ7ACLW+jv3PHuuQ==
X-Received: by 2002:a05:620a:269b:b0:89d:4a69:1502 with SMTP id af79cd13be357-8b5f8c0c5d9mr69206785a.3.1764759405483;
        Wed, 03 Dec 2025 02:56:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkj/PxGQiGLKLkut0E54g3hSB4S41eikEm1v5XWLARNObPBjqCpzJTcKDAApf3uqrKquQfRg==
X-Received: by 2002:a05:620a:269b:b0:89d:4a69:1502 with SMTP id af79cd13be357-8b5f8c0c5d9mr69203885a.3.1764759405029;
        Wed, 03 Dec 2025 02:56:45 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79cbc1f1d5sm285405866b.63.2025.12.03.02.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 02:56:44 -0800 (PST)
Message-ID: <aad15cca-bd3e-48d2-a70f-f1a66726b50d@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 11:56:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: Add support for Surface Pro 11
To: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>
Cc: Dale Whinham <daleyo@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251201011457.17422-1-daleyo@gmail.com>
 <20251201011457.17422-5-daleyo@gmail.com>
 <ae91cad5-5a0b-4c83-9eb0-6e7baf6a33d0@oss.qualcomm.com>
 <CA+kEDGHyx7C7PNxQ8votwABiQpKhAAh126os3OLu-W0kDo2ySQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CA+kEDGHyx7C7PNxQ8votwABiQpKhAAh126os3OLu-W0kDo2ySQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JJg2csKb c=1 sm=1 tr=0 ts=6930176e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=07xxzirJNneZIAj5VHsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: TMHHvVemIieW5roHgtY9IbHbocTfgk1P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4NyBTYWx0ZWRfX9Gx9JgtlSPa8
 XKrRfNI9uE2HmHGJTGmj9SPHtJVUok6wUuMhXAbqk6pikTYzLcA2TCV7aPogSRUHBnnIbfLmuLL
 6dm8rNYQEzXohoAHY/TZ15UvVgb/CUb0B/ape2a+wIv+PIxXJII9zKBuz9tgtclHQ24geE4g6wd
 t3ZD8M+XH2Td9dVqaP6uG9NiJv6itaU72Oaou42PpRu8VMlACHzcyLU7ECQkhGTh4mQRrC+aIt4
 vqLt2CY4rV6PrMJu/E7fC2wJK09HkJZ1H+0ZJTOmsDOdX3vkm4IyoUpZwD/6Z3I5v2qeoommBCV
 s0aS9ESkEXRrHr/ta3+GfVkfaTcxAznxnkEhL8rw3HnSKlkrXWWf/kwoBqqOWM1jBzGSb9ypQYj
 K3zWCCDEj/pa/9pWMsPCo7xZHEfCig==
X-Proofpoint-GUID: TMHHvVemIieW5roHgtY9IbHbocTfgk1P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030087

On 12/2/25 7:50 PM, Jérôme de Bretagne wrote:
> Hello,
> 
> As discussed with Dale, I will take over the v3 submission since we've
> worked on this patchset together until now. Here is my feedback below.
> 
> Le lun. 1 déc. 2025 à 16:35, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> a écrit :
>>
>> On 12/1/25 2:14 AM, Dale Whinham wrote:
>>> Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
>>> Pro 11 machines (codenamed 'Denali').
>>>
>>> This device is very similar to the Surface Laptop 7 ('Romulus').
>>>
>>> Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can create
>>> x1e and x1p-specific flavors of the device tree without too much code
>>> duplication.
>>
>> [...]
>>
>>> +             pinctrl-0 = <&hall_int_n_default>;
>>> +             pinctrl-names = "default";in v3
>>> +
>>> +             switch-lid {
>>> +                     gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>>> +                     linux,input-type = <EV_SW>;
>>> +                     linux,code = <SW_LID>;
>>
>> I.. don't think this device has a lid - what triggers this GPIO?
> 
> When a Surface tablet is connected to a Surface keyboard, opening/closing
> the keyboard triggers a wakeup/suspend event. I will double-check if this
> entry is involved and will remove/keep it in v3 based on this check.

If you have a magnet handy, you can run `evtest` as root and try waving it
around the screen frame - it's presumably just a hall sensor

Konrad

