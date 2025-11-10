Return-Path: <devicetree+bounces-236856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C757DC48633
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 18:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6905188B106
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6CA52DE6E3;
	Mon, 10 Nov 2025 17:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b02Tkkty";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a65FVDfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5852C026D
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796490; cv=none; b=u5dgki9jYIa974MIHDqQRZ4RB3BH9GpXTSUgm34HkmAkJ3YdwnLhyHliEDJkt+wld7XZ/81CAW6h2DNkiN4OE+KoAryO3+o3jWwaV6aJR5bQ56FpiZzvJXwiawkjrWNC/ru0hcSgpJ3Md30c1qI5Kj/A3JpWknY5p4XRFt1+iy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796490; c=relaxed/simple;
	bh=9Le+paz4qi0KOoccQ1CPvXK1zLkPjp6aQajuPiFqnnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kaE+LqbLsJXNQi9n1eWuJyosDsA5bTv8I5ExHxwZz6p6LkkTMP3lGAUXgoOHK8tWoyM34CdU/8HSh1bayzA6g5kUwKX2MKYXA2XVI/V4n3Ib9IaAFs2B/WwijvCgHRJUdWB4PSV/PaOP7cpTMQo8XoTpi9QD5D9kw9HPfXubd8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b02Tkkty; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a65FVDfD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AACMvR83306813
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mah6C/CRdzUeB5dh6iBvU8j/VCs5HqFST+oAymfAr+U=; b=b02TkktyNg8o/kxr
	bjmsfHfAkrPVGAfNwqKk3vsoIjEXZbQTbaMvjUVxneIP6EbZdz7FlQEeo/J4CHYS
	KBUlBRvF0BmcxQJ00X9cZ26AekzHurzKHEZltAv7dqZgv5OsLnCggPFsm6//3vA1
	Ms6+6SRmgXLU2vj+w3RR3luRKOYnKAJKlHHiuBFGq0/s/FRmNzZ5F9qPlXNztwyS
	GUvB3TcBUrPN2cDAtOyHxwJozboeLDUP651wZRThTv21TI/KvkLxlXJ1vtlPSgpX
	W3LonqSrtW2nOjyWmr5X6wSODg3iBsERo57PsxKSPo4+ZyCjsKbQw+zuntie+LN7
	qj8z2A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abg0q8yf2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:41:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e88947a773so84836241cf.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762796486; x=1763401286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mah6C/CRdzUeB5dh6iBvU8j/VCs5HqFST+oAymfAr+U=;
        b=a65FVDfDcPnqqfHlbIlfCvQrwIpT+8oB2/7NH2S33ZDzxFfk2bpmWtTcFITJIWvh2I
         p/hcu00wxu3bB7t7j16S99mvumdYKfrDwL9L7Et2P5dy2VDw4spzVViy4vS0LpgjW6TM
         ZrVSF4HhztHrPKDeE5YqLFDrrj+g4T+WFw3wQhQcKTiODzxTReC5q+MjObfghtHA9gNi
         IT1wCRwCM0P0E1gtk+SYly1WVW8VCP0ShwcCiY8wytXZl/bRPo+ZsTIw0pU0M0zbOl57
         wFfLFXAFSo49aUyQR39eJLa2d8TAnqfKPgPpM/+easji61i5EpdxY5ru7AgNp+AEIH/f
         703w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762796486; x=1763401286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mah6C/CRdzUeB5dh6iBvU8j/VCs5HqFST+oAymfAr+U=;
        b=Oz/uoLom/wVFADs+eX26dQj+M/MtrcMXrCKCkomB+iSGGFpQGWP0U5IW+Qqg0nS0/0
         xtEa0xARE5NUVzGxtPSXmPoGpMC8KJ2vAt44E0ib07hlGZirMnV/SaZzVV6tsq06YxA/
         iPkbpk8g2Pn5Zn2ePQ9DZA4lc5I0OCOWeuyUd9iKLpiUyC2deY3X9q+ss01ThWDSVWjs
         nX05SLJfxBxZ5zhRejehBrytiXRRTASjGwEZIPz9lmdJpi4scLAW1pJduE04hI4ld+fz
         +KYmFgQUPCubkSKeGpGya4zxwLUH/PnG2ULldmUMX/q2S4xVLFsKTIA7DDVR1mxWI/t/
         yu+w==
X-Forwarded-Encrypted: i=1; AJvYcCW5CvdSLf3TjVlbIw0Lg/tcVLCgQOAM6XfIJttx/eiOsT0SQkReGGDjxXKwbnab3RporOZPh5WYqh36@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1nfop5/POZzpKFRK/mx1kW6ti0yumX4BKDgn35/LeaDNi2HCm
	qDb5wV0OLVwpk8rjNYwdVAjhws3dAKoYKs3WC5w4nL7xAOnfFWDSJZUA+KsAW3NpG+/gKQW1JSm
	Gqhv+Eoq03zkaDewspiBK8YcJCTPcQofOna7j26+WFme2SmFqm+aTi05wGD1bCily
