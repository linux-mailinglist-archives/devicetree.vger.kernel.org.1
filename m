Return-Path: <devicetree+bounces-247433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E42ECC8550
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:03:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2963E30B9BAD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F006357A20;
	Wed, 17 Dec 2025 12:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gnUKlhse";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vqw3oxT+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B589B357729
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765975895; cv=none; b=H7XW9YaYq83AHQ9iV1JebepeqadiSifdpoxTXYXfuy4b/9Ph5Nte9bgNRu21HRPEXsCDa8htCsBtAh4bcDlN8kBGbYXzantLwXBa/j3xF0lI3qEg048BlBO3IQOQPMsuASpYM3owRjZ1lyHC9b98zlyrj+fAyRC/t9slPn5R8l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765975895; c=relaxed/simple;
	bh=l7iOy0iGEqMF4QvuS13sbfbTD7h0jS1UxqGC7L1CpME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b5ygn+b8LfZdS4BhEubVrfE5atRDh53h536l/Qa/ccZfeOu1Tm5/k3eyL4eFM3jYWKaADJXI1Jc9iPQJDQ8JgG0q4wtLch8by9+HvGJlAv52sBsepW5plfUXmd1eQlwGi+rEX7jMekRSOdGkZgiBcSNXhVvoAoN8gy0K0MDPfQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gnUKlhse; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vqw3oxT+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKmRb330637
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9AxGbz9ZB6eb25hTs97L/ufJTiBvZ0CqQwZD0+MWRmg=; b=gnUKlhsepebcDarF
	zv+IALs6Vu6HmKOqMxmol6TY9hJMpqIWvECloHKwAZbswxsDwC4ZyA+bosxvDHOZ
	Q2IlDRTd9d96Ze0v3OFIwtFrKF0rzrttVkuP0nWpPanrUrEVgF0qeu0Edb1Nt2aT
	lSwVtA9qoFtiU1pz7Lj7euDxCI1yl6cVJpZiuAdFTeS1xblfEhbJypSJ7aJPObau
	OxboqBB9yB/8ksYz/B8FwYWgZplfWqu3bzJmDu7OqMWsL8mmv544vgDTS6lKyahU
	4zBMXRzdTK3nAnFI8XT5hzeDnCzEJFDysRmDKCzvRQVjTVcmNfNxGbg6kx/kR/r8
	skexSQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e0g16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:51:32 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1e17aa706so17873091cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765975892; x=1766580692; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9AxGbz9ZB6eb25hTs97L/ufJTiBvZ0CqQwZD0+MWRmg=;
        b=Vqw3oxT+nJDbM/om03WO3tbdpXgUAsCnPP2CkSMQwBg4UhOxQvZW/y3xfQvMktRuoi
         nYhROx/aLODMMt2bdYwueWjH8AE/gyRD2C3gPcks1gziu24y2kHqFiNSgSqX0Z7Wa5Pk
         4y4MANkE71aMNLxjQRsxHNtjjhw3QX9Y1ZGORrn1A1KteSLamuBXidE/vOEcHkS/WtBy
         Yscp3NI0B8rBp+H7V44IRWJETVXymS5blZAud4imuk5csaYagCr9mQSK8aX8OTRTMwse
         IlVlUHafmFDV4POGpjYH62KK39/v6CeiubMt9xZnGbJ/kEeVbkXuqWHmKQXMJmiRMTWi
         /74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765975892; x=1766580692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9AxGbz9ZB6eb25hTs97L/ufJTiBvZ0CqQwZD0+MWRmg=;
        b=TSfBWjB69p1KmWMvQpRibtdYd21GHtrgIaS1stnXe9kk5jf9TzbtnK5xayuiXUsRsG
         K6hUCPkGY+kq/dVsyDkiw27jiWF/3P/wPeIqhwEwx+V6iFQpCsYRmMpaQNeKFBFvNySi
         xIQ1JLqw6JFtNiRfawNwlt7Ost1Ptg1tRlZKzCuHskg9h4Jx5vthL+zfyp4wP1jU+AuJ
         rT+rg8Idnq31AJV9YWUobWRqaz2CVvJZkjF4gnxbh8oggz09ooAr+9ou5IcCX6Hp33i4
         ZqedkH3dgx7yMslZn32WmiZYewJ1i2BCMdoSTXmjgStBld1w/OW5Qjx6Bp6tcJ5GwS9T
         Gvzg==
X-Forwarded-Encrypted: i=1; AJvYcCXnTD8l6mMysPvbf1sIJQrsunV+9xJFzFWe/1MxxNe2/F8erf/5ydLpuQrZJ8qc4UDWy23e6SM+x59M@vger.kernel.org
X-Gm-Message-State: AOJu0YxFPtJb4BATQycWJNNhZugsb2psX/WgNNwdEhQUOT7S4+qtWDqn
	wMK7UWx3QaXjGL0ypkFWd5SAA2uHEP4oz05SzVBq2wqcg75KPOhucfZ3oQuRXowQ0Gn9xEqnrFG
	69hCTAHphiSlGsSlMlJw6PuBIJWG2yEJ4lYOFMOinNJ0+lngRqX4yy0gowqq6XsEAI70Ufl0D
