Return-Path: <devicetree+bounces-257267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBEAD3C642
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ED9FB6A3C3C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAAAA3DA7D1;
	Tue, 20 Jan 2026 10:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EKc6PLGP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V0DhxWCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053742FB630
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904219; cv=none; b=L5P247uQgPDHFHnkbPLNXU2UfYRFZrxzPdBqH0fyzEwQ62myljjj94A8+4e/VwRk7LEgRKHsHzUDO6Vn7+t/IK1bE1jfhLzj9SbC2zzwjFjmc7VkOdVLJjfDPNmWQqstnshvmCOiPpPbFehMezMsW/7xWZadr+AuyKAx3zGyhDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904219; c=relaxed/simple;
	bh=CvlO20OSyoM8Tnhyj6PEZqcry7+kKIT9zO3j42HEp+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y6PrVpJ8yuEh4n6EgkWrdFvxsXg1KTQYAY5reqBcLWmBtBqcrl6a7YjdMS4LpiahjZoZMrIC3Z6vmOGaWZhlmXqRr/60akeGM/gRdnV2EUxA+Wc96tup42Ng/5bXTAaKJtw3/VXr8nR0wMnhvassW+80tzEFZ0FcnlLoO15I7ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EKc6PLGP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V0DhxWCe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9tG1i3805012
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:16:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7N8RG+tUW8NNzGfEAlGjkHiP86krQss+z5W6DrKfQ7A=; b=EKc6PLGPKhMgDZ5c
	BpzD5lVJbCyZDd7CPp2fRZawg7A0V/xbhV1jOMEIoKdJpQ7qtrH8bSWUsQnFMk3Z
	i+dWgHL+22KjJ/1HZehEkPCU0hwr9oi8Sh+O0ORzVXtbMA3nEGfeMc8jIFFPdR5G
	gueXA7Nuk8Ii0nZY0GAQjU5FbPqQP0dwATN8uYOWcWRWf9y+Z22UVyprnTMfb3GK
	rXFOQiRhAVY4s27XE36V1iKtEibL3/lxwXW5MUK9lj4KnazR2CIQCgm/QtNeprCA
	dn+oxfG/2azl0W0LADPtC7F7hz5CdPeCMjqLJLnjxuxmYNpeweHOfUDFyygSlvOQ
	hQRIAg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt1f8973g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:16:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-501476535f8so17729211cf.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768904216; x=1769509016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7N8RG+tUW8NNzGfEAlGjkHiP86krQss+z5W6DrKfQ7A=;
        b=V0DhxWCebagTu65OgrBajQ45WqIG4Mt6D4EGl0lVAawy+6owSmbEBV2NkqSXKs8IGI
         TaEJer78HJxHdKhuxqwo8Yaf4d+XlMUnziksCM6xZGcMeEGJC0MfAPWYXBAYynw1gXBK
         YQOchQ8jCnxPF7IDbBlSc8cFG07Onzl2abCdUn+g0pUiX6KCItcldJ5GoQBQChJ9nXHQ
         1LngR2sg1tszF20Np0465aX8+z7rK6jOA0D6AvgiXf7wC8uKKW9+b2UMCaHUk7exMy6R
         Hdr+/hK9tLGCExT1ewWsdczqtgzsTti9irPtu3y1/a+ihCabRA36NnrOf5/9wXQ6tqmz
         7tCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904216; x=1769509016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7N8RG+tUW8NNzGfEAlGjkHiP86krQss+z5W6DrKfQ7A=;
        b=t37wtVRF+5CnzYrHE5GNfyxl6UkeJk+1y6ppq0vZZqSgp40S31KcevUqfR1q7ZvCeW
         QwO5oHO/NPeZk642Xb7OzX41DkqHMHtvfn8eIIlataOyF26dVWduCBgGmsxpgLhks3/M
         JhJIqHWoV8UYKdsr9yUcyI7XTGM/+kEQlJDVdkK3Xh9+UVqouq7OuqvSHAToQRL7OvbG
         nNcs87nVpbG/k4xQ9oX6KbDu2IwG2TEj5NrmeA4buFSgSs2DVbnutH0e0rlWjZ6O8utS
         B9nX9WbNfTPDQWqIBG1jv0/4uPh/1xsbNrcGDdkvR6Gd0C3S7kObKyoLGnbTIUdb/Eqi
         9PCA==
X-Forwarded-Encrypted: i=1; AJvYcCVW1UOX1jD2kEHwoCMx8tVqLD0enFL6+af9AttYjPEb36WD3uCnk6LX16mW/9xVmTvUohAYl2JFBK4C@vger.kernel.org
X-Gm-Message-State: AOJu0YxxVq1KKWNtL/YS171MPLS214fE2/wYMEq/En8tKvFvquNJp5Dm
	nz9N1KUYGN9CPU05uc9EqtQIBtMd3ZXiDLAzTD7610U4RD0rNOTMz9VdW8bkPif82UpZppVuvKj
	JofRlgJCF9NZJPCAgazoqs3ITuxJVl5XEnoAiHknQ/aB4V33Bk6an+JL5ePaZZoIw
