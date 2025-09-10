Return-Path: <devicetree+bounces-215304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17351B5117E
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:36:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B974561E53
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 08:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CB9310658;
	Wed, 10 Sep 2025 08:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m7kf9Hgn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB82F310768
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757493318; cv=none; b=ZN13Q68i24kBcC4OHzWer8Nu9Y4/aKsUTegJoSb1+MOLH7Ep9Bon20/9XvF/dsgnFqeMyacT0xQB/+HPVcCYfYD0X8JwsYjDnWlE4rzhUajToGJkv7raq0xieUxspA6IKnywpoV0NfmJV2Mj790gCDGqYM0q3dAolIzgEKX5lsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757493318; c=relaxed/simple;
	bh=6pBqardOFH33jygFUEKtPxkKJseqnqQZsdOrvgwU+5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AG6+qCysVVmUNHONsjYlGfAMJbyLQvmHVtHSHkRUGxe6Z5NFqF/NiXnA+8jQGGl6MFc0dC0zoiAXMuaXbHoDUtoPJG4FLOb3sPQ7MTbFslknqth2FkJf4JSmSE9kfbzujqWfObUwwj593tsc16FT7Ltv15fsVWD7RhK7DN8OK6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m7kf9Hgn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58A7cn34017135
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mdZlGbXkoykBItIhC2uuPRcWMxj3GO69cBZWAldVw3M=; b=m7kf9HgnKQ/9rzas
	V97f3QsliMHcaYhWLmqyotcd0N5a2Nc+TwfOuH5XZv5YwYmEy8Xjh934QM8uAD3o
	TIvq0cALJVZadIZEnlNdEWVONaZpEtMPGqoFEMXlHYxWHLfz5EE63RDMhjRTM74v
	7GCvYtr+wgpdagFTCDTSYzPwflzD5eSPRkUY7Di0CtSKvdP1K7zXFGan3lAbly1i
	lB7QtZZe+uFapwsmom7T2nrCRMMOzPgGpg0fD7KyO/OEzrvQ10yGnDzhTs55ZYJo
	81l4sA8n4cDZ6ECkANElJncW6OUleHppTwnX3GTz6qbg3t+mSoDT9CuX4urb9Xrw
	F678AQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8k7jq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:35:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b613a54072so8913691cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 01:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757493314; x=1758098114;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mdZlGbXkoykBItIhC2uuPRcWMxj3GO69cBZWAldVw3M=;
        b=myEsD2On+Zi+ZECvmPrkQkBrwpO3COddMAP7UrPv6ONOa5pCcrlObNOk+kolES53tO
         LEqDVSQBMI4dn3OJQIwHks6xZKE52mvHWzbPL7KrGr9DOPWzS20tIwxetrffyMS+epLg
         Af69Qfbu/91V8GiGx+rnhHDZNXpNQuZtWk6TPGrt0Q3nvn0B2Y7e+deQM72EtKmxs1sh
         VEeWQB6d129XRqtDnGsCchQNKwC8eYKaGrc36qApUHiSEiOTUf5wnaltMJoro5IqK6wJ
         LNGwfweRLMCKdgEfkqtt/we38v9rnZg6dYLjSFHZdYwr5MPaIJMh4IUtYx9E5axKlEAo
         +2cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqY7yV254X7c4QfZAg1ZJEr42vltnWi6pEmwxDHrRK1o265fK9TVYxP962TZSH/GNBkqTNQ2RPXDhl@vger.kernel.org
X-Gm-Message-State: AOJu0YydHz9Gpr8XlNuZ2+USuDbFgfkq09nsLnlHKRwwDeBeZl7Cp4cE
	JG5HW2h8xOb1ajaykWzCM72f6vUnFel+1AZH7FMhcHs+/SVpARwNYrhRqupCtHvVi5D/lOOEBZ4
	E5JqFJ6vpjsoCsUr6zvqOtsSPT4yAFhWi2aiup7QXBrqXBrNws9uRzwZyXSPY1bfM
X-Gm-Gg: ASbGnct91c1axf1OGpksybAfOw9kkZ5Jp8L6CM2yv+BsF7SK55dPaiuvl22zO23DzkT
	6AlBkPtVUIalASzpej2criFk4wXwW7Ed0252bnNdVZ+FNJ3uIfx2KUVJMj2SipeFYreK2/qZKzh
	14s68w7GWdeZZPu8JqJ2HGGAvC+GjieMbfkY5KVlF+Tu1WTuretE6oxQOQPnh6XtHbuvWvHEq8V
	8RvMhO1zpsmjQOB4aUPxy2BGPJM5qNvV3/Adg7Ibf2y/ziTO9cO/ZcVsG7NxZieXAEmU97Q2M5o
	JGcg7d+qSaejq+6EdHf/IOcgSIksM3T7t1OrcxLFS4WuY64Z9AbWw3W/pIWmsOKNhX1GI+h8AYY
	C8yB188tHv5J2rmWv38tAFw==
X-Received: by 2002:a05:622a:f:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b5f84608a1mr93692751cf.11.1757493313966;
        Wed, 10 Sep 2025 01:35:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC/PjlyjlapeA2UUFv3VPSLLeX8X1TPLj4/Upo+NAPNfgy876iYhaAOrUk5Om4jVsYgaP3RA==