X-Gm-Gg: ASbGncuh8TxMsNAIvsceiNxll+BSvlBgkT9J+5e5ut5tzGVqRY6lXrajqCPUoY9ageL
	OLhukJcsSvdErYyrLdRO/PBDWQEF0deAL69CIwSgcd8rAbPOOCVqAtpTN7hiJnPBR7Td9BL3HF9
	vEaJirR+2IiIvUJOR0IXhtaJPgqgNXMofzwUKWl4Z7E+eE4sRcFkHbbeXr0oKFE6y3wkp5vyEFL
	8bZBR223Ejfn61MbXlUFtBZ0H/SRZpfV8IOQCWG9tWEXoWt3GrVUcRZlW5XyzW3TEV26N1eKqru
	MJ9a7uJI0wm6UO85EXduvafBORO7aU5fhZpbEoJtqPC2UXAb+VuFP93x3c6K17ObKWC9knO8wWU
	B0XkKyQxLPLnAOl35QN4/9/N/ow==
X-Received: by 2002:a05:622a:1354:b0:4ed:2164:5018 with SMTP id d75a77b69052e-4eda4ff3014mr115756891cf.80.1762796485715;
        Mon, 10 Nov 2025 09:41:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBDppgSdzr6FUv3e8RZ2+x7huTFbm7O1GvcAnVaSz7ySOqdi82vnRrM1dsCoHtV2ZgDo/42g==
X-Received: by 2002:a05:622a:1354:b0:4ed:2164:5018 with SMTP id d75a77b69052e-4eda4ff3014mr115756511cf.80.1762796485263;
        Mon, 10 Nov 2025 09:41:25 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42b2b08a91esm17816756f8f.2.2025.11.10.09.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 09:41:24 -0800 (PST)
Message-ID: <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 17:41:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=D6JK6/Rj c=1 sm=1 tr=0 ts=691223c6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=cjWOPvm4Lta6hPSZL2YA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE1MCBTYWx0ZWRfX8xSJIeTGZXy/
 cvq1AjjnvVsX57mrPjXpCYt9ppl2vArMUkBWDbl3FUloHww4KTbx6zSrqFsRfA3/2m8iAecwgRb
 0wrfSH0Gn0Ocue/FhWV4hz5GgIbDdMzyOYoT/q8oqgC6e2Uz6JM2C5hT8BsEYDArZQo8nuzJ60/
 r0rI4SMPyNhxtMObNP2AgD47l5beV5Z9QlD3Z/2SUBW/1Xiu3he2Jklu/qW7sFGltDfX132XPUQ
 v01PEROrKggzVWiz3YBJpNrLPMO8NIN5rOpMzscChULHXIHwlCME1gKNNq/GTZ1IODvVQm1n/IT
 Gm+Hq9sGZ0yQkvxtSDhbLoStp8RfrbQjvIhzdohCCR9EfC+NLv+1jHMuq/ejjg0G9dN2rwJCVtK
 tvpK5ttLRu/kU6VJlGAH3LxcFSiqoQ==
X-Proofpoint-GUID: fLIObautu0zIx2KZUlYY_yxVRa3tf4sO
X-Proofpoint-ORIG-GUID: fLIObautu0zIx2KZUlYY_yxVRa3tf4sO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100150

On 11/3/25 12:52 PM, Konrad Dybcio wrote:
> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>
>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>
>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>   * add shared memory p2p nodes for CDSP
>>>>>   * add CDSP-specific smmu node
>>>>>   * add CDSP peripheral image loader node
>>>>>
>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>> cdsp_region, which is also larger in size.
>>>>>
>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>> related nodes and add buffer_mem back.
>>>>>
>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>> ---
>>>> [...]
>>>>
>>>>> +            label = "turing";
>>>> "cdsp"
>>> Ok, I'll change this in the next revision.
>>>>> +            mboxes = <&apcs_glb 29>;
>>>>> +            qcom,remote-pid = <5>;
>>>>> +
>>>>> +            fastrpc {
>>>>> +                compatible = "qcom,fastrpc";
>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>> +                label = "cdsp";
>>>>> +                qcom,non-secure-domain;
>>>> This shouldn't matter, both a secure and a non-secure device is
>>>> created for CDSP
>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>> Is this property not neccessary anymore?
> 
> +Srini?

That is true, we do not require this for CDSP, as CDSP allows both
unsigned and signed loading, we create both secured and non-secure node
by default. May be we can provide that clarity in yaml bindings so that
it gets caught during dtb checks.


However in ADSP case, we only support singed modules, due to historical
reasons how this driver evolved over years, we have this flag to allow
compatiblity for such users.


--srini>
> Konrad


