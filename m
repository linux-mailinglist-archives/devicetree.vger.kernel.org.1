Return-Path: <devicetree+bounces-111141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAF299D5F8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C05D1C20CCE
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1667B1C7601;
	Mon, 14 Oct 2024 17:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsNnrEK8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A1B1C728E;
	Mon, 14 Oct 2024 17:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928561; cv=none; b=SsRk2AuYK5t0+LB8mKk+p8EPfwGna0bNZP3GbivlZjiXnV11DHJ/OTuQ5cUD5E6okn3PNUfzBgO0Az5cHLhSKSt3w9keiLTh9tYhkYX24plyzU0pT/mJSM+GrBcbTcJPMNlab3iBWoglFkPpgXmeXf2gdPgJmjXD545U/dmVpn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928561; c=relaxed/simple;
	bh=mcGr/Qk55+ehm1NdNnm15cxWTIYN+dqT7soiOu6JPbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gDwtxxF/9ZhS2EaJAp1bRwm4X416fPcHDNQC29rAYpwwcdO0Qgdh5iKBgxcstRHeKV9Ads83MNt90srmtLuZU0UFhvE/DCflo+GKamA/m0Uq5rWQ0xTGgzZI6PMs48Mmjawc5zMTAewa0vGfD7mBAXwE5VZOGbZf1//X8dCe7ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsNnrEK8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5686BC4CEC3;
	Mon, 14 Oct 2024 17:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728928560;
	bh=mcGr/Qk55+ehm1NdNnm15cxWTIYN+dqT7soiOu6JPbQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rsNnrEK8291R6w+A7tVgCxswKoBjvbCNOquXVBYYb2+9hzdgfGKph/nsPnnSru8+z
	 ts2LX4DKHiWTu6gInh20kGIYFdO4lIrbPiLq8bvly0uBDIXh2m/5ACHswELcRdG/m9
	 HH3mEp3702oW5hW96PUEVUYN41gUAX7ufBRfW2/FDAhsxROHminrzRJhywzf3uLiVj
	 3z+cH3h5cPQZvIljRMkjqTqD/tkpF1clKVEfFaSnV44epQvXi1AajaqVBRW2OR/nQx
	 Gbxnb5xPQNbg8Xfc+6PzAMIOIWY/+TvTfanduW4uuSVMMtMG3v86Z/1Jx+iIt1koag
	 o5VuEeRjAR3Lw==
Message-ID: <06784780-641b-459f-b0d6-a6d81029e6d3@kernel.org>
Date: Mon, 14 Oct 2024 19:55:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: rtc: qcom-pm8xxx: document no-alarm
 flag
To: Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Satya Priya <quic_c_skakit@quicinc.com>,
 "open list:REAL TIME CLOCK (RTC) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20241013051859.22800-1-jonathan@marek.ca>
 <20241013051859.22800-3-jonathan@marek.ca>
 <gpika7a5ho36gx3pz7k5t4rz5spvpnmnvzs277r64z2npdmfmg@4vcmw6x5zvwn>
 <f3b4bb12-d025-1cc9-6dbd-04913b951425@marek.ca>
 <322c44e7-897a-43fb-b617-f4d73c9384a9@kernel.org>
 <a91e4a52-c427-bfdb-0675-f8417dc24006@marek.ca>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <a91e4a52-c427-bfdb-0675-f8417dc24006@marek.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/10/2024 16:09, Jonathan Marek wrote:
> On 10/14/24 9:38 AM, Krzysztof Kozlowski wrote:
>> On 14/10/2024 14:58, Jonathan Marek wrote:
>>> On 10/14/24 3:34 AM, Krzysztof Kozlowski wrote:
>>>> On Sun, Oct 13, 2024 at 01:15:27AM -0400, Jonathan Marek wrote:
>>>>> Qualcomm x1e80100 firmware sets the ownership of the RTC alarm to ADSP.
>>>>> Thus writing to RTC alarm registers and receiving alarm interrupts is not
>>>>> possible.
>>>>>
>>>>> Add a no-alarm flag to support RTC on this platform.
>>>>>
>>>>> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
>>>>> ---
>>>>>    Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml | 5 +++++
>>>>>    1 file changed, 5 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
>>>>> index d274bb7a534b5..210f76a819e90 100644
>>>>> --- a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
>>>>> +++ b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
>>>>> @@ -40,6 +40,11 @@ properties:
>>>>>        description:
>>>>>          Indicates that the setting of RTC time is allowed by the host CPU.
>>>>>    
>>>>> +  no-alarm:
>>>>> +    $ref: /schemas/types.yaml#/definitions/flag
>>>>> +    description:
>>>>> +      Indicates that RTC alarm is not owned by HLOS (Linux).
>>>>
>>>> This is not even properly used/tested, because you disable the RTC
>>>> entirely in your DTS.
>>>>
>>>
>>> What? The next patch in this series is enabling RTC on x1e using this flag
>>
>> D'oh, right, I must have looked at wrong diff hunks. I had somehow
>> impression you add status=reserved, but you just dropped it.
>>
>>>
>>>> I expect here unified property for all Qualcomm devices for this case.
>>>> We already have "remotely-controlled" and other flavors. I don't want
>>>> each device to express the same with different name...
>>>>
>>>> Also: missing vendor prefix.
>>>>
>>>
>>> I don't care what the property is named (as long as its a bool
>>> property), if you have a name you prefer I will use it.
>>>
>>> The existing 'allow-set-time' property (also related to HLOS permissions
>>> to the RTC) is also specific to this driver doesn't have a vendor prefix.
>>
>> Yeah, that one sneaked in some years ago.
>>
>> So you can set time, but not alarm? Some previous platforms could not
>> set time, but could set alarm?
>>
>> I wonder whether we actually describe the real issue here. It looks like
>> group of band-aids.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Firmware can set different permissions for the RTC time (0x61xx) and RTC 
> alarm (0x62xx) regions. So it makes sense to have one flag for each region.
> 
> RTC time is almost always read-only (not owned by HLOS/Linux), so the 
> 'allow-set-time' property is almost never used (the driver supports 
> using nvmem to store an offset for setting time as a workaround).
> 
> The "can set time, but not alarm" combination will probably never be 
> used, but the 3 other combinations are possible (the common one is 
> "can't set time, but can set alarm").
> 
> (in the next patch I deleted the "alarm" region/interrupt from the dts 
> but that's wrong, the HW still exists, the patch should be only 
> replacing the reserved status with the new flag)

OK, let's just add vendor prefix and describe actual hardware property,
e.g. qcom,no-alarm or qcom,alarm-restricted

Best regards,
Krzysztof


