Return-Path: <devicetree+bounces-237770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB0AC53D5A
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 19:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 767704F2C02
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10437346A14;
	Wed, 12 Nov 2025 17:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UXw3yd9c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hHnN/kZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C8D32D428
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762968721; cv=none; b=ZbEnchVRHo8RTYFRNYIovdWhQMhMsr8FU+35xtdx97+z0fE2iItYtMiet/M28rJMpEXS1OQ8e1SzsD7+6AlExCTcBeUiyhD0fTtlHBuKca5DdQD1FVxy1FT8okYIxCn64mBtM/Xb1zoIJ1Q5KYAvGHCTEPYWsdex13yiciW2mjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762968721; c=relaxed/simple;
	bh=hzVZxAQsYGT+Jc1xNwFigB8FYEOlInLVTTrbWelcrKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FHCv6JoDFPMeZzjMtlqrlkBjTR5KknZanQRjOp52LxtE9q22TZ3ailLYFt4goei3v4gaoF9MQOl8lmwWYTvnylIVA7Cm6O3F/E9x3W/GF7t0ce5Yyum7LkooQqOr+Bf332ch3ybzrUFDynwhTvs488vxE1RzadUm8NmnkII/04E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UXw3yd9c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hHnN/kZY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9gjsB1109261
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oRq7N9zEd4E6O7kii0K2QODDGUwp+okVrUJjhuRm9ts=; b=UXw3yd9c0V+CqXAv
	Qe9i4LF/MLsW60UiDZBzcgtoCOTc/ZVEKiO9MgbzgjvbHprTk20LPZeI2oolYwTv
	bfhfJMi8Jjls2/z7pimUXEEms6aw0FJc9JuJWkHWoWRvwL7T1wpLYUAzz6bltjoM
	2vgUG9yu4mlzmWV+IHCWXTBjiSZ/dM6YDBC6V7SsGTsRVxHrbi/FD44S5h6jphaN
	+/3M/uHTuwoJhmjeklSBFsTul42ZVMOKRfiBgvjovp3obD8rK3ahGXB47+M2I9Rv
	0k3+RpQkIWz6WJ+oiM8NSYvHffqyGvvUrTZpbN/qJIDPWt+IepLuE89hr3rN219m
	qX5C8A==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqum1dn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:31:58 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5dbc9806b6dso2093285137.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762968717; x=1763573517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oRq7N9zEd4E6O7kii0K2QODDGUwp+okVrUJjhuRm9ts=;
        b=hHnN/kZY78Sxlpq+fj6HwKbJXIDB0mQ+ybtL6vZLqxd7NQ+GC7mSGo3kncKr+b7qgt
         JLZds5d+OLlBBmM4asQ2nzxFo84kEuyG2M7eFJNT2LfBbG0GXv1bYoZPJ7pExGibof8z
         WAoCLyIZMehWqQfJ0aLQv+XQAtkzbcuNoMnhxNZeTicuE3hVgjQFkh6rlvahGP6Ph/dZ
         t/S+D6G3WBYSv5ANSNXSsQ9RvFVFAYOydzEC7bkLRhmh+VVfV/JrQQgZ34z/i7Z56EZ9
         rC6ITejiDQ/DBBMfUqAdMyZUIVAbbJ2WqbAhOQg/DCfUmT0xBlTAu4yXfChqvXvtuS8G
         76Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762968717; x=1763573517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oRq7N9zEd4E6O7kii0K2QODDGUwp+okVrUJjhuRm9ts=;
        b=JzDmod0NqB2Al+pv8tGnapX0V3a92ahoR5F7oh5tCgWgUoAxNYf8uwglpvLF/+UTXv
         AhznMt5Ur6q2fCK2EP36KCZEsef0gTWfYcKXN4q3bLE9KHPTSRfsJfDysgF1woLOOpvV
         gVfNzRbgxrA/ZLfCer3lIrgjZjYMNQ4H9UX57CaSTMPgWa36lspLXeXZ8y4msrbABaJx
         g4yZjN1oIDL6HLie+u2vlvh7DFgmwC0gx18q1o7W1xpflnS+2rj0BI/EznZCNAUwMmgn
         yaZK6tCoa/jHRHsyTzMjij8c/zGOOXi+aWMtf1szNTb1jPCVJAv4yisoszR9oybbO7M0
         yupg==
X-Forwarded-Encrypted: i=1; AJvYcCX+e1BbZZOSFh1oa7P7OSPHUbQWGoWD4fbU5BnYhZ+9p17LCDVTWXzaXVCoBppARoGT8+n0+m0aqV2h@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1ZF4is+133nA/62SshVznSmERwvgEVXuu4GxO2QRrcFIIlwCj
	9JF/0I+OOn6mYkb8Qxk9O2yj48Cmjb9PdihdxOscIPvvD7I3icia846HI0wSBfAk0zIjjCCbWhl
	qh/rTSRXvNDk5hB54yi/sVcFs9IdGJNV1uNuo5nUUDHnyYPjFHoaOEvOay2xi/CsB