X-Gm-Gg: AY/fxX6iW6CxCFnduFmZ7dAj1YHRyvmB5mUVW9kYioiZ/P4n6errbsuSG58gbR9xSIt
	O+NjfLRyZjX3MLYBAybP4E5dH2QHQgHt4lMicyppNI/ATG8rHaJbxcRqwFnEIkcgqksyUTI8XKV
	paVY32NywK8q9PgvY5FtcGQnGcLzvUlDk1j8mW1o4cL9zLnL4bSx0od/XrTGfzuZKJJihtLPM+V
	2+uVs4fblaCgM8ZfA4axMovwBURaakaNl05wMGipfY9JQgWghfow5SMpllmmYo55ytY3gGFd4Eh
	5quuKVL756JyNmABNpMTQmNznWiY5XiHeRM1DsAgHpMun6Dptn/p4Y9hd8m+n0dPoZVCEdXjTxR
	todO4WFtXK2I13gcRhNwKfvWPzBxh0aaEx2EV1irwsa+hGJzfSkM3UlI3xHrCbMZYEQ==
X-Received: by 2002:a05:622a:11c9:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f35b24fa30mr5924001cf.2.1765975891703;
        Wed, 17 Dec 2025 04:51:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWvJeoNYEOIFWvLWcX0IOdw6y/qmNlfhaWBUa1tBLx/kmz0IKcidL3npgcyq7ackUWrLmIhw==
X-Received: by 2002:a05:622a:11c9:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f35b24fa30mr5923611cf.2.1765975891162;
        Wed, 17 Dec 2025 04:51:31 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29bea0sm1982067166b.8.2025.12.17.04.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:51:30 -0800 (PST)
Message-ID: <47758ce9-5ec6-4ed6-9f84-13cbdd444d75@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:51:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio
 playback over DisplayPort
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Abel Vesa <abel.vesa@linaro.org>
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251217120051.98198-4-krzysztof.kozlowski@oss.qualcomm.com>
 <2d4953c6-184d-423b-80e9-871c6e00da35@oss.qualcomm.com>
 <564732e7-2c86-417d-8568-69f40ea7d4da@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <564732e7-2c86-417d-8568-69f40ea7d4da@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5OSBTYWx0ZWRfX2p2+Fe0cx+yH
 TVhBXYDlzhgKB+XjFSh8/x8kiTjyzQOJ3+EA+6HSI5yo7FcvWaaGqG3AIF5uuqMH54Cxd8RQLfO
 GDKNePdgXZv78gvgObUKxx27tQhZZiPV/47zJFW0R383atceSOGax2YKHPqHwiiYDeXAacxYjNJ
 ll4btpiB1dqi3zqgiOlKeykZsH1tJ0+C1SKryl3ccd+e/drLbWsBW/f5lfnqW9jrjUZhTCV6t58
 3YPvpNk7D1B2Uag8o5jaQrC54fTk0OJx7TxlPAZ1ABlDpEhh289RJ756fx1vHC4phmKrAbxLA+A
 CfKkC4JfYUWA9jpvL8HlA1l92QNOcl8hnM28YHjBV745zWFYCDdpLc9zf1iZyn7aMponbityXUz
 BGXfOR72dN3nJD6suQeXkf0okiMS1Q==
X-Proofpoint-GUID: ikWJHnsnfhQ8cClrbvXdjpIlSnMDRaAm
X-Proofpoint-ORIG-GUID: ikWJHnsnfhQ8cClrbvXdjpIlSnMDRaAm
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942a754 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=7pKaQVV4AfFCDnn0ZdoA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170099

On 12/17/25 1:38 PM, Krzysztof Kozlowski wrote:
> On 17/12/2025 13:33, Konrad Dybcio wrote:
>> On 12/17/25 1:00 PM, Krzysztof Kozlowski wrote:
>>> Add necessary DAI links and DAI name prefixes to enable audio playback
>>> over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
>>> should carry respective DAI name prefix regardless.
>>>
>>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>
>>> ---
>>
>> (something's inserting a \n before --- in your latest patches but I
> 
> No, it is not. It was always like that and only recently git started
> dropping it, but it is irrelevant.
> 
>> don't know if this is a problem)
>>
>> [...]
>>
>>> +		displayport-2-dai-link {
>>> +			link-name = "DisplayPort2 Playback";
>>> +
>>> +			codec {
>>> +				sound-dai = <&mdss_dp2>;
>>
>> How does this work out with fw_devlink?
> 
> How is this related to this patchset? Please stop nit-picking irrelevant
> things.

I'm asking whether this is going to break sync_state because you're not
enabling mdss_dp2 - I believe that's a fair question..

Konrad

