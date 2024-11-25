Return-Path: <devicetree+bounces-124197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5A29D7D6A
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4175B25D9A
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D4A18CC1D;
	Mon, 25 Nov 2024 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk3X7+SQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11B4187FFA;
	Mon, 25 Nov 2024 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732524514; cv=none; b=MdRpo3JoMgzdMf2hBrrl4XBkHJnXMJlZl24ItF0gxGh/TdIMuQwtJjZzvwv4Wm22PH/0z6kxqXpq0HuXGj85qqlCKCjQENfzn7uE/fwWK3MAWpWm8RMTdcJbYbljw5IU0TThAeLkib0c6yT8uS3nzJCY5YDNORb6hlxdjiOf8Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732524514; c=relaxed/simple;
	bh=fzJ3KCZU5VC9Cp5LnB3M9aueHXE0SfajwbyUngpM5cA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JwSDrAN2LuABeEPWiSMyvoTeF79kqfLfSawU5vpX0+GoJpaWDzqSMtXVAbR2s+nZzTqxutTDZF4+s1f1vXK7baGmbsc3X84Blka3f/NM9jfS8nFwTp20jmGYLWwYEnExRaxmGx9WlUyrxRjAXyNKrxcEKNx4vw794vzkWap5gnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk3X7+SQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E375C4CED1;
	Mon, 25 Nov 2024 08:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732524514;
	bh=fzJ3KCZU5VC9Cp5LnB3M9aueHXE0SfajwbyUngpM5cA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Lk3X7+SQDLUrhKkoRtfhpxUus4IWjZiiqE0y4tavBIWVnxiJzvD9Mz0L9zxzDAHe/
	 uFhXS4QFkjBAzRkpO88TH7P7j5Ogt7PFVRKmNVRP8rDtBfayUp3leeIZPDheqLECBp
	 e3fMGmqHvZADgy6lPxZUKlMhgAh8qvzvOSiwU8eT1ekrKd6dimgIkiVy6fqLiuALbF
	 5/BVWctNnVXJqRPCRNIy3kIITWGpxv3YfbzZUGrPJwORXP+7SXP/8uPD0Det9lSOES
	 nac1hNCJFERQtEzEtScdh7+/9D0t7ycK87wvpMoUkUfy0oK6HCb1IaePVrM94EGOnm
	 B0uh6e5nXpwSQ==
Message-ID: <d31298f5-718f-45cc-9387-7412b68b5b0f@kernel.org>
Date: Mon, 25 Nov 2024 09:48:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: mfd: cros-ec: add properties for thermal
 cooling cells
To: "Sung-Chi, Li" <lschyi@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, chrome-platform@lists.linux.dev,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
 <20241122-extend_power_limit-v1-2-a3ecd87afa76@chromium.org>
 <4f5sahkxxqb5qonh676igaiadkxv2pbhbibu6wtx4yenplfn4o@yvidi4ujavhr>
 <Z0Pl3muZx716QSed@google.com>
 <c2e9a97e-129d-4a82-9e81-b1391b4b6ff9@kernel.org>
 <Z0Q4vGXbvU3j9H65@google.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <Z0Q4vGXbvU3j9H65@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/11/2024 09:43, Sung-Chi, Li wrote:
> On Mon, Nov 25, 2024 at 08:32:19AM +0100, Krzysztof Kozlowski wrote:
>> On 25/11/2024 03:50, Sung-Chi, Li wrote:
>>> On Fri, Nov 22, 2024 at 08:49:14AM +0100, Krzysztof Kozlowski wrote:
>>>> On Fri, Nov 22, 2024 at 11:47:22AM +0800, Sung-Chi Li wrote:
>>>>> The cros_ec supports limiting the input current to act as a passive
>>>>> thermal cooling device. Add the property '#cooling-cells' bindings, such
>>>>> that thermal framework can recognize cros_ec as a valid thermal cooling
>>>>> device.
>>>>>
>>>>> Signed-off-by: Sung-Chi Li <lschyi@chromium.org>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
>>>>>  1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>>>>> index aac8819bd00b..2b6f098057af 100644
>>>>> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>>>>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>>>>> @@ -96,6 +96,9 @@ properties:
>>>>>    '#gpio-cells':
>>>>>      const: 2
>>>>>  
>>>>> +  '#cooling-cells':
>>>>> +    const: 2
>>>>
>>>> This is not a cooling device. BTW, your commit msg is somehow circular.
>>>> "Add cooling to make it a cooling device because it will be then cooling
>>>> device."
>>>>
>>>> Power supply already provides necessary framework for managing charging
>>>> current and temperatures. If this is to stay, you need to explain why
>>>> this is suitable to be considered a thermal zone or system cooling
>>>> device (not power supply or input power cooling).
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> Thank you, I will rephrase the commit message. The reason to not to use the
>>> managing charging current and temperatures in the power supply framework is
>>> that:
>>>
>>> - The EC may not have the thermal sensor value for the charger, and there is no
>>>   protocol for getting the thermal sensor value for the charger (there is
>>>   command for reading thermal sensor values, but there is no specification for
>>>   what sensor index is for the charger, if the charger provides thermal value).
>>> - The managing mechanism only take the charger thermal value into account, and
>>>   I would like to control the current based on the thermal condition of the
>>>   whole device.
>>>
>>> I will include these explanation in the following changes.
>>
>>
>> This does not explain me why this is supposed to be thermal zone. I
>> already said it, but let's repeat: This is not a thermal zone. This
>> isn't thermal zone sensor, either.
> 
> Hi, I added the explanation in the commit message in v2, in short, I need to use
> different thermal sensors, and need finer thermal controls, so I have to use
> thermal zone. This is included in the v2 commit message.
You resolved nothing there. I don't care that "you need to use thermal
sensors". That's not a valid reason. If next time you say "I need to
make it a current regulator", shall we accept incorrect description? No.

I repeat multiple times: this is not a SoC cooling device, this is not a
thermal zone and not a thermal sensor.

This is a power supply or charger or battery. Eventually it might be
hardware monitoring sensor. Use appropriate properties for this category
of device.

Best regards,
Krzysztof

