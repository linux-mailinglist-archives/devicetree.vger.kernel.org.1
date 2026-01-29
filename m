Return-Path: <devicetree+bounces-260904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFRAColqe2lEEgIAu9opvQ
	(envelope-from <devicetree+bounces-260904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:11:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3326B0C1C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31A393004F3B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170DD3803DA;
	Thu, 29 Jan 2026 14:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="giXHduJy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZlF0vvLh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E1337F749
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 14:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769695877; cv=none; b=LOVX6tfRXHaYrIqTL1wNysrEav2Xnu/M3xSmfdvePNn6fVsCzAGVj4EH8a5zF2u3f3j+EXn5lkrE/p1LOZ15K9inPP8hBKJb3eJ6mCbB0EfW1O6Ei4iNGwt1pExbrzXEl62Cacl9U2j6U6TkxRT6xqISdD+UEwaZvxEKNERG8aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769695877; c=relaxed/simple;
	bh=/ykZcMAp0/hmfjN0oTjkHY/FPv9xSJ4Emd0fhE26KZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4sFweXB0JY16t46C10LITE/AZGY/tTy3VNL+2+zXnS4YHSUCqdaIuK3hOCzQEv+53wOsnoeQhu64WUdzzIOrXynIV1mUX4K+sNQ/UBwMRqmwtSgJRDEdgtq7b/drGnXh/rq/gFE7l8B5ACPX/g18Nn+OiEeL3Nj/F/KLEI3Cew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=giXHduJy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZlF0vvLh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAlop32953448
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 14:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lTy+/DrDMVLHO5FL74CxfRsfY3lzw1a+emT5zffUjhQ=; b=giXHduJy8iNLsGoI
	QuqGBUTZM8Z8/BWcQDJZLZ1V9rRf+Iixo2xNfatmsYQXLZHwUjIkUG5K2ALcrEeR
	xzimVcEvIM3rZKh2xWWKQgNRf4/9tQbHV1fK8HTW3cPAKZUDqCtvpoekeMg076Yp
	E7MJvdVclncFm6JOhn7lwtAzgLv6ZXOx2lFzQzS2za8Yr4ME/aXUuZRh9UsevU32
	eT6Tbf9exdMJrY3DiR22tb/3dUMmRMGn68R3xPJccN/q6+aGIsGLO3M9BqbakEPb
	lgsvTFbBvVk3+Fomx1KojfWN39mm6Jio0d4GhYvLJ8RzKJxyMOcPrRbwdQVWzecH
	ADAmeA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c06420jah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 14:11:14 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f666131b2so233296241.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769695873; x=1770300673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lTy+/DrDMVLHO5FL74CxfRsfY3lzw1a+emT5zffUjhQ=;
        b=ZlF0vvLhYvPbzJsjnjwUCv/eBmhu3jv5qhkf/SHciRgwzkthdye7A50LUohaI5L8VM
         RkTEbddIJSfCTUBJGTAFK+hb3+2jnmlH7sDLoz3cDRFaFT1Ek3S9lWSl79/A740O7XFi
         mqdc1cvspfCMqLEDJS+8Z564OnvSqrrFDMo/WVsVc14sV6mUzR9W+glcMF3ZZ7+YjlBa
         a8lQ004rgJKXR3lyieN7j7qITRIu3ouRB3WZXMAPlTjJC01OKS97bguwntx5pA05/ChO
         CDAuXRusEJ53e/GsNaaqOW5UYHxpqOqeRwHFpuj1+l+gf7pMXrcb8LZfuRhIwsZie0XT
         Bwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769695873; x=1770300673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTy+/DrDMVLHO5FL74CxfRsfY3lzw1a+emT5zffUjhQ=;
        b=ROiU3K/pn/+J1kzDENADJ6BppEJErhjhT8+lXO70Z0P7eDLZIUdqp1xbrFAzzQqF2u
         XZp15LIugQxmoXARkn7WMplvR8n0XVLeJIDPr0aIKGikTgI+UwbqAvna8Mpq8NSNJ9ud
         6T9IVmlzViK4mmcFf37fcJYFW9ibY3q1UhSR+NW9mHNdYcLgzvDk9oSi8aY46pX/X/sK
         FlEihlsdxncDGrTaLJGtZdj4H15+C6HxPup/tQSTl5EtYDN8eehnxFV4pjazJs9KfHIU
         tIiqd+FiDh427rdr+sFRp8jwWo+Sok5w5LofFr6GDjnp8d2d8xL42BTKSAHRrX0ukn0i
         PAqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8q0vM0YfGf5ssHch/5SUyFlueZz27JHdBfIAN6MYkb6Qemz4uiEx1iwU6E2B9hfgmg1fC3s32tVCW@vger.kernel.org
X-Gm-Message-State: AOJu0YweljU+FIJG3yGEJ5pfFDw6qEJu56tdeUPtmixkHHjjGsgVXEvz
	7vSJXMhr2/vzHPTdwZeR0dIHN89plhwKh7EtbeSxJEo8JvlQCyJkgP/fTvsHUDyQzrgMRHXCXun
	wHyxPSy/j8i3YCBfWvlfOUm0iOHGLT9bBVQGpUals3gujcFZ9XLcBum/gzHXNutP+YSVT7FSi
X-Gm-Gg: AZuq6aJOucKDDk760SuDYoKAeoTNvpJSOGK2EGm6JNpRQQ7GgGeBubCikgB3Kpa87uR
	s3mgZTWl7EqmttSf+ie2WW0oP58G/M3Ka/mRnbaTdJUD9i5EGytjM7287Lxy2foVXB5+KRVPwha
	ZSTJjpQrSSrZCTN8F1DrgYLpNkJsotHKYDtI2zmiaiQYnJKHr9P7Puu4z6wR51oEDdDTah6fe3X
	YB6hbtotOqHU27FXJ/aChT67ZtJ4txl4V5AvopiY+9S6i7XM+uv+rCnv2HxOsXprju2x1ors91f
	SvUlOeUVDqg67OOms7M2iTVNHXGrCLPdK3YxmDfPMPmbvXLN/7Obpmv5wqIWa6TVa2AchJ6sUIh
	PqfkTVYoES1NdbgXORKZEKJYvQAmVxB159h4HVsTX07i/HRfTmH0gCFx9hls9StP4KYc=
X-Received: by 2002:a05:6122:365a:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-56689f43943mr723155e0c.0.1769695873120;
        Thu, 29 Jan 2026 06:11:13 -0800 (PST)
X-Received: by 2002:a05:6122:365a:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-56689f43943mr723080e0c.0.1769695870332;
        Thu, 29 Jan 2026 06:11:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c02d0sm262175766b.55.2026.01.29.06.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 06:11:09 -0800 (PST)
Message-ID: <9234e45d-4a48-4820-a42b-48e11d79c0ee@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 15:11:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top Level
 Mode Multiplexer
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
 <dc0b7245-de95-4db7-bf8f-815ba60d7adf@oss.qualcomm.com>
 <pdxrotmxjiebyj2gqx6buwupkydngxki6jgv4e6l6fmodzc5v2@yxky3civt3yz>
 <8360708d-5d82-4cbe-bf0c-31107ab07bac@oss.qualcomm.com>
 <p5rv7u5utnetlt2xvh6ixk2xvi74tdcurgwzrkxfuq7qa3m66u@m7u2ukr46n6j>
 <6244680d-f6c3-4aba-8e12-61093e51f76c@oss.qualcomm.com>
 <flr35di3ivjivnnkrcnwnurlzhmf43i5ymtgj3jnitexcm45sa@jli2o7qkb4tb>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <flr35di3ivjivnnkrcnwnurlzhmf43i5ymtgj3jnitexcm45sa@jli2o7qkb4tb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA5NiBTYWx0ZWRfX/ofBMZU9CLyq
 JHS+a1H42Rex+92PlYDTMvavUoTL+scP6JJ7BiCgB0k9VXM1gEYG9eRd4k6210pdMdBsajsOVUD
 ODXdVrLl7Nf0DSQ1/5gA0JBkmQRL8xEZjX9GL9ifBrDfWUZFdDn/IL4UImNBfYnW+hMXfnOtrhL
 BoL/U+HZOUJZPqdNinETawZcf7U2A+TqxkNus3h/lG005lOKq1OM0WG5Krlu0r9X3ajlkFwzMUT
 oodCHL1/rJVWkUrK4eZH0qBlKM4DFSs28MbncwcNCbl7dYib4FOiGcAEU3irWKzyermMOjAbL4c
 MS3vwwnkBWWMDl5mP2dsXbzdHg8sFrr+4dmPOlj984S1b4+YhkUROwKS2/R4LllJ8RYAQr2XHk7
 mYLopdaNSt5kitQW/+Yjs8+89AS4I+/vMntgHDczXfoHgGL8CVqdHYEyed/g8rwRagv1YDV/tiJ
 tokUCcpsQZV06QQwbPw==
X-Proofpoint-GUID: Z0VtDmY8BfVtcgi3s7m34GK0fsGNOJos
X-Proofpoint-ORIG-GUID: Z0VtDmY8BfVtcgi3s7m34GK0fsGNOJos
X-Authority-Analysis: v=2.4 cv=dpTWylg4 c=1 sm=1 tr=0 ts=697b6a82 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9alSFpSfKzYJ5GvhcA0A:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 spamscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260904-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C3326B0C1C
X-Rspamd-Action: no action

On 1/29/26 1:42 PM, Abel Vesa wrote:
> On 26-01-29 13:04:23, Konrad Dybcio wrote:
>> On 1/29/26 12:12 PM, Abel Vesa wrote:
>>> On 26-01-29 11:45:59, Konrad Dybcio wrote:
>>>> On 1/29/26 11:41 AM, Abel Vesa wrote:
>>>>> On 26-01-29 11:34:07, Konrad Dybcio wrote:
>>>>>> On 1/28/26 6:22 PM, Abel Vesa wrote:
>>>>>>> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
>>>>>>>> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
>>>>>>>>> Document the Top Level Mode Multiplexer on the Eliza Platform.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>>>>>> ---
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>>>> +
>>>>>>>>> +  gpio-line-names:
>>>>>>>>> +    maxItems: 185
>>>>>>>>
>>>>>>>> 186, your first GPIO is 0 and last is 185.
>>>>>>>
>>>>>>> Actually it is 0 through 184. The 185 is ufs reset.
>>>>>>
>>>>>> The UFS reset also happens to be a GPIO..
>>>>>
>>>>> So the gpio-line-names should include the ufs reset,
>>>>> but the pattern not.
>>>>
>>>> Why not?
>>>
>>> ufs reset cannot be configured as gpio, so why would it be part of the
>>> pattern?
>>
>> It's certainly registered as a GPIO, as all users of UFSHC refer to it
> 
> Well, technically yes, SW-wise. But it definitely doesn't have the same
> configuration fields in HW. Anyway, that is not the point here.
> 
> The point is the pattern has dedicated enum for ufs_reset and gpio185 is
> not even part of the gpio groups anyway. [1]

So, is the current behavior such that in case I wanted to set some
properties on the ufs pin, the description would be:

foo-state {
	pins = "ufs_reset";
};

?

TBF we don't have any such ones, possibly because whatever the
bootloader had configured has always seemed to work well enough..

In that case, I agree that this pattern should not include the pin.
I'm however a little surprised to see that would be the case, since
we end up consuming this pin as a numbered GPIO via reset-gpios.

> Also, are you saying that all older platforms (sm8[3-7]50, at least) are effectively
> wrong since they do exactly the thing I described ? :-)
> 
>>
>>> For the same reason, it cannot be part of the gpio-line-names either.
>>
>> Since it's registered as a GPIO, why not?
> 
> If what I'm saying above is true, you can't configure gpio185, so AFAICT you
> won't be able to name it either. Or am I wrong ?

I think the truth is more nuanced:

The UFS_RESET is a GPIO in the sense of pinctrl-msm, as it has a ctl_reg
and an io_reg. It's not capable of receiving interrupts and it seems to
be output-only.

It does not have a "gpio" pinmux function (func0 is named "ufs_reset" intead),
but that's just human-facing naming, so whatever.

It can be toggled and is consumed by its number, through the gpios/xxx-pins
property.

Running cat /sys/kernel/debug/gpios on x1e80100, where ngpios and gpio-ranges
includes that pin though, I could not see it listed. I don't really know why.
That's where I'd expect to see the name given by gpio-line-names.

Now, I would also strongly expect that this pin would be only ever used for
UFS reset, making the name override unnecessary but we've all seen things..

Konrad