X-Gm-Gg: AY/fxX7E5OO0ru2Hvkp3Ay+6oJIW/vLwaT4+kdOt0usMWK604KistedNMHQly04H+vT
	Bf15NwEAC8/YZF+lWDcf5aYMZ9pb2Yrjw6ptEXoe6IsG2aHqKAVwrpdZu3yC78YXnJwWSwdJRAA
	s08s40WlMi2K4NG/+2IcqIHTlyfkCC8bM4tXcmuEP1sPAUi2WytroBzEdbqDPFGDYJ1sblMG5Z9
	gQoG7ibyy3S4DAENhzMCCFFj/aC8vkeRUIAV1eWiefS9P3sDkEqCkjqfwihRDSi5qvKqUiQp0CU
	9O/WJroD25C4Nk540jKaXL1FgK9bmTwoJADZX8HW91YOBafE9Q8aIpWDh8zW/yD5gqahcJJcLeE
	j0nomEvgNJ2ot83KbcZSFgNATd24IW2O/mqw1ochNzP9d4C2QrE5KUIMsRoAUt0tYYPg=
X-Received: by 2002:a05:622a:1488:b0:502:8820:6dc2 with SMTP id d75a77b69052e-502a179b2c2mr165887611cf.8.1768904216179;
        Tue, 20 Jan 2026 02:16:56 -0800 (PST)
X-Received: by 2002:a05:622a:1488:b0:502:8820:6dc2 with SMTP id d75a77b69052e-502a179b2c2mr165887391cf.8.1768904215711;
        Tue, 20 Jan 2026 02:16:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654533cc5d6sm12760178a12.22.2026.01.20.02.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:16:55 -0800 (PST)
Message-ID: <3be97993-eace-4b27-92f8-3789e58061e7@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:16:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 1/6] dt-bindings: pwm: add IPQ6018 binding
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: George Moussalem <george.moussalem@outlook.com>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org,
        Devi Priya <quic_devipriy@quicinc.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Baruch Siach <baruch.siach@siklu.com>,
        Krzysztof Kozlowski
 <krzk@kernel.org>, devicetree@vger.kernel.org,
        Baruch Siach <baruch@tkos.co.il>
References: <20251128-ipq-pwm-v19-0-13bc704cc6a5@outlook.com>
 <20251128-ipq-pwm-v19-1-13bc704cc6a5@outlook.com>
 <176432871822.1774259.10260811586771769913.robh@kernel.org>
 <ysbuuhn7cdndv5ieae4uaeylxe7d3iuqqehkdtcvhr7xs5wxsi@rcfqzbxn3lqf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ysbuuhn7cdndv5ieae4uaeylxe7d3iuqqehkdtcvhr7xs5wxsi@rcfqzbxn3lqf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NSBTYWx0ZWRfX+tzwk/P6wWs7
 3vJXRJMkOi+O83m6uJUHMjkHo1naLqPq4XaL7P8M9VqMMDNeknjEHc4blZXc5szbxw48TnqEjBv
 cQpGQtiWO7wzkR8sqG24/L9xSRLUsdwxfxS3xd8zxJMSw8o94HdatwzuiUH1XpeVfD9+s+cCscg
 T4NSJuRVCCVAdPR0B/dfskiWPKzBDI9ZlRoxD/efo1uaRlQVXlpV18G8aFdgvDWntD4XnHs9hyI
 kIQzfdi3m2u4IggokwKXx1jRrN1+ZmYPjeswphMhbjw9j4lWFC05Yeo9ppQbhSxjpYezad3Ov91
 zji/TpFPNdpCef9FxuXaqCm1ESNTegix97nnNYHhDsaFUBE+Bwmru+0vePf9bw+RgV9PVaG9zut
 7yL647z27mWlNNXnPQyBqa0mzI6wSYqQdj/bH2cQ47KFCW2dHxU0c0v78lhcrKh78iK8IiU00uZ
 lIOrGLn66FaOWgyQegw==
X-Proofpoint-GUID: rUZuC9jE39_7t4qrfgE2yG6HBl971rhm
X-Proofpoint-ORIG-GUID: rUZuC9jE39_7t4qrfgE2yG6HBl971rhm
X-Authority-Analysis: v=2.4 cv=LdQxKzfi c=1 sm=1 tr=0 ts=696f5619 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=Lh10uZTOAAAA:8 a=UqCG9HQmAAAA:8 a=nIMUTuB_En8j_GReBHAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22 a=h7PWpkqlkWt1jHQZSjMD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200085

On 1/19/26 5:35 PM, Uwe Kleine-König wrote:
> Hello,
> 
> On Fri, Nov 28, 2025 at 05:18:38AM -0600, Rob Herring (Arm) wrote:
>> On Fri, 28 Nov 2025 14:29:13 +0400, George Moussalem wrote:
>>> From: Devi Priya <quic_devipriy@quicinc.com>
>>>
>>> DT binding for the PWM block in Qualcomm IPQ6018 SoC.
>>>
>>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
>>> Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
>>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>>  .../devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml  | 51 ++++++++++++++++++++++
>>>  1 file changed, 51 insertions(+)
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
>> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
>> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
>> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> 
> I admit I didn't try to reproduce that, but the patch in question
> creates Documentation/devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml and
> isn't about temperature stuff at all. So I don't understand where
> thermal-sensor and tsens comes into play here. Bot bug?

IIRC this was the cause

https://lore.kernel.org/lkml/20251203152437.3751325-1-robh@kernel.org/

Konrad