X-Received: by 2002:a05:622a:f:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b5f84608a1mr93692431cf.11.1757493313260;
        Wed, 10 Sep 2025 01:35:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b078340e5bdsm127895366b.97.2025.09.10.01.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 01:35:12 -0700 (PDT)
Message-ID: <108895ac-0c4d-4aee-86b1-96461e00def3@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 10:35:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: leds: add generic LED consumer
 documentation
To: Hans de Goede <hansg@kernel.org>,
        Aleksandrs Vinarskis <alex@vinarskis.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Jean-Jacques Hiblot <jjhiblot@traphandler.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus
 <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250908-leds-v3-0-5944dc400668@vinarskis.com>
 <20250908-leds-v3-1-5944dc400668@vinarskis.com>
 <MOj2NUVAdyu9bvVkEON8rhAlGJ9FRRh9gJABkrOR_6gKhE8rmeZ5Isbj9noA1bDZ12gY4dlDpEtmEjxlRTucCssKwTo4f5nCowMOin85IKk=@vinarskis.com>
 <d957d16f-d206-4f7d-b52e-a2cad9e4abfc@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d957d16f-d206-4f7d-b52e-a2cad9e4abfc@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX5FFMIylBukUL
 HCzAtxGCmjq6gIOuuayVyY2AYLaRJudY30NkELqIbKjTvLJoaYE2dP2fylqXrn9V9XZR8epLe7T
 /gsqs+/snWPEIlSdjj3wbsTh3Aqba3+zBrT38dwtZWjcwnKXqVMspY9UWviTJqWKbKx2m+Sqj68
 7sN3S6lcQrKLVcg26OmDQGnH78kF4zV9zBGqeg+P5E3vbkpu/4rdJXCLeGT16E+6IKvIr0Kv6VD
 XZHcSYTa8R2x6KS6e9zggVMod8QJ+Hs+pTyjRGfrGG0CHhWU3qWY1oelcvbBrEUNzRt3T1GsqBv
 Pp5mzo868Pa1tOSbOjj1ERfkJex2mt6zTuSj3EaxvV9MX33BYsDAoyI+mDygEhcpcRE2317JJHk
 w54PMWv+
X-Proofpoint-ORIG-GUID: hYf4lvqsDTzafvAKdruHJUmmId1r90zc
X-Proofpoint-GUID: hYf4lvqsDTzafvAKdruHJUmmId1r90zc
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c13843 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=I76Qk8w-AAAA:8
 a=bzamcEsfLQq8zZigF6MA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 9/9/25 10:39 PM, Hans de Goede wrote:
> Hi,
> 
> On 9-Sep-25 6:57 PM, Aleksandrs Vinarskis wrote:
>>
>>
>>
>>
>>
>> On Monday, September 8th, 2025 at 01:18, Aleksandrs Vinarskis <alex@vinarskis.com> wrote:
>>
>>>
>>>
>>> Introduce common generic led consumer binding, where consumer defines
>>> led(s) by phandle, as opposed to trigger-source binding where the
>>> trigger source is defined in led itself.
>>>
>>> Add already used in some schemas 'leds' parameter which expects
>>> phandle-array. Additionally, introduce 'led-names' which could be used
>>> by consumers to map LED devices to their respective functions.
>>>
>>> Signed-off-by: Aleksandrs Vinarskis alex@vinarskis.com
>>>
>>> ---
>>> .../devicetree/bindings/leds/leds-consumer.yaml | 89 ++++++++++++++++++++++
>>> 1 file changed, 89 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/leds/leds-consumer.yaml b/Documentation/devicetree/bindings/leds/leds-consumer.yaml
>>> new file mode 100644
>>> index 0000000000000000000000000000000000000000..d50a3850f6336e9e3a52eb1374e36ea50de27f47
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/leds/leds-consumer.yaml
>>> @@ -0,0 +1,89 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/leds/leds-consumer.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Common leds consumer
>>> +
>>> +maintainers:
>>> + - Aleksandrs Vinarskis alex@vinarskis.com
>>>
>>> +
>>> +description:
>>> + Some LED defined in DT are required by other DT consumers, for example
>>> + v4l2 subnode may require privacy or flash LED. Unlike trigger-source
>>> + approach which is typically used as 'soft' binding, referencing LED
>>> + devices by phandle makes things simpler when 'hard' binding is desired.
>>> +
>>> + Document LED properties that its consumers may define.
>>> +
>>> +select: true
>>> +
>>> +properties:
>>> + leds:
>>> + oneOf:
>>> + - type: object
>>> + - $ref: /schemas/types.yaml#/definitions/phandle-array
>>> + description:
>>> + A list of LED device(s) required by a particular consumer.
>>> + items:
>>> + maxItems: 1
>>> +
>>> + led-names:
>>
>> While going over the feedback I realized `leds` and `led-names` do
>> not follow `property`, `property-names` convention. Any objections
>> if I rename `led-names` to `leds-names` for consistency?
> 
> No objections from me, `leds-names` indeed is better.

FWIW we have "clocks"/"clock-names", "resets"/"reset-names" etc.

I sometimes refer to "property"/"property-names" during review to
bring attention to the preferred style (ordering of such entries),
which is maybe what confused you

Konrad

