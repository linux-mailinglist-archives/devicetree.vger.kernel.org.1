Return-Path: <devicetree+bounces-151742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E63AA46D81
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 238943A8334
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA2125B675;
	Wed, 26 Feb 2025 21:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbT+32uo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D49B192D63;
	Wed, 26 Feb 2025 21:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740605485; cv=none; b=DZPzF6BD8O2EN/UBgEOMKpgjH44c7Utt5g7VfrgOGc+M3iJtkHsN3YbJd8kGRr+oOhAtVN3NTRqFwMGPZIEQK9UsKYyDlEI8Kh3uTU2/3UlGUCGrrABif47ZlLE50f0ca6RaKjifnkIW/N6akm4Gg8SU4sABGJqoJGJc9cOhygs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740605485; c=relaxed/simple;
	bh=PRE/A1VqtcxDcp5QHrfXCdxA0NkFgqWuo0KK3OU5E/o=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=esE+Ya5uikLz8jx275t9dHjHJt4NwCqC4ZBfCAw4omWFSiwHB+3DQKALdrSh03rtlzeeIXctu2apfl9JfwvezixcKiwZri8VfFAOKywArOKq8kBo+apmThR1frgBQiH/UN1rr/DunIUL/0UMa5aW/PV8jAG7RaqEPeNLoB+oDf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbT+32uo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31AF5C4CEE7;
	Wed, 26 Feb 2025 21:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740605484;
	bh=PRE/A1VqtcxDcp5QHrfXCdxA0NkFgqWuo0KK3OU5E/o=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=VbT+32uoi+S966XSIV43IVdHDOCkoR4xt4GkRsdG5Gfx0l/lk1OZaGmab0b9KJBJH
	 PPnRDqjW1RQZPJl35PtQKX7iCuxXhRoCatilQzGbYf3TRETC4bv+lfwo/fgLQldyhf
	 dNwjEvsTbU5kS2bPjXX7kHW6Vm4MAbhYCsNw0GgRaHR4sAADfynFS1pdGgH/fTHzNn
	 MVInle6Att2aa+UNdkDx41uw3/9Fqxslx/pRhfaEUavE57Ai6nypu1uqF/CtDnmzEC
	 InDnIgYKUi+0s2+ZiBWM0fk7yk5IBnq/IWJvlLg/V3SXnAtftMVIhixKbYmmNwbMJw
	 FXDXX4fOk9O3g==
Message-ID: <17450f7d-d398-4a75-8b53-6c9c396661ab@kernel.org>
Date: Wed, 26 Feb 2025 22:31:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] ARM: dts: stm32: add Hardware debug port (HDP) on
 stm32mp25
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 Clement LE GOFFIC <clement.legoffic@foss.st.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20250225-hdp-upstream-v1-0-9d049c65330a@foss.st.com>
 <20250225-hdp-upstream-v1-7-9d049c65330a@foss.st.com>
 <418a80a9-8c08-4dd1-bf49-1bd7378321aa@kernel.org>
 <b257aa79-6ca9-4f57-988a-ec00225992ab@foss.st.com>
 <b57e3c9e-244e-435b-8a7b-cf90f3a973b3@kernel.org>
 <988667a4-4bc0-4594-8dfd-a7b652b149b2@foss.st.com>
 <55beb3e7-65ac-4145-adae-fb064378c78d@kernel.org>
 <8cdc7e52-f9e2-4fc9-be68-0dd72a25ee1b@foss.st.com>
 <48cc626a-d632-444f-8563-07a9ea0ecc71@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <48cc626a-d632-444f-8563-07a9ea0ecc71@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/02/2025 22:26, Krzysztof Kozlowski wrote:
> On 26/02/2025 16:30, Alexandre TORGUE wrote:
>>
>>
>> On 2/26/25 16:08, Krzysztof Kozlowski wrote:
>>> On 26/02/2025 10:33, Alexandre TORGUE wrote:
>>>>>>>> +		hdp: pinctrl@44090000 {
>>>>>>>> +			compatible = "st,stm32mp-hdp";
>>>>>>>
>>>>>>> So here again - you have stm32mp251 SoC, but use entirely different
>>>>>>> compatible.
>>>>>>
>>>>>> Ok so I will use "st,stm32mp15-hdp"
>>>>>
>>>>>
>>>>> This means this is stm32mp15 SoC. I do not see such SoC on list of your
>>>>> SoCs in bindings. What's more, there are no bindings for other SoC
>>>>> components for stm32mp15!
>>>>
>>>> Yes stm32mp15 is not a "real SoC". I agree that at the beginning of the
>>>> STM32 story we didn't have a clear rule/view to correctly naming our
>>>> compatible. We tried to improve the situation to avoid compatible like
>>>> "st,stm32", "st,stm32mp" or "st,stm32mp1". So we introduced
>>>> "st,stm32mp13", "st,stm32mp15" or "st,stm32mp25" for new drivers. So yes
>>>> it represents a SoC family and not a real SoC. We haven't had much
>>>> negative feedback it.
>>>>
>>>> But, if it's not clean to do it in this way, lets define SoC compatible
>>>> for any new driver.
>>>
>>> Compatibles are for hardware.
>>>
>>>> For the HDP case it is: "st,stm32mp157" and used for STM32MP13,
>>>> STM32MP15 end STM32MP25 SoC families (if driver is the same for all
>>>> those SoCs).
>>>
>>> No, it's three compatibles, because you have three SoCs. BTW, writing
>>> bindings (and online resources and previous reviews and my talks) are
>>> saying that, so we do not ask for anything new here, anything different.
>>> At least not new when looking at last 5 years, because 10 years ago many
>>> rules were relaxed...
>>
>> So adding 3 times the same IP in 3 different SoCs implies to have 3 
> 
> Yes. Always, as requested by writing bindings.
> 
>> different compatibles. So each time we use this same IP in a new SoC, we 
>> have to add a new compatible. My (wrong) understanding was: as we have 
> 
> Yes, as requested by writing bindings and followed up by all recent
> platforms having decent/active upstream support. See qcom, nxp, renesas
> for example.
> 
>> the same IP (same hardware) in each SoC we have the same compatible (and 
> 
> You do not have same hardware. You have same IP, or almost same because
> they are almost never same, implemented in different hardware.
> 
>> IP integration differences (clocks, interrupts) are handled by DT 
>> properties.
> 
> Which binding doc/guide suggested such way? Countless reviews from DT
> maintainers were saying opposite.
I was not precise: IP integration differences are of course handles as
DT properties, but I wanted to say that it does not solve the problem
that IP integration means you might have differences in this device and
you should have different quirks.

And the example in this patchset: entirely different pin functions is a
proof. This device behaves/operates/integrates differently, thus
different compatible.

Best regards,
Krzysztof