X-Gm-Gg: ASbGnct4jjuhZtZvgGQ+cQpuwXnYNcQQCi0WewmNrqBGT+ywpTaJ7kT7ponRuNS6pY5
	DFMkBJYMI0MDXl9JQB5xeuXio1jsnNrK3lAK2/sBSc/hcdriGqX0qM4NwzA7Ei6/HeSw/OtZGYm
	WBojyAyagNvtUr6O9ZF5E+kCHoAFt4AuhEDUY7rv6/uumo4pxxkZupdqtFUolliOqy3M7cp9Hvf
	75ArF1EYUqGAssOJ65yOkHjGvRde/DyvFblokB4RhPy45OYuUs7bwU5toJ+m0btCi/80YOUaMEg
	9ss2xZcLkrwcZXI29aAIu5+qqq33o9YqHefvWL1+Mls1ISBG+Yy6R1KyBfcAdqAoa+hyNtOjd86
	4NQksCvpRs5/zM4+z1fOTYkcj0Q==
X-Received: by 2002:a05:6102:4414:b0:5dd:888a:5d54 with SMTP id ada2fe7eead31-5de07e67c33mr1391612137.33.1762968717615;
        Wed, 12 Nov 2025 09:31:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEiJyUMMrNVOX6ffx/lvBQ51RUGJEu6SBGxM1Dx1h6AXQTQL9O09CpizEhbeAdj5d3AN71GVw==
X-Received: by 2002:a05:6102:4414:b0:5dd:888a:5d54 with SMTP id ada2fe7eead31-5de07e67c33mr1391569137.33.1762968717168;
        Wed, 12 Nov 2025 09:31:57 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47787e3a62esm47050655e9.3.2025.11.12.09.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 09:31:56 -0800 (PST)
Message-ID: <f474c182-3a9d-4540-86b3-1f84ae3d14de@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 17:31:55 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] ASoC: codecs: wsa881x: split into common and
 soundwire drivers
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-5-9eeb08cab9dc@linaro.org>
 <f1337654-ff69-4489-840a-a1b38efb7f74@oss.qualcomm.com>
 <DE6W0RIF2Y26.1MENYDV2RIAIP@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DE6W0RIF2Y26.1MENYDV2RIAIP@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE0MSBTYWx0ZWRfX0nx/qtpAqaaA
 6l8XovENzkOr4GSef52jpDs15vCBg8uKUDt+RvHk18vz/pjDEkDKDi/AssPHm+QUYBma585/Upf
 hVsApoRy22v9BQs/UbeOVEaCBULx5LdVFOmudsa2QZqfdtiFH4a7RPXXLwLcEVW9yA0qxs8ULqo
 HXRaljikdzVQxQYVU3N9vNS8k/2fEIh1W88HEEcLVvbUknqmWNLF/msnPJE2lL8fb8E1hRC4XiM
 24DjxMIWel80W8/q4JvoARXt8irqlYkAfagoon9GCXNGQV3ZFKg0lVuOJVY9mcdUwr2jAb9wvrV
 nk11nkHXbOA44xN7bwhpHoIfacQKu22Na5ap9VN+a/w4FKxymbPzZK7MIPaX1wfWCULAEhpk3Kq
 /umWT9u7mFG3737nUKsWgqaURvTuOA==
X-Proofpoint-GUID: luPWBaoGJuI_fRtgfz5dsGJxC1oSuQy-
X-Proofpoint-ORIG-GUID: luPWBaoGJuI_fRtgfz5dsGJxC1oSuQy-
X-Authority-Analysis: v=2.4 cv=KeTfcAYD c=1 sm=1 tr=0 ts=6914c48e cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=Kxc87NqaCDsCGrhekR4A:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_05,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120141

On 11/12/25 5:21 PM, Alexey Klimov wrote:
> On Thu May 29, 2025 at 11:05 AM BST, Srinivas Kandagatla wrote:
>>
>>
>> On 5/22/25 6:40 PM, Alexey Klimov wrote:
>>> This is required in order to introduce wsa881x driver that works
>>> in analog mode and is configurable via i2c only.
>>> Functional changes, if any, are kept to be minimal and common
>>> parts or parts that can be shared are moved into wsa881x-common
>>> helper driver.
>>> The regmap config structure now contains 0x3000 offset as required
>>> by soundwire spec.
>>>
>>> While at this, also fix the typo in WSA881X_ADC_EN_SEL_IBIAS
>>> register name and rename wsa881x_set_sdw_stream() to
>>> wsa881x_set_stream() and update registers description in the
>>> header and use the new defines in wsa881x_init_common() and
>>> in wsa881x_digital_mute().
>>>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>> ---
>>>  sound/soc/codecs/Kconfig          |   4 +
>>>  sound/soc/codecs/Makefile         |   2 +
>>>  sound/soc/codecs/wsa881x-common.c | 193 +++++++++++++++
>>>  sound/soc/codecs/wsa881x-common.h | 458 +++++++++++++++++++++++++++++++++++
>>>  sound/soc/codecs/wsa881x.c        | 493 +-------------------------------------
>>
>> How about we have something like wsa881x.c wsa881x-sdw.c wsa881x-i2c.c ?
> 
> I am totaly open to suggestions. Splitting to wsa881x-{sdw,i2c}.c sounds
> good to me.
thanks, and it makes it more aligned with what other codecs do too.

--srini> I kept the original name to keep the changes minimal.
> 
> 
> 
> [...] (the rest of the patch was quoted and sent but I didn't find any
> comments there, please let me know if I missed something there)
> 
> Best regards,
> Alexey
> 


